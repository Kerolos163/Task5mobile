import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:audioplayers/audioplayers.dart';

import '../component/rowbuilder.dart';

class NumberItems {
  String Img;
  String txt1;
  String txt2;
  Function func;
  NumberItems(this.Img, this.txt1, this.txt2, this.func);
}

class NumbersScreen extends StatelessWidget {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    List<NumberItems> items = [
      NumberItems("assets/images/numbers/number_one.png", "Ichi", "One", () {
        player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_two.png", "Ni", "Two", () {
        player.play(AssetSource('sounds/numbers/number_two_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_three.png", "Mittsu", "Three",
          () {
        player.play(AssetSource('sounds/numbers/number_three_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_four.png", "Shi", "Four", () {
        player.play(AssetSource('sounds/numbers/number_four_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_five.png", "Go", "Five", () {
        player.play(AssetSource('sounds/numbers/number_five_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_six.png", "Roku", "Six", () {
        player.play(AssetSource('sounds/numbers/number_six_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_seven.png", "Sebun", "Seven",
          () {
        player.play(AssetSource('sounds/numbers/number_seven_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_eight.png", "Hachi", "Eight",
          () {
        player.play(AssetSource('sounds/numbers/number_eight_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_nine.png", "Kyū", "Nine", () {
        player.play(AssetSource('sounds/numbers/number_nine_sound.mp3'));
      }),
      NumberItems("assets/images/numbers/number_ten.png", "Jū", "Ten", () {
        player.play(AssetSource('sounds/numbers/number_ten_sound.mp3'));
      }),
    ];
    return Scaffold(
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
              const Color(0xffEF9235),
              items[index].func),
          itemCount: items.length,
        ));
  }
}
