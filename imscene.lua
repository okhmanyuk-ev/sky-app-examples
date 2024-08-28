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

	if ImScene.IsMouseHovered(bg) then
		ImScene.Tooltip(bg, "background")
	elseif ImScene.IsMouseHovered(green) then
		ImScene.Tooltip(bg, "green rectangle")
	end
end
