import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_to_contribute/data/contributors_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Flutter Learners"),
        centerTitle: true,
      ),
      // TODO 3: Understand this Widget Tree
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.lightGreen[300], Colors.blue[300]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: contributors.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: index % 2 == 0
                              ? Radius.circular(30)
                              : Radius.circular(0),
                          bottomLeft: index % 2 != 0
                              ? Radius.circular(30)
                              : Radius.circular(0),
                          topRight: Radius.circular(30)),
                      border: Border.all(color: Colors.black38, width: 2),
                      gradient: LinearGradient(
                          colors: contributors[index].gradientColors ??
                              [Colors.purpleAccent, Colors.yellow[300]],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FittedBox(
                            child: Text(
                              contributors[index].name,
                              textScaleFactor: 1.3,
                              style: TextStyle(fontWeight: FontWeight.w500),
                              maxLines: 1,
                            ),
                          ),
                        ),

                        /// checking if instagram username is empty or null
                        contributors[index].instagram == null
                            ? Text("ig : ~NONE~")
                            : Text(
                                "ig : @${contributors[index].instagram}",
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),

                        /// checking if message is null
                        contributors[index].message == null
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\" ${contributors[index].message.toString()} \"",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

// TODO 4: Hit run 🚀
