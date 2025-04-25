import 'package:flutter/material.dart';

mixin DefaultScaffoldMixin on Widget {
  String? get title => null;

  List<Widget>? buildActions() => null;

  Color? get appBarBackgroundColor => null;

  double? get appBarElevation => 0;

  PreferredSizeWidget? buildAppBar() {
    return AppBar(
      title: Text(title ?? ""),
      actions: buildActions(),
      backgroundColor: appBarBackgroundColor,
      elevation: appBarElevation,
      bottom: buildAppBarBottom(),
    );
  }

  PreferredSizeWidget? buildAppBarBottom() {
    return null;
  }

  Widget? buildFloatingActionButton(BuildContext context) => null;

  Widget? buildBottomNavigationBar(BuildContext context) => null;

  Color? get backgroundColor => null;

  String? get backgroundImage => null;

  bool? get resizeToAvoidBottomInset => null;

  bool get extendBody => false;

  bool get extendBodyBehindAppBar => false;

  String? get customDebugBannerText => null;

  Widget buildBody(BuildContext context);

  Widget build(BuildContext context) {
    Widget scaffold = Scaffold(
      appBar: buildAppBar(),
      body: backgroundImage != null
          ? Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: backgroundImage != null
                        ? DecorationImage(
                            image: AssetImage(backgroundImage!),
                            fit: BoxFit.cover)
                        : null,
                    color: backgroundColor,
                  ),
                ),
                buildBody(context),
              ],
            )
          : buildBody(context),
      floatingActionButton: buildFloatingActionButton(context),
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      bottomNavigationBar: buildBottomNavigationBar(context),
    );

    if (customDebugBannerText != null && customDebugBannerText!.trim() != "") {
      return Stack(
        children: [
          scaffold,
          Align(
            alignment: Alignment.bottomRight,
            child: Banner(
              message: customDebugBannerText ?? "",
              location: BannerLocation.bottomEnd,
            ),
          ),
        ],
      );
    } else {
      return scaffold;
    }
  }
}
