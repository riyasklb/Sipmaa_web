import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:reg_login/app/modules/screens/Settings/controller/settings_controller.dart';
import 'package:reg_login/app/modules/screens/Settings/views/widgets/change_password.dart';
import 'package:reg_login/app/modules/screens/Settings/views/widgets/profile_widget.dart';
import 'package:reg_login/app/modules/screens/Settings/views/widgets/widgets.dart';

import '../../../../data/components/constands.dart';
import '../../../../data/components/constands/formfield.dart';
import '../../../../../widget/search_field.dart';
import '../../../../data/components/costom_button.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

TextEditingController textController = TextEditingController();

class _SettingsPageState extends State<SettingsPage> {
  int index = 0;
  final settingsController = Get.find<SettingsController>();
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
              onPressed: () => Get.toNamed('/settings-page'),
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
          InkWell(
              onTap: () => Get.toNamed('/sign-in'),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Obx(
                () => Container(
                  child: Column(
                    children: [
                      ksizedbox30,
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                settingsController.settingIndex(0);
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: settingsController
                                                    .settingIndex.value ==
                                                0
                                            ? kblue
                                            : kwhite,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                height: 25,
                                width: 100,
                                decoration: BoxDecoration(
                                    color:
                                        settingsController.settingIndex.value ==
                                                0
                                            ? kwhite
                                            : kblue,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                settingsController.settingIndex(1);
                              },
                              child: Container(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Text(
                                      'Change password',
                                      style: TextStyle(
                                          color: settingsController
                                                      .settingIndex.value ==
                                                  1
                                              ? kblue
                                              : kwhite,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                height: 25,
                                decoration: BoxDecoration(
                                    color:
                                        settingsController.settingIndex.value ==
                                                1
                                            ? kwhite
                                            : kblue,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                settingsController.settingIndex(2);
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'Privacy',
                                    style: TextStyle(
                                        color: settingsController
                                                    .settingIndex.value ==
                                                2
                                            ? kblue
                                            : kwhite,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                height: 25,
                                width: 80,
                                decoration: BoxDecoration(
                                    color:
                                        settingsController.settingIndex.value ==
                                                2
                                            ? kwhite
                                            : kblue,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                settingsController.settingIndex(3);
                              },
                              child: Container(
                                child: Center(
                                  child: Text(
                                    'Tearms & Conditions',
                                    style: TextStyle(
                                        color: settingsController
                                                    .settingIndex.value ==
                                                3
                                            ? kblue
                                            : kwhite,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                height: 25,
                                width: 150,
                                decoration: BoxDecoration(
                                    color:
                                        settingsController.settingIndex.value ==
                                                3
                                            ? kwhite
                                            : kblue,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            )
                          ],
                        ),
                        height: 30,
                        width: 900,
                        decoration: BoxDecoration(
                            color: kblue,
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      ksizedbox30,
                      if (settingsController.settingIndex.value == 0)
                        Profilewidget(),
                      if (settingsController.settingIndex.value == 1)
                        Changepassword(),
                      if (settingsController.settingIndex.value == 2) Privacy(),
                      if (settingsController.settingIndex.value == 3)
                        Termsandconditions()
                    ],
                  ),
                  //  height: 800,
                  width: 1000,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
