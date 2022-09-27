
//buat abstract terlebih dahulu sebagai kelas dasar nya
import 'package:auth_account/model/recipe.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class RecipeState extends Equatable {

}

// kedua setelah buat kelas abstractnyaa , kita akan buat state saat dia loding , saat dia terload dan saat erro

// saaat loding
class LoadingRecipeState extends RecipeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

// saat udah ke load datanya

class RecipeStateLoaded extends RecipeState {
  // karena disini itu udah ada data yang akan muncul , maka kita buat constrcutor untuk datanya
  final List<Recipes> recipes ;

  RecipeStateLoaded(this.recipes);

  @override
  // TODO: implement props
  List<Object?> get props => [recipes] ;

}

// state saat error
class RecipeErrorState extends RecipeState {
  final String error ;

  RecipeErrorState(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];

}