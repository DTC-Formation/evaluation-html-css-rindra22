import 'package:evaluation_flutter_design/model/new_model.dart';
import 'package:evaluation_flutter_design/ui/color_ui.dart';
import 'package:flutter/material.dart';

class NewView extends StatelessWidget {
    final NewModel? newModel;
    final bool? isLast;
    final bool? isFirst;

    const NewView({Key? key, this.newModel, this.isFirst, this.isLast}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            color: ColorTheme.softVeryDark,
            child: Column(
                children: [
            
                    isFirst! ? 
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Padding(
                                    padding: EdgeInsets.only(top: 15, left: 20,bottom: 25),
                                    child: Text(
                                        "New",
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.w900,
                                            color: ColorTheme.softOrange,
                                        ),
                                    ),
                                ),
                            ],
                        )
                        : Container(),
            
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Text(
                                    newModel!.title!,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        height: 1.7,
                                        color: ColorTheme.softWhite,
                                    ),
                                ),
                            ),
                        ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20,right: 22),
                        child: Text(
                            newModel!.description!,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.7,
                                color: ColorTheme.softBlue,
                            ),
                        ),
                    ),
            
                    !isLast! ? 
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Divider(
                                color: ColorTheme.softBlue,
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                            ),
                        )
                        : Container(),
                ],
            ),
        );
    }
}