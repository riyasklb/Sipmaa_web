import 'package:flutter/material.dart';
import 'package:reg_login/constands.dart';

class HomeFriendsWidget extends StatefulWidget {
  const HomeFriendsWidget({super.key});

  @override
  State<HomeFriendsWidget> createState() => _HomeFriendsWidgetState();
}

int _friendsindex=0;
class _HomeFriendsWidgetState extends State<HomeFriendsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.88,
      width: MediaQuery.of(context).size.width*0.21,
      decoration: BoxDecoration(
        color: kwhite,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0.0, 0.75),
            blurRadius: 0.5,
            color: kgrey
          )
        ],
        borderRadius: BorderRadius.circular(10)
      ),
      
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Row(
              children: [
                Text('Friends',
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 10,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      _friendsindex=0;

                    });
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color:_friendsindex==0? kblue:kwhite,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(0.0, 0.75),
                          color: kgrey,
                          blurRadius: 0.5
                        )
                      ],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text('Your Friends',
                    style: TextStyle(
                      fontSize: 12.5,
                      color: _friendsindex==0?kwhite:Colors.black
                    ),)),
                  ),
                ),
                InkWell(
                  onTap: (){
                  
                  },
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: _friendsindex==1? kblue:kwhite,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(0.0, 0.75),
                          color: kgrey,
                          blurRadius: 0.5
                        )
                      ],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text('Request',
                    style: TextStyle(fontSize: 12.5,
                    color: _friendsindex==1?kwhite:Colors.black),)),
                  ),
                ),
                 
              ],
            ),
          ),
          if(_friendsindex==0)
          Column(
            children: [
            Row(
              children: [
                Image.asset('assets/images/profile.png.png',fit: BoxFit.fitHeight,height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text('Kirshna'),
                      Text('HR community',style: TextStyle(fontSize: 13),)
                    ],
                  ),
                )
              ],
            )
            ],
          )
        ],
      ),
    );
  }
}