import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(45, 245, 245, 245),

      appBar: AppBar(
        iconTheme: const IconThemeData(
                color: Colors.blue, // 👈 change hamburger icon color
),
        elevation: 5,
        backgroundColor: Colors.blueGrey.shade900,
        centerTitle: true,
        title: const Text(
          "Homepage",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Hello 63C 👋",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Text(
              "Welcome to the homepage",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 180,
              width: 250,
              child: Card(
                elevation: 10,
                shadowColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.cyan,
                child: const Center(
                  child: Text(
                    "Beautiful Card",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 200,
              width: 320,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  )
                ],
              ),
              child: const Text(
                "Add Image Here",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(123, 25, 32, 200),
        foregroundColor: Colors.amber,
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text("Add"),
      ),

      endDrawer: Drawer(
         backgroundColor: Colors.grey,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(150, 0, 0, 255)),
              accountName: Text("Iftekar Hussain"),
              accountEmail: Text("iftekar@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.person, color: Colors.black),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Color.fromARGB(255, 85, 12, 12)),
              title: Text("Homepage"),
            ),

            ListTile(
              leading: Icon(Icons.person, color: Colors.blueGrey),
              title: Text("Profile Page"),
            ),
          ],
        ),
      ),
    );
  }
}