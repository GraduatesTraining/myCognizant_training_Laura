'use strict'

###*
 # @ngdoc service
 # @name session.factory:Logout

 # @description

###
angular
  .module 'session'
  .factory 'Logout',
    (localStorageService, $state) ->
      logout: ->
        localStorageService.remove('user')
        localStorageService.remove('psw')
        localStorageService.remove('name')
        localStorageService.remove('surname')
        $state.go('home')
        
        

