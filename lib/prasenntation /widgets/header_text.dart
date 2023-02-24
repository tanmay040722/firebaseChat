import 'package:flutter/material.dart';

import 'theme/style.dart';

class HeaderText extends StatelessWidget {
 const  HeaderText({Key? key, required this.title }) : super(key: key);
final String title ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  <Widget>[
        const SizedBox(height: 20,),
        Container(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: greenColor),
            )),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
