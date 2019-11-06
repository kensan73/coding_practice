'use strict'

module.exports = class
  constructor: ->
    @root = null

  insert: (val) ->
    node = new Node(val)
    if(@root == null)
      @root = node
      return @root.val

    @insertAux(@root, node)
    return node.val

  insertAux: (tree, node) ->
    if(node.val < tree.val)
      if(tree.left == null)
        tree.left = node
        return tree.left.val
      else
        @insertAux(tree.left, node)
    else
      if(tree.right == null)
        tree.right = node
        return tree.right.val
      else
        @insertAux(tree.right, node)

  inorder: () ->
    v = []
    @inorderAux(@root, v)
    return v

  inorderAux: (node, v) ->
    return if node == null

    @inorderAux(node.left, v)
    v.push(node.val)
    @inorderAux(node.right, v)

 class Node
  constructor: (val) ->
    @val = val
    @left = null
    @right = null