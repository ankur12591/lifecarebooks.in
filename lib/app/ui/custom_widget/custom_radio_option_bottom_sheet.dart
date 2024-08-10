import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/app_colors.dart';
import '../../../config/text_styles.dart';
import '../../../utils/ui_components.dart';

class CustomRadioOptionBottomSheet<T> extends StatefulWidget {
  final T value;
  final T? groupValue;
  final String text;
  final ValueChanged<T?> onChanged;

  const CustomRadioOptionBottomSheet({
    super.key,
    required this.value,
    required this.groupValue,
    required this.text,
    required this.onChanged,
  });

  @override
  State<CustomRadioOptionBottomSheet<T>> createState() =>
      _CustomRadioOptionBottomSheetState<T>();
}

class _CustomRadioOptionBottomSheetState<T>
    extends State<CustomRadioOptionBottomSheet<T>> {
  Widget _buildText() {
    return Flexible(
      child: Text(
        widget.text,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: h16().copyWith(color: AppColors.black20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.value == widget.groupValue;
    return UIComponent.customInkWellWidget(
      onTap: () {
        widget.onChanged(widget.value);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildText(),
            isSelected
                ? SVGAssets.selectedRadioIcon.toSvg
                : SVGAssets.radioIcon.toSvg,
          ],
        ),
      ),
    );
  }
}
