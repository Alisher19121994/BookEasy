import 'package:flutter/material.dart';
import '../../pages/mainScreens/savedPlusPage/renameAlertDialog/rename_page.dart';
import '../../pages/mainScreens/savedPlusPage/title_page.dart';

Widget savedDataListItem(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.pushNamed(context, TitlePage.id);
    },
    child: Container(
      margin: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Title',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              PopupMenuButton(
                  offset: const Offset(0, 40),
                  elevation: 29,
                  iconSize: 22,
                  itemBuilder: (BuildContext context) => [
                        //#Rename
                        PopupMenuItem<int>(
                          height: 50,
                          value: 3,
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: InkWell(
                              onTap: () {

                                Navigator.push(context, MaterialPageRoute(builder: (_)=> const RenameSavedPage()));
                              },
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rename',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //#Delete
                        PopupMenuItem<int>(
                          height: 50,
                          value: 3,
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: InkWell(
                              onTap: () {},
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Delete',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //#Share
                        PopupMenuItem<int>(
                          height: 50,
                          value: 3,
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: InkWell(
                              onTap: () {},
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ])
            ],
          ),
          const Divider(thickness: 1.0)
        ],
      ),
    ),
  );
}
