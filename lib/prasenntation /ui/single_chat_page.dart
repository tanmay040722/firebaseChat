import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class SingleChatView extends StatelessWidget {
  const SingleChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group name'),
      ),
      body: Column(
        children: [
          _listMessageWidget(),
          _inputMessageTextField(),
        ],
      ),
    );
  }

  _listMessageWidget() {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return Text("");
      }),
    );
  }

  _inputMessageTextField() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(80),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        spreadRadius: 1,
                        blurRadius: 1)
                  ]),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.insert_emoticon),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 60),
                        child: const Scrollbar(
                            child: TextField(
                              maxLines: null,
                          decoration: InputDecoration(
                              hintText: 'Type a message',
                              border: InputBorder.none),
                        ))),
                  ),
                  const Icon(Icons.link),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.camera_alt_outlined),
                  const SizedBox(
                    width: 10,
                  ),

                ],
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: primaryColor,
                  borderRadius: BorderRadius.circular(45)),
              child: const Icon(Icons.mic, color: Colors.white,))
        ],
      ),
    );
  }
}
