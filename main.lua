local remote = game:GetService("ReplicatedStorage"):WaitForChild("aahelp1")
local remote1 = game:GetService("ReplicatedStorage"):WaitForChild("aahelp")

local myArgs = {
    "apply",
    0, 
    0   
}

local myArgs1 = {
    "apply",
    0, 
    0   
}

local jitterEnabled = false
local jitterEnabled1 = false
local jitterRandom = false
local jiter_body = 0
local rng = Random.new()
local result = rng:NextInteger(-359, 359)
local result1 = rng:NextInteger(-180, 180)
local UserInputService = game:GetService("UserInputService");
local root = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

local uiLoader = loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/dollarware/main/library.lua'))
local ui = uiLoader({
    rounding = false, 
    theme = 'cherry',
    smoothDragging = false
})

ui.autoDisableToggles = true

local window = ui.newWindow({
    text = 'Dollarware', 
    resize = true, 
    size = Vector2.new(550, 376), 
    position = nil 
})

local menu = window:addMenu({
    text = 'aa'
})
do 
    
    local section = menu:addSection({
        text = 'pitch',
        side = 'auto',
        showMinButton = false
    })
    do 
	        local toggle = section:addToggle({
            text = 'toggle pitch', 
            state = false 
        }, function(togglee)
			jitterEnabled = togglee
		end)
        section:addSlider({
            text = 'pitch',
            min = -180,
            max = 180,
            step = 0.01,
            val = 0
        }, function(newValue) 
            myArgs[2] = newValue
        end):setTooltip('pitch')

			local toggle = section:addToggle({
            text = 'toggle rozdolbyayka', 
            state = false 
        }, function(togglee1)
			jitterRandom = togglee1
		end)

			local toggle = section:addToggle({
            text = 'toggle jitter', 
            state = false 
        }, function(togglee11)
			jitterEnabled1 = togglee11
		end)

		    section:addSlider({
            text = 'jetter power',
            min = -359,
            max = 359,
            step = 0.01,
            val = 0
        }, function(jiter) 
			jiter_body = jiter
        end):setTooltip('jetter power')

    end
    local menu1 = window:addMenu({
    text = 'other'
	})
	do
    	local section1 = menu1:addSection({
        text = 'telegram',
        side = 'auto',
        showMinButton = true,
    	})
		do
			section1:addButton({
				text = 'TG NAHOI', 
				style = 'small'
			}):bindToEvent('onClick', function()
				setclipboard("https://t.me/pidorasik6767gazanmango")
				ui.notify({
					title = 'LINK COPIED',
					message = 'MANGO 67 67 67 TROLLFACE!',
					duration = 3
				})
			end)
		end

		local section2 = menu1:addSection({
        text = 'arcanum (crack)',
        side = 'auto',
        showMinButton = true,
    	})
		do
			section2:addButton({
				text = 'crack arcanum', 
				style = 'small'
			}):bindToEvent('onClick', function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptHouses/f/main/ARCANUM.lua"))()
			end)
	end	end
end

task.spawn(function()
    while task.wait(0) do
		if jitterEnabled1 then
			root.CFrame = root.CFrame * CFrame.Angles(0, math.rad(math.random(jiter_body, jiter_body)), 0)
		end
        if jitterEnabled then
            if jitterRandom then
				result = rng:NextInteger(-359, 359)
                myArgs[2] = result
				remote:FireServer(unpack(myArgs))
				result = rng:NextInteger(-359, 359)
                myArgs[2] = result
            end
            remote:FireServer(unpack(myArgs))
        end
    end
end)
