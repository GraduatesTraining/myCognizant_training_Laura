'use strict'

###*
 # @ngdoc object
 # @name main.controller:InboxCtrl

 # @description

###
class InboxCtrl
  @$inject = ['ShowEmail']
  constructor: (@ShowEmail) ->
    @ctrlName = 'InboxCtrl'
  alert dataMessage

angular
  .module('main')
  .controller 'InboxCtrl', InboxCtrl
