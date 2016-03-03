'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:LogUserCtrl

 # @description

###
class LogUserCtrl
  @$inject = ['Login','Register']
  @registration = false
  constructor: (@Login, @Register) ->
    @ctrlName = 'LogUserCtrl'
  login: (user, psw) ->
    @Login.login(user, psw)
  register: ->
    @registration = true
  saveUser: (user, psw, name, surname) ->
    @Register.register(user, psw, name, surname)
  cancelRegistration: ->
    @registration = false

angular
  .module('appExam')
  .controller 'LogUserCtrl', LogUserCtrl
  