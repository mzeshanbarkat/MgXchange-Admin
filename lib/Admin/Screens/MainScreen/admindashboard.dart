import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:mgxchangeadmin/Admin/Screens/MainScreen/approveordeleteitemlist.dart';
import 'package:mgxchangeadmin/Admin/Screens/MainScreen/itemlist.dart';
import 'package:mgxchangeadmin/Components/carddesign.dart';
import 'package:mgxchangeadmin/Data/Constant.dart';
import 'package:mgxchangeadmin/Rider/Screens/MainScreen/riderprofile.dart';

import 'adminprofile.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Admin Dashboard",
          style: Textt2.textStyle(Colors.white, 22.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Mian Zeshan",
                style: Textt2.textStyle(Colors.white, 18.0),
              ),
              accountEmail: Text(
                "zee@gmail.com",
                style: Textt1.textStyle(Colors.white, 15.0),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                backgroundImage: AssetImage('assets/zeshan1.jpg'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(ItemList());
              },
              child: ListTile(
                title: Text(
                  'View Items',
                  style: Textt2.textStyle(FontColor, 15),
                ),
                leading: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.searchengin,
                    ),
                    onPressed: () {}),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(LoanSell());
              },
              child: ListTile(
                title: Text(
                  'Approve Reject Items',
                  style: Textt2.textStyle(FontColor, 15),
                ),
                leading: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.check,
                    ),
                    onPressed: () {}),
              ),
            ),

            GestureDetector(
              onTap: () {
                Get.to(AdminProfile());
              },
              child: ListTile(
                title: Text(
                  'Profile',
                  style: Textt2.textStyle(FontColor, 15),
                ),
                leading: IconButton(
                    icon: Icon(
                      Icons.person_outline,
                    ),
                    onPressed: () {}),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(LoanSell());
              },
              child: ListTile(
                title: Text(
                  'Logout',
                  style: Textt2.textStyle(FontColor, 15),
                ),
                leading: IconButton(
                    icon: Icon(
                      Icons.logout,
                    ),
                    onPressed: () {}),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 200,
                color: kPrimarycolor,
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(ItemList());
                              },
                              child: CarddDesign(
                                icn: FontAwesomeIcons.searchengin,
                                textt: "View Items",
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(ApproveorDeleteItem());
                              },
                              child: CarddDesign(
                                icn: FontAwesomeIcons.check,
                                icn2: FontAwesome5.ban,
                                textt: "Approve Reject Items",
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(AdminProfile());
                              },
                              child: CarddDesign(
                                icn: Icons.person_outline,
                                textt: "Profile",
                              ),
                            ),
                          ),

                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: CarddDesign(
                                icn: Icons.logout,
                                textt: "Logout",
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
