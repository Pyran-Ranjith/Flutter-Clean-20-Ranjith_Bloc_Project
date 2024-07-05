// ignore_for_file: prefer_const_constructors

import 'package:fc_20_ranjith_bloc_project/features/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final HomeBloc homeBloc = HomeBloc();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.tealAccent,
            title: Text(
              'Home - Ranjith\'s Grocery App',
              style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    // homeBloc.add(HomeWishlistNavigateButtonClickedEvent());
                    homeBloc.add(HomeWishlistNavigateButtonClickedEvent());
                  },
                  icon: Icon(Icons.favorite_border)),
              // IconButton(
              //     onPressed: () {
              //       // homeBloc.add(HomeCartButtonNavigateEvent());
              //       homeBloc.add(HomeCartButtonNavigateEvent());
              //     },
              //     icon: Icon(Icons.shopping_bag_outlined)),
            ],
          ),
        );
      },
    );
  }
}
