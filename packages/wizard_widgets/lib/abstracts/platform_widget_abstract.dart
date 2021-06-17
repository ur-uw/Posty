part of '../wizard_widgets.dart';

///Abstract for platform aware widget
///Used to implement platform specifice widget for
///[Platform.isAndroid], [Platform.isIOS]
///NOTE: THIS WIDGET IS NOT RESPONSIVE
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

///Abstract for platform aware widget
///Used to implement platform specifice widget for
///[Platform.isAndroid], [Platform.isIOS]
///NOTE: BUILD METHODS MUST RETURN [ResponsiveWidget]
abstract class PlatformResponsiveWidget<C extends ResponsiveWidget,
    M extends ResponsiveWidget> extends ResponsiveWidget {
  PlatformResponsiveWidget(Key? key) : super(key: key);
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
