'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainCtrl

 # @description

###
class MainCtrl
  @$inject = ['Session', 'Logout' ]
  constructor: (@Session, @Logout) ->
    @ctrlName = 'MainCtrl'
  goToPerson: ->
    alert "Here I am"
  logout:  ->
    @Logout.logout()



angular
  .module('main')
  .controller 'MainCtrl', MainCtrl

