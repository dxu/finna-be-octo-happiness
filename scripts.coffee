(->
  # alert 'hello'
  prefix = false
  # a
  prefix_key = 65
  prefix_timer = null


  # create template for tabs

  # create template for tab bar


  checkCommands = (e) ->
    console.log 'in check commands'
    console.log e
    keyCode = e.keyCode
    switch String.fromCharCode(keyCode).toLowerCase()
      when 'c'
        console.log 'new window!'
        window.open('', '_newtab')
      when '5'
        if e.shiftKey  # %
          console.log 'vsplit!'

  # capture tmux keybindings Ctrl+b
  $ ->
    $(document).keydown (e) ->
      console.log 'keypressed'
      if prefix
          # prefix is already true, check for something
          # cancel
          clearInterval(prefix_timer)
          checkCommands(e)
          prefix = false
      else if e.keyCode == prefix_key and e.ctrlKey
        e.preventDefault()
        console.log 'ctrl a!'
        if not prefix
          # set prefix to true, turn it off after 1 second
          prefix = true
          prefix_timer = setTimeout (-> console.log 'callbacked'; console.log prefix; prefix = false), 1000



)()

