#= require spec_helper.coffee
describe 'fmeCompileHtml', ->
  beforeEach inject ($rootScope, $compile, $controller) ->
    @scope = $rootScope.$new()
    @controller = $controller
    @compile = $compile
    @scope.description = '<p>test</p>'
    @element = angular.element("<div fme-compile-html='true'  htmltext='description'> </div>")
    @el = @compile(@element)(@scope);
    @scope.$digest()


  describe 'element creation', ->
    it 'sets the compiles the directive into a new div', ->
      expect(@el.scope().description).to.eq('<p>test</p>')
      @element.remove()