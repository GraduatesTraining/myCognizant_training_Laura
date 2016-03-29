###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'EditDataUser', ->
  factory = undefined

  beforeEach module 'main'

  beforeEach inject (EditDataUser) ->
    factory = EditDataUser

  it 'should have someValue be EditDataUser', ->
    expect(factory.someValue).toEqual 'EditDataUser'

  it 'should have someMethod return EditDataUser', ->
    expect(factory.someMethod()).toEqual 'EditDataUser'
