import 'package:flutter/material.dart';
import 'package:torch_app/torch_screem.dart';
import 'package:torch_controller/torch_controller.dart';

void main() async {
  TorchController torch = TorchController();
  torch.initialize();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //1E2525
        //E9F0F0
        //
        primarySwatch: Colors.blue,
      ),
      home: const myTorch(),
    );
  }
}
