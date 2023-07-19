import 'package:evaluation_flutter_design/model/last_new_model.dart';
import 'package:evaluation_flutter_design/ui/color_ui.dart';
import 'package:flutter/material.dart';

class LastNewView extends StatelessWidget {

    LastNewModel? lastNewModel;

    LastNewView({Key? key, this.lastNewModel}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
                children: [
                    Column(
                        children: [
                            Container(
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(lastNewModel!.image!),
                                        fit: BoxFit.cover,
                                    ),
                                ),
                            )
                        ],
                    ),
                    SizedBox(width: 20),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Row(
                                children: [
                                    Text(
                                        lastNewModel!.step!,
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.w600,
                                            color: ColorTheme.softBlue,
                                        ),
                                    ),
                                ],
                            ),
                            SizedBox(height: 10),
                            Row(
                                children: [
                                    Text(
                                        lastNewModel!.title!,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: ColorTheme.softVeryDark,
                                        ),
                                    ),
                                ],
                            ),
                            SizedBox(height: 10),
                            Row(
                                children: [
                                    Text(
                                        lastNewModel!.description!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            height: 1.7,
                                            overflow: TextOverflow.ellipsis,
                                            color: ColorTheme.softDark,
                                        ),
                                    ),
                                ],
                            ),
                        ],
                    ),
                ],
            ),
        );
    }
}