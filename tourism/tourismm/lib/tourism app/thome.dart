import 'package:flutter/material.dart';
import 'package:tourismm/tourism%20app/tlogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThomeUi extends StatefulWidget {
  const ThomeUi({Key? key}) : super(key: key);

  @override
  State<ThomeUi> createState() => _ThomeUiState();
}

class _ThomeUiState extends State<ThomeUi> {
  late SharedPreferences preferences;
  late int views;
  var image = [
    "assets/image/m1.jpeg",
    "assets/image/m2.jpeg",
    "assets/image/m3.jpeg",
    "assets/image/m4.jpeg",
    "assets/image/m5.jpeg",
  ];
  var names = [
    "Mysore",
    "Chennai",
    "Kerala",
    "Delhi",
    "Goa"
  ];

  @override
  void initState() {
    super.initState();
    loadViewsFromSharedPreferences();
  }

  Future<void> loadViewsFromSharedPreferences() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      views = preferences.getInt('views') ?? 0;
    });
  }

  Future<void> incrementViews() async {
    views++;
    await preferences.setInt('views', views);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              backgroundColor: Colors.white,
              title: const Text("data"),
              leading: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              actions: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/0c/e4/c0/0ce4c04db6dc21013c52a43647e34759.jpg"),
                )
              ],
              bottom: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Search",
                      suffixIcon: Icon(Icons.search_rounded),
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    right: 10,
                    left: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Popular Places', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                      TextButton(
                        onPressed: () {},
                        child: const Text('View all', style: TextStyle(
                          color: Colors.blue,
                        ),),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Tlogin()));
                        incrementViews();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          right: 5,
                          left: 5,
                        ),
                        child: Container(
                          height: 500,
                          width: 440,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(image: AssetImage(image[index])),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 20,
                      child: Text(
                        names[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: SizedBox(
                        height: 40,
                        width: 60,
                        child: Card(
                          shape: const RoundedRectangleBorder(),
                          color: Colors.indigoAccent,
                          child: Center(
                            child: Text(
                              "$views",
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                childCount: 5,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 280.0,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
          onPressed: () {},
          child: const Text("Explore Now"),
        ),
      ),
    );
  }
}
