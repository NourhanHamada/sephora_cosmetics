import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sephora',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title: const Text(
          "Sephora",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 33,
            color: Colors.amber,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                  Icons.search,
              ),
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(
                  Icons.notifications_active_outlined,
              ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
                image: NetworkImage(
                  "https://image.influenster.com/eyJidWNrZXQiOiAiaW5mbHVlbnN0ZXJfcHJvZHVjdGlvbiIsICJrZXkiOiAibWVkaWEvcHJvZHVjdC9pbWFnZS9tdWRfbWFzay5wbmciLCAiZWRpdHMiOiB7InJvdGF0ZSI6IG51bGwsICJyZXNpemUiOiB7IndpZHRoIjogNzUwLCAiaGVpZ2h0IjogNzUwLCAiZml0IjogImluc2lkZSIsICJiYWNrZ3JvdW5kIjogeyJyIjogMSwgImciOiAxLCAiYiI6IDEsICJhbHBoYSI6IDB9LCAid2l0aG91dEVubGFyZ2VtZW50IjogdHJ1ZX19LCAiZXh0ZW5kIjoge319",
                ),
              width: 400,
              height: 400,
            ),
            const Text(
                "Mud Mask",
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w500,
                color: Colors.amber,
                fontStyle: FontStyle.italic,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "50 \$",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
                ),

              ),
            ),
            const Text(
                "This Mask is clean your skin Deeply, It's Perfect for your night routine",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 22,

              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  shadowColor: Colors.grey,
                  elevation: 7,
                ),
                  onPressed: (){
                  // A Method to add Pop Window
                  MotionToast.success(
                    position: MotionToastPosition.top,
                    title: const Text('Added To Cart Successfully!'),
                    description: const Text(
                      'Thanks ♡'),
                  ).show(context);


                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Add To Cart",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.amber,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Icon(
          // back to the last page
          Icons.undo_sharp,
          size: 30,
          color: Colors.amber,
        ),
      ),
    );
  }
}
