import 'package:firebasechatblock/prasenntation%20/widgets/single_item_user_widget.dart';
import 'package:flutter/material.dart';

class UserPageView extends StatelessWidget {
  const UserPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return SingleItemUserWidget(
              onTap: () {},
            );
          },
        ));
  }
}
