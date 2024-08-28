function Frame()
	local bg = ImScene.SpawnRectangle(Scene.Root)
	if ImScene.IsFirstCall() then
		bg.Stretch = Vec2(1, 1)
		bg.TopColor = Vec4(0.125, 0.125, 0.25, 1)
		bg.BottomColor = Vec4(0.25, 0.25, 0.5, 1)
		bg.Touchable = true
	end

	local green = ImScene.SpawnRectangle(bg)
	if ImScene.IsFirstCall() then
		green.Anchor = Vec2(0.5, 0.5)
		green.Pivot = Vec2(0.5, 0.5)
		green.Size = Vec2(128, 128)
		green.Color = Vec4(0.5, 0.75, 0.5, 1)
		green.Touchable = true
	end

	local red = ImScene.SpawnRectangle(bg)
	if ImScene.IsFirstCall() then
		red.Anchor = Vec2(0.25, 0.5)
		red.Pivot = Vec2(0.5, 0.5)
		red.Size = Vec2(128, 128)
		red.Color = Vec4(0.75, 0.5, 0.5, 1)
		red.Touchable = true
	end

	local blue = ImScene.SpawnRectangle(bg)
	if ImScene.IsFirstCall() then
		blue.Anchor = Vec2(0.75, 0.5)
		blue.Pivot = Vec2(0.5, 0.5)
		blue.Size = Vec2(128, 128)
		blue.Color = Vec4(0.5, 0.5, 0.75, 1)
		blue.Touchable = true
	end

	if ImScene.IsMouseHovered(bg) then
		ImScene.Tooltip(bg, "background")
	elseif ImScene.IsMouseHovered(red) then
		ImScene.Tooltip(bg, "red rectangle")
	elseif ImScene.IsMouseHovered(green) then
		ImScene.Tooltip(bg, "green rectangle")
	elseif ImScene.IsMouseHovered(blue) then
		ImScene.Tooltip(bg, "blue rectangle")
	end
end
