'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Login

 # @description

###
angular
  .module 'appExam'
  .factory 'Login', [
    'localStorageService'
    (localStorageService) ->
      login: (user, psw) ->

        @loginSuccess = false
        @user = user
        @psw = psw
        @dataUser = users
        @userSession = ""
        @pswSession = ""
        for aux, i in users
          if user is aux.user and psw is aux.psw
            alert user
            alert psw
            @loginSuccess = true
            @userSession = localStorageService.set('user', @user)
            @pswSession = localStorageService.set('psw', @psw)
            
        if @loginSuccess is true
          alert "here I need a message: Welcome + name, it's correct"
          location.href = '/home/home.tpl.html'
        else
          alert "here I need a message: it's failed"
        return
  ]
  
users = [
  {
    "id": 1,
    "user": "lruiz",
    "psw": "lruiz87",
    "name": "Laura",
    "surname": "Ruiz"
  },
  {
    "id": 2,
    "user": "amoreno",
    "psw": "amoreno14",
    "name": "Andres",
    "surname": "Moreno"
  }
]
