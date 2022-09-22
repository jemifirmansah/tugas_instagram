import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_picture.dart';

import '../widgets/info_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "aboutt_mi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoitem("Post", "14"),
                    infoitem("Followers", "22"),
                    infoitem("Following", "5"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text("jemi firmansah",
            style:TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: RichText(
              text: TextSpan(
                text: "gatau males, pengen beli trekkk.  ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "#Navicula",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            )
          ),
          SizedBox(height: 6,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              "link uhuyyy",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 6,),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              "Edit Profile",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          ),
                    SizedBox(height: 6,),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[300],
                        ),
                      ),
                        Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 141, 141, 141),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          image: DecorationImage(
                            image: NetworkImage("https://i.pinimg.com/736x/c8/c2/9d/c8c29d5725b649ee6f1eb2c3b3fe44b3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text("plant"),
                ],
              ),
            ],
          ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Icon(Icons.grid_on_outlined),
                ),
              ),
              Expanded(
                child: Icon(Icons.person_pin_outlined),
              ),
              
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 213,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6bbk_XTskwOSPIlGbOwc1eMmTNl5Z3tKphQ&usqp=CAU",
            ) ,
          ),
        ],
      ),
    );
  }
}


