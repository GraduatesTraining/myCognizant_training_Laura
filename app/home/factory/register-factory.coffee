'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Register

 # @description

###
angular
  .module 'appExam'
  .factory 'Register', ->
    
    register: (user, psw, name, surname) ->
      @user = user
      @psw = psw
      @name = name
      @surname = surname
      @dataUser = users
      
      #Create a constructor for the users
      newUserObject = (newId, newUserName, newPsw, newName, newSurname) ->
        @newId = newId
        @newUserName = newUserName
        @newPsw = newPsw
        @newName = newName
        @newSurname = newSurname
      
      @id = (@dataUser.length-1) + 1
      newUser = new newUserObject(@id, @user, @psw, @name, @surname)
      
      for aux in @dataUser
        if user is aux.user
          alert "Here goes a message. The user already exists"
        else
          @dataUser.push(newUser)
          console.log @dataUser
          alert "Here goes a message. The user has been added"
          break
          #location.href = '/home/home.tpl.html'
      return
  
users = [
  {
    "id": 0,
    "user": "lruiz",
    "psw": "lruiz87",
    "name": "Laura",
    "surname": "Ruiz"
  },
  {
    "id": 1,
    "user": "amoreno",
    "psw": "amoreno14",
    "name": "Andres",
    "surname": "Moreno"
  }
]



