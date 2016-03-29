'use strict'

###*
 # @ngdoc service
 # @name main.factory:EditDataUser

 # @description

###
angular
  .module 'main'
  .factory 'EditDataUser', ->
    EditDataUserBase = {}
    EditDataUserBase.someValue = 'EditDataUser'
    EditDataUserBase.someMethod = ->
      'EditDataUser'

    EditDataUserBase
