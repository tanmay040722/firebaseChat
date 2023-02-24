import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({Key? key, this.title, this.onTap}) : super(key: key);
final String? title;
final VoidCallback? onTap ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 44,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: greenColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          title?? '',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
      ),
    );
  }
}
