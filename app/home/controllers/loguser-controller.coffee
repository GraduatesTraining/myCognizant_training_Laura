'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:LoguserCtrl

 # @description

###
class LoguserCtrl
  @$inject = ['Login','Register','localStorageService', '$state']
  @registration = false
  constructor: (@Login, @Register, @localStorageService, @$state) ->
    @ctrlName = 'LoguserCtrl'
  login: (user, psw) ->
    @Login.login(user, psw, @$state)
  register: ->
    @registration = true
  saveUser: (user, psw,name, surname) ->
    @Register.register(user, psw, name, surname, @$state)
  cancelRegistration: ->
    @registration = false



angular
  .module('appExam')
  .controller 'LoguserCtrl', LoguserCtrl
  