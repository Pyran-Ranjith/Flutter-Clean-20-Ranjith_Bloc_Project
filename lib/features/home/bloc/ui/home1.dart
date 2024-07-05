// ignore_for_file: prefer_const_constructors, unused_label, type_literal_in_constant_pattern

import 'package:fc_20_ranjith_bloc_project/features/home/bloc/home1_bloc.dart';
import 'package:fc_20_ranjith_bloc_project/features/home/bloc/ui/product_tile_widget.dart';
// import 'package:fc_20_ranjith_bloc_project/features/home/bloc/ui/home.dart';
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
  void initState() {
    home1Bloc.add(Home1InitialEvent());
    super.initState();
  }

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
        } else if (state is Home1ProductItemWishlistedActionState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Item Wishlisted')));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case Home1LoadingState:
            return Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));


          case Home1LoadedSuccessState:
            final successState = state as Home1LoadedSuccessState;
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


              body: ListView.builder(
                  itemCount: successState.products.length,
                  itemBuilder: (context, index) {
                    return ProductTileWidget(
                        home1Bloc: home1Bloc,
                        productDataModel: successState.products[index]);
                  }),
              
            );

          case Home1ErrorState:
            return Scaffold(body: Center(child: Text('Error')));
          default:
            return SizedBox();
        }
      },
    );
  }
}
