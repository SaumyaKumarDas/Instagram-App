import 'package:flutter/material.dart';
import 'package:instagram/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      "img":
          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "Your Story",
    },
    {
      "img":
          "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg",
      "name": "Karenne",
    },
    {
      "img":
          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "jackdonn",
    },
    {
      "img":
          "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg",
      "name": "kieron_d",
    },
    {
      "img":
          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "Your Story",
    },
    {
      "img":
          "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg",
      "name": "Karenne",
    },
    {
      "img":
          "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "jackdonn",
    },
    {
      "img":
          "https://imgv3.fotor.com/images/slider-image/A-clear-image-of-a-woman-wearing-red-sharpened-by-Fotors-image-sharpener.jpg",
      "name": "kieron_d",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: UiHelper.CustomImage(imgurl: "Camera Icon.png"),
        title: UiHelper.CustomImage(imgurl: "Instagram Logo (1).png"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgurl: "IGTV.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgurl: "Messanger.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        arrContent[index]["img"].toString(),
                      ),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrContent[index]["name"].toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Container(
            height: 54,
            width: double.infinity,
            color: Colors.black12,
            child: ListTile(
              leading: UiHelper.CustomImage(imgurl: "Oval.png"),
              title: Text(
                "joshua_I",
                style: TextStyle(fontSize: 13, color: Color(0XFFF9F9F9)),
              ),
              subtitle: Text(
                "Tokyo, Japan",
                style: TextStyle(fontSize: 11, color: Color(0XFFF9F9F9)),
              ),
              trailing: UiHelper.CustomImage(imgurl: "Shape1.png"),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            clipBehavior: Clip.antiAlias,
            height: 375,
            width: double.infinity,
            decoration: BoxDecoration(

            ),
             child: Image.asset("assets/images/Rectangle.png", fit: BoxFit.cover,)
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Heart.png"),
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Message.png"),
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Arrow.png"),
            SizedBox(width: 220,),
            UiHelper.CustomImage(imgurl: "Save.png")
          ],),
          Row(children: [
            SizedBox(width: 20,),
            UiHelper.CustomImage(imgurl: "Oval1.png"),
            SizedBox(width: 5,),
            Text("Liked by criag_love and 44,686 others", style: TextStyle(fontSize: 13, color: Color(0XFFF9F9F9)),)

          ],)
        ],
      ),
    );
  }
}
