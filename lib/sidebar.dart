import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(sidebar());
}

class sidebar extends StatefulWidget {
  const sidebar({super.key});

  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Center(
              child: Text(
                'This PC',
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text('Desktop'),
                leading: Icon(
                  Icons.folder_rounded,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Download'),
                leading: Icon(
                  Icons.download,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Documents'),
                leading: Icon(
                  Icons.document_scanner,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Pictures'),
                leading: Icon(
                  Icons.photo,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('One Drive'),
                leading: Icon(
                  Icons.drive_eta,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('3d objects'),
                leading: Icon(
                  Icons.emoji_objects_rounded,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Local Disk'),
                leading: Icon(
                  Icons.downhill_skiing,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Network'),
                leading: Icon(
                  Icons.network_cell,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          drawer: Container(
            width: 360,
            child: Drawer(
                child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/nature.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/f.jpg'),
                        radius: 40,
                      ),
                      Text(
                        'Yash Kandekar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            'kandekaryash33@gmail.com',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.blue,
                    size: 28,
                  ),
                  title: Text(
                    'My Files',
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.share,
                    size: 28,
                  ),
                  title: Text(
                    'Share',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.star,
                    size: 28,
                  ),
                  title: Text(
                    'Starred',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                new Divider(
                  thickness: 3,
                  indent: 10,
                  endIndent: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.file_upload,
                    size: 28,
                  ),
                  title: Text(
                    'Upload',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 28,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                new Divider(
                  thickness: 3,
                  indent: 10,
                  endIndent: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                    size: 28,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            )),
          )),
    );
  }
}
