###global describe, beforeEach, it, browser, expect ###
'use strict'


SessionPagePo = require './session.po'

describe 'Session page', ->
  sessionPage = undefined

  beforeEach ->
    sessionPage = new SessionPagePo
    browser.get '/#/session'

  it 'should say SessionCtrl', ->
    expect(sessionPage.heading.getText()).toEqual 'session'
    expect(sessionPage.text.getText()).toEqual 'SessionCtrl'
