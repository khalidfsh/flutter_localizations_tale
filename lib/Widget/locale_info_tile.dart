import 'package:flutter/material.dart';

class LocalInfoTile extends StatelessWidget {
  const LocalInfoTile(
      {this.indicator = 'indicator', this.value = 'value', this.type = 'type'});

  final String indicator;
  final dynamic value;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Center(
          child: Text(
            value.toString(),
            textScaleFactor: (24 / value.toString().length >= 1) ? 1.0 : 0.8,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$indicator'),
            Text('${value.runtimeType}')
          ],
        ),
        trailing: Chip(
          label: Text(type),
          backgroundColor: coloringTypeChip(type),
        ),
      ),
    );
  }

  Color coloringTypeChip(String type) {
    switch (type) {
      case 'Lable':
        return Colors.lightBlue.shade700;
      case 'Tooltip':
        return Colors.teal.shade800;
      case 'Hint':
        return Colors.yellow.shade800;
      case 'Hint':
        return Colors.green.shade800;
      case 'Time':
        return Colors.red.shade800;
      default:
        return Colors.grey.shade600;
    }
  }
}
