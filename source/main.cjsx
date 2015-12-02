React       = require 'react'
ReactDOM    = require 'react-dom'

{ debugStore } = require './stores'

Application = React.createClass
    displayName: 'Application'

    _onDebugMessage: (msg) ->
        console.log msg

    componentDidMount: () ->
        @unsubscribe = debugStore.listen(@_onDebugMessage)

    componentWillUnMount: () ->
        @unsubscribe()

    render: ->

        <div className='_Application__'>
            <h1>Hello, World!</h1>
        </div>

ReactDOM.render(<Application />, document.getElementById('app-shell'))
