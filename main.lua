----brysons rst part 2
--keyboard assistant
local TheBackground = display.newImageRect( "assets/download.jpg", 4000, 11000 )
TheBackground.x = display.contentCenterX
TheBackground.y = display.contentCenterY
TheBackground.id = " The calculate button"

function round(val, decimal)
	if (decimal) then
		return math.floor (val * 10^decimal) +0.5 / (10^decimal)
	else
		return math.floor(val +0.5)
	end
end


local title = display.newText("Keyboard Assistant", 100, 100, native.systemFont, 17)
	title.x = 230
	title.y = 12
	title.id = "title name"
	title:setFillColor(1,1,1)

local keyboard =  display.newImageRect( "assets/keyboard.png", 400, 190 )
	keyboard.x = 230
	keyboard.y = 120
	keyboard.id = "Keyboard"

local nameTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 150, 50 )
    nameTextField.y = 295
	nameTextField.id = "name textField"

local nameText = display.newText("Please enter your name:", 100, 100, native.systemFont, 17)
	nameText.x = 70
	nameText.y = 300
	nameText.id = "name text"
	nameText:setFillColor(1,1,1)

local enterButton = display.newImageRect( "assets/thin-gray-enter-button-hi.png", 60, 40, 40 )
	enterButton.x = 350
	enterButton.y = 300
	enterButton.id = "enter button"

local startButton = display.newImageRect( "assets/green-start-button-clip-art-0.png", 100, 100, 90 )
	startButton.x = 60
	startButton.y = 250
	startButton.id = "start button"

local lightSquare = display.newImageRect( "assets/download.jpg", 20, 25, 20 )
    lightSquare.x = 73
    lightSquare.y = 114
    lightSquare.alpha = 0

local valueKey = 0

local correctKeys = 0

local pressedKeys = 0 

--enter name function

local function enterName(event)
	local displayName = display.newText ("Greetings." ..nameTextField.text, display.contentCenterX, display.contentCenterY + 65, native.systemFont, 15)
	displayName:setFillColor (0,0,0)
end
-- touch event listener for name function
enterButton:addEventListener ("touch", enterName)

-- Press start function
local function start(event)
   local valueKey = math.random(0,25) -- keys in a table
    lightSquare.alpha = 0.6 -- how much key is lit up
if (valueKey > -1 and valueKey<10) then
    lightSquare.x = 73 +(17 * valueKey)-- random key gets lit up
    lightSquare.y = 114
    elseif (valueKey > 9 and valueKey < 19)then
    	lightSquare.x = -89 + (17 * valueKey)
    	lightSquare.y = 138
    	elseif(valueKey >18 and valueKey <26) then
    		lightSquare.x = -234 +(17 * valueKey)
    		lightSquare.y = 163
    	
    end

    local percentageSymbol = display.newText("%", 240, 30, native.systemFontBold, 17)
    percentageSymbol.x= 25
    percentageSymbol.y= 10
    percentageSymbol:setTextColor(1,1,1)
        
    local percentageText = display.newText("0", 195, 30, native.systemFontBold, 17)
    percentageText.x= 10
    percentageText.y= 10
    percentageText:setTextColor(1,1,1)

    display.remove(startButton)
	display.remove(enterButton)
	display.remove(nameTextField)
	display.remove(nameText)

	t={"q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"}
	
    print("valueKey".. valueKey)
    print("event.keyName"..t[valueKey + 1])
end 

local function highLighter(event)
 	print("Event name is: ".. event.keyName)
 	pressedKeys = pressedKeys +1

	if (valueKey == 0 and event.keyName == "q") then
	    start()
	    correctKeys = correctKeys +1
	    print("pressedKeys = " .. pressedKeys)
	    print("correctKeys = " ..correctKeys)
	elseif (valueKey == 1 and event.keyName == "w") then
		start()
	    correctKeys = correctKeys +1
	    print("pressedKeys = " .. pressedKeys)
	    print("correctKeys = " ..correctKeys)
	elseif (valueKey == 2 and event.keyName == "e")then
	    start()
	    correctKeys = correctKeys +1
	    print("pressedKeys = " .. pressedKeys)
	    print("correctKeys = " ..correctKeys)
	elseif (valueKey == 3 and event.keyName == "r")then
	    start()
	    correctKeys = correctKeys +1
	    print("pressedKeys = " .. pressedKeys)
	    print("correctKeys = " ..correctKeys)
	elseif (valueKey == 4 and event.keyName == "t")then
	    start()
	    correctKeys = correctKeys +1
	    print("pressedKeys = " .. pressedKeys)
	    print("correctKeys = " ..correctKeys)
	elseif (valueKey == 5 and event.keyName == "y")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 6 and event.keyName == "u")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 7 and event.keyName == "i")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 8 and event.keyName == "o")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 9 and event.keyName == "p")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 10 and event.keyName == "a")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 11 and event.keyName == "s")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 12 and event.keyName == "d")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 13 and event.keyName == "f")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 14 and event.keyName == "g")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 15 and event.keyName == "h")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 16 and event.keyName == "j")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 17 and event.keyName == "k")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 18 and event.keyName == "l")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 19 and event.keyName == "z")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 20 and event.keyName == "x")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 21 and event.keyName == "c")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 22 and event.keyName == "v")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 23 and event.keyName == "b")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 24 and event.keyName == "n")then
		start()
		correctKeys = correctKeys +1
		print("pressedKeys = " .. pressedKeys)
		print("correctKeys = " ..correctKeys)
	elseif (valueKey == 25 and event.keyName == "m")then
	    start()
	    correctKeys = correctKeys +1
	    print("pressedKeys = " .. pressedKeys)
	    print("correctKeys = " ..correctKeys)
	else
		if (pressedKeys <1) then
			start()
			print("pressedKeys line 239 =" ..pressedKeys)
			print("correctKeys line 240 =" ..correctKeys)
		end
	end
	  
	return 
	start()
end
		 
--Timer Design
local timerUp = 0
local upTimer
local currentTime = display.newText(timerUp, 100,100, native.systemFont, 17)
currentTime.x = 500
currentTime.y = 300

local timetext = display.newText("Time: ", 100,100, native.systemFont, 17)
timetext.x = 460
timetext.y = 300

--Timer Function
function timerSetup(event)
	timerUp = timerUp + 1
	currentTime.text = (math.round(timerUp))
end

local function timerInitiator(event)
	--Timer initiator
timer.performWithDelay(1000,timerSetup, 0)
end

local function endGame(event)
	if pressedKeys == 100 then
		local result
		Runtime:removeEventListener ("key", highLighter)
		result = (correctKeys / pressedKeys)*100
		local accuracyText = display.newText("Your type Accuracy = %"..round(result,2), 100,100, native.systemFont, 20)
		accuracyText.x=display.contentCenterX
		accuracyText.y=250
		lightSquare.alpha = 0
	end
end

--touch event listener for start button and key functions
startButton:addEventListener ("touch", start)
startButton:addEventListener("touch", timerInitiator)
startButton: addEventListener("touch", timerSetup)
Runtime:addEventListener("key", highLighter)
Runtime: addEventListener("key", endGame)