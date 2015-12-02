Reflux = require 'reflux'

actions = require './actions'

debugStore = Reflux.createStore
    init: () ->
        @listenTo(actions.debugAction, @output)
    output: (msg) ->
        @trigger(msg)

module.exports =
    debugStore: debugStore
