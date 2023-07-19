import 'package:evaluation_flutter_design/ui/color_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class openDrawer extends StatelessWidget {
    
    const openDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: RightToLeftDrawer(),
    );
  }
}

class RightToLeftDrawer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Drawer(
            backgroundColor: ColorTheme.softWhite,
            elevation: 0,
            width: MediaQuery.of(context).size.width * 0.74,
            child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                    Padding(
                    padding: const EdgeInsets.only(top: 50, right: 25),
                    child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                TextButton(
                                    onPressed: () {
                                        Navigator.pop(context);
                                    },
                                    child: SvgPicture.asset(
                                        'assets/images/icon-menu-close.svg',
                                        width: 40,
                                        height: 40,
                                    ),
                                )
                            ],
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 60,left: 8),
                        child: Column(
                            children: [
                                ListTile(
                                    title: Text(
                                        'Home',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                                color: ColorTheme.softVeryDark,
                                            ),
                                    ),
                                    onTap: () {
                                        Navigator.pop(context);
                                    },
                                ),
                                ListTile(
                                    title: Text(
                                        'New',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            color: ColorTheme.softVeryDark,
                                        ),
                                    ),
                                    onTap: () {
                                        Navigator.pop(context);
                                    },
                                ),
                                ListTile(
                                    title: Text(
                                        'Popular',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            color: ColorTheme.softVeryDark,
                                        ),
                                    ),
                                    onTap: () {
                                        Navigator.pop(context);
                                    },
                                ),
                                ListTile(
                                    title: Text(
                                        'Trending',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            color: ColorTheme.softVeryDark,
                                        ),
                                    ),
                                    onTap: () {
                                        Navigator.pop(context);
                                    },
                                ),
                                ListTile(
                                    title: Text(
                                        'Categories',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            color: ColorTheme.softVeryDark,
                                        ),
                                    ),
                                    onTap: () {
                                        Navigator.pop(context);
                                    },
                                ),
                            ],
                        ),
                    )
                ]   ,
            ),
        );
    }
}