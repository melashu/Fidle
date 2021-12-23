// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:fidle/page3.dart';
import 'package:fidle/splash/ads.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:just_audio/just_audio.dart';

class Pages2 extends StatefulWidget {
  const Pages2({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Pages2> {
  // static AudioCache player = new AudioCache();
  BannerAd? _bannerAd;
  BannerAd? finalAd;
  bool isLoaded = false;

  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }
// @override

  void didChangeDependencies() {
    super.didChangeDependencies();
    // _bannerAd = BannerAd(
    //     //ca-app-pub-4486573175271410/5279458908 my add unit id
    //     adUnitId: "ca-app-pub-3935356099943544/6300978111",
    //     listener: BannerAdListener(onAdLoaded: (ad) {
    //       setState(() {
    //         isLoaded = true;
    //       });
    //     }, onAdFailedToLoad: (ad, error) {

    //     }),
    //     size: AdSize.banner,
    //     request: const AdRequest());
    // _bannerAd!.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("የፊደል ገበታ"),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        height: Ads().createAds()!.size.height.toDouble(),
        width: Ads().createAds()!.size.width.toDouble(),
        child: AdWidget(
          ad: Ads().createAds()!,
        ),
      ),
      drawer: Drawer(
          child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image(
                        image: AssetImage("images/login.jpg"),
                        fit: BoxFit.cover,
                      )),
                  accountName: Text(
                    "Prepared By: Melashu Amare",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("meshu102@gmail.com"))),
          // ignore: avoid_unnecessary_containers
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Company Name: Mount Technology PLC\nPhone Number: +251980631983 \nE-mail: meshu102@gmail.com\n",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
          Card(
              color: Colors.grey.shade200,
              child: ListTile(
                title: Text("About Us"),
                onTap: () async {
                  var url = 'https://keteraraw.com/our-team/';
                  if (await canLaunch(url)) {
                    await launch(url,
                        forceWebView: true,
                        forceSafariVC: true,
                        enableDomStorage: true);
                  } else {}
                },
              ))
        ],
      )),
      body: ListView(
        children: [
          Container(
            height: Ads().createAds()!.size.height.toDouble(),
            width: Ads().createAds()!.size.width.toDouble(),
            child: AdWidget(
              ad: Ads().createAds()!,
            ),
          ),
          Divider(
            color: Colors.lightBlueAccent,
            thickness: 1,
          ),
          Center(
              child: Text(
            "የፊደል ገበታ",
            style: TextStyle(fontSize: 35),
          )),
          Divider(
            color: Colors.lightBlueAccent,
            thickness: 1,
          ),
          /**
           * ha
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                      onPressed: () async {
                        await player.setAsset('assets/ha1.aac');
                        player.play();
                        // player.play("ha.aac");
                      },
                      child: Text(
                        "ሀ",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async{
                    await player.setAsset('assets/ha2.aac');
                        player.play();
                      },
                      child: Text("ሁ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async{
                        await player.setAsset('assets/ha3.aac');
                        player.play();
                      },
                      child: Text("ሂ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha4.aac');
                        player.play();
                      },
                      child: Text("ሃ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/ha5.aac');
                        player.play();
                      },
                      child: Text("ሄ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                     onPressed: () async {
                        await player.setAsset('assets/ha6.aac');
                        player.play();
                      },
                      child: Text("ህ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha7.aac');
                        player.play();
                      },
                      child: Text("ሆ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * End of ha
           */
          /**
           * le
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/le1.aac');
                        player.play();
                      },
                      child: Text(
                        "ለ",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/le2.aac');
                        player.play();
                      },
                      child: Text("ሉ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/le3.aac');
                        player.play();
                      },
                      child: Text("ሊ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/le4.aac');
                        player.play();
                      },
                      child: Text("ላ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                     onPressed: () async {
                        await player.setAsset('assets/le5.aac');
                        player.play();
                      },
                      child: Text("ሌ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/le6.aac');
                        player.play();
                      },
                      child: Text("ል",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/le7.aac');
                        player.play();
                      },
                      child: Text("ሎ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          )
          /**
           * End of le
           */
          /**
           * Haha
           */
          ,
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/ha1.aac');
                        player.play();
                      },
                      child: Text(
                        "ሐ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha2.aac');
                        player.play();
                      },
                      child: Text("ሑ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha3.aac');
                        player.play();
                      },
                      child: Text("ሒ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha4.aac');
                        player.play();
                      },
                      child: Text("ሓ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha5.aac');
                        player.play();
                      },
                      child: Text("ሔ",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha6.aac');
                        player.play();
                      },
                      child: Text("ሕ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ha7.aac');
                        player.play();
                      },
                      child: Text("ሖ",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end oh haha
           */
          /**
           * me
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/me1.aac');
                        player.play();
                      },
                      child: Text(
                        "መ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/me2.aac');
                        player.play();
                      },
                      child: Text("ሙ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/me3.aac');
                        player.play();
                      },
                      child: Text("ሚ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/me4.aac');
                        player.play();
                      },
                      child: Text("ማ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/me5.aac');
                        player.play();
                      },
                      child: Text("ሜ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/me6.aac');
                        player.play();
                      },
                      child: Text("ም",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/me7.aac');
                        player.play();
                      },
                      child: Text("ሞ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of me
           */
          /**
           * se
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/se1.aac');
                        player.play();
                      },
                      child: Text(
                        "ሠ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/se2.aac');
                        player.play();
                      },
                      child: Text("ሡ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se3.aac');
                        player.play();
                      },
                      child: Text("ሢ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/se4.aac');
                        player.play();
                      },
                      child: Text("ሣ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se5.aac');
                        player.play();
                      },
                      child: Text("ሤ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se6.aac');
                        player.play();
                      },
                      child: Text("ሥ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se7.aac');
                        player.play();
                      },
                      child: Text("ሦ",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of se
           */
          /**
           * se se
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/se1.aac');
                        player.play();
                      },
                      child: Text(
                        "ሰ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/se2.aac');
                        player.play();
                      },
                      child: Text("ሱ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/se3.aac');
                        player.play();
                      },
                      child: Text("ሲ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se4.aac');
                        player.play();
                      },
                      child: Text("ሳ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se5.aac');
                        player.play();
                      },
                      child: Text("ሴ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se6.aac');
                        player.play();
                      },
                      child: Text("ስ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/se7.aac');
                        player.play();
                      },
                      child: Text("ሶ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of se se 
           */
          /**
           * re
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/re1.aac');
                        player.play();
                      },
                      child: Text(
                        "ረ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/re2.aac');
                        player.play();
                      },
                      child: Text("ሩ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/re3.aac');
                        player.play();
                      },
                      child: Text("ሪ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/re4.aac');
                        player.play();
                      },
                      child: Text("ራ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/re5.aac');
                        player.play();
                      },
                      child: Text("ሬ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/re6.aac');
                        player.play();
                      },
                      child: Text("ር",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/re7.aac');
                        player.play();
                      },
                      child: Text("ሮ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of re
           */
          /**
           * sh
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/she1.aac');
                        player.play();
                      },
                      child: Text(
                        "ሸ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/she2.aac');
                        player.play();
                      },
                      child: Text("ሹ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/she3.aac');
                        player.play();
                      },
                      child: Text("ሺ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/she4.aac');
                        player.play();
                      },
                      child: Text("ሻ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/she5.aac');
                        player.play();
                      },
                      child: Text("ሼ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/she6.aac');
                        player.play();
                      },
                      child: Text("ሽ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/she7.aac');
                        player.play();
                      },
                      child: Text("ሾ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of sh
           */
          /**
           * qe
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                      onPressed: () async {
                        await player.setAsset('assets/qe1.aac');
                        player.play();
                      },
                      child: Text(
                        "ቀ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/qe2.aac');
                        player.play();
                      },
                      child: Text("ቁ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                     onPressed: () async {
                        await player.setAsset('assets/qe3.aac');
                        player.play();
                      },
                      child: Text("ቂ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/qe4.aac');
                        player.play();
                      },
                      child: Text("ቃ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/qe5.aac');
                        player.play();
                      },
                      child: Text("ቄ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/qe6.aac');
                        player.play();
                      },
                      child: Text("ቅ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/qe7.aac');
                        player.play();
                      },
                      child: Text("ቆ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of qe
           */
          /**
           * be
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                        onPressed: () async {
                        await player.setAsset('assets/be1.aac');
                        player.play();
                      },
                      child: Text(
                        "በ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/be2.aac');
                        player.play();
                      },
                      child: Text("ቡ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/be3.aac');
                        player.play();
                      },
                      child: Text("ቢ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/be4.aac');
                        player.play();
                      },
                      child: Text("ባ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/be5.aac');
                        player.play();
                      },
                      child: Text("ቤ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/be6.aac');
                        player.play();
                      },
                      child: Text("ብ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/be7.aac');
                        player.play();
                      },
                      child: Text("ቦ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),

          /**
           * end of be
           */
          /**
           * te
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/te1.aac');
                        player.play();
                      },
                      child: Text(
                        "ተ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/te2.aac');
                        player.play();
                      },
                      child: Text("ቱ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/te3.aac');
                        player.play();
                      },
                      child: Text("ቲ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/te4.aac');
                        player.play();
                      },
                      child: Text("ታ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/te5.aac');
                        player.play();
                      },
                      child: Text("ቴ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/te6.aac');
                        player.play();
                      },
                      child: Text("ት",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/te7cls.aac');
                        player.play();
                      },
                      child: Text("ቶ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of te
           */
          /**
           * ch
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                        onPressed: () async {
                        await player.setAsset('assets/ch1.aac');
                        player.play();
                      },
                      child: Text(
                        "ቸ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ch2.aac');
                        player.play();
                      },
                      child: Text("ቹ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ch3.aac');
                        player.play();
                      },
                      child: Text("ቺ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ch4.aac');
                        player.play();
                      },
                      child: Text("ቻ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ch5.aac');
                        player.play();
                      },
                      child: Text("ቼ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ch6.aac');
                        player.play();
                      },
                      child: Text("ች",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ch7.aac');
                        player.play();
                      },
                      child: Text("ቾ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ch
           */
          /**
           * ne
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                     onPressed: () async {
                        await player.setAsset('assets/ne1.aac');
                        player.play();
                      },
                      child: Text(
                        "ነ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ne2.aac');
                        player.play();
                      },
                      child: Text("ኑ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ne3.aac');
                        player.play();
                      },
                      child: Text("ኒ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ne4.aac');
                        player.play();
                      },
                      child: Text("ና",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ne5.aac');
                        player.play();
                      },
                      child: Text("ኔ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ne6.aac');
                        player.play();
                      },
                      child: Text("ን",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ne7.aac');
                        player.play();
                      },
                      child: Text("ኖ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ne
           */
          /**
           * ng
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                        onPressed: () async {
                        await player.setAsset('assets/gn1.aac');
                        player.play();
                      },
                      child: Text(
                        "ኘ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                    onPressed: () async {
                        await player.setAsset('assets/gn2.aac');
                        player.play();
                      },
                      child: Text("ኙ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                     onPressed: () async {
                        await player.setAsset('assets/gn3.aac');
                        player.play();
                      },
                      child: Text("ኚ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/gn4.aac');
                        player.play();
                      },
                      child: Text("ኛ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/gn5.aac');
                        player.play();
                      },
                      child: Text("ኜ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                     onPressed: () async {
                        await player.setAsset('assets/gn6.aac');
                        player.play();
                      },
                      child: Text("ኝ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                     onPressed: () async {
                        await player.setAsset('assets/gn7.aac');
                        player.play();
                      },
                      child: Text("ኞ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ng
           */
          /**
           * a
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                      onPressed: () async {
                        await player.setAsset('assets/a1.aac');
                        player.play();
                      },
                      child: Text(
                        "አ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a2.aac');
                        player.play();
                      },
                      child: Text("ኡ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a3.aac');
                        player.play();
                      },
                      child: Text("ኢ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a4.aac');
                        player.play();
                      },
                      child: Text("ኣ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a5.aac');
                        player.play();
                      },
                      child: Text("ኤ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a6.aac');
                        player.play();
                      },
                      child: Text("እ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a7.aac');
                        player.play();
                      },
                      child: Text("ኦ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of a
           */
          /**
           * aa
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/a1.aac');
                        player.play();
                      },
                      child: Text(
                        "ዐ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/a2.aac');
                        player.play();
                      },
                      child: Text("ዑ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a3.aac');
                        player.play();
                      },
                      child: Text("ዒ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a4.aac');
                        player.play();
                      },
                      child: Text("ዓ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a5.aac');
                        player.play();
                      },
                      child: Text("ዔ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/a6.aac');
                        player.play();
                      },
                      child: Text("ዕ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/a7.aac');
                        player.play();
                      },
                      child: Text("ዖ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of aa
           */
          /**
           * ke
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                      onPressed: () async {
                        await player.setAsset('assets/k1.aac');
                        player.play();
                      },
                      child: Text(
                        "ከ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/k2.aac');
                        player.play();
                      },
                      child: Text("ኩ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/k3.aac');
                        player.play();
                      },
                      child: Text("ኪ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/k4.aac');
                        player.play();
                      },
                      child: Text("ካ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/k5.aac');
                        player.play();
                      },
                      child: Text("ኬ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/k6.aac');
                        player.play();
                      },
                      child: Text("ክ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/k7.aac');
                        player.play();
                      },
                      child: Text("ኮ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ke
           */
          /**
           * he
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                      onPressed: () {},
                      child: Text(
                        "ኸ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("ኹ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("ኺ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("ኻ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("ኼ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("ኽ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("ኾ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of he
           */
          /**
           * we
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/we1.aac');
                        player.play();
                      },
                      child: Text(
                        "ወ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                     onPressed: () async {
                        await player.setAsset('assets/we2.aac');
                        player.play();
                      },
                      child: Text("ዉ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/we3.aac');
                        player.play();
                      },
                      child: Text("ዊ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/we4.aac');
                        player.play();
                      },
                      child: Text("ዋ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/we5.aac');
                        player.play();
                      },
                      child: Text("ዌ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/we6.aac');
                        player.play();
                      },
                      child: Text("ው",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/we7.aac');
                        player.play();
                      },
                      child: Text("ዎ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /** end of we */
          /**
           * ze
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/z1.aac');
                        player.play();
                      },
                      child: Text(
                        "ዘ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/z2.aac');
                        player.play();
                      },
                      child: Text("ዙ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/z3.aac');
                        player.play();
                      },
                      child: Text("ዚ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/z4.aac');
                        player.play();
                      },
                      child: Text("ዛ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/z5.aac');
                        player.play();
                      },
                      child: Text("ዜ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/z6.aac');
                        player.play();
                      },
                      child: Text("ዝ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/z7.aac');
                        player.play();
                      },
                      child: Text("ዞ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ze
           */
          /**
           * xi
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/xi1.aac');
                        player.play();
                      },
                      child: Text(
                        "ዠ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/xi2.aac');
                        player.play();
                      },
                      child: Text("ዡ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/xi3.aac');
                        player.play();
                      },
                      child: Text("ዢ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/xi4.aac');
                        player.play();
                      },
                      child: Text("ዣ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/xi5.aac');
                        player.play();
                      },
                      child: Text("ዤ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/xi6.aac');
                        player.play();
                      },
                      child: Text("ዥ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/xi7.aac');
                        player.play();
                      },
                      child: Text("ዦ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of xi
           */
          /**
           * ye
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/ye1.aac');
                        player.play();
                      },
                      child: Text(
                        "የ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/ye2.aac');
                        player.play();
                      },
                      child: Text("ዩ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/ye3.aac');
                        player.play();
                      },
                      child: Text("ዪ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/ye4.aac');
                        player.play();
                      },
                      child: Text("ያ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ye5.aac');
                        player.play();
                      },
                      child: Text("ዬ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/ye6.aac');
                        player.play();
                      },
                      child: Text("ይ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/ye7.aac');
                        player.play();
                      },
                      child: Text("ዮ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ye
           */
          /**
           * de
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                         onPressed: () async {
                        await player.setAsset('assets/de1.aac');
                        player.play();
                      },
                      child: Text(
                        "ደ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                          onPressed: () async {
                        await player.setAsset('assets/de2.aac');
                        player.play();
                      },
                      child: Text("ዱ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/de3.aac');
                        player.play();
                      },
                      child: Text("ዲ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                          onPressed: () async {
                        await player.setAsset('assets/de4.aac');
                        player.play();
                      },
                      child: Text("ዳ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                          onPressed: () async {
                        await player.setAsset('assets/de5.aac');
                        player.play();
                      },
                      child: Text("ዴ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                          onPressed: () async {
                        await player.setAsset('assets/de6.aac');
                        player.play();
                      },
                      child: Text("ድ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                          onPressed: () async {
                        await player.setAsset('assets/de7.aac');
                        player.play();
                      },
                      child: Text("ዶ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of de
           */
          /**
           * je
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                          onPressed: () async {
                        await player.setAsset('assets/je1.aac');
                        player.play();
                      },
                      child: Text(
                        "ጀ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/je2.aac');
                        player.play();
                      },
                      child: Text("ጁ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/je3.aac');
                        player.play();
                      },
                      child: Text("ጂ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/je4.aac');
                        player.play();
                      },
                      child: Text("ጃ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/je5.aac');
                        player.play();
                      },
                      child: Text("ጄ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/je6.aac');
                        player.play();
                      },
                      child: Text("ጅ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/je7.aac');
                        player.play();
                      },
                      child: Text("ጆ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of je
           */
          /**
           * ge
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/g1.aac');
                        player.play();
                      },
                      child: Text(
                        "ገ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/g2.aac');
                        player.play();
                      },
                      child: Text("ጉ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/g3.aac');
                        player.play();
                      },
                      child: Text("ጊ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/g4.aac');
                        player.play();
                      },
                      child: Text("ጋ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/g5.aac');
                        player.play();
                      },
                      child: Text("ጌ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/g6.aac');
                        player.play();
                      },
                      child: Text("ግ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/g7.aac');
                        player.play();
                      },
                      child: Text("ጎ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
/**
 * end of ge
 */
/**
 * T
 */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/tt1.aac');
                        player.play();
                      },
                      child: Text(
                        "ጠ",
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/tt2.aac');
                        player.play();
                      },
                      child: Text("ጡ",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/tt3.aac');
                        player.play();
                      },
                      child: Text("ጢ",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/tt4.aac');
                        player.play();
                      },
                      child: Text("ጣ",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/tt5.aac');
                        player.play();
                      },
                      child: Text("ጤ",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/tt6.aac');
                        player.play();
                      },
                      child: Text("ጥ",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/tt7.aac');
                        player.play();
                      },
                      child: Text("ጦ",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of t
           */
          /**
           * che
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                        onPressed: () async {
                        await player.setAsset('assets/chh1.aac');
                        player.play();
                      },
                      child: Text(
                        "ጨ",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/chh2.aac');
                        player.play();
                      },
                      child: Text("ጩ",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/chh3.aac');
                        player.play();
                      },
                      child: Text("ጪ",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/chh4.aac');
                        player.play();
                      },
                      child: Text("ጫ",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/chh5.aac');
                        player.play();
                      },
                      child: Text("ጬ",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/chh6.aac');
                        player.play();
                      },
                      child: Text("ጭ",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/chh7.aac');
                        player.play();
                      },
                      child: Text("ጮ",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of che
           */
          /**
           * pi
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                         onPressed: () async {
                        await player.setAsset('assets/pi1.aac');
                        player.play();
                      },
                      child: Text(
                        "ጰ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/pi2.aac');
                        player.play();
                      },
                      child: Text("ጱ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/pi3.aac');
                        player.play();
                      },
                      child: Text("ጲ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/pi4.aac');
                        player.play();
                      },
                      child: Text("ጳ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                         onPressed: () async {
                        await player.setAsset('assets/pi5.aac');
                        player.play();
                      },
                      child: Text("ጴ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/pi6.aac');
                        player.play();
                      },
                      child: Text("ጵ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                        onPressed: () async {
                        await player.setAsset('assets/pi7.aac');
                        player.play();
                      },
                      child: Text("ጶ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of pi
           */
          /**
           * ts
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                         onPressed: () async {
                        await player.setAsset('assets/ts1.aac');
                        player.play();
                      },
                      child: Text(
                        "ጸ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                    onPressed: () async {
                        await player.setAsset('assets/ts2.aac');
                        player.play();
                      },
                      child: Text("ጹ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ts3.aac');
                        player.play();
                      },
                      child: Text("ጺ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/ts4.aac');
                        player.play();
                      },
                      child: Text("ጻ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ts5.aac');
                        player.play();
                      },
                      child: Text("ጼ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/ts6.aac');
                        player.play();
                      },
                      child: Text("ጽ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/ts7.aac');
                        player.play();
                      },
                      child: Text("ጾ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ts  
         *  */
          /**
          * ts ts
          */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/ts1.aac');
                        player.play();
                      },
                      child: Text(
                        "ፀ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ts2.aac');
                        player.play();
                      },
                      child: Text("ፁ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/ts3.aac');
                        player.play();
                      },
                      child: Text("ፂ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ts4.aac');
                        player.play();
                      },
                      child: Text("ጻ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ts5.aac');
                        player.play();
                      },
                      child: Text("ጼ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/ts6.aac');
                        player.play();
                      },
                      child: Text("ፅ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/ts7.aac');
                        player.play();
                      },
                      child: Text("ፆ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of ts ts 
           */
          /**
           * fe
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/f1.aac');
                        player.play();
                      },
                      child: Text(
                        "ፈ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/f2.aac');
                        player.play();
                      },
                      child: Text("ፉ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/f3.aac');
                        player.play();
                      },
                      child: Text("ፊ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/f4.aac');
                        player.play();
                      },
                      child: Text("ፋ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/f5.aac');
                        player.play();
                      },
                      child: Text("ፌ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/f6.aac');
                        player.play();
                      },
                      child: Text("ፍ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                       onPressed: () async {
                        await player.setAsset('assets/f7.aac');
                        player.play();
                      },
                      child: Text("ፎ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          /**
           * end of fe
           */
          /**
           * p
           */
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: [
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.black),
                       onPressed: () async {
                        await player.setAsset('assets/p1.aac');
                        player.play();
                      },
                      child: Text(
                        "ፐ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/p2.aac');
                        player.play();
                      },
                      child: Text("ፑ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/p3.aac');
                        player.play();
                      },
                      child: Text("ፒ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/p4.aac');
                        player.play();
                      },
                      child: Text("ፓ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/p5.aac');
                        player.play();
                      },
                      child: Text("ፔ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/p6.aac');
                        player.play();
                      },
                      child: Text("ፕ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                  TextButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          side: BorderSide(width: 1.0, color: Colors.blue),
                          minimumSize: Size(10, 10),
                          backgroundColor: Colors.white),
                      onPressed: () async {
                        await player.setAsset('assets/p7.aac');
                        player.play();
                      },
                      child: Text("ፖ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(),
          )
        ],
      ),
    );
  }

  bool get isLoadedWell {
    return isLoaded;
  }
}
