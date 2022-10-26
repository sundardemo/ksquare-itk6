import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print("Build method is calling");
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$count'),
            TextButton(
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                  //count += 1;

                  print(count);
                },
                child: Text("Add"))
          ],
        ),
      ),
    );
  }
}

// class CounterScreen extends StatelessWidget {
//   CounterScreen({super.key});
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text('$count'),
//             TextButton(
//                 onPressed: () {
//                   count += 1;
//                   print(count);
//                 },
//                 child: Text("Add"))
//           ],
//         ),
//       ),
//     );
//   }
// }
