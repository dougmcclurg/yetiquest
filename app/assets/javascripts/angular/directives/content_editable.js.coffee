@app.directive "contenteditable", ->
  require: "ngModel"
  link: (scope, elm, attrs, ctrl) ->

    # view -> model
    elm.bind "blur", ->
      scope.$apply ->
        ctrl.$setViewValue elm.html()


    # model -> view
    ctrl.render = (value) ->
      elm.html value


    # load init value from DOM
    ctrl.$setViewValue elm.html()
    elm.bind "keypress", (e) ->
      alert "someone press esc"
      if e.charCode is 27
        scope.$apply ->
          ctrl.$setViewValue elm.html()