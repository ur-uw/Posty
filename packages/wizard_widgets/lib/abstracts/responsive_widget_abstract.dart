part of '../wizard_widgets.dart';

abstract class ResponsiveWidget<M extends Widget, T extends Widget,
    D extends Widget> extends StatelessWidget {
  ResponsiveWidget({Key? key}) : super(key: key);

  M buildMobileWidget(BuildContext context);

  T buildTabletWidget(BuildContext context);

  D buildDesktopWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 640) {
        return buildMobileWidget(context);
      } else if (constrains.maxWidth >= 640 && constrains.maxWidth <= 1007) {
        return buildTabletWidget(context);
      } else {
        return buildDesktopWidget(context);
      }
    });
  }
}
