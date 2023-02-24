import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class PasswordContainerWidget extends StatefulWidget {
  const PasswordContainerWidget(
      {Key? key,
      this.controller,
      this.prefixIcon,
      this.inputType,
      this.suffixIcon,
      this.hintText})
      : super(key: key);
  final TextEditingController? controller;
  final TextInputType? inputType;
  final String? hintText;

  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  State<PasswordContainerWidget> createState() =>
      _PasswordContainerWidgetState();
}

class _PasswordContainerWidgetState extends State<PasswordContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color747480.withOpacity(.2),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        keyboardType: widget.inputType,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          suffixIcon: InkWell(
            onTap: () {
              setState(() {});
            },
            child: Icon(false ? Icons.remove_red_eye : Icons.panorama_fish_eye),
          ),
          prefixIcon: Icon(widget.prefixIcon),

        ),
      ),
    );
  }
}
