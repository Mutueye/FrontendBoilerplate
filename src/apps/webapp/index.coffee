class App
	constructor: ->
		@sayHello()

	sayHello: ->
		console.log('Hello world !')
$ ->
	app = new App()