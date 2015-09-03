angular.module('fme-compile-html', [])
.directive 'fmeCompileHtml', ($compile) ->
  restrict: 'A',
  replace: true
  link: (scope, element, attrs) ->
    scope.$watch attrs.htmltext, (html) ->
      element.html(html)
      $compile(element.contents())(scope)
      return
    return