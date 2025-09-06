import 'package:event_handler/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppChips<T> extends StatelessWidget {
  const AppChips({
    super.key,
    this.selected,
    this.onSelected,
    this.onDeleted,
    required this.data,
    required this.displayText,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.grey,
  });

  final T? selected;
  final Function(T)? onSelected;
  final Function(T)? onDeleted;
  final List<T> data;
  final String Function(T) displayText;
  final Color backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: data.isNotEmpty ? 12.0 : 0),
      child: Wrap(
        alignment: WrapAlignment.start,
        runSpacing: 10,
        spacing: 10.0,
        children: data.map((e) => _buildChip(e)).toList(),
      ),
    );
  }

  Widget _buildChip(T item) {
    final textColor = item == selected
        ? ThemeColors.white
        : ThemeColors.contentPrimary;
    String text = displayText(item);

    return InputChip(
      deleteIcon: Icon(Icons.cancel, color: textColor),
      deleteIconColor: textColor,
      onDeleted: onDeleted != null ? () => onDeleted!(item) : null,
      showCheckmark: false,
      selectedColor: ThemeColors.contentPrimary,
      selected: item == selected,
      onSelected: (v) => v ? onSelected!(item) : null,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: Text(text, style: TextStyle(color: textColor)),
      backgroundColor: backgroundColor,
      shape: StadiumBorder(
        side: BorderSide(color: borderColor ?? backgroundColor, width: 1),
      ),
    );
  }
}
