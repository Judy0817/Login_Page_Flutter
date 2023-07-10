import 'package:flutter/material.dart';
import '../Screens/home.dart';
import '../Screens/loginScreen.dart';


Align SignInSignUpBtn(String text, Function() onTap) {
  return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 150.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.purple,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ));
}

AppBar MyappBar(String text) {
  return AppBar(
    title: Text(text),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      )
    ],
    backgroundColor: Color(0xFF43073c),
  );
}

Widget MyDrawer(BuildContext context, String email, String name) {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xFF43073c),
          ),
          accountEmail: Text(email),
          accountName: Text(name),
          currentAccountPicture: CircleAvatar(
            foregroundImage: AssetImage("images/mySaree.jpg"),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("My Profile"),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),

        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Contact Us"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.login),
          title: Text("Sign In"),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("LogOut"),
          onTap: () {},
        ),


      ],
    ),
  );
}

SnackBar errorMessage(String msg){
  return SnackBar(
    content: Container(
        padding: const EdgeInsets.all(16),
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            const Text("ERROR",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Text(msg,
              style: const TextStyle(color: Colors.black54,fontSize: 14),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        )
    ),
    behavior: SnackBarBehavior.fixed,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}

Align SignInSignUpBtnearlier(String text, {required void Function() onTap}) {
  return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 150.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.purple,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ));
}


