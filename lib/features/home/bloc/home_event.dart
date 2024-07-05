part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeWishlistNavigateButtonClickedEvent extends HomeEvent {
  // final ProductDataModel clickedProduct;
  HomeWishlistNavigateButtonClickedEvent(
    // {
    // required this.clickedProduct,
  // }
  );
}


// class HomeProductCartButtonClickedEvent extends HomeEvent {
//   // final ProductDataModel clickedProduct;
//   HomeProductCartButtonClickedEvent(
//     // {
//     // required this.clickedProduct,
//   // }
//   );
// }


// class HomeWishlistButtonNavigateEvent extends HomeEvent {}

// class HomeCartButtonNavigateEvent extends HomeEvent {}
