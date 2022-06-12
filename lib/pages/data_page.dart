import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:horoscope/elements/button.dart';

class DataPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _DataPage();
}

class _DataPage extends State<DataPage>{
  int _tabIconIndexSelected = 0;

  Color matchColor(index){
    if(index == 0){
      return Color(0xFF6B3DED);
    } else {
      return Color(0xFFA642C5);
    }
  }
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
          padding: EdgeInsets.fromLTRB(24, 59, 24, 24),
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
            children: [
              Stack(
                children: [
                  Container(alignment: Alignment.center, child: Text("Ваши данные", style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 20, fontWeight: FontWeight.bold),),),
                  GestureDetector(
                    onTap: ()=> Navigator.pop(context),
                    child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Color(0xFFEEEEEE), width: 1)),
                    alignment: Alignment.centerLeft, 
                    child: Center(child: SvgPicture.asset("assets/arrow.svg"))),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 34),
                padding: EdgeInsets.fromLTRB(16, 39, 16, 39),
                 decoration: BoxDecoration(
                  color: Color(0xFF6B3DED).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 26),
                      child: FlutterToggleTab(
                      selectedBackgroundColors: [
                        matchColor(_tabIconIndexSelected)
                      ],
                      unSelectedBackgroundColors: [
                        Colors.grey.withOpacity(0.5)
                      ],
                      width: 50,
                      borderRadius: 30,
                      selectedIndex: _tabIconIndexSelected,
                      selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16),
                      unSelectedTextStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                      labels: [
                        "Мужчина",
                        "Женщина"
                      ],
                      selectedLabelIndex: (index) {
                        setState(() {
                          _tabIconIndexSelected = index;
                        });
                      },
                      
                    ),
                    ),
                    

                    Container(
                      margin: EdgeInsets.only(bottom: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Дата и время рождения", style: TextStyle(color: Colors.white, fontSize: 16),),
                          Container(
                            margin: EdgeInsets.only(top: 17),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(16)
                            ),
                            height: 56,
                            width: MediaQuery.of(context).size.width,
                            child: Row(children: [
                             
                              Spacer(),
                              GestureDetector(
                                onTap: (){
                                },
                                child: SvgPicture.asset("assets/calendar.svg"),
                              )
                            ],)
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 17),
                            child: Text("Место рождения", style: TextStyle(color: Colors.white, fontSize: 16),),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide.none,
                                ),
                                hintText: "Введите страну",
                                fillColor: Colors.white.withOpacity(0.1),
                                filled: true,
                                
                              ),
                            ),
                          ),
                          
                          TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide.none,
                                ),
                                hintText: "Введите город",
                                fillColor: Colors.white.withOpacity(0.1),
                                filled: true,
                                
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 17),
                            child: Text("Ваше имя", style: TextStyle(color: Colors.white, fontSize: 16),),
                          ),
                          TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide.none,
                                ),
                                hintText: "Введите имя",
                                fillColor: Colors.white.withOpacity(0.1),
                                filled: true,
                                
                              ),
                            ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Text("Сбросить", style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16),),
                    )
                  ],
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: GradientButton(
                child: Text("Далее", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                width: MediaQuery.of(context).size.width,
                height: 44,
                borderRadius: BorderRadius.circular(10),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DataPage()));},
                gradient: LinearGradient(
                  colors: [Color(0xFF693CEE), Color(0xFFA742C4)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft
                ),
              ),
              )
            ],
      ))))
      
    );
  }
}