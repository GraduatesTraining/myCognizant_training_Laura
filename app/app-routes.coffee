'use strict'

angular
  .module 'appExam'
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise '/home'
    
    
