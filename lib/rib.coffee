shell = require('shell')

module.exports =

  activate: (state) ->
    atom.workspaceView.command 'rib:run-in-browser', => @run()

  run: ->
    editor = atom.workspace.getActivePaneItem()
    file = editor?.buffer.file
    filePath = file?.path
    if filePath?.endsWith('.html') or filePath?.endsWith('.htm')
      shell.openExternal("file://"+filePath)
