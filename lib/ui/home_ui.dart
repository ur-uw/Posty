import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posty/constants/app_themes.dart';
import 'package:posty/controllers/controllers.dart';

class HomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      // ignore: unnecessary_null_comparison
      builder: (controller) => controller.firestoreUser.value!.uid == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              appBar: AppBar(title: Text('Feed')),
              bottomNavigationBar: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: AppThemes.ebonyClay,
                ),
              ),
              body: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                physics: BouncingScrollPhysics(),
                children: [
                  ...List.generate(
                    10,
                    (index) => Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
