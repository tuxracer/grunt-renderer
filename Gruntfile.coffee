module.exports = (grunt) ->
  grunt.initConfig
    nodeunit:
      files: ['test/test.coffee']

    renderer:
      test:
        cwd: 'test/fixtures/'
        src: ['index.html']
        dest: 'tmp/index.html'
        data:
          user: 'blaketothefuture'
          song: 'sonic-the-hedgehog-marble-zone'
          title: 'Marble Zone'

    clean:
      test: ['tmp/']

  # Load this plugin's tasks.
  grunt.loadTasks 'tasks'

  # Load installed tasks
  grunt.file.glob
  .sync('./node_modules/grunt-*/tasks')
  .forEach(grunt.loadTasks)

  # Shortcuts
  grunt.registerTask 'test', ['clean', 'renderer', 'nodeunit']

  # Default task
  grunt.registerTask 'default', 'test'
