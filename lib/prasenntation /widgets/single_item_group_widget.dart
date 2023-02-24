import 'package:flutter/material.dart';

class SingleItemGroupWidget extends StatelessWidget {
  const SingleItemGroupWidget({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(''),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Group name',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'recent msg',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.7),
                        fontWeight: FontWeight.w600),
                  ),
                   const SizedBox(height: 10,),
                   SizedBox(
                     width: 300,
                       child: Divider(thickness: 1.5,color: Colors.black.withOpacity(.3),))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
