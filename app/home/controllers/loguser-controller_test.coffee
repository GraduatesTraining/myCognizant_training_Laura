###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'LoguserCtrl', ->
  ctrl = undefined

  beforeEach module 'appExam'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'LoguserCtrl'

  it 'should have ctrlName as LoguserCtrl', ->
    expect(ctrl.ctrlName).toEqual 'LoguserCtrl'

