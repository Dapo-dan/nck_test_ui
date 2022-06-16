import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final double width;
  final GestureTapCallback onTap;
  const CustomElevatedButton(
      {Key? key, required this.title, required this.width, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            primary: AppColors.primaryColor,
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            fixedSize: Size(width, MediaQuery.of(context).size.height * 0.065),
            textStyle:
                const TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
        child: Text(
          title,
        ));
  }
}
