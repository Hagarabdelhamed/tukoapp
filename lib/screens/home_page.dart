import 'package:flutter/material.dart';
import 'package:tukoapp/screens/NumbersPage.dart';
import 'package:tukoapp/screens/colors.dart';
import 'package:tukoapp/screens/familyMembers.dart';


import '../components/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const NumbersPage();
                },
              ));
            },
            text: 'Number',
            color: const Color(0xffF99531),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyMembers(),));
            },
            text: 'Family Members',
            color: const Color(0xff528032),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ColorsPage(),));
            },
            text: 'Colors',
            color: const Color(0xff7C3FA1),
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff47A5CB),
          ),
        ],
      ),
    );
  }
}
