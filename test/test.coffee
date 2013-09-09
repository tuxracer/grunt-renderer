grunt = require 'grunt'

grunt.file.defaultEncoding = 'utf8'

module.exports =
  renderer: (test) ->
    test.expect 1

    expected = grunt.file.read 'test/expected/index.html'
    actual = grunt.file.read 'tmp/index.html'

    test.equal actual, expected, 'should render Handlebars to file'
    test.done()
