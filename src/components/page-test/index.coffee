View = require('bamjs/view')
tmpl = require('./index.jade')

class PageTest extends View
	namespace = 'page-test'

	initialize: ->
		@$el.html(tmpl())
	
	hide: ->
		@$el.addClass('hidden')

	show: ->
		@$el.removeClass('hidden')

module.exports = PageTest