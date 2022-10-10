import 'package:auth_account/bloc/recipe_bloc.dart';
import 'package:auth_account/bloc/recipe_event.dart';
import 'package:auth_account/bloc/recipe_state.dart';
import 'package:auth_account/model/recipe.dart';
import 'package:auth_account/repo/recipes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListRecipePage extends StatelessWidget {
  const ListRecipePage({Key? key}) : super(key: key);
  static const routename = '/list-recipe-page' ;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => RecipeRepositories() ,
      child: ListPage(),
    );
  }
}


class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => RecipeBloc(RepositoryProvider.of<RecipeRepositories>(context))..add(RecipeLoadingEvent()),
      child: BlocBuilder<RecipeBloc , RecipeState>(
        builder: (context, state) {
          if(state is LoadingRecipeState){
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is RecipeStateLoaded){
            // make datanya dulu
            List<Recipes> recipes = state.recipes ;
            return ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16 , vertical:  16 ),
                    child: InkWell(
                      onTap: () {
                      },
                      child: Card(
                        color: Colors.lightBlueAccent,
                        elevation: 2,
                        child: ListTile(
                          title: Text(recipes[index].title , style:const  TextStyle(
                              fontSize:  20 , color: Colors.white
                          ),),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(recipes[index].image.toString()),
                          ),

                        ),
                      ),
                    ),
                  ) ;
                }
            ) ;

          } else if ( state is RecipeErrorState) {
            return Text('Error') ;
          } else {
            return Container() ;
          }
        },
      )
    );
  }
}

