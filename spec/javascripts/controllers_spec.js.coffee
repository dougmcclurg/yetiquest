describe "Adventurer controllers", ->
  beforeEach module("YetiQuest")

  describe "AdventurerIndexCtrl", ->
    it "should set adventurers to an empty array", inject(($controller) ->
      scope = {}
      ctrl = $controller("AdventurerIndexCtrl",
        $scope: scope
      )
      expect(scope.adventurers.length).toBe 0
    )
