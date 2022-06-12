import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_painter.dart';

class HistoryElement extends StatelessWidget{
  String maleName;
  String femaleName;
  String date;

  HistoryElement({required this.maleName, required this.femaleName, required this.date});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset("assets/female.svg"),
              ),
              Container(
                width: 2,
                height: 43,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffEE56F1),
                      Color(0xff366CD3)
                    ]
                  )
                ),
              ),
              SizedBox(
                width: 15,
                height: 15,
                child: SvgPicture.asset("assets/male.svg"),
              )
            ]
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(femaleName, style: TextStyle(color: Color(0xFFD9D9D9), fontSize: 14)), 
                Spacer(),
                Text(maleName, style: TextStyle(color: Color(0xFFD9D9D9), fontSize: 14))
              ],
            )
            ),
            Spacer(),
            Text(date, style: TextStyle(color: Color(0xFFD9D9D9)))
            
      ]) ,
    );
  }
}