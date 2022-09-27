import 'package:equatable/equatable.dart';

abstract class RecipeEvents extends Equatable {
  const RecipeEvents() ;
}

 class RecipeLoadingEvent extends RecipeEvents {
  @override
  // TODO: implement props
  List<Object?> get props => [];
 }