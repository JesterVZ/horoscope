import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horoscope/elements/button.dart';
import 'package:horoscope/pages/data_page.dart';

import '../elements/history_element.dart';

class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f0729),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.7, -0.7),
            radius: 0.6,
            colors: [
              Color(0xFF29124b),
              Color(0xFF0f0729)
            ]
          )
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(24, 128, 24, 24),
          decoration: const BoxDecoration(
            gradient: RadialGradient(
            center: Alignment(-0.9, 0.9),
            radius: 0.6,
            colors: [
              Color(0xFF29124b),
              Color(0xFF0f0729)
            ]
          )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text("Пройдите тест на совместимость со своим настоящим, прошлым или будущим партнёром.", style: TextStyle(color: Colors.white, fontSize: 14)),
                    ),
                    Text("Коэффициент не показывает личностные качества человека, он даёт оценку ваших шансов быть вместе. Программа не учитывает воспитание, окружение, факторы наследственности. И прежде всего, в делах сердечных прислушайтесь к своей интуиции, тогда у вас все получится!", style: TextStyle(color: Colors.white, fontSize: 14)),

                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 24, bottom: 24), 
                child: ExpansionTile(
                  title: Text("История сравнений", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                  children: [
                      HistoryElement(femaleName: "Анна", maleName: "Александр", date: "01.06.2022",),
                      HistoryElement(femaleName: "Анна", maleName: "Александр", date: "01.06.2022",),
                      HistoryElement(femaleName: "Анна", maleName: "Александр", date: "01.06.2022",)
                  ],
                )),
              GradientButton(
                child: Text("Рассчитать совместимость", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                width: MediaQuery.of(context).size.width,
                height: 44,
                borderRadius: BorderRadius.circular(10),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DataPage()));},
                gradient: LinearGradient(
                  colors: [Color(0xFF693CEE), Color(0xFFA742C4)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft
                ),
              )
            ],
          ),
          
        ),
      ),
    
      )
    );
  }
}