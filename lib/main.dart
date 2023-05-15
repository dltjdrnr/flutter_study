import 'package:flutter/material.dart';
import 'package:simple_practice/time/save_time.dart';
import 'package:simple_practice/worldTime/worldTime.dart';
void main(){
  runApp(const alarm());

}
class alarm extends StatefulWidget {

  const alarm({Key? key}) : super(key: key);
  @override
  _AlarmState createState() => _AlarmState();
}
class _AlarmState extends State<alarm>{
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "MyApp",
      home: Scaffold(
        backgroundColor: Colors.grey,
        bottomNavigationBar: BottomNavigationBar(

          items: const[

            BottomNavigationBarItem(
                label: "alarm",
                icon: Text("알람"),
            ),
            BottomNavigationBarItem(
              label: "worldTime",
              icon: Text("세계시간"),
            ),
            BottomNavigationBarItem(
              label: "stopwatch",
              icon: Text("스톱워치"),
            ),
            BottomNavigationBarItem(
              label: "timer",
              icon: Text("타이머"),
            ),
          ],

          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),

      body: SafeArea(
        child:Center(
        child:_items[_selectedIndex],
      )),
      ),

    );
  }
  List _items = [
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:Text('16시간 37분 후에 알람이 울립니다.',style: TextStyle(fontSize: 40),),

                  ),
                  Container(
                    child: Text('3월 13일 (월) 오후 3시35분',style: TextStyle(fontSize: 10),),
                  )
                ],
              )
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Container(
              child:Column(
                children:const[
                  savetime("강의", "7:00", "오전","월 화 수 목 금 토 일",true),
                  savetime("","9:00","오후","월 화 수 목 금 토 일",true),
                  savetime("기상","7:50","오후","월 화 수 목 금 토 일",false),
                  savetime("","9:00","오후","월 화 수 목 금 토 일",false),
                ],
              )
          )
        ],
      ),
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:Text('타이머입니다.',style: TextStyle(fontSize: 40),),

                  ),
                  Container(
                    child: Text('현재시간',style: TextStyle(fontSize: 10),),
                  )
                ],
              )
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 5, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.add),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Container(
              child:Column(
                children:const[
                  savetime("강의", "7:00", "오전","월 화 수 목 금 토 일",true),
                  savetime("","9:00","오후","월 화 수 목 금 토 일",true),

                ],
              )
          )
        ],
      ),
    ),
  ];
  void _onItemTap(int index){
    setState((){
      _selectedIndex = index;
    });
    // if(index == 0){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>alarm()),);
    // }else if(index ==1){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>worldTime()),);
    // }
  }
}

