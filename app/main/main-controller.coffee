'use strict'

###*
 # @ngdoc object
 # @name main.controller:MainCtrl

 # @description

###
class MainCtrl
  constructor: ->
    @ctrlName = 'MainCtrl'

angular
  .module('main')
  .controller 'MainCtrl', [
    '$scope'
    '$mdSidenav'
    'muppetService'
    '$timeout'
    '$log'
    ($scope, $mdSidenav, muppetService, $timeout, $log) ->
      allMuppets = []

      loadMuppets = ->
        muppetService.loadAll().then (muppets) ->
          allMuppets = muppets
          $scope.muppets = [].concat(muppets)
          $scope.selected = $scope.muppets[0]
          return
        return

      toggleSidenav = (name) ->
        $mdSidenav(name).toggle()
        return

      selectMuppet = (muppet) ->
        if angular.isNumber(muppet)
          $scope.selected = $scope.muppets[muppet]
        else
          $scope.selected = muppet
        $scope.toggleSidenav 'left'
        return

      $scope.selected = null
      $scope.muppets = allMuppets
      $scope.selectMuppet = selectMuppet
      $scope.toggleSidenav = toggleSidenav
      loadMuppets()
      return
  ]
  .service 'muppetService', [
    '$q'
    ($q) ->
      muppets = [
        {
          name: 'Animal'

        }
        {
          name: 'Fozzie Bear'

        }
        {
          name: 'The Swedish Chef'
        }
        {
          name: 'Cookie Monster'
        }
      ]
      # Promise-based API
      { loadAll: ->
        # Simulate async nature of real remote calls
        $q.when muppets
      }
  ]

