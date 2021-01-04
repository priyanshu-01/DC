import 'package:flutter/material.dart';
import 'package:dev_community/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.grey[700],
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.grey[700]])),
        child: SingleChildScrollView(
          child: Container(
            height: 740.0,
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Active Tasks',
                            style: TextStyle(color: orangeText),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Total Active Tasks: 20',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: textBackground,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Recently Added',
                                        style: TextStyle(color: orangeText),
                                      ),
                                      Text('New Task'),
                                      Text('This is the new task New Task'),
                                      Text('Due date: 27/11/2020'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: textBackground,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Recently Added',
                                        style: TextStyle(color: orangeText),
                                      ),
                                      Text('New Task'),
                                      Text('This is the new task New Task'),
                                      Text('Due date: 27/11/2020'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.yellow[600],
                                          Colors.orange[800]
                                        ])),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0, vertical: 8.0),
                                  child: Text(
                                    'View All',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.orange,
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
