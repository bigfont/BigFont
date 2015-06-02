var gulp = require('gulp');
var less = require('gulp-less');
var path = require('path');
var watch = require('gulp-watch');

gulp.task('default', function() {

    console.log('Default task');

});

gulp.task('less', function() {

  return gulp.src('./Content/bigfont/less/bigfont.less')
    .pipe(less())
    .pipe(gulp.dest('./Content/bigfont/css/'));

});

gulp.task('watch', function() {

  watch('**/*.less', function () {
    gulp.start('less');
  });

});
