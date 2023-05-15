import 'package:flutter/material.dart';

class savetime extends StatelessWidget {
  final String time;
  final String info;
  final String ampm;
  final String week;
  final bool a;

  const savetime(this.info, this.time, this.ampm, this.week, this.a, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text((info == "" ? "" : info)),
                      ),
                      Container(
                        child: RichText(
                          text:TextSpan(
                            text:ampm,style: TextStyle(fontSize: 15),
                            children: <TextSpan>[
                              TextSpan(
                                text: time,
                                style: TextStyle(fontSize: 35),
                              )
                            ]
                          )
                          // ampm + time,
                          // style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                        child: Text(
                          week,
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                      ToggleWidget(isOn: a,),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ToggleWidget extends StatelessWidget {
  final bool isOn;

  ToggleWidget({
    super.key, required this.isOn
  });

  @override
  Widget build(BuildContext context) {
    if(isOn){
      return Container(
        child: Icon(
          Icons.toggle_on,
          size: 55,
          color: Colors.greenAccent,
        ),
      );
    }
    return Container(
      child: Icon(
        Icons.toggle_off,
        size: 55,
        color: Colors.black,
      ),
    );


  }
}
