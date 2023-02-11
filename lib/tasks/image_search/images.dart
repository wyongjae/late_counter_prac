import 'dart:convert';
import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;

    const results = """[
      {
        "id": 634572,
        "pageURL":
            "https://pixabay.com/photos/apples-fruits-red-ripe-vitamins-634572/",
        "type": "photo",
        "tags": "apples, fruits, red",
        "previewURL":
            "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
        "previewWidth": 100,
        "previewHeight": 150,
        "webformatURL":
            "https://pixabay.com/get/g7f17ce10cc37a9ce47fa936e5c0089ad60c357f78f1130c597cb4692360796d9ab20b2b19b34af822e95a19e60e748e8_640.jpg",
        "webformatWidth": 427,
        "webformatHeight": 640,
        "largeImageURL":
            "https://pixabay.com/get/g13142aa34c3ea393fdcd2fb95901ade8f932b4f0240c8eb6963e6d47ed8ee2a85b8b0ce9e0638de90756d16997ec929d0e5443c47362c66c2559092047ae3226_1280.jpg",
        "imageWidth": 3345,
        "imageHeight": 5017,
        "imageSize": 811238,
        "views": 406062,
        "downloads": 232195,
        "collections": 2947,
        "likes": 2287,
        "comments": 180,
        "user_id": 752536,
        "user": "Desertrose7",
        "userImageURL":
            "https://cdn.pixabay.com/user/2016/03/14/13-25-18-933_250x250.jpg"
      },
      {
        "id": 4352072,
        "pageURL":
            "https://pixabay.com/photos/new-york-usa-nyc-ny-manhattan-4352072/",
        "type": "photo",
        "tags": "new york, usa, nyc",
        "previewURL":
            "https://cdn.pixabay.com/photo/2019/07/21/07/12/new-york-4352072_150.jpg",
        "previewWidth": 150,
        "previewHeight": 90,
        "webformatURL":
            "https://pixabay.com/get/g1de3a2cf73918455b3582dc6c9c02031b5cfcd8b12a59b72528175ccc404ac65f336c63c9c88e6ac8bd1b418f622e8eabafc6fd8139915e65b0643f0608af79a_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 385,
        "largeImageURL":
            "https://pixabay.com/get/g69338ae1c7c1ba41c99cc436aabd37bbd19381ad7098cc22aaf8a87e6935b58cbdc347105eedffcf26c2e84bfec5182dadec6be5d1469c161eb163e02b6ed8a6_1280.jpg",
        "imageWidth": 5000,
        "imageHeight": 3010,
        "imageSize": 3526990,
        "views": 93550,
        "downloads": 71450,
        "collections": 3028,
        "likes": 179,
        "comments": 31,
        "user_id": 1131094,
        "user": "Leonhard_Niederwimmer",
        "userImageURL":
            "https://cdn.pixabay.com/user/2020/05/13/18-42-49-177_250x250.jpg"
      },
      {
        "id": 2557571,
        "pageURL":
            "https://pixabay.com/photos/laptop-apple-macbook-computer-2557571/",
        "type": "photo",
        "tags": "laptop, apple, macbook",
        "previewURL":
            "https://cdn.pixabay.com/photo/2017/07/31/11/44/laptop-2557571_150.jpg",
        "previewWidth": 150,
        "previewHeight": 99,
        "webformatURL":
            "https://pixabay.com/get/g21c8279b84123ccd9212f8f268ad108310df03433b979401392cb9b78a91eb60400701b5282fee3098558df7250a4eaf80837110960429baf305f29f0ba1cc2b_640.jpg",
        "webformatWidth": 640,
        "webformatHeight": 426,
        "largeImageURL":
            "https://pixabay.com/get/g520b0e5f1a42d61742c25bfb4944ad2722d753e1f3b08d6f933cb32f446a6cfb24a30ccee9d3ca7b765db91c6d5df70b50df2e79017d1ee7a7e49e1c6259c9f9_1280.jpg",
        "imageWidth": 4460,
        "imageHeight": 2973,
        "imageSize": 780651,
        "views": 159236,
        "downloads": 93232,
        "collections": 2338,
        "likes": 440,
        "comments": 62,
        "user_id": 894430,
        "user": "StockSnap",
        "userImageURL":
            "https://cdn.pixabay.com/user/2015/03/30/12-22-31-508_250x250.jpg"
      }
    ]""";

    List<dynamic> list = jsonDecode(results);

    List<Map<String, dynamic>> imageList =
        list.map((e) => e as Map<String, dynamic>).toList();

    return Text(imageList[currentIndex]['pageURL']);
  }
}