(->
  # alert 'hello'
  prefix = false
  # a
  prefix_key = 65

  checkCommands = (keyCode) ->


  # capture tmux keybindings Ctrl+b
  $ ->
    $(document).keydown (e) ->
      console.log 'mux'
      console.log 'inside keypress'
      console.log e.keyCode
      console.log e
      # check if its in

      console.log 'hey'
      console.log prefix_key
      console.log e.keyCode
      console.log prefix_letter
      if e.keyCode == prefix_key and e.ctrlKey
        e.preventDefault()
        console.log 'ctrl a!'

        if not prefix
          # set prefix to true, turn it off after 1 second
          prefix = true
          setTimeout (-> prefix = false), 1000
        else
          # prefix is already true, check for something
          checkCommands(e.keyCode)
          prefix = false


)()

