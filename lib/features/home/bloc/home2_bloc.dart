import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home2_event.dart';
part 'home2_state.dart';

class Home2Bloc extends Bloc<Home2Event, Home2State> {
  Home2Bloc() : super(Home2Initial()) {
    // product button click
    on<Home2WishlistNavigateButtonClickedEvent>(home2WishlistNavigateButtonClickedEvent);
  }

  FutureOr<void> home2WishlistNavigateButtonClickedEvent(Home2WishlistNavigateButtonClickedEvent event, Emitter<Home2State> emit) {
    print('Home2 Wishlist Clicked');
  }
}
