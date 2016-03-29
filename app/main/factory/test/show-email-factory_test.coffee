###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'ShowEmail', ->
  factory = undefined

  beforeEach module 'main'

  beforeEach inject (ShowEmail) ->
    factory = ShowEmail

  it 'should have someValue be ShowEmail', ->
    expect(factory.someValue).toEqual 'ShowEmail'

  it 'should have someMethod return ShowEmail', ->
    expect(factory.someMethod()).toEqual 'ShowEmail'
