import 'package:core_ui/widgets/elements/texts/small_text.dart';
import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {

  final String title;
  final Color? titleColor;

  const PrimaryButton({super.key, required this.title, this.titleColor, required Null Function() onPress});


  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: null,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFFEBEBEB),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          )
        ),
        child: SmallText(
          title: title,
          color: titleColor,
        )
    );
  }

}