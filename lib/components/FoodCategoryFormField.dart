import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class FoodCategoryFormField extends StatefulWidget {
  @override
  _FoodCategoryFormFieldState createState() => _FoodCategoryFormFieldState();
}

class _FoodCategoryFormFieldState extends State<FoodCategoryFormField> {
  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> _items = [
      {
        'value': 'boxValue',
        'label': 'Box Label',
        'icon': Icon(Icons.stop),
      },
      {
        'value': 'circleValue',
        'label': 'Circle Label',
        'icon': Icon(Icons.fiber_manual_record),
        'textStyle': TextStyle(color: Colors.red),
      },
      {
        'value': 'starValue',
        'label': 'Star Label',
        'enable': false,
        'icon': Icon(Icons.grade),
      },
    ];

    return SelectFormField(
      type: SelectFormFieldType.dialog, // or can be dialog
      initialValue: 'circle',
      icon: Icon(Icons.format_shapes),
      labelText: 'Shape',
      // items: _items,
      onChanged: (val) => print(val),
      onSaved: (val) => print(val),
    );
  }
}
