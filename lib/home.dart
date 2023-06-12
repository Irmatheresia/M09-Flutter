import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/send.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  buttonSheets(BuildContext context) {
    return Builder(builder: (context) {
      return Center(
        child: TextButton(
          onPressed: () {
            showBottomSheet(
                enableDrag: true,
                context: context,
                builder: (context) {
                  final theme = Theme.of(context);
                  return Wrap(
                    children: [
                      ListTile(
                        title: const Text(
                          'Social Media',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                        tileColor: theme.colorScheme.primary,
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.facebook),
                        title: Text('Facebook'),
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.twitter),
                        title: Text('Twitter'),
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.whatsapp),
                        title: Text('WhatsApp'),
                      )
                    ],
                  );
                });
          },
          child: Icon(Icons.home),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '211111213 - IrmaTheresia',
          ),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text('Tere'),
                  accountEmail: Text("tere@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("T"),
                  )),
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.send,
                ),
                title: const Text('Sent'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Send()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.archive,
                ),
                title: const Text('Archive'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[],
              title: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    icon: Icon(Icons.history),
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                  ),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: TabBarView(
              children: [
                buttonSheets(context),
                Icon(
                  Icons.history_edu,
                  size: 50.0,
                ),
                Icon(
                  Icons.search,
                  size: 50.0,
                ),
              ],
            ),
          ),
        ));
  }
}
