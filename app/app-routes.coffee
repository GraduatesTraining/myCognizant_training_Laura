'use strict'

angular
  .module 'appExam'
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise '/home'
  .config ($mdIconProvider) ->
    $mdIconProvider.defaultIconSet 'images/icons/mdi.svg'
    return
