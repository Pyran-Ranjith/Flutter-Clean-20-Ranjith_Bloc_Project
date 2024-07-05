// ignore_for_file: prefer_const_constructors

import 'package:fc_20_ranjith_bloc_project/features/home/bloc/home2_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

final Home2Bloc home2Bloc = Home2Bloc();

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Home2Bloc, Home2State>(
      bloc: home2Bloc,
      listenWhen: (previous, current) => current is Home2ActionState,
      buildWhen: (previous, current) => current is! Home2ActionState,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Home2 - Ranjith\'s Grocery App',
              style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    // home2Bloc.add(Home2WishlistNavigateButtonClickedEvent());
                    home2Bloc.add(Home2WishlistNavigateButtonClickedEvent());
                  },
                  icon: Icon(Icons.favorite_border)),
            ],
          ),
        );
      },
    );
  }
}
