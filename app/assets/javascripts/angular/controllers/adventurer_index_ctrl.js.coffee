@app.controller 'AdventurerIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.adventurers = []
  $http.get('./adventurers.json').success((data) ->
    $scope.adventurers = data
  )

  $scope.viewAdventurer = (id) ->
    $location.url "/adventurers/#{id}"
]
