import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class custom_failure extends StatelessWidget {
  const custom_failure({super.key, required this.MsgErro});
  final String MsgErro;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        MsgErro,
        style: Style.title,
      ),
    );
  }
}
