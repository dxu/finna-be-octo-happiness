// Generated by CoffeeScript 1.6.2
(function() {
  (function() {
    var checkCommands, prefix, prefix_key, prefix_timer;

    prefix = false;
    prefix_key = 65;
    prefix_timer = null;
    checkCommands = function(e) {
      var keyCode;

      console.log('in check commands');
      console.log(e);
      keyCode = e.keyCode;
      switch (String.fromCharCode(keyCode).toLowerCase()) {
        case 'c':
          console.log('new window!');
          return window.open('', '_newtab');
        case '5':
          if (e.shiftKey) {
            return console.log('vsplit!');
          }
      }
    };
    return $(function() {
      return $(document).keydown(function(e) {
        console.log('keypressed');
        if (prefix) {
          clearInterval(prefix_timer);
          checkCommands(e);
          return prefix = false;
        } else if (e.keyCode === prefix_key && e.ctrlKey) {
          e.preventDefault();
          console.log('ctrl a!');
          if (!prefix) {
            prefix = true;
            return prefix_timer = setTimeout((function() {
              console.log('callbacked');
              console.log(prefix);
              return prefix = false;
            }), 1000);
          }
        }
      });
    });
  })();

}).call(this);
