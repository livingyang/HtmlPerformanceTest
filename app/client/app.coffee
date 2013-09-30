Template.hello.greeting = ->
	"Welcome to app."

Template.hello.events "click input": ->
	console.log "You pressed the button"

Meteor.startup ->
	Mousetrap.bind "a", ->
		$("h1").text Math.random()
	Mousetrap.bind "b", ->
		$("h1").css color: "red"
	Mousetrap.bind "c", ->
		$("h1").text Math.random()
		$("h1").css color: "blue"
	Mousetrap.bind "d", ->
		$("#test").transition rotate3d: "0.5, 0.5, 0.5, 45deg"