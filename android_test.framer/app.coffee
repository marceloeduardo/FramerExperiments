studio = true

#Android
# my approach is to use 720x1280 on the real device
# using this measurements on the studio, allows everything to run in the device without forcing scaling in framer
# Status bar: 48px
# System bar: 96px
# titleBars : 112px
# icons: 48 x 48


# function called when using the studio
addAndroidUi = ->
	#creates a system status bar. you should add your icons (image)
	statusBar = new Layer
		width:720
		height:48
		x:0
		y:0
		backgroundColor:"black"
	# move the canvas to take the status bar in consideration
	canvas.y = 48
	
	# creates the system bar	
	systemBar = new Layer
		width:720
		height:96
		y:1134+50
		backgroundColor:"red"
		image:"http://www.marceloeduardo.com/framer/navbar.png"
	#add here the buttons for the system bar.

bg = new BackgroundLayer

canvas = new Layer
	width:720
	height:1136
	backgroundColor:"yellow"
	
#sample base layer to work with
nowPlaying = new Layer
	y:0
	x:0
	width:canvas.width
	height:canvas.height
	backgroundColor:"rgba(155,255,255,1)"
	superLayer:canvas
	
#testing lines just to make sure everything is in the right place

topLine = new Layer
	x:0
	y:0
	width:canvas.width
	height:5
	backgroundColor:"red"
	superLayer:canvas
	
# if you are using studio
# It will call the correct content scale
# Create the UI for the Android 	
# Move the canvas to the position taking care of the system bars
if Utils.isTouch() is false
	studio = true
	Framer.Device.setContentScale(1.5, false)
	addAndroidUi()
	canvas.y=48


