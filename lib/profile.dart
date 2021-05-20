import 'package:flutter/material.dart';

import 'colorThemes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // theme: ThemeData.light(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: pPrimaryColor,
          titleSpacing: 0,
          toolbarHeight: 60,
          elevation: 0,
          leading: Icon(
            Icons.lock_outline_rounded,
            color: Theme.of(context).textTheme.bodyText1.color,
          ),
          title: Text(
            'dipapndey',
            style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: 22),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              onPressed: () {},
              color: Theme.of(context).textTheme.bodyText1.color,
              iconSize: 28,
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
              color: Theme.of(context).textTheme.bodyText1.color,
              iconSize: 28,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: pDefaultPadding, vertical: pDefaultPadding * 0.5),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profilepic.jpg'),
                    radius: 43,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            '480',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            '102',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      // SizedBox(width: 15,),
                    ],
                  )
                ],
              ),
            ),
            //SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: pDefaultPadding, vertical: pDefaultPadding * 0.1),
              child: RichText(
                text: TextSpan(
                  text:
                      'Follow flutter_girlz❤️\n TCS\'er 😜 🤪 🤨\nFlutter Developer💛 ',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1.color),
                  children: <TextSpan>[
                    TextSpan(
                      text: '...more\n',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    TextSpan(
                        text: 'deepapandey.herokuapp.com/',
                        style: TextStyle(color: Colors.blue[400])),
                  ],
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 0,
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width * 0.92,
                        minHeight: 34.0),
                    // fillColor: Theme.of(context).textTheme.bodyText1.color,
                    fillColor: Colors.white,
                    child: Text(
                      'Edit Profile',
                      style: !isDark == true
                          ? TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500)
                          : TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500),
                    ),
                    padding: EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.grey[400], width: 1))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: pDefaultPadding * 0.7,
                  vertical: pDefaultPadding * 0.25),
              child: Row(
                children: [
                  buildCircleAvatar('assets/me.jpg'),
                  SizedBox(
                    width: pDefaultPadding * 0.8,
                  ),
                  buildCircleAvatar('assets/me2.jpg'),
                  SizedBox(
                    width: pDefaultPadding * 0.8,
                  ),
                  buildCircleAvatar('assets/me.jpg'),
                  SizedBox(
                    width: pDefaultPadding * 0.8,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor:
                          Theme.of(context).textTheme.bodyText1.color,
                      child: CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.white,
                        child: isDark
                            ? CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                                radius: 32,
                              )
                            : CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .color,
                                ),
                                radius: 32,
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_outlined,
                        color: Theme.of(context).textTheme.bodyText1.color,
                      ),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_outlined,
                          color: Theme.of(context).textTheme.bodyText1.color),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    color: isDark ? Colors.black : Colors.white,
                    child: GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                          children: List.generate(7, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                child: Image.asset('assets/profilepic.jpg'),
                              ),
                            );
                          }))
                  ),

                  // second tab bar viiew widget
                  Container(
                      color: isDark ? Colors.black : Colors.white,
                      child: GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                          children: List.generate(7, (index) {
                            return Text('data');
                          }))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  CircleAvatar buildCircleAvatar(String img) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.grey[350],
      child: CircleAvatar(
        radius: 34,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage(img),
          radius: 32,
        ),
      ),
    );
  }
}




