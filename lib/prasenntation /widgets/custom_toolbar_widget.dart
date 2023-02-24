import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

typedef ToolBarIndexController = Function(int index);

class CustomToolBarWidget extends StatelessWidget {
  final ToolBarIndexController toolBarIndexController;

  const CustomToolBarWidget(
      {Key? key, required this.toolBarIndexController, this.tabIndex})
      : super(key: key);

  final int? tabIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        children: [
          Expanded(
            child: ToolBarItems(
              onTap: () {
                toolBarIndexController(0);
              },
              title: 'Group',
              borderColor: tabIndex == 0 ? Colors.white : Colors.transparent,
              textColor: tabIndex == 0 ? Colors.white : Colors.black,
            ),
          ),
          Expanded(
            child: ToolBarItems(
              onTap: () {
                toolBarIndexController(1);
              },
              title: 'User',
              borderColor: tabIndex == 1 ? Colors.white : Colors.transparent,
              textColor: tabIndex == 1 ? Colors.white : Colors.black,
            ),
          ),
          Expanded(
            child: ToolBarItems(
              onTap: () {
                toolBarIndexController(2);
              },
              title: 'Profile',
              borderColor: tabIndex == 2 ? Colors.white : Colors.transparent,
              textColor: tabIndex == 2 ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
    );
  }
}

class ToolBarItems extends StatelessWidget {
  const ToolBarItems(
      {Key? key, this.title, this.textColor, this.onTap, this.borderColor})
      : super(key: key);
  final String? title;
  final Color? textColor;
  final Color? borderColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: borderColor ?? Colors.transparent, width: 3.0))),
        child: Text(
          title ?? '',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, color: textColor),
        ),
      ),
    );
  }
}
