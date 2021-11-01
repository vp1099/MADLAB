import 'package:flutter/material.dart';
// import 'traffic.dart';

void main() {
  runApp(const MaterialApp(
    title: "SSN Workshop",
    home:
        Traffic(), // pass the name of the class, which will be the initial class flutter will load
  ));
}

class Traffic extends StatelessWidget {
  const Traffic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Grapes'), backgroundColor: Colors.lightBlueAccent),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}
