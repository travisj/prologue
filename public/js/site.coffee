$ ->
	App = Backbone.View.extend
		el: '#container'
		template: $("#my-template").html()
		initialize: ->
			@render()
		render: ->
			$(@el).html Mustache.to_html @template, {title: 'the Prologue'}
			@

	app = new App
