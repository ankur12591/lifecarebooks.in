import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../config/app_assets.dart';
import '../../../config/text_styles.dart';
import '../../../utils/ui_components.dart';

class CustomRadioButton<T> extends StatefulWidget {
  final T value;
  final T? groupValue;
  final String text;
  final ValueChanged<T?> onChanged;

  const CustomRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.text,
    required this.onChanged,
  });

  @override
  State<CustomRadioButton<T>> createState() =>
      _CustomRadioOptionBottomSheetState<T>();
}

class _CustomRadioOptionBottomSheetState<T>
    extends State<CustomRadioButton<T>> {
  Widget _buildText() {
    return Flexible(
      child: Text(
        widget.text,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: h14(),
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isSelected
              ? SVGAssets.selectedRadioIcon.toSvg
              : SVGAssets.radioIcon.toSvg,
          8.horizontalSpace,
          _buildText(),
        ],
      ),
    );
  }
}
