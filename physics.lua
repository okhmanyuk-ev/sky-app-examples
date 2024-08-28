local bg = Scene.Rectangle.Create()
bg.Stretch = Vec2(1, 1)
bg.TopColor = Vec4(0.25, 0.125, 0.125, 1)
bg.BottomColor = Vec4(0.5, 0.25, 0.25, 1)
Scene.Root:Attach(bg)

local world = Scene.Physics.World.Create()
world.Anchor = Vec2(0.5, 0.5)
world.Pivot = Vec2(0.5, 0.5)
bg:Attach(world)

function CreateRectangleEntity()
	local entity = Scene.Physics.Entity.Create()

	local rect = Scene.Rectangle.Create()
	rect.Stretch = Vec2(1, 1)
	rect.Rounding = 0.5
	entity:Attach(rect)

	return entity
end

local ground = CreateRectangleEntity()
ground.Type = Scene.Physics.EntityType.Static
ground.Pivot = Vec2(0.5, 0.5)
ground.Size = Vec2(512 + 256, 16)
ground.Y = 192
world:Attach(ground)

function SpawnSomeBoxes()
	for i = 1,25 do
		local box = CreateRectangleEntity()
		box.Type = Scene.Physics.EntityType.Dynamic
		box.Pivot = Vec2(0.5, 0.5)
		box.Size = Vec2(32, 32)
		box.Y = -256
		world:Attach(box)
	end
end

SpawnSomeBoxes()

local spawn_button = Scene.StandardButton.Create()
spawn_button.Size = Vec2(256, 32)
spawn_button.Anchor = Vec2(0.5, 0)
spawn_button.Pivot = Vec2(0.5, 0)
spawn_button.Y = 32
spawn_button.Text = "SPAWN SOME BOXES"
spawn_button.OnClick = SpawnSomeBoxes
ground:Attach(spawn_button)

local debug_button = Scene.StandardButton.Create()
debug_button.Size = Vec2(256, 32)
debug_button.Anchor = Vec2(0.5, 0)
debug_button.Pivot = Vec2(0.5, 0)
debug_button.Y = spawn_button.Y + spawn_button.Height + 8
debug_button.Text = "TOGGLE DEBUG MODE"
debug_button.OnClick = function()
	Console.Execute("if phys_debug 1 'phys_debug 0' 'phys_debug 1'")
end
ground:Attach(debug_button)
