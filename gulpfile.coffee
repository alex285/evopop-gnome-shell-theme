gulp = require 'gulp'
stylus = require 'gulp-stylus'
shell = require 'gulp-shell'
notify = require 'gulp-notify'
fs = require 'fs-extra'

buildDir = './dist/Evopop/gnome-shell'
buildName = 'Evopop'

gulp.task 'build', ->
	
	fs.mkdirsSync buildDir
	fs.copy './assets/', buildDir+'/assets', (err) ->
	
	gulp.src './stylus/gnome-shell.styl'
	.pipe(stylus(compress: true))  
  .pipe(gulp.dest buildDir)
  #.pipe(notify 'Build Done Succesfylly ᕙ(`▿´)ᕗ' ) #To test notifications styles
	
	
gulp.task 'build-nocompress', ->
	gulp.src './stylus/gnome-shell.styl'
  .pipe(stylus(compress: false))  
  .pipe(gulp.dest buildDir)	
	
gulp.task 'install', ->
	fs.mkdirsSync process.env.HOME+'/.themes'
	fs.copy './dist/', process.env.HOME + '/.themes', (err)-> #Cant pass an err check to a sync 
	
    
gulp.task 'run', ->
    gulp.src './dist'
    .pipe(shell([
      'gsettings set org.gnome.shell.extensions.user-theme name default', #for updating the theme
      'gsettings set org.gnome.shell.extensions.user-theme name Evopop'            
    ]))

gulp.task('default',['build'])
gulp.task('nocompress', ['build-nocompress'])
gulp.task('all',['build', 'install', 'run'])

	