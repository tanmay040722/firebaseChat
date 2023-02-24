import 'package:flutter/material.dart';

import 'theme/style.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({Key? key, this.text1, this.text2, this.onTap, this.mainAxisAlignment})
      : super(key: key);
  final String? text1;
  final String? text2;
  final VoidCallback? onTap;
  final MainAxisAlignment ? mainAxisAlignment ;

  @override
  Widget build(BuildContext context) {
    return _rowTextWidget();
  }

  Widget _rowTextWidget() {
    return Container(
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: <Widget>[
          Text(
            text1 ?? '',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              text2 ?? '',
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w700, color: greenColor),
            ),
          ),
        ],
      ),
    );
  }
}
