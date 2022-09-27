import 'package:auth_account/bloc/recipe_event.dart';
import 'package:auth_account/bloc/recipe_state.dart';
import 'package:auth_account/repo/recipes_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipeBloc extends Bloc<RecipeEvents , RecipeState>{
  // daftarkan repo di sini untuk connect ke data server
  final RecipeRepositories _recipeRepositories ;

  RecipeBloc(this._recipeRepositories) : super(LoadingRecipeState()){
    on<RecipeEvents>((event, emit)  async {
      emit(LoadingRecipeState()) ;
      try {
        final recipe = await _recipeRepositories.fetchRecipe();
        emit(RecipeStateLoaded(recipe)) ;
      } catch (e){
        emit(RecipeErrorState(e.toString()));
      }
    });
  }

}