import 'package:flutter/material.dart';
import 'package:instagram/Widgets/uihelper.dart';

class SearchScreen extends StatelessWidget {
TextEditingController searchController = TextEditingController();
var arrContent = [
  {
    "img": "https://iso.500px.com/wp-content/uploads/2018/05/Blog-marketplace-getty500px-48429366-nologo-3000x2000.png"
  },
  {
    "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s"
  },
  {
    "img": "https://thumbs.dreamstime.com/b/autumn-nature-landscape-colorful-forest-autumn-nature-landscape-colorful-forest-morning-sunlight-131400332.jpg"
  },
  {
    "img": "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/396e9/MainBefore.jpg"
  },
  {
    "img": "https://iso.500px.com/wp-content/uploads/2018/05/Blog-marketplace-getty500px-48429366-nologo-3000x2000.png"
  },
  {
    "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s"
  },
  {
    "img": "https://thumbs.dreamstime.com/b/autumn-nature-landscape-colorful-forest-autumn-nature-landscape-colorful-forest-morning-sunlight-131400332.jpg"
  },
  {
    "img": "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/396e9/MainBefore.jpg"
  },
  {
    "img": "https://iso.500px.com/wp-content/uploads/2018/05/Blog-marketplace-getty500px-48429366-nologo-3000x2000.png"
  },
  {
    "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1zwhySGCEBxRRFYIcQgvOLOpRGqrT3d7Qng&s"
  },
  {
    "img": "https://thumbs.dreamstime.com/b/autumn-nature-landscape-colorful-forest-autumn-nature-landscape-colorful-forest-morning-sunlight-131400332.jpg"
  },
  {
    "img": "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/396e9/MainBefore.jpg"
  },

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50,),
        Row(
          children: [
            SizedBox(width: 10,),
            Container(
              height: 36,
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFF262626)
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: UiHelper.CustomImage(imgurl: "SearchIcon.png"),
                  hintStyle: TextStyle(fontSize: 14, color: Color(0XFF8E8E93), fontWeight: FontWeight.normal),
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Live.png"),

          ],
        ),
        SizedBox(height: 20,),
        Row(children: [
          SizedBox(width: 15,),
          Container(
            height: 32,
            width: 75,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(3)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.CustomImage(imgurl: "Icon.png"),
              SizedBox(width: 5,),
              Text("IGTV", style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),)
            ],),
          ),
          SizedBox(width: 5,),
          Container(
            height: 32,
            width: 75,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_bag, color: Colors.white, size: 15,),
                SizedBox(width: 5,),
                Text("Shop", style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),)
              ],),
          ),
          SizedBox(width: 5,),
          Container(
            height: 32,
            width: 75,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Style", style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),)
              ],),
          ),
          SizedBox(width: 5,),
          Container(
            height: 32,
            width: 75,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sports", style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),)
              ],),
          ),
          SizedBox(width: 5,),
          Container(
            height: 32,
            width: 48,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                borderRadius: BorderRadius.circular(3)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Auto", style: TextStyle(fontSize: 14, color: Color(0XFFF9F9F9)),)
              ],),
          )
        ],),
        Expanded(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
            return Container(
              clipBehavior: Clip.antiAlias,
              height: 124,
              width: 124,
              decoration: BoxDecoration(),
              child: Image.network(arrContent[index]["img"].toString(), fit: BoxFit.cover,),
            );
          }, itemCount: arrContent.length,),
        )

      ],)
    );
  }
}
