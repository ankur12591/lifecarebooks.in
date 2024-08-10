import 'dart:io';

import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_strings.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_filex/open_filex.dart';
import 'package:book_nest_life_care/app/model/file_details.dart';

import '../../app/bloc/file_picker_cubit.dart';
import '../ui_components.dart';

class AttachmentWidget extends StatefulWidget {
  List<dynamic> fileList;
  final bool isEdit;
  final bool isImageTypeOnly;
  final bool isSingleItemOnly;
  final bool isDocument;
  final bool requireLocalDelete;
  final int maxUploadVal;
  String? fileName;
  String? fileExtension;
  final bool? isProfileImageSelection;
  List<FileDetailsData>? fileDetails;
  final List<String>? allowedFileExtensions;
  final String? allowedExtensionDocumentString;

  AttachmentWidget(
      {super.key,
      required this.fileList,
      required this.isEdit,
      required this.isImageTypeOnly,
      required this.isSingleItemOnly,
      required this.isDocument,
      this.requireLocalDelete = true,
      this.fileName,
      this.fileExtension,
      this.isProfileImageSelection,
      this.allowedFileExtensions,
      this.fileDetails,
      this.maxUploadVal = 4,
      this.allowedExtensionDocumentString =
          "('pdf','doc','docx','jpg','jpeg','png','xls','xlsx')"});

  @override
  State<AttachmentWidget> createState() => _AttachmentWidget();
}

class _AttachmentWidget extends State<AttachmentWidget> {
  @override
  Widget build(BuildContext context) {
    context.read<FilePickerCubit>().setAttachments(
        widget.fileList, widget.maxUploadVal, widget.allowedFileExtensions);
    return SizedBox(
      width: double.infinity,
      child: BlocConsumer<FilePickerCubit, FilePickerState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                context.read<FilePickerCubit>().attachmentList.isNotEmpty
                    ? Container(
                        decoration: BoxDecoration(
                            color: AppColors.pageBackground,
                            border:
                                Border.all(color: AppColors.greyBF, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: context
                                      .read<FilePickerCubit>()
                                      .attachmentList
                                      .length ==
                                  1
                              ? Center(
                                  child: SizedBox(
                                    height: 110,
                                    width: 120,
                                    child: Stack(
                                      children: [
                                        buildImageOrDocumentWidget(
                                          fileItem: context
                                              .read<FilePickerCubit>()
                                              .attachmentList[0],

                                          /// TODO: Commented code is to not show selected image picture but file name
                                          ///

                                          // isImageAllow: widget.isImageTypeOnly,

                                          isImageAllow: widget.isImageTypeOnly,
                                          isSingleFileAllow:
                                              widget.isSingleItemOnly,
                                          itemIndex: 0,
                                          fileName: (context
                                                          .read<FilePickerCubit>()
                                                          .attachmentList[0]
                                                      as String)
                                                  .isNotEmpty
                                              ? widget.fileList[0]
                                                  .split('/')
                                                  .last
                                              : "",
                                          fileExtension: (context
                                                          .read<FilePickerCubit>()
                                                          .attachmentList[0]
                                                      as String)
                                                  .isNotEmpty
                                              ? widget.fileList[0]
                                                  .split('.')
                                                  .last
                                              : "",
                                        ),
                                        Positioned(
                                          right: 0,
                                          child:
                                              UIComponent.customInkWellWidget(
                                            onTap: () {
                                              context
                                                  .read<FilePickerCubit>()
                                                  .removeAttachment(
                                                      index: 0,
                                                      localDelete: widget
                                                          .requireLocalDelete);
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: AppColors.red00,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(6.0),
                                                  child: SvgPicture.asset(
                                                    SVGAssets.deleteIcon,
                                                    color: AppColors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0),
                                  gridDelegate: widget.isImageTypeOnly ||
                                          widget.isSingleItemOnly
                                      ? const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                        )
                                      : const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 14,
                                          childAspectRatio: 1),
                                  itemCount: context
                                      .read<FilePickerCubit>()
                                      .attachmentList
                                      .length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    var attachmentList = context
                                        .read<FilePickerCubit>()
                                        .attachmentList[index];
                                    return AspectRatio(
                                      aspectRatio: 15 / 13,
                                      child: Stack(
                                        children: [
                                          buildImageOrDocumentWidget(
                                              fileItem: attachmentList,
                                              isImageAllow:
                                                  widget.isImageTypeOnly,
                                              itemIndex: index,
                                              fileName:
                                                  (attachmentList as String)
                                                          .isNotEmpty
                                                      ? widget.fileList[index]
                                                          .split('/')
                                                          .last
                                                      : "",
                                              fileExtension:
                                                  (attachmentList as String)
                                                          .isNotEmpty
                                                      ? widget.fileList[index]
                                                          .split('.')
                                                          .last
                                                      : ""),
                                          Positioned(
                                            right: 0,
                                            child:
                                                UIComponent.customInkWellWidget(
                                              onTap: () {
                                                context
                                                    .read<FilePickerCubit>()
                                                    .removeAttachment(
                                                        index: index,
                                                        localDelete: widget
                                                            .requireLocalDelete);
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(1.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: AppColors.red00,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: SvgPicture.asset(
                                                      SVGAssets.deleteIcon,
                                                      color: AppColors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                        ),
                      )
                    : UIComponent.noDataRoundedCard(),
                16.verticalSpace,
                Align(
                  alignment: Alignment.center,
                  child: UIComponent.customInkWellWidget(
                    onTap: () async {
                      await Utils.getStorageReadPermission();
                      var len = widget.fileList.length;
                      if (widget.isImageTypeOnly == true) {
                        context.read<FilePickerCubit>().pickFiles(
                            widget.fileList,
                            widget.isImageTypeOnly,
                            widget.fileName ?? "",
                            widget.fileExtension ?? "",
                            context);
                        if (widget.isProfileImageSelection == true && len > 1) {
                          Utils.showErrorMessage(
                            context: context,
                            message: "You can select only 1 image",
                          );
                        }
                      } else if (widget.isSingleItemOnly == true) {
                        if (widget.isImageTypeOnly == true) {
                          context.read<FilePickerCubit>().pickFiles(
                              widget.fileList,
                              widget.isSingleItemOnly,
                              widget.fileName ?? "",
                              widget.fileExtension ?? "",
                              context);
                          if (widget.isProfileImageSelection == true &&
                              len > 1) {
                            Utils.showErrorMessage(
                              context: context,
                              message: "You can select only 1 image",
                            );
                          }
                        } else {
                          await context.read<FilePickerCubit>().pickFiles(
                              widget.fileList,
                              widget.isImageTypeOnly,
                              widget.fileName ?? "",
                              widget.fileExtension ?? "",
                              context);
                        }
                      } else {
                        await context.read<FilePickerCubit>().pickFiles(
                            widget.fileList,
                            widget.isImageTypeOnly,
                            widget.fileName ?? "",
                            widget.fileExtension ?? "",
                            context);
                      }
                    },
                    child: BlocBuilder<FilePickerCubit, FilePickerState>(
                      builder: (context, state) {
                        if (state is DisableSelection) {
                          return Container();
                        }
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.black2E,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                            ),
                            child: Center(
                              child: Text(
                                AppStrings.btnBrowse,
                                style: h16().copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black2E,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildImageOrDocumentWidget(
      {dynamic fileItem,
      bool? isImageAllow,
      bool? isSingleFileAllow,
      required int itemIndex,
      String? fileName,
      String? fileExtension}) {
    if (isImageAllow ?? false) {
      if (fileItem is String && fileItem.contains("http")) {
        var isValidUrl = Uri.parse(fileItem).isAbsolute;
        if (isValidUrl) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: UIComponent.cachedNetworkImageWidget(imageUrl: fileItem));
        } else {
          return const SizedBox.shrink();
        }
      }
      if (isImageFile(fileItem)) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.file(File(fileItem)));
      } else {
        return const SizedBox.shrink();
      }
    } else if (isSingleFileAllow ?? false) {
      // Render a placeholder for images and other documents
      return BlocBuilder<FilePickerCubit, FilePickerState>(
          builder: (context, state) => Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(4),
                  // border: Border.all(color: AppColors.greyBF, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black2E.withOpacity(0.10),
                      blurRadius: 4,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: UIComponent.customInkWellWidget(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 8, bottom: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.greyFB,
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                SVGAssets.documentImg,
                                height: 16,
                                width: 16,
                              )),
                        ),
                        4.verticalSpace,
                        Text(
                          fileName ?? "Document",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: h14().copyWith(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ));
    } else {
      // Render a placeholder for images and other documents
      return BlocBuilder<FilePickerCubit, FilePickerState>(
          builder: (context, state) => Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(4),
                  // border: Border.all(color: AppColors.greyBF, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black2E.withOpacity(0.10),
                      blurRadius: 4,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: UIComponent.customInkWellWidget(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 8, bottom: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.greyFB,
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                SVGAssets.documentImg,
                                height: 16,
                                width: 16,
                              )),
                        ),
                        4.verticalSpace,
                        Text(
                          fileName ?? "Document",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: h14().copyWith(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ));
    }
    return const SizedBox.shrink();
  }

  bool isImageFile(String filePath) {
    final List<String> imageExtensions = ['.jpg', '.jpeg', '.png'];
    return imageExtensions
        .any((extension) => filePath.toLowerCase().endsWith(extension));
  }
}
