import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class TextFieldContainerWidget extends StatelessWidget {
  const TextFieldContainerWidget(
      {Key? key,
      this.controller,
      this.icon,
      this.inputType,
      this.surfixIcon,
      this.hintText,
      this.onTap,
      this.color,
      this.borderRadius})
      : super(key: key);
  final TextEditingController? controller;
  final TextInputType? inputType;
  final IconData? icon;
  final IconData? surfixIcon;
  final VoidCallback? onTap ;
  final Color ? color ;
  final double? borderRadius;

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color ?? color747480.withOpacity(.2),
          borderRadius: BorderRadius.circular(borderRadius ?? 10)),
      child: TextField(

          keyboardType: inputType,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            prefixIcon: InkWell(onTap: onTap , child: Icon(icon)),
            suffixIcon: Icon(surfixIcon)
          )),
    );
  }
}
