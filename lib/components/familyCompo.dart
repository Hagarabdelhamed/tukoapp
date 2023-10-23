import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


import '../models/PageModel.dart';
import 'itemCompo.dart';



class FamilyCompo extends StatelessWidget {
  const FamilyCompo({super.key, required this.member});
  final PageModel member; 


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color: const Color(0xff528032),
        child: Row(
          children: [
            Container(
                color: const Color(0xffFFF4D9),
                child: Image.asset(member.image!)),
             Expanded(child: ItemComp(item: member)),

          ],
        ),
      );
  }
}