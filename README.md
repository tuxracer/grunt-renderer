# grunt-renderer

Renders Handlebars files with given data.

[grunt]: https://github.com/gruntjs/grunt
[getting_started]: https://github.com/gruntjs/grunt/wiki/Getting-started

## Getting Started
Install this grunt plugin next to your project's [grunt.js gruntfile][getting_started] with: ``npm install grunt-renderer --save-dev``

Then add this line to your project's ``Gruntfile.coffee``:

```coffeescript
grunt.loadNpmTasks 'grunt-renderer'
```

## Documentation

```coffeescript
grunt.initConfig

  # ... other configs

  renderer:
    index:
      cwd: 'public/'
      src: ['index.hbs']
      dest: 'index.html'

      # Data to be passed to the template
      options:
        data:
          favicon: 'http://cdn/favicon.ico'

  # ... other configs
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [grunt][grunt].

## License
Copyright (c) 2013, Derek Petersen

Licensed under the MIT license.
