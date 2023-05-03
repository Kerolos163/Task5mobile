import 'package:flutter/material.dart';

Widget ItemBuilder(String img,String txt1 ,String txt2,Color color,Function func) {
  return Container(
    height: 100,
    color:color ,
    child: Row(
      children: [
        Container(
            color: const Color(0xffFFF6DC),
            child: Image(image: AssetImage(img))),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                txt1,
                style: TextStyle(fontSize: 18),
              ),
              Text(txt2, style: TextStyle(fontSize: 18))
            ],
          ),
        ),
        const Spacer(),
        InkWell(
            onTap: () =>func(),
            child: const Icon(
              Icons.play_arrow_rounded,
              size: 30,
            )),
        const SizedBox(
          width: 20,
        )
      ],
    ),
  );
}
