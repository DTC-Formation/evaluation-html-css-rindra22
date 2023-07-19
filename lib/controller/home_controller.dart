import 'package:evaluation_flutter_design/model/last_new_model.dart';
import 'package:evaluation_flutter_design/model/new_model.dart';
import 'package:evaluation_flutter_design/ui/color_ui.dart';
import 'package:evaluation_flutter_design/view/last_new_view.dart';
import 'package:evaluation_flutter_design/view/new_view.dart';
import 'package:evaluation_flutter_design/view/open_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeController extends StatelessWidget {
    HomeController({super.key});

    List<NewModel> newLists = NewModel.list;
    List<LastNewModel> lastNewLists = LastNewModel.list;

    void _openDrawer(BuildContext context) {
        Scaffold.of(context).openEndDrawer();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                leadingWidth: 45,
                leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SvgPicture.asset(
                        'assets/images/logo.svg',
                        width: 20,
                        height: 20,
                    ),
                ),
                actions: [
                    Builder(
                        builder: (context) => TextButton(
                            onPressed: () {
                                _openDrawer(context);
                            },
                            child: SvgPicture.asset(
                                'assets/images/icon-menu.svg',
                                width: 15,
                                height: 15,
                            ),
                        ),
                    ),
                    SizedBox(width: 10),
                ],
            ),

            body: SingleChildScrollView(
                child: Column(
                    children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Container(
                                        height: MediaQuery.of(context).size.height * 0.3,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(2),
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/image-web-3-mobile.jpg'),
                                                fit: BoxFit.cover,
                                            ),
                                        ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                        "The Bright \n Future of Web \n 3.0 ?",
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.w900,
                                            color: ColorTheme.softVeryDark,
                                        ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                        "We dive into the next evolution of the web that claims to put the power of the platforms back into the hands of the people. But is it really fulfilling its promise?",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            height: 1.7,
                                            color: ColorTheme.softDark,
                                        ),
                                    ),

                                    SizedBox(height: 20),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                            "READ MORE",
                                            style: TextStyle(
                                                fontSize: 16,
                                                letterSpacing: 4.5,
                                                fontWeight: FontWeight.w600,
                                                color: ColorTheme.softWhite,
                                            ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: ColorTheme.softRed,
                                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(1),
                                            ),
                                        ),
                                    ),

                                    SizedBox(height: 30),

                                    newLists.length > 0 ? ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: newLists.length,
                                        itemBuilder: (context, index) {
                                            return NewView(
                                                newModel: newLists[index],
                                                isFirst: index == 0 ? true : false,
                                                isLast: index == newLists.length - 1 ? true : false,
                                            );
                                        },
                                    ) : Container(),

                                    SizedBox(height: 30),

                                    lastNewLists.length > 0 ? ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: lastNewLists.length,
                                        itemBuilder: (context, index) {
                                            return LastNewView(
                                                lastNewModel: lastNewLists[index],
                                            );
                                        },
                                    ) : Container(),
                                ],
                            ),
                        ),
                    ],
                ),
            
            ),
            endDrawer: RightToLeftDrawer(),
        );
    }
}
  