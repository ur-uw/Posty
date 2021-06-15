import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class PlatformWidget<C extends Widget, M extends Widget>
    extends StatelessWidget {
  PlatformWidget(Key? key) : super(key: key);
  C buildCupertinoWidget(BuildContext context);
  M buildMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      //Use cupertino on ios
      return buildCupertinoWidget(context);
    } else {
      //Use material on android
      return buildMaterialWidget(context);
    }
  }
}

abstract class GetPlatformWidget<C extends GetView<GetxController>,
    M extends GetView<GetxController>> extends StatelessWidget {
  GetPlatformWidget(Key? key) : super(key: key);
  C buildCupertinoWidget(BuildContext context);
  M buildMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      //Use cupertino on ios
      return buildCupertinoWidget(context);
    } else {
      //Use material on android
      return buildMaterialWidget(context);
    }
  }
}
