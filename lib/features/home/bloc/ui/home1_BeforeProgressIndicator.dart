// ignore_for_file: prefer_const_constructors

import 'package:fc_20_ranjith_bloc_project/features/home/bloc/home1_bloc.dart';
import 'package:fc_20_ranjith_bloc_project/features/home/bloc/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

final Home1Bloc home1Bloc = Home1Bloc();

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Home1Bloc, Home1State>(
      bloc: home1Bloc,
      listenWhen: (previous, current) => current is Home1ActionState,
      buildWhen: (previous, current) => current is! Home1ActionState,
      listener: (context, state) {
        if (state is Home1NavigateToWishlistPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Wishlist()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text(
              'Home1 - Ranjith\'s Grocery App',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    // home1Bloc.add(Home1WishlistNavigateButtonClickedEvent());
                    home1Bloc.add(Home1WishlistButtonNavigateEvent());
                  },
                  icon: Icon(Icons.favorite_border)),
            ],
          ),
        );
      },
    );
  }
}
