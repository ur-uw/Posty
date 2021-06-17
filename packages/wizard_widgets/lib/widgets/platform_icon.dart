part of '../wizard_widgets.dart';

class PlatformIcon extends PlatformWidget {
  PlatformIcon(
      {Key? key, required this.materialIcon, required this.cupertinoIcon})
      : super(key);
  final Widget materialIcon;
  final Widget cupertinoIcon;
  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return cupertinoIcon;
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return materialIcon;
  }
}
