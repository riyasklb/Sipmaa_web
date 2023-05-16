import 'package:flutter/material.dart';
import 'package:reg_login/constands.dart';

import '../widget/search_field.dart';

class HOMEPAGE extends StatefulWidget {
  const HOMEPAGE({super.key});

  @override
  State<HOMEPAGE> createState() => _HOMEPAGEState();
}

TextEditingController textController = TextEditingController();

class _HOMEPAGEState extends State<HOMEPAGE> {
  int index = 0;

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
          Image.asset('assets/images/profile.png'),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
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
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: kblue,
                                    ),
                                    ksizedbox10,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: kblue,
                                    ),
                                    ksizedbox10,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.filter_alt_rounded,
                                      color: kblue,
                                    ),
                                    ksizedbox10,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      color: kblue,
                                    ),
                                    ksizedbox10,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: kblue,
                                    ),
                                    ksizedbox10,
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
                                      child: Text(
                                        'Profile',
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
                                      Icons.person,
                                      color: kwhite,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 6),
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
          )
        ],
      ),
    );
  }
}
