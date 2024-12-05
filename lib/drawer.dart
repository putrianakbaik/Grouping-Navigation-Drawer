import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'title',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      drawer: buildGroupDrawer(context),
      body: Center(
        child: Text("Pemrograman Mobile $title"),
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 10.0,
      //   mainAxisSpacing: 10.0,
      //   shrinkWrap: true,
      //   children: List.generate(10, (index){
      //     return Padding(
      //       padding: EdgeInsets.all(10.0),
      //       child: Container(
      //         height: 5.0,
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular( 20.0),
      //           color: Colors.blue[900]
      //         ),
      //           child: Text ('materi$index',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(color: Colors.black, fontSize: 20,),)
      //     )
      //     );
      //   })
      // ),
    );
  }

  Widget buildGroupDrawer(context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue[900]),
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue[900]),
            accountName: Text(
              "Rahmalia Putri Pratiwi",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            accountEmail: Text("rahmalia.xpplg2@gmail.com"),
            currentAccountPictureSize: Size.square(40),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "T",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          //     child: Text('Rahmalia Putri Pratiwi', style: TextStyle(color: Colors.white, fontSize: 30)),
          // ),
          // ExpansionTile(
          //   title: const Text('Materi'),
          //   children: [
          //     ListTile(title: Text('Materi 1'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Materi 2'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Materi 3'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Materi 4'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Materi 5'), onTap: (){Navigator.pop(context);},),
          //   ]
          // ),
          // ExpansionTile(
          //   title: const Text('Tugas'),
          //   children: [
          //     ListTile(title: Text('Tugas 1'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Tugas 2'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Tugas 3'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Tugas 4'), onTap: (){Navigator.pop(context);},),
          //     ListTile(title: Text('Tugas 5'), onTap: (){Navigator.pop(context);},),
          //   ]
          //
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Rahmalia"),
          subtitle: Text("XII RPL 2"),
          trailing: Icon(Icons.chevron_right),
        )
      ]),
    );
  }
}