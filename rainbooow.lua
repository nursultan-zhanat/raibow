local function randomColor()
	return Color3.new(math.random(), math.random(), math.random())
end

local function colorize(object)
	if object:IsA("BasePart") then
		object.Color = randomColor()
	end
end

local function traverse(object)
	colorize(object)
	for _, child in ipairs(object:GetChildren()) do
		traverse(child)
	end
end

while true do
	traverse(game.Workspace)
	wait(0.1)
end
