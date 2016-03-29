###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'InboxCtrl', ->
  ctrl = undefined

  beforeEach module 'main'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'InboxCtrl'

  it 'should have ctrlName as InboxCtrl', ->
    expect(ctrl.ctrlName).toEqual 'InboxCtrl'

