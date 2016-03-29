'use strict'

angular
  .module 'main'
  .config ($stateProvider) ->
    $stateProvider
      .state 'main',
        url: '/main'
        templateUrl: 'main/main.tpl.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .state 'main.exams',
        url: '/exams'
        templateUrl: 'main/views/exams.tpl.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .state 'main.stats',
        url: '/stats'
        templateUrl: 'main/views/stats.tpl.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .state 'main.inbox',
        url: '/inbox'
        templateUrl: 'main/views/inbox.tpl.html'
        controller: 'InboxCtrl'
        controllerAs: 'inbox'
      .state 'main.settings',
        url: '/settings'
        templateUrl: 'main/views/settings.tpl.html'
        controller: 'MainCtrl'
        controllerAs: 'main'