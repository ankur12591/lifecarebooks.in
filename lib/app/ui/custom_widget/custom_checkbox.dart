import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../utils/ui_components.dart';

class CustomCheckbox<T> extends StatefulWidget {
  final T value;
  final List<T> selectedValues;
  final String text;
  final ValueChanged<List<T>> onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.selectedValues,
    required this.text,
    required this.onChanged,
  });

  @override
  State<CustomCheckbox<T>> createState() => _CustomCheckboxState<T>();
}

class _CustomCheckboxState<T> extends State<CustomCheckbox<T>> {
  Widget _buildText() {
    return Flexible(
      child: Text(
        widget.text,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: h14(), // Replace with h14() if it's defined elsewhere
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.selectedValues.contains(widget.value);

    return UIComponent.customInkWellWidget(
      onTap: () {
        setState(() {
          if (isSelected) {
            widget.selectedValues.remove(widget.value);
          } else {
            widget.selectedValues.add(widget.value);
          }
        });
        widget.onChanged(widget.selectedValues);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isSelected
              ? SVGAssets.uncheckSmallIcon.toSvg
              : SVGAssets.checkSmallIcon.toSvg,
          const SizedBox(width: 8),
          _buildText(),
        ],
      ),
    );
  }
}
