part of 'home1_bloc.dart';

@immutable
sealed class Home1State {}

final class Home1Initial extends Home1State {}

abstract class Home1ActionState extends Home1State {}

// abstract class Home1WishlistButtonNavigateEvent extends Home1State {}

class Home1NavigateToWishlistPageActionState extends Home1ActionState {}

class Home1LoadingState extends Home1State {
}

class Home1LoadedSuccessState extends Home1State {
  final List<ProductDataModel> products;
  Home1LoadedSuccessState({
    required this.products,
  });
}

class Home1ErrorState extends Home1State {}

class Home1ProductItemWishlistedActionState extends Home1ActionState {}
