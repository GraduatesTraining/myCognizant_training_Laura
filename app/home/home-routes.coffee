'use strict'

angular
  .module 'home'
  .config ($stateProvider) ->
    $stateProvider
      .state 'home',
        url: '/home'
        templateUrl: 'home/home.tpl.html'
        controller: 'LogUserCtrl'
        controllerAs: 'auth'
