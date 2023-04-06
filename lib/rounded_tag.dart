import 'package:flutter/material.dart';

class RoundedTag extends StatelessWidget {
  final String title;
  const RoundedTag({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: UnconstrainedBox(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: _getColor(title),
          ),
          child: Text(
            title,
          ),
        ),
      ),
    );
  }

  Color _getColor(String text) {
    switch (text) {
      case 'Mandiri':
        return Colors.lightBlueAccent;
      case 'BPJS':
        return Colors.redAccent;
      case 'Asuransi':
        return Colors.lightGreenAccent;
      default:
        return Colors.lightBlueAccent;
    }
  }
}
