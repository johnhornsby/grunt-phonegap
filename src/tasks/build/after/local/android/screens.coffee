path = require 'path'

module.exports = screens = (grunt) ->
  helpers = require('../../../../helpers')(grunt)

  build: (fn) ->
    screens = helpers.config 'screens'
    phonegapPath = helpers.config 'path'
    res = path.join phonegapPath, 'platforms', 'android', 'res'
    best = null
    bestLand = null

    if screens?.android?.ldpi
      best = screens.android.ldpi
      grunt.file.copy screens.android.ldpi, path.join(res, 'drawable-ldpi', 'screen.png'), encoding: null
      grunt.file.copy screens.android.ldpi, path.join(res, 'drawable-port-ldpi', 'screen.png'), encoding: null

    if screens?.android?.ldpiLand
      bestLand = screens.android.ldpiLand
      grunt.file.copy screens.android.ldpiLand, path.join(res, 'drawable-land-ldpi', 'screen.png'), encoding: null

    if screens?.android?.mdpi
      best = screens.android.mdpi
      grunt.file.copy screens.android.mdpi, path.join(res, 'drawable-mdpi', 'screen.png'), encoding: null
      grunt.file.copy screens.android.mdpi, path.join(res, 'drawable-port-mdpi', 'screen.png'), encoding: null

    if screens?.android?.mdpiLand
      bestLand = screens.android.mdpiLand
      grunt.file.copy screens.android.mdpiLand, path.join(res, 'drawable-land-mdpi', 'screen.png'), encoding: null

    if screens?.android?.hdpi
      best = screens.android.hdpi
      grunt.file.copy screens.android.hdpi, path.join(res, 'drawable-hdpi', 'screen.png'), encoding: null
      grunt.file.copy screens.android.hdpi, path.join(res, 'drawable-port-hdpi', 'screen.png'), encoding: null

    if screens?.android?.hdpiLand
      bestLand = screens.android.hdpiLand
      grunt.file.copy screens.android.hdpiLand, path.join(res, 'drawable-land-hdpi', 'screen.png'), encoding: null

    if screens?.android?.xhdpi
      best = screens.android.xhdpi
      grunt.file.copy screens.android.xhdpi, path.join(res, 'drawable-xhdpi', 'screen.png'), encoding: null
      grunt.file.copy screens.android.xhdpi, path.join(res, 'drawable-port-xhdpi', 'screen.png'), encoding: null

    if screens?.android?.xhdpiLand
      bestLand = screens.android.xhdpiLand
      grunt.file.copy screens.android.xhdpiLand, path.join(res, 'drawable-land-xhdpi', 'screen.png'), encoding: null

    if best
      grunt.file.copy best, path.join(res, 'drawable', 'screen.png'), encoding: null

    if bestLand
      grunt.file.copy bestLand, path.join(res, 'drawable-land', 'screen.png'), encoding: null

    if fn then fn()
