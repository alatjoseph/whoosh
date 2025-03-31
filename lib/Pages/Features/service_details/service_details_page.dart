import 'package:flutter/material.dart';
import 'package:whoosh/Widgets/Global/appbar_global.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Global_AppBar_Widget(size: constraints,subtextsize: 10,textsize: 20,),
        );
      },
    
    );

  }               
}