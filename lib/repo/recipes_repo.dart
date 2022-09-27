import 'dart:convert';

import 'package:auth_account/model/recipe.dart';
import 'package:http/http.dart' as http;



class RecipeRepositories {
  var apiKey = 'e3e8ca192bcb4656b3d6d60e1572340a' ;

  Future<List<Recipes>> fetchRecipe() async {
    var url = 'https://api.spoonacular.com/recipes/complexSearch?apiKey=$apiKey&number=50' ;

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200){
      final List result = jsonDecode(response.body)['results'];
      return result.map((e) => Recipes.fromJson(e)).toList() ;
    } else {
      throw Exception('Error') ;
    }

  }
}