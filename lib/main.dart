import 'package:flutter/material.dart';
import 'package:modelclass2grid/model.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const Mdlc()));
}

class Mdlc extends StatefulWidget {
  const Mdlc({Key? key}) : super(key: key);

  @override
  State<Mdlc> createState() => _MdlcState();
}

class _MdlcState extends State<Mdlc> {
  List Sam=[
    Rome(con: 'Calendar', pho: 'img/cal.png', subcon: 'March wednesday', subtex: '3 Events'),
    Rome(con: 'Activity', pho: 'img/act.png', subcon: 'Rose viewed your profile', subtex: ''),
    Rome(con: 'Groceries', pho: 'img/gro.jpg', subcon: 'Apple,Vegies', subtex: '4 Items'),
    Rome(con: 'Location', pho: 'img/loc.png', subcon: 'Back to home', subtex: ''),
    Rome(con: 'Settings', pho: 'img/set.jpg', subcon: 'Update', subtex: '2 Items'),
    Rome(con: 'To do', pho: 'img/todo.png', subcon: 'Weekly report', subtex: '4 Items')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Family',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    

                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sms,
                            size: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: Sam.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 10,
                    color: Colors.black12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(Sam[index].pho)),
                        SizedBox(height: 8,),
                       Text(
                          Sam[index].con,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(height: 8,),

                        Text(
                          Sam[index].subcon,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ), SizedBox(height: 8,),Text(
                          Sam[index].subtex,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ));
              },
            ),
          )
        ])));
  }
}
