'use strict'
require('..')
should = require 'should'

describe 'Array Future ::', ->

  describe 'includes', ->
    it 'should identify that an element is in the array', ->
        ['1', '2', '3'].includes('1').should.be.equal(true)
    it 'should correctly identify NaN', ->
        [1, 2, NaN].includes(NaN).should.be.equal(true)
    it 'should treat -0 and +0 as equal', ->
        [1, 2, -0].includes(+0).should.be.equal(true)
    it 'should not identify elements that are indexed below fromIndex', ->
        [1, 2, 3].includes(1, 1).should.be.equal(false)

  it 'first',  ->
    ['1', '2', '3'].first().should.be.equal('1')

  it 'last', ->
    ['1', '2', '3'].last().should.be.equal('3')

  it 'average', ->
    [1, 2, 3].average().should.be.equal(2)

  it 'sum', ->
    [1, 2, 3].sum().should.be.equal(6)

  it 'unique',  ->
    arr = ['0', '1', '0'].unique()
    arr[0].should.be.equal('0')
    arr[1].should.be.equal('1')
    arr.length.should.be.equal(2)

  it 'compact', ->
    ['','1','2',3,'4',undefined,'5'].compact().length.should.be.equal(6)

  it 'replace', ->
    arr = [1, 2, 2, 3].replace(2, 4)
    arr[1].should.be.equal(4)
    arr[2].should.be.equal(4)

  it 'remove', ->
    [1, 2, 3].remove(2).toString().should.be.equal([1, 3].toString())

  it 'clear',  ->
    arr = [0, 1, 2, 3]
    arr.clear()
    arr.length.should.be.equal(0)

  it 'shuffle', ->
    [1, 2, 3].shuffle().length.should.be.equal(3);

  it 'combination', ->
    solution = [[1, 2], [1, 3], [2, 3], [1, 2, 3]].toString()
    arr = [1, 2, 3].combination(2)
    arr.length.should.be.equal(4)
    arr.toString().should.be.equal(solution)

  it 'intersect', ->
    [1, 2, 3].intersect([2, 0, 5, 1]).toString().should.be.equal([1, 2].toString())

  it 'difference', ->
    [1, 2, 3].difference([2, 0, 5, 1]).toString().should.be.equal([3].toString())
