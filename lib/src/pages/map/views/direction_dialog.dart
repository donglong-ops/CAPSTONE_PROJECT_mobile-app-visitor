import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ipsb_visitor_app/src/common/constants.dart';

class DirectionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Image.asset(ConstImg.checkWatermark, width: 30),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text("Complete route!"),
          ),
        ],
      ),
      content: Text("You have come to your destination",style: TextStyle(fontSize: 15),),
      actions: [
        TextButton(
          onPressed: () => Get.back(result: true), // passing false
          child: Text('OK'),
        ),
      ],
    );
  }
}
