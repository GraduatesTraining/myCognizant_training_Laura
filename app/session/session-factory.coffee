'use strict'

###*
 # @ngdoc service
 # @name session.factory:Session

 # @description

###
angular
  .module 'session'
  .factory 'Session', (localStorageService,$state,$rootScope) ->
    alert "inside factory"
    $rootScope.userSession = localStorageService.get('user')
    $rootScope.nameSession = localStorageService.get('name')
    $rootScope.surnameSession = localStorageService.get('surname')
    alert $rootScope.userSession
    if(!$rootScope.userSession)
      alert "inise if"
      $state.go('home')
  

