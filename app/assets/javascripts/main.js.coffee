@app = angular.module('YetiQuest', ["ngRoute"])

# This routing directive tells Angular about the default
# route for our application. The term "otherwise" here
# might seem somewhat awkward, but it will make more
# sense as we add more routes to our application.
@app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider.
   when('/adventurers', {
      templateUrl: '../templates/adventurers/index.html',
      controller: 'AdventurerIndexCtrl'
    }).
   when('/adventurers/:id', {
      templateUrl: '../templates/adventurer/show.html',
      controller: 'AdventurerShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
]