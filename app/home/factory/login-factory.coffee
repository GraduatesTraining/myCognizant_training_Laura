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
      login: (user, psw, state) ->
        @loginSuccess = false
        @user = user
        @psw = psw
        @dataUser = users
        @userSession = ""
        @pswSession = ""
        for aux, i in users
          if user is aux.user and psw is aux.psw
            @loginSuccess = true
            @userSession = localStorageService.set('user', @user)
            @pswSession = localStorageService.set('psw', @psw)
            state.go('main')
        if @loginSuccess is false
          alert "msg err. User and/or psw incorrect"
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
