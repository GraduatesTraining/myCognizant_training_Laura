'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainCtrl

 # @description

###
class MainCtrl
  @$inject = ['Session', 'Logout']
  constructor: (@Session, @Logout) ->
    @ctrlName = 'MainCtrl'
  logout:  ->
    @Logout.logout()
  goToPerson: ->
    alert "goToPerson. Without develop"
  goToPerson2: ->
    alert "goToPerson2."

angular
  .module('main')
  .controller 'MainCtrl', MainCtrl

