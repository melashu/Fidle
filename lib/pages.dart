// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:fidle/page2.dart';
import 'package:fidle/splash/ads.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Pages> {
  BannerAd? _bannerAd;
  BannerAd? finalAd;
  bool isLoaded = false;
// @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _bannerAd = BannerAd(
    //     //ca-app-pub-4486573175271410/5279458908 my add unit id
    //     adUnitId: "ca-app-pub-3940256099942544/6300978111",
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
        title: const Text("Google adds"),
      ),
      // ignore: sized_box_for_whitespace
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        child: AdWidget(
          ad: Ads().createAds()!,
        ),
      ),

      // ignore: sized_box_for_whitespace
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Pages2();
                }));
              },
              child: Text(
                'Next Page',
                style: TextStyle(fontSize: 15),
              ))),
    );
  }

  bool get isLoadedWell {
    return isLoaded;
  }
}
