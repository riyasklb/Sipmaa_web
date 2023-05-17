import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/route_manager.dart';

import '../../../../../constands.dart';
import '../../../../../widget/search_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

TextEditingController textController = TextEditingController();

class _ProfileScreenState extends State<ProfileScreen> {
  int index = 0;
  List postimage = [
    'assets/images/Group 89.png',
    'assets/images/Group 89.png',
    'assets/images/Group 89.png',
    'assets/images/Group 89.png',
    'assets/images/Group 89.png','assets/images/Rectangle 807.png'
  ];
  @override
  Widget build(BuildContext context) {
    var text = Text(
      '8.5k',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCAE1FF),
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        actions: [
          SearchWidget(
            textController: textController,
          ),
          IconButton(
              onPressed: () =>Get.toNamed('/settings-page'),
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              )),
          InkWell(onTap: () => Get.toNamed( '/sign-in'),
            child: Image.asset('assets/images/profile.png')),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 8,
            color: kblue,
            child: Column(
              children: [
                ksizedbox30,
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      index == 0
                          ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kwhite,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: kblue,
                                  ),
                                  ksizedbox10,
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                          color: kblue,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ))
                          : Row(
                              children: [
                                Icon(Icons.home),
                                Text(
                                  'Home',
                                  style: TextStyle(color: kwhite),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
                ksizedbox30,
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      index == 1
                          ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kwhite,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: kblue,
                                  ),
                                  ksizedbox10,
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Search',
                                      style: TextStyle(
                                          color: kblue,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: kwhite,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Search',
                                      style: TextStyle(color: kwhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
                ksizedbox30,
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      index == 1
                          ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kwhite,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.filter_alt_rounded,
                                    color: kblue,
                                  ),
                                  ksizedbox10,
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Filter',
                                      style: TextStyle(
                                          color: kblue,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.filter_alt_rounded,
                                    color: kwhite,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Filter',
                                      style: TextStyle(color: kwhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
                ksizedbox30,
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      index == 1
                          ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kwhite,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: kblue,
                                  ),
                                  ksizedbox10,
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Notification',
                                      style: TextStyle(
                                          color: kblue,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: kwhite,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Notification',
                                      style: TextStyle(color: kwhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
                ksizedbox30,
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      index == 1
                          ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kwhite,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () => Get.toNamed('/profile-screen'),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: kblue,
                                  ),
                                  ksizedbox10,
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: InkWell(
                                      onTap:
                                          () {}, //=>Get.toNamed('/profile-screen') ,
                                      child: Text(
                                        'Profile',
                                        style: TextStyle(
                                            color: kblue,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                          : Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: kwhite,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 6),
                                    child: Text(
                                      'Profile',
                                      style: TextStyle(color: kwhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kwhite,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            color: kblue,
                          ),
                          ksizedbox10,
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 6),
                            child: Text(
                              'Create',
                              style: TextStyle(
                                  color: kblue, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 135),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(52, 52),
                          backgroundColor: kwhite.withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              'assets/images/profile.png',
                              fit: BoxFit.fitHeight,
                              height: 21,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 6),
                            child: Column(
                              children: [
                                Text(
                                  'Sharmila',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 1),
                                  child: Text(
                                    'Developer',
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4, top: 5),
                            child: Icon(
                              Icons.power_settings_new,
                              size: 17,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),
                Stack(children: [
                  Container(
                    height: 112,
                    width: MediaQuery.of(context).size.width,
                    color: kblue,
                    child: Image.asset(
                      'assets/images/Rectangle 800.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Image.asset(
                          'assets/images/Icon metro-user-plus.png',
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/profile.png')
                  // Positioned(
                  //     top: 168,
                  //     left: 50,
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 155, top: 8),
                  //       child: Container(
                  //         height: 26.5,
                  //         child: CircleAvatar(
                  //             radius: 30,
                  //             backgroundImage:
                  //                 AssetImage('assets/images/Rectangle 809.png'),
                  //             backgroundColor: Colors.grey,
                  //             child: Icon(Icons.add)),
                  //       ),
                  //     ))
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 1000, right: 100),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          backgroundColor: kblue,
                          minimumSize: Size(50, 40)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Icon metro-user-plus.png'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Request',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Riyas',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    )),
                ksizedbox10,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                ),
                ksizedbox30,
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            color: kblue),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Friends',
                                  style: TextStyle(color: kwhite, fontSize: 16,fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '4.4T',
                                  style: TextStyle(
                                      color: kwhite,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            color: kblue),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Poster',
                                  style: TextStyle(color: kwhite, fontSize: 16,fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '5.5k',
                                  style: TextStyle(
                                      color: kwhite,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        Container(
                          height: 60,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            color: kblue),
                          child: Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Likes',
                                  style: TextStyle(color: kwhite, fontSize: 16,fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '2.5k',
                                  style: TextStyle(
                                      color: kwhite,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                   
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: Row(
                    children: [
                      Text(
                        'ALL Post',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 500,
                    child: GridView.builder(
                        itemCount: postimage.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 30,
                            crossAxisSpacing: 30),
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.white,
                            child: Image.asset(postimage[index]),
                          );
                        }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
