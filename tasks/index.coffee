###!
grunt-renderer
https://github.com/tuxracer/grunt-renderer

Copyright (c) 2013 Derek Petersen
Licensed under the MIT license.
###

renderer = require 'renderer'
path = require 'path'

module.exports = (grunt) ->
  grunt.registerMultiTask 'renderer', 'Render Handlebars files with given data', ->
    done = @async()
    src = if @data.cwd? then path.join @data.cwd, @filesSrc[0] else @filesSrc[0]

    renderer(src, @data.dest, @options().data)
    .then(done, grunt.fail.warn)
