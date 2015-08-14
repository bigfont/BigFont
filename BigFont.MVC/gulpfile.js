var gulp = require('gulp');
var less = require('gulp-less');
var path = require('path');
var watch = require('gulp-watch');
var rename = require('gulp-rename');
var plumber = require('gulp-plumber');
var cssmin = require('gulp-cssmin');

var paths = {
    styles: [
        '',
        './Content/bootstrap/less/bootstrap.less',
        './Content/bootstrap/less/theme.less',
        './Content/bigfont/less/bigfont.less',
        './Content/bigfont/less/bigfont-print.less',
    ]
};

gulp.task('default', function () {

    console.log('Default task');

});

gulp.task('less', function () {

    /*
        Setting the gulp.src `base` option maintains the original path of the less file
    */

    return gulp.src(paths.styles, { base: './' })
        .pipe(less())
        .pipe(cssmin())
        .pipe(plumber())
        .pipe(rename(function (p) {

            p.dirname = p.dirname.replace('\\less', '\\css');
            p.basename += '.min';

        }))
        .pipe(gulp.dest('./'));

});

gulp.task('watch', function () {

    watch('**/*.less', function () {
        gulp.start('less');
    });

});
