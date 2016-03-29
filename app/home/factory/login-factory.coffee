'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Login

 # @description

###
angular
  .module 'appExam'
  .factory 'Login',
    (localStorageService,$state) ->
      login: (user, psw) ->
        @loginSuccess = false
        @user = user
        @psw = psw
        @dataUser = users
        @userSession = ""
        @pswSession = ""
        for aux, i in users
          if user is aux.user and psw is aux.psw
            name = aux.name
            surname = aux.surname
            @loginSuccess = true
            #Save data locally
            @userSession = localStorageService.set 'user', @user
            @nameSession = localStorageService.set 'name', name
            @surnameSession = localStorageService.set 'surname', surname
            $state.go('main')
        if @loginSuccess is false
          alert "msg err. User and/or psw incorrect"
        return
  
  
users = [
  {
    "id": 1,
    "user": "lruiz",
    "psw": "lruiz87",
    "name": "Laura",
    "surname": "Ruiz",
    "mail": "test@test.com",
    "phone": "999 999 999"
  },
  {
    "id": 2,
    "user": "amoreno",
    "psw": "amoreno14",
    "name": "Andres",
    "surname": "Moreno",
    "mail": "test2@test.com",
    "phone": "666 666 666"
  }
]
