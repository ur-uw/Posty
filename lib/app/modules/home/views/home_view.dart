import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:posty/constants/colors.dart';
import 'package:wizard_widgets/wizard_widgets.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => print('menu'),
          icon: PlatformIcon(
            materialIcon: Icon(Icons.grid_view),
            cupertinoIcon: Icon(CupertinoIcons.square_grid_2x2),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => print('menu'),
            icon: PlatformIcon(
              materialIcon: Icon(Icons.notifications_none),
              cupertinoIcon: Icon(CupertinoIcons.bell),
            ),
          )
        ],
      ),
      body: Container(
        color: white,
        constraints: BoxConstraints.expand(
          height:
              Get.height - 160, // This line and height used for bottom navbar
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          children: [
            UserFeedInfo(),
            DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    onTap: (vale) => controller.setFeedViewIndex = vale,
                    indicatorColor: blacky,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                          child: text('Photos',
                              fontWeight: FontWeight.w500,
                              fontSize: getPScreenHeight(18))),
                      Tab(
                          child: text('Collections',
                              fontWeight: FontWeight.w500,
                              fontSize: getPScreenHeight(18))),
                      Tab(
                          child: text('About',
                              fontWeight: FontWeight.w500,
                              fontSize: getPScreenHeight(18))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserFeedInfo extends StatelessWidget {
  const UserFeedInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        getPScreenWidth(30),
        getPScreenHeight(40),
        getPScreenWidth(30),
        15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: text(
              'Mohammed Fadhil',
              fontSize: getPScreenHeight(28),
              fontWeight: FontWeight.w600,
              color: blacky,
            ),
          ),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Container(
                margin: EdgeInsets.only(right: getPScreenWidth(30)),
                width: 85,
                height: 115,
                decoration: BoxDecoration(
                  color: blacky,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: getPScreenHeight(15)),
                    child: text(
                      'Photographer',
                      color: blacky,
                      letterSpacing: 1.25,
                      fontSize: getPScreenHeight(18),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          text(
                            '15K',
                            fontSize: getPScreenHeight(24),
                            fontWeight: FontWeight.w500,
                            color: blacky,
                          ),
                          text(
                            'Followers',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.25,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getPScreenWidth(10)),
                        height: 60,
                        color: lightGray.withOpacity(0.7),
                        width: 0.75,
                      ),
                      Column(
                        children: [
                          text(
                            '2K',
                            fontSize: getPScreenHeight(24),
                            fontWeight: FontWeight.w500,
                            color: blacky,
                          ),
                          text(
                            'Following',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.25,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: getPScreenHeight(10)),
                  GestureDetector(
                    onTap: () => print('follow'),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: blacky,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: text('Follow', color: whiteLilac),
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
