import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/submitButton.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/text_container.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final nameController = TextEditingController();
  final statusController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    statusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(62),
            ),
            child: Text(""),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Remove Profile Photo",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 10,
          ),
          TextFieldContainerWidget(
            controller: nameController,
            hintText: 'name',
            icon: Icons.person,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFieldContainerWidget(
            controller: statusController,
            hintText: 'Email',
            icon: Icons.email,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFieldContainerWidget(
            controller: statusController,
            hintText: 'Status',
            icon: EvaIcons.smilingFaceOutline,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1.5,
          ),
          const SizedBox(
            height: 20,
          ),
          SubmitButtonWidget(
            title: 'Update Profile',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
