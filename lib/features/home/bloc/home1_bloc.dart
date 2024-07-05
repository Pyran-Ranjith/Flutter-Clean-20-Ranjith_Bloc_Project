// ignore_for_file: avoid_print, prefer_const_constructors

import 'dart:async';

import 'package:bloc/bloc.dart';
// import 'package:fc_20_ranjith_bloc_project/data/cart_items.dart';
import 'package:fc_20_ranjith_bloc_project/data/grocery_data.dart';
import 'package:fc_20_ranjith_bloc_project/data/wishlist_items.dart';
import 'package:fc_20_ranjith_bloc_project/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'home1_event.dart';
part 'home1_state.dart';

class Home1Bloc extends Bloc<Home1Event, Home1State> {
  Home1Bloc() : super(Home1Initial()) {
  
    // Initial load
    on<Home1InitialEvent>(home1InitialEvent);
  
    // product button click
    on<Home1ProductWishlistButtonClickedEvent>(
        home1ProductWishlistButtonClickedEvent);
    // on<Home1ProductCartButtonClickedEvent>(home1ProductCartButtonClickedEvent);
  
    // navigation button click
    on<Home1WishlistButtonNavigateEvent>(home1WishlistButtonNavigateEvent);
    // on<HomeCartButtonNavigateEvent>(homeCartButtonNavigateEvent);
  }

  FutureOr<void> home1InitialEvent(
      Home1InitialEvent event, Emitter<Home1State> emit) async {
    emit(Home1LoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(Home1LoadedSuccessState(
        products: GroceryData.groceryProducts
            .map((e) => ProductDataModel(
                id: e['id'],
                name: e['name'],
                description: e['description'],
                price: e['price'],
                imageUrl: e['imageUrl']))
            .toList()));
  }

  FutureOr<void> home1ProductWishlistButtonClickedEvent(
      Home1ProductWishlistButtonClickedEvent event, Emitter<Home1State> emit) {
    print('Wishlist Product Clicked');
    wishlistItems.add(event.clickedProduct);
    emit(Home1ProductItemWishlistedActionState());
  }

  // FutureOr<void> homeProductCartButtonClickedEvent(
  //     HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
  //   print('Cart Product clicked');
  //   cartItems.add(event.clickedProduct);
  //   emit(HomeProductItemCartedActionState());
  // }

    // Wishlist navigation button click method
  FutureOr<void> home1WishlistButtonNavigateEvent(
      Home1WishlistButtonNavigateEvent event, Emitter<Home1State> emit) {
    print('Wishlist Navigate clicked');
    emit(Home1NavigateToWishlistPageActionState());
  }

    // Cart navigation button click method
  // FutureOr<void> home1CartButtonNavigateEvent(
  //     Home1CartButtonNavigateEvent event, Emitter<Home1State> emit) {
  //   print('Cart Navigate clicked');
  //   emit(HomeNavigateToCartPageActionState());
  // }
}
