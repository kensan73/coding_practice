'use strict'

mocha = require 'mocha'
expect = require 'expect'
Given = require 'given'

{ describe, it } = mocha

treeClass = require('./index')

describe.only 'index', ->
#describe 'index', ->
  given = undefined

  beforeEach ->
    @given = Given @

  beforeEach ->
    @given
      myt: -> new treeClass()

  it 'is a class', ->
    expect(typeof treeClass).toEqual('function')
  it 'can insert', ->
    expect(typeof @myt.insert).toEqual('function')
  it 'can inorder', ->
    expect(typeof @myt.inorder).toEqual('function')
  it 'returns [] for empty tree on inorder', ->
    expect(@myt.inorder().length).toEqual(0)
  it 'inserts', ->
    @myt.insert(3)
    expect(@myt.inorder()).toEqual([3])
  it 'inserts again', ->
    @myt.insert(23)
    expect(@myt.inorder()).toEqual([23])
  it 'inserts one left', ->
    @myt.insert(23)
    @myt.insert(5)
    expect(@myt.inorder()).toEqual([5, 23])
  it 'inserts multiple left', ->
    @myt.insert(23)
    @myt.insert(5)
    @myt.insert(1)
    expect(@myt.inorder()).toEqual([1, 5, 23])
  it 'inserts multiple right', ->
    @myt.insert(23)
    @myt.insert(200)
    @myt.insert(357)
    expect(@myt.inorder()).toEqual([23, 200, 357])
  it 'inserts right', ->
    @myt.insert(23)
    @myt.insert(50)
    expect(@myt.inorder()).toEqual([23, 50])
  it 'inserts left and right', ->
    @myt.insert(23)
    @myt.insert(50)
    @myt.insert(2)
    expect(@myt.inorder()).toEqual([2, 23, 50])
