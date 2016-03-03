###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'LogUserCtrl', ->
  ctrl = undefined

  beforeEach module 'appExam'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'LogUserCtrl'

  it 'should have ctrlName as LogUserCtrl', ->
    expect(ctrl.ctrlName).toEqual 'LogUserCtrl'

