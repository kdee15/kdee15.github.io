// GULP FILE ==========================================================================================================

/// <binding BeforeBuild='dev-compile-css, production-minify-css' />
var gulp = require('gulp'),
  gulpLoadPlugins = require('gulp-load-plugins'),
  plugins = gulpLoadPlugins();

gulp.task('dev-compile-css', function () {
  return gulp.src(['content/build/scss/*.scss'])
    .pipe(plugins.plumber({
      errorHandler: function (err) {
        plugins.notify.onError({
          title: "Gulp error in " + err.plugin,
          message: err.toString()
        })(err);
        plugins.util.beep();
        this.emit('end');
      }
    }))
    //.pipe(plugins.sourcemaps.init())
    .pipe(plugins.sass())
    .pipe(plugins.cleanCss())
    //.pipe(plugins.sourcemaps.write('.'))
    .pipe(gulp.dest('content/dist/css/'));
});

gulp.task('dev-compile-js', function () {
  return gulp.src(['content/build/js/scripts/*.js'])
    .pipe(plugins.sourcemaps.init())
    .pipe(plugins.concat('jquery.main.js'))
    .pipe(plugins.sourcemaps.write('.'))
    .pipe(gulp.dest('content/dist/js'));
});

gulp.task('production-minify-css', function () {
  return gulp.src(['content/build/scss/*.scss'])
    .pipe(plugins.plumber({
      errorHandler: function (err) {
        plugins.notify.onError({
          title: "Gulp error in " + err.plugin,
          message: err.toString()
        })(err);
        plugins.util.beep();
        this.emit('end');
      }
    }))
    .pipe(plugins.sass())
    .pipe(plugins.cleanCss())
    .pipe(plugins.rename({
      suffix: '.min'
    }))
    .pipe(gulp.dest('content/dist/css/'));
});

gulp.task('production-minify-js', function () {
  return gulp.src(['content/build/js/scripts/*.js'])
    .pipe(plugins.concat('jquery.main.js'))
    .pipe(plugins.uglify())
    .pipe(plugins.rename({
      suffix: '.min'
    }))
    .pipe(gulp.dest('content/dist/js'));
});


// gulp.task('default', function () {
//
//   gulp.watch('content/build/scss/**/*.scss', ['dev-compile-css', 'production-minify-css']);
//   gulp.watch('content/build/js/scripts/*', ['dev-compile-js', 'production-minify-js']);
//
// });

// ====== INDEX  =====================================================================================================

var requireDir = require('require-dir');
var dir = requireDir('_gulp.tasks');

// END OF FILE ========================================================================================================

// END OF FILE ========================================================================================================