View = require('bamjs/view')
tmpl = require('./index.jade')

class Nav extends View
	namespace = 'nav'
	currentPage = null

	events:
		'click [data-nav = home]' : 'clickHome'
		'click [data-nav = test]' : 'clickTest'

	initialize: ->
		@$el.html(tmpl())

	changeNavSel: (pageName) ->
		if pageName != currentPage
			@$("[data-nav='#{pageName}']").addClass('active')
			if currentPage
				@$("[data-nav='#{currentPage}']").removeClass('active')
			currentPage = pageName

	# Events
	clickHome: (e) ->
		@changeNavSel('home')
		@root().router.navigate('#!/', trigger: true)

	clickTest: (e) ->
		@changeNavSel('test')
		@root().router.navigate('#!/test', trigger: true)

	


module.exports = Nav