var path = require('path');

var gulp = require('gulp');

var gutil = require('gulp-util');

var plumber = require('gulp-plumber');

var purescript = require('gulp-purescript');

var sequence = require('run-sequence');

var del = require('del');

var connect = require('connect');

var serve = require('serve-static');

var config = { del: ['dist']
             , purescript: { src: [ 'bower_components/purescript-*/src/**/*.purs*'
                                  , 'src/**/*.purs'
                                  ]
                           , dest: 'dist'
                           , docs: 'MODULE.md'
                           }
             , examples: { counter: { src: 'examples/Counter/**/*.purs'
                                    , dest: 'examples/Counter'
                                    , options: { main: 'Counter.Main'
                                               , output: 'index.js'
                                               }
                                    }
                         }
             }
             ;

function error(e) {
  gutil.log(gutil.colors.magenta('>>>> Error <<<<') + '\n' + e.toString().trim());
  this.emit('end');
}

function example(example) {
  return gulp.src([example.src].concat(config.purescript.src)).
         pipe(plumber()).
         pipe(purescript.psc(example.options)).
         on('error', error).
         pipe(gulp.dest(example.dest));
}

function web(example) {
  var app = connect();
  app.use(serve(example.dest));
  app.listen(3003);
}

gulp.task('del', function(cb){
  del(config.del, cb);
});

gulp.task('make', function(){
  return gulp.src(config.purescript.src).
         pipe(plumber()).
         pipe(purescript.pscMake({output: config.purescript.dest})).
         on('error', error);
});

gulp.task('psci', function(){
  return gulp.src(config.purescript.src).
         pipe(plumber()).
         pipe(purescript.dotPsci()).
         on('error', error);
});

gulp.task('docs', function(){
  return gulp.src(config.purescript.src[1]).
         pipe(plumber()).
         pipe(purescript.pscDocs()).
         on('error', error).
         pipe(gulp.dest(config.purescript.docs));
});

gulp.task('copy:react', function(){
  return gulp.src(path.join('bower_components', 'react', 'react.js')).
         pipe(gulp.dest('examples/counter'));
});

gulp.task('counter', ['copy:react'], function(){
  return example(config.examples.counter);
});

gulp.task('watch', function(){
  gulp.watch(config.purescript.src, ['make']);
});

gulp.task('watch:counter', function(){
  gulp.watch([config.examples.counter.src].concat(config.purescript.src), ['counter']);
  web(config.examples.counter);
});

gulp.task('default', function(){
  sequence('del', 'make', ['psci', 'docs']);
});
