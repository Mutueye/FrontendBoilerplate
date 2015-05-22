Router = require('bamjs/router')

class AppRouter extends Router

	initialize: (app) ->
		@app = app
		@buildRoutes()

	buildRoutes: ->
		@route('!/', 'home', @showPage)
		@route('!/test', 'test', @showPage)

	showPage: (req)->
		@app.showPage(req)


module.exports = AppRouter