'use strict'

mocha = require 'mocha'
expect = require 'expect'

{ describe, it } = mocha

removeDuplicates = require './remove_duplicates'

describe 'removeDuplicates', ->
  it 'can remove duplicates', ->
    expect(removeDuplicates([1, 1]).length).toBeTruthy()
    expect(removeDuplicates([1, 1]).length == 1).toBeTruthy()
    expect(removeDuplicates([1, 1])[0] == 1).toBeTruthy()
  it 'can remove duplicates part 2', ->
    expect(removeDuplicates([2, 2]).length).toBeTruthy()
    expect(removeDuplicates([2, 2]).length == 1).toBeTruthy()
    expect(removeDuplicates([2, 2])[0] == 2).toBeTruthy()
