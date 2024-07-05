part of 'home1_bloc.dart';

@immutable
// sealed class Home1Event {}
abstract class Home1Event {}

class Home1ProductWishlistButtonClickedEvent extends Home1Event {
  final ProductDataModel clickedProduct;
  Home1ProductWishlistButtonClickedEvent({
    required this.clickedProduct,
  });
}


class Home1InitialEvent extends Home1Event {}

class Home1WishlistNavigateButtonClickedEvent extends Home1Event {
  Home1WishlistNavigateButtonClickedEvent();
}

class Home1WishlistButtonNavigateEvent extends Home1Event {
  Home1WishlistButtonNavigateEvent();
}

// class Home1ProductWishlistButtonClickedEvent extends Home1Event {
//   Home1ProductWishlistButtonClickedEvent();
// }
