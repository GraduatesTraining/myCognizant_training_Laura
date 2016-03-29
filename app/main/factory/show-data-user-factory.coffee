'use strict'

###*
 # @ngdoc service
 # @name main.factory:ShowDataUser

 # @description

###
angular
  .module 'main'
  .factory 'ShowDataUser', ->
    ShowDataUserBase = {}
    ShowDataUserBase.someValue = 'ShowDataUser'
    ShowDataUserBase.someMethod = ->
      'ShowDataUser'

    ShowDataUserBase
