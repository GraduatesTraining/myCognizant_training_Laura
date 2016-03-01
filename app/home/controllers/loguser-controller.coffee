'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:LoguserCtrl

 # @description

###
class LoguserCtrl
  constructor: ->
    @ctrlName = 'LoguserCtrl'


angular
  .module('appExam')
  .controller 'LoguserCtrl', [
    'Login'
    'Register'
    'localStorageService'
    (Login, Register, localStorageService) ->
      @registration = false
      @login = (user, psw) ->
        Login.login(user, psw)
        return
      @register = ->
        @registration = true
        return
      @saveUser = (user, psw,name, surname) ->
        Register.register(user, psw, name, surname)
        return
      @cancelRegistration = ->
        @registration = false
        return
      #function related with datausers
      return
  ]
