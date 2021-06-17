part of '../wizard_widgets.dart';

///A widget that will make the code of handling states of lists coming from internet simpler
class ListStateWidget extends ListStateAbstract {
  ListStateWidget({
    Key? key,
    required List? list,
    required this.emptyListWidget,
    required this.loadingListWidget,
    required this.notEmptyListWidget,
  }) : super(key: key, list: list);

  final Widget emptyListWidget;
  final Widget loadingListWidget;
  final Widget notEmptyListWidget;

  @override
  Widget buildForEmptyList(BuildContext context) {
    return emptyListWidget;
  }

  @override
  Widget buildForLoading(BuildContext context) {
    return loadingListWidget;
  }

  @override
  Widget buildForNotEmptyList(BuildContext context) {
    return notEmptyListWidget;
  }
}
