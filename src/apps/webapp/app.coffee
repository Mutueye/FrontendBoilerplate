View = require('bamjs/view')
{ debounce, extend, range, intersection } = require('bamjs/underscore')
qs = require('querystring')
url = require('url')

Pages = 
	home: require('../../components/page-home')
	test: require('../../components/page-test')

Nav = require('../../components/nav')
Footer = require('../../components/footer')

class Webapp extends View
	namespace:'app'
	pages: {}

	initialize: ->
		@nav = new Nav(
			el : @$('.navbar')
			parent : @
		)
		@footer = new Footer(
			el : @$('#footer')
			parent : @
		)
		@showPage()
		
	showPage: (req) ->
		if !req
			page = 'home'
		else
			page = req.name

		newPage = @pages[page]

		# If currentPage exist, hide it
		@currentPage?.hide()
		# If newPage exist, set as currentPage
		@currentPage = newPage
		# If newPage is null, create one
		unless newPage
			# Build page
			options = 
				el: @$("[id='!/#{page}']")
				parent: @
			@drawPage(page, options)
			@pages[page] = @currentPage
		# show the page
		@currentPage.show()
		@nav.changeNavSel(page)

	drawPage: (page, options) ->
		@currentPage = new Pages[page](options)

module.exports = Webapp