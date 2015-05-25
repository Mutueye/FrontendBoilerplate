View = require('bamjs/view')
tmpl = require('./index.jade')

class Footer extends View
	namespace = 'footer'

	initialize: ->
		@$el.html(tmpl())

module.exports = Footer