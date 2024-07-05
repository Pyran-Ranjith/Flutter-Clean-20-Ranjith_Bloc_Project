part of 'home2_bloc.dart';

@immutable
sealed class Home2Event {}

class Home2WishlistNavigateButtonClickedEvent extends Home2Event {
  Home2WishlistNavigateButtonClickedEvent();
}
