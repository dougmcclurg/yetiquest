@app.controller 'AdventurerShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./adventurers/#{$routeParams.id}.json").success((data) ->
    $scope.adventurer = data
  )
]
