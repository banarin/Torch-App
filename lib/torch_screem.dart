import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class myTorch extends StatefulWidget {
  const myTorch({super.key});

  @override
  State<myTorch> createState() => _myTorchState();
}

class _myTorchState extends State<myTorch> {
  bool isActive = false;
  final bg = const Color(0xff2c3333);
  final controller = TorchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Torch'),
        backgroundColor: bg,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                isActive ? 'assets/images/open.jpg' : 'assets/images/close.jpg'
                ),
                ),
              ),
         
            ),
               const SizedBox(
              height: 50,
            ),
            CircleAvatar(
              minRadius: 20,
              maxRadius: 35,
              child: Transform.scale(
                scale: 1.5,
                child: IconButton(
                icon: Icon(Icons.power_settings_new),
                onPressed: () {
                  controller.toggle();
                  setState(() {
                     isActive = !isActive;
                  });
                },
                ),
              ),
            ),
            SizedBox(height: 100,),
            Text(
              'By   </LECODEUR>',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}
