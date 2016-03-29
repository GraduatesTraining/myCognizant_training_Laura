'use strict'

###*
 # @ngdoc service
 # @name session.factory:Session

 # @description

###
angular
  .module 'session'
  .factory 'Session', (localStorageService,$state,$rootScope) ->
    $rootScope.userSession = localStorageService.get 'user'
    $rootScope.nameSession = localStorageService.get 'name'
    $rootScope.surnameSession = localStorageService.get 'surname'
    unless $rootScope.userSession
      $state.go('home')
    return 0

