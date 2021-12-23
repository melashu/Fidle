import 'package:fidle/pages.dart';
import 'package:fidle/splash/style.dart';
import 'package:flutter/material.dart';
import 'package:fidle/pages.dart' as p;
class Fidle extends StatefulWidget {
  const Fidle({Key? key}) : super(key: key);

  @override
  _FidleState createState() => _FidleState();
}

class _FidleState extends State<Fidle> {
  // var buttonKey=GlobalKey<IconState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Pages().createAds(),
          Container(
            margin: const EdgeInsets.all(5),
            decoration: Style.getDecoration,
            height: 60,
            child: const Center(
                child: Text(
              "ፊደል",
              style: TextStyle(fontSize: 30),
            )),
          ),
          // ignore: prefer_const_constructors
          Divider(
            color: Colors.blueAccent,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 3,
              // childAspectRatio: 2,
              // mainAxisSpacing: 20,
              // padding: EdgeInsets.all(10),
              // physics: ,
              children: [
                InkWell(
                  // onTap: () {
                  //   print("Ha is clicked");
                  // },
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    decoration: Style.getDecoration,
                    child: Center(
                      child: 
                          Text(
                            'ሀ',
                            style: Style.style,
                          ),
                      
                       
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    decoration: Style.getDecoration,
                    child: Center(
                      child: Text(
                        'ለ',
                        style: Style.style,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    decoration: Style.getDecoration,
                    child: Text(
                      'ሐ',
                      style: Style.style,
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    decoration: Style.getDecoration,
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      'መ',
                      style: Style.style,
                    ),
                  ),
                  onTap: () {},
                ),
                  InkWell(
                  child: Container(
                    decoration: Style.getDecoration,
                    margin: const EdgeInsets.all(3),
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      'Select Qr',
                      style: Style.style,
                    ),
                  ),
                  onTap: () {},
                )
              ],
              shrinkWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
