import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoneyInputFormatter extends TextInputFormatter {
  final NumberFormat _formatter = NumberFormat.simpleCurrency(decimalDigits: 0, name: "");

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Remove any non-numeric characters (except for the decimal point)
    String newText = newValue.text.replaceAll(RegExp(r'[^\d.]'), '');

    // Convert the cleaned string to a number
    double value = double.parse(newText.isEmpty ? "0" : newText);

    // Format the number as currency
    String newFormattedValue = _formatter.format(value);

    // Calculate the new cursor position
    int selectionIndex = newFormattedValue.length - (newValue.text.length - newValue.selection.end);

    return TextEditingValue(
      text: newFormattedValue,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
