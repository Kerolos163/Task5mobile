import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../component/rowbuilder.dart';
class FamilyItems {
  String Img;
  String txt1;
  String txt2;
  Function func;
  FamilyItems(this.Img, this.txt1, this.txt2, this.func);
}
class FamilyScreen extends StatelessWidget {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
        List<FamilyItems> items = [
      FamilyItems("assets/images/family_members/family_grandfather.png", "Ojīsan", "grandfather", () {
        player.play(AssetSource('sounds/family_members/grandfather.wav'));
      }),
      FamilyItems("assets/images/family_members/family_grandmother.png", "Kazoku no sobo", "family grandmother", () {
        player.play(AssetSource('sounds/family_members/grandmother.wav'));
      }),
      FamilyItems("assets/images/family_members/family_father.png", "Chichioya", "father",
          () {
        player.play(AssetSource('sounds/family_members/father.wav'));
      }),
      FamilyItems("assets/images/family_members/family_mother.png", "Hahaoya", "mother", () {
        player.play(AssetSource('sounds/family_members/mother.wav'));
      }),
      FamilyItems("assets/images/family_members/family_son.png", "Musuko", "son", () {
        player.play(AssetSource('sounds/family_members/son.wav'));
      }),
      FamilyItems("assets/images/family_members/family_daughter.png", "Musume", "daughter", () {
        player.play(AssetSource('sounds/family_members/daughter.wav'));
      }),
      FamilyItems("assets/images/family_members/family_older_brother.png", "Ani", "older brother",
          () {
        player.play(AssetSource('sounds/family_members/olderbrother.wav'));
      }),
      FamilyItems("assets/images/family_members/family_older_sister.png", "Ane", "older sister",
          () {
        player.play(AssetSource('sounds/family_members/oldersister.wav'));
      }),
      FamilyItems("assets/images/family_members/family_younger_brother.png", "Otōto", "younger brother", () {
        player.play(AssetSource('sounds/family_members/youngerbrother.wav'));
      }),
      FamilyItems("assets/images/family_members/family_younger_sister.png", "Imōto", "younger sister", () {
        player.play(AssetSource('sounds/family_members/youngersister.wav'));
      }),
    ];
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Family Member"),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          physics:const BouncingScrollPhysics(),
          itemBuilder: (context, index) => ItemBuilder(
              items[index].Img,
              items[index].txt1,
              items[index].txt2,
              Colors.green,
              items[index].func),
          itemCount: items.length,
        ));
  }
}