import 'dart:io';

import 'package:book_nest_life_care/config/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

part 'file_picker_state.dart';

class FilePickerCubit extends Cubit<FilePickerState> {
  FilePickerCubit() : super(FilePickerInitial());
  List<dynamic> attachmentList = [];
  String fileNameStr = "";
  String fileExtensionStr = "";
  int maxAllowedFiles = 1;
  late List<String> allowedExtension;

  static const IMAGE_EXTENSION = [
    'jpg',
    'jpeg',
    'png',
  ];
  static const IMAGE_EXTENSION_VIEW = ['jpg', 'jpeg', 'png'];
  static const ALL_FILE_EXTENSION_VIEW = [
    ...IMAGE_EXTENSION,
    'pdf',
    'doc',
    'docx',
    'xls',
    'xlsx'
  ];

  static const ALL_FILE_EXTENSION = [
    ...IMAGE_EXTENSION,
    'pdf',
    'doc',
  ];

  void setAttachments(
      List<dynamic> imageList, int maxAllowed, List<String>? allowedExtension) {
    attachmentList = imageList;
    maxAllowedFiles = maxAllowed;
    this.allowedExtension = allowedExtension ?? ALL_FILE_EXTENSION;
    if (attachmentList.length == maxAllowedFiles) {
      emit(DisableSelection());
    }
  }

  Future<void> pickFiles(List<dynamic> imageList, bool isImageTypeOnly,
      String fileName, String fileExtension, BuildContext context) async {
    emit(FilePickerDataLoading());
    try {
      List<XFile> selectedXFiles = [];
      FilePickerResult? result;
      if (isImageTypeOnly) {
        if (maxAllowedFiles == 1) {
          final pickedFile = await ImagePicker()
              .pickImage(source: ImageSource.gallery, imageQuality: 50);
          if (pickedFile != null) {
            selectedXFiles.add(pickedFile);
          }
          debugPrint("Image${selectedXFiles[0].path}");
        } else {
          selectedXFiles = await ImagePicker().pickMultiImage(imageQuality: 50);
          debugPrint("Image${selectedXFiles.length}");
        }
      } else {
        result = await FilePicker.platform.pickFiles(
          allowMultiple: maxAllowedFiles != 1,
          allowCompression: true,
          compressionQuality: 50,
          type: FileType.custom,
          allowedExtensions:
              isImageTypeOnly == true ? IMAGE_EXTENSION : allowedExtension,
        );
      }

      if ((isImageTypeOnly && selectedXFiles.isNotEmpty) || result != null) {
        List<File> selectedFiles = [];
        List<File>? files = isImageTypeOnly
            ? convertXFileListToFilesList(selectedXFiles)
            : result?.paths.map((path) => File(path!)).toList();
        if (files!.isNotEmpty) {
          int totalSelectedFiles = attachmentList.length + files.length;
          if (totalSelectedFiles <= maxAllowedFiles) {
            for (var i = 0; i < files.length; i++) {
              File imageFile = File(files[i].path);
              String newFileName = "";
              String newFileExtension = "";
              if (isImageTypeOnly) {
                newFileName = imageFile.path.split('/').last;
                fileNameStr = newFileName.toString();
                newFileExtension = newFileName.split('.').last;
                fileExtensionStr = newFileExtension.toString();
              } else {
                PlatformFile file = result!.files[i];
                newFileName = file.name;
                fileNameStr = file.name.toString();
                newFileExtension = file.extension ?? "";
                fileExtensionStr = file.extension.toString();
              }

              // Perform file size validation here
              int maxSizeInBytes = 2 * 1024 * 1024; // 2 MB
              if (imageFile.lengthSync() <= maxSizeInBytes) {
                if (!isImageTypeOnly) {
                  imageList.add(imageFile.path);
                }
                selectedFiles.add(imageFile);
                fileName = newFileName;
                fileExtension = newFileExtension;
              } else {
                Utils.showErrorMessage(
                  context: context,
                  message: "Selected file is too large (max size: 2 MB)",
                );
              }
            }
            emit(FilesPickedState(selectedFiles, fileName, fileExtension));
          } else {
            Utils.showErrorMessage(
              context: context,
              message: "You can select only $maxAllowedFiles files!!",
            );
          }
        } else {
          emit(FilePickerErrorState("Selected file is empty"));
        }
        if (attachmentList.length >= maxAllowedFiles) {
          emit(DisableSelection());
        } else {
          emit(EnableSelection());
        }
      } else {
        emit(FilePickerErrorState("User canceled the picker"));
      }
    } catch (e) {
      emit(FilePickerErrorState("Error picking files: $e"));
    }
  }

  void removeAttachment({required int index, bool localDelete = true}) {
    if (attachmentList.isNotEmpty) {
      if (localDelete) {
        attachmentList.removeAt(index);
      }
      emit(FilesLoading());
      emit(FilesRemovedState(index));
    }
  }

  List<File> convertXFileListToFilesList(List<XFile> xFiles) {
    return xFiles.map((xFile) => File(xFile.path)).toList();
  }
}
