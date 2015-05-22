View = require('bamjs/view')

tmpl = require('./index.jade')

class PageHome extends View
	namespace = 'page-home'

	initialize: ->
		@$el.html(tmpl())
	
	hide: ->
		@$el.addClass('hidden')

	show: ->
		@$el.removeClass('hidden')

module.exports = PageHome