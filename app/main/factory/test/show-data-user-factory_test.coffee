###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'ShowDataUser', ->
  factory = undefined

  beforeEach module 'main'

  beforeEach inject (ShowDataUser) ->
    factory = ShowDataUser

  it 'should have someValue be ShowDataUser', ->
    expect(factory.someValue).toEqual 'ShowDataUser'

  it 'should have someMethod return ShowDataUser', ->
    expect(factory.someMethod()).toEqual 'ShowDataUser'
