'use strict'

###*
 # @ngdoc service
 # @name main.factory:ShowEmail

 # @description

###
angular
  .module 'main'
  .factory 'ShowEmail', ->
    alert "hello"
    @dataMessages = messages


messages = [
  {
    "what": 'Brunch this weekend?',
    "who": 'Min Li Chan',
    "when": '3:08PM',
    "notes": " I'll be in your neighborhood doing errands"
  },
  {
    "what": 'Brunch this weekend?',
    "who": 'Min Li Chan',
    "when": '3:08PM',
    "notes": " I'll be in your neighborhood doing errands"
  },
  {
    "what": 'Brunch this weekend?',
    "who": 'Min Li Chan',
    "when": '3:08PM',
    "notes": " I'll be in your neighborhood doing errands"
  },
  {
    "what": 'Brunch this weekend?',
    "who": 'Min Li Chan',
    "when": '3:08PM',
    "notes": " I'll be in your neighborhood doing errands"
  }
]
