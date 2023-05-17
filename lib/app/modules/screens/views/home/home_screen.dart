import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reg_login/app/modules/screens/views/friends_widget.dart';
import 'package:reg_login/app/modules/screens/views/home/widgets.dart';
import 'package:reg_login/constands.dart';

import '../../../../../widget/search_field.dart';
import 'controler/controler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController textController = TextEditingController();

class _HomePageState extends State<HomePage> {
  int index = 0;
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
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
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
                onTap: () {
                  Get.toNamed('/profile-screen');
                },
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.fitHeight,
                  height: 35,
                )),
          ),
        ],
      ),
      body: Row(
        children: [
          Obx(
            () => Container(
              width: MediaQuery.of(context).size.width / 8,
              color: kblue,
              child: Column(
                children: [
                  ksizedbox30,
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    homeController.homeindex.value == 0
                                        ? kwhite
                                        : kblue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              homeController.homeindex(0);
                              homeController.update();
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: homeController.homeindex.value == 0
                                      ? kblue
                                      : kwhite,
                                ),
                                ksizedbox10,
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 6),
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                        color:
                                            homeController.homeindex.value == 0
                                                ? kblue
                                                : kwhite,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  ksizedbox30,
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    homeController.homeindex.value == 1
                                        ? kwhite
                                        : kblue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              homeController.homeindex(1);
                              homeController.update();
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: homeController.homeindex == 1
                                      ? kblue
                                      : kwhite,
                                ),
                                ksizedbox10,
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 6),
                                  child: Text(
                                    'Search',
                                    style: TextStyle(
                                        color: homeController.homeindex == 1
                                            ? kblue
                                            : kwhite,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  ksizedbox30,
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: homeController.homeindex == 2
                                    ? kwhite
                                    : kblue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              homeController.homeindex(2);
                              homeController.update();
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.filter_alt_rounded,
                                  color: homeController.homeindex == 2
                                      ? kblue
                                      : kwhite,
                                ),
                                ksizedbox10,
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 6),
                                  child: Text(
                                    'Filter',
                                    style: TextStyle(
                                        color: homeController.homeindex == 2
                                            ? kblue
                                            : kwhite,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  ksizedbox30,
                  Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: homeController.homeindex == 3
                                    ? kwhite
                                    : kblue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              homeController.homeindex(3);
                              homeController.update();
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.notifications,
                                  color: homeController.homeindex == 3
                                      ? kblue
                                      : kwhite,
                                ),
                                ksizedbox10,
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 0),
                                  child: Text(
                                    'Notification',
                                    style: TextStyle(
                                        color: homeController.homeindex == 3
                                            ? kblue
                                            : kwhite,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  ksizedbox30,
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: homeController.homeindex == 4
                                    ? kwhite
                                    : kblue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              homeController.homeindex(4);
                              homeController.update();
                              Get.toNamed('/profile-screen');
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: homeController.homeindex == 4
                                      ? kblue
                                      : kwhite,
                                ),
                                ksizedbox10,
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 6),
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: homeController.homeindex == 4
                                            ? kblue
                                            : kwhite,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 50),
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
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 135),
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
                                'assets/images/logoutimage.png',
                                fit: BoxFit.fitHeight,
                                height: 21,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 6),
                              child: Column(
                                children: [
                                  Text(
                                    'Anas',
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
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 135),
          Row(
            children: [HomeContainer()],
          ),
          SizedBox(
            width: 135,
          ),
          Row(
            children: [HomeFriendsWidget()],
          )
        ],
      ),
    );
  }
}
