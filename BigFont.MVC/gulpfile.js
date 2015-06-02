var gulp = require('gulp');
var less = require('gulp-less');
var path = require('path');
var watch = require('gulp-watch');
var rename = require('gulp-rename');

gulp.task('default', function() {

    console.log('Default task');

});

gulp.task('less', function() {

  return gulp.src('./Content/bigfont/less/bigfont.less')
    .pipe(less())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('./Content/bigfont/css/'));

});

gulp.task('watch', function() {

  watch('**/*.less', function () {
    gulp.start('less');
  });

});
