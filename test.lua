local centered = Scene.Label.Create()
centered.Anchor = Vec2(0.5, 0.5)
centered.Pivot = Vec2(0.5, 0.5)
centered.Text = "This is centered label"
Scene.GetRoot():Attach(centered)

local top_left = Scene.Label.Create()
top_left.Text = "This is top left label"
Scene.GetRoot():Attach(top_left)

local top_right = Scene.Label.Create()
top_right.Anchor = Vec2(1, 0)
top_right.Pivot = Vec2(1, 0)
top_right.Text = "This is top right label"
Scene.GetRoot():Attach(top_right)

local bottom_left = Scene.Label.Create()
bottom_left.Anchor = Vec2(0, 1)
bottom_left.Pivot = Vec2(0, 1)
bottom_left.Text = "This is bottom left label"
Scene.GetRoot():Attach(bottom_left)

local bottom_right = Scene.Label.Create()
bottom_right.Anchor = Vec2(1, 1)
bottom_right.Pivot = Vec2(1, 1)
bottom_right.Text = "This is bottom right label"
Scene.GetRoot():Attach(bottom_right)

local fps = Scene.Label.Create()
fps.Anchor = Vec2(0.5, 0.25)
fps.Pivot = Vec2(0.5, 0.5)
Scene.GetRoot():Attach(fps)

local fps_count = 0
local time_accumulator = 0

function Frame(delta)
	fps_count = fps_count + 1
	time_accumulator = time_accumulator + delta
	if time_accumulator >= 1.0 then
		fps.Text = "This is fps label. Your fps: " .. tostring(fps_count)
		time_accumulator = 0
		fps_count = 0
	end
end
