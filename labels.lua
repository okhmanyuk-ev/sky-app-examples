local bg = Scene.Rectangle.Create()
bg.Stretch = Vec2(1, 1)
bg.TopColor = Vec4(0.125, 0.125, 0.25, 1)
bg.BottomColor = Vec4(0.25, 0.25, 0.5, 1)
Scene.Root:Attach(bg)

local centered = Scene.Label.Create()
centered.Anchor = Vec2(0.5, 0.5)
centered.Pivot = Vec2(0.5, 0.5)
centered.Text = "This is centered label"
bg:Attach(centered)

local outlined = Scene.Label.Create()
outlined.Anchor = Vec2(0.5, 0.75)
outlined.Pivot = Vec2(0.5, 0.5)
outlined.Color = Vec4(0, 0, 0, 0)
outlined.OutlineColor = Vec4(1, 0, 1, 1)
outlined.OutlineThickness = 0.5
outlined.FontSize = 72
outlined.Text = "This is outlined label"
bg:Attach(outlined)

local top_left = Scene.Label.Create()
top_left.Text = "This is top left label"
bg:Attach(top_left)

local top_centered = Scene.Label.Create()
top_centered.Anchor = Vec2(0.5, 0)
top_centered.Pivot = Vec2(0.5, 0)
top_centered.Text = "This is top centered label"
bg:Attach(top_centered)

local top_right = Scene.Label.Create()
top_right.Anchor = Vec2(1, 0)
top_right.Pivot = Vec2(1, 0)
top_right.Text = "This is top right label"
bg:Attach(top_right)

local bottom_left = Scene.Label.Create()
bottom_left.Anchor = Vec2(0, 1)
bottom_left.Pivot = Vec2(0, 1)
bottom_left.Text = "This is bottom left label"
bg:Attach(bottom_left)

local bottom_centered = Scene.Label.Create()
bottom_centered.Anchor = Vec2(0.5, 1)
bottom_centered.Pivot = Vec2(0.5, 1)
bottom_centered.Text = "This is bottom centered label"
bg:Attach(bottom_centered)

local bottom_right = Scene.Label.Create()
bottom_right.Anchor = Vec2(1, 1)
bottom_right.Pivot = Vec2(1, 1)
bottom_right.Text = "This is bottom right label"
bg:Attach(bottom_right)

local left_centered = Scene.Label.Create()
left_centered.Anchor = Vec2(0, 0.5)
left_centered.Pivot = Vec2(0, 0.5)
left_centered.Text = "This is left centered label"
bg:Attach(left_centered)

local right_centered = Scene.Label.Create()
right_centered.Anchor = Vec2(1, 0.5)
right_centered.Pivot = Vec2(1, 0.5)
right_centered.Text = "This is right centered label"
bg:Attach(right_centered)

local fps = Scene.Label.Create()
fps.Anchor = Vec2(0.5, 0.25)
fps.Pivot = Vec2(0.5, 0.5)
fps.Color = Vec4(1, 1, 0, 1)
fps.FontSize = 42
bg:Attach(fps)

local fps_count = 0
local time_accumulator = 0

local pulse = coroutine.create(function()
    while true do
        for i = 0, 1, 0.01 do
            outlined.OutlineThickness = i
            coroutine.yield()
        end
        for i = 1, 0, -0.01 do
            outlined.OutlineThickness = i
            coroutine.yield()
        end
    end
end)

function Frame(delta)
	fps_count = fps_count + 1
	time_accumulator = time_accumulator + delta
	if time_accumulator >= 1.0 then
		fps.Text = "This is fps label. Your fps: " .. tostring(fps_count)
		time_accumulator = 0
		fps_count = 0
	end

	coroutine.resume(pulse)
end
