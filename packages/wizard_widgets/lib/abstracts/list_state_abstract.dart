part of '../wizard_widgets.dart';

///Abstract class used to check passed [list] state
///If the list is empty [buildForEmptyList] method will be used
///Else if the list is not empty [buildForNotEmptyList] method will be used
///Else [buildForLoading] method will be used
abstract class ListStateAbstract<Loading extends Widget, Empty extends Widget,
    NotEmpty extends Widget> extends StatelessWidget {
  final List? list;

  ListStateAbstract({Key? key, required this.list}) : super(key: key);

  Empty buildForEmptyList(BuildContext context);

  NotEmpty buildForNotEmptyList(BuildContext context);

  Loading buildForLoading(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (list != null) {
      if (list!.isEmpty) return buildForEmptyList(context);
      return buildForNotEmptyList(context);
    } else {
      return buildForLoading(context);
    }
  }
}
