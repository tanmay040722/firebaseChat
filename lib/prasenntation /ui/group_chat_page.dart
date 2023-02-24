import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebasechatblock/prasenntation%20/const.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/single_item_group_widget.dart';
import 'package:flutter/material.dart';

class GroupChatView extends StatelessWidget {
  const GroupChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, PageConst.createNewGroupPage);
        },
        child: const Icon(Icons.group_add_outlined),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(15),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SingleItemGroupWidget(
                onTap: () {
                  Navigator.pushNamed(context, PageConst.singleChatPage);
                },
              );
            },
          )),
    );
  }
}
