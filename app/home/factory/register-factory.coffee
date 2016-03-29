'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Register

 # @description

###
angular
  .module 'appExam'
  .factory 'Register', (localStorageService, $state) ->
    register: (user, psw, name, surname, email, phone) ->
      @user = user
      @psw = psw
      @name = name
      @surname = surname
      @email = email
      @phone = phone
      @dataUser = users
      
      #Create a constructor for the users
      newUserObject = (newId, newUserName, newPsw, newName, newSurname, newEmail, newPhone) ->
        @newId = newId
        @newUserName = newUserName
        @newPsw = newPsw
        @newName = newName
        @newSurname = newSurname
        @newEmail = newEmail
        @newPhone = newPhone
      
      @id = (@dataUser.length-1) + 1
      newUser = new newUserObject(@id, @user, @psw, @name, @surname, @email, @phone)
      
      for aux in @dataUser
        if user is aux.user
          alert "Err msg. The user already exists"
        else
          @dataUser.push newUser
          @userSession = localStorageService.set 'user', @user
          @nameSession = localStorageService.set 'name', name
          @surnameSession = localStorageService.set 'surname', surname
          $state.go('main')
          break
      return
  
users = [
  {
    "id": 0,
    "user": "lruiz",
    "psw": "lruiz87",
    "name": "Laura",
    "surname": "Ruiz",
    "mail": "test@test.com",
    "phone": "999 999 999"
  },
  {
    "id": 1,
    "user": "amoreno",
    "psw": "amoreno14",
    "name": "Andres",
    "surname": "Moreno",
    "mail": "test2@test.com",
    "phone": "666 666 666"
  }
]



