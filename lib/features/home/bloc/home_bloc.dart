// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {

    // on<HomeEvent>((event, emit) {
    //   // TODO: implement event handler
    // });

  
    // navigation button click
  //   on<HomeWishlistButtonNavigateEvent>(homeWishlistButtonNavigateEvent);
  // }
  // FutureOr<void> homeWishlistButtonNavigateEvent(event, Emitter<HomeState> emit) {
  //   print('Wishlist Navigate clicked');
  // }
  
    // product button click
    on<HomeWishlistNavigateButtonClickedEvent>(homeWishlistNavigateButtonClickedEvent);
  }

  FutureOr<void> homeWishlistNavigateButtonClickedEvent(event, Emitter<HomeState> emit) {
    print('Wishlist Clicked');
  }
}
