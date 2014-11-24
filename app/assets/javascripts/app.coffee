receta = angular.module('receta',[
  'templates',
  'ngRoute',
  'ngResource',
  'controllers'
])

receta.config(['$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: "RecipesController"
  )
])

controllers = angular.module('controllers',[])

receta.run(console.log('Angular UP!'););

recipes = [
  {
    id: 1
    name: 'Baked Potato w/ Cheese'
  },
  {
    id: 2
    name: 'Garlic Mashed Potatoes',
  },
  {
    id: 3
    name: 'Potatoes Au Gratin',
  },
  {
      id: 4
      name: 'Baked Brussel Sprouts',
  },
]
