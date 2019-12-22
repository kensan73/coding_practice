'use strict'

module.exports = class
  constructor: ->
    @root = null

  insert: (val) ->
    newnode = new node(val)

    if @root == null
      @root = newnode
      return

    if @root.val > newnode.val
      @insertAux(@root, 'left', newnode)
    else
      @insertAux(@root, 'right', newnode)

  insertAux: (parent, direction, newnode) ->

    if parent[direction] == null
      parent[direction] = newnode
      return

    if parent[direction].val > newnode.val
      @insertAux(parent[direction], 'left', newnode)
    else
      @insertAux(parent[direction], 'right', newnode)

  inorder: ->
    return [] if @root == null
    result = []
    @inorderVisit(@root, result)
    return result

  inorderVisit: (node, result) ->
    return if node == null
    @inorderVisit(node.left, result)
    result.push(node.val)
    @inorderVisit(node.right, result)

class node
  constructor: (val) ->
    @val = val
    @left = null
    @right = null