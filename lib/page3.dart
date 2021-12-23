// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:io';

import 'package:fidle/splash/ads.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:image_picker/image_picker.dart';

class Pages3 extends StatefulWidget {
  const Pages3({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Pages3> {
  // ignore: prefer_final_fields
  List<XFile>? _imageFileList = [];
  final ImagePicker _picker = ImagePicker();
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
    // Ads().initInterstitalAdds();
    // Ads().showIntAds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google adds"),
      ),
      body: ListView(
        children: [
          Center(child: Text("Page 3")),
          SizedBox(
            height: 190,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Next Page',
                style: TextStyle(fontSize: 15),
              )),
          ElevatedButton(
              onPressed: () async {
                // try {
                List<XFile>? pickedFileList = await _picker.pickMultiImage(
                    // source: ImageSource.camera,
                    // maxWidth: 100,
                    // maxHeight: 100,
                    // imageQuality: 100,
                    );
                if (pickedFileList!.isNotEmpty) {
                  // print("length==${pickedFileList.length}");
                  setState(() {
                    // _imageFileList = pickedFileList;
                  });
                  // _imageFileList = pickedFileList;
                } else {
                  print("not selected");
                }

                print("length==${_imageFileList!.length}");
                // } catch (e) {
                //   // setState(() {
                //   //   _pickImageError = e;
                //   // });
                //   print("Error==$e");
                // }
              },
              child: Text(
                'Browse Image',
                style: TextStyle(fontSize: 15),
              )),
          GridView.builder(
              shrinkWrap: true,
              itemCount: _imageFileList!.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemBuilder: (context, index) {
                return Image.file(
                  File(_imageFileList![index].path),
                  width: 100,
                  height: 50,
                  semanticLabel: "Meshu",
                );
              })
        ],
      ),
    );
  }
}
