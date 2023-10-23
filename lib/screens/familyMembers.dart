// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tukoapp/components/familyCompo.dart';
import '../models/PageModel.dart';



class FamilyMembers extends StatelessWidget {
  FamilyMembers({super.key});

  List<PageModel> member = const [
    PageModel(
        image: 'assets/images/family_members/family_grandfather.png',
        japText: 'Ojiisan',
        engText: 'GrandFather',
        sound: 'sounds/family_members/grand_father.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_grandmother.png',
        japText: 'Obaasan',
        engText: 'GrandMother',
        sound: 'sounds/family_members/grand_mother.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_father.png',
        japText: 'Chichi',
        engText: 'Father',
        sound: 'sounds/family_members/father.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_mother.png',
        japText: ' Haha',
        engText: 'Mother',
        sound: 'sounds/family_members/mother.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_son.png',
        japText: 'Musuko',
        engText: 'Sone',
        sound: 'sounds/family_members/son.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_daughter.png',
        japText: 'Musume',
        engText: 'Daughter',
        sound: 'sounds/family_members/daughter.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_older_brother.png',
        japText: 'Oniisan',
        engText: 'Older Brother',
        sound: 'sounds/family_members/older_brother.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_older_sister.png',
        japText: 'Oneesan',
        engText: 'Older Sister',
        sound: 'sounds/family_members/older_sister.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        japText: 'Otoutosan',
        engText: 'Younger Brother',
        sound: 'sounds/family_members/older_brother.mp3'),
    PageModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        japText: 'Imoutosan',
        engText: 'Younger Sister',
        sound: 'sounds/family_members/younger_sister.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff49332A),
          title: const Text('Family Members'),
        ),
        body: ListView.builder(
          itemCount: member.length,
          itemBuilder: (context, index) => FamilyCompo(member: member[index]),
        ));
  }
}
