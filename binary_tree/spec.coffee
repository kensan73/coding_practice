'use strict'

mocha = require 'mocha'
expect = require 'expect'

{ describe, it } = mocha

tree = require('./index')

describe 'tree', ->
  it 'is a function', ->
    expect(typeof(tree)).toEqual('function')
  it 'can insert a node', ->
    t = new tree()
    expect(t.insert(3)).toEqual(3)
  it 'can insert a node less than 3', ->
    t = new tree()
    t.insert(3)
    expect(t.insert(2)).toEqual(2)
  it 'inorder produces [2, 3]', ->
    t = new tree()
    t.insert(3)
    t.insert(2)
    expect(t.inorder()).toEqual([2, 3])
  it 'inorder produces [0, 2, 3]', ->
    t = new tree()
    t.insert(3)
    t.insert(2)
    t.insert(0)
    expect(t.inorder()).toEqual([0, 2, 3])
