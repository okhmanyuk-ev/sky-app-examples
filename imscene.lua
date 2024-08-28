function Frame()
	local bg = ImScene.SpawnRectangle(Scene.Root)
	if ImScene.IsFirstCall() then
		bg.Stretch = Vec2(1, 1)
		bg.TopColor = Vec4(0.125, 0.125, 0.25, 1)
		bg.BottomColor = Vec4(0.25, 0.25, 0.5, 1)
		bg.Touchable = true
	end

	if ImScene.IsMouseHovered(bg) then
		ImScene.Tooltip(bg, "background")
	end

	local green = ImScene.SpawnRectangle(bg)
	if ImScene.IsFirstCall() then
		green.Anchor = Vec2(0.5, 0.5)
		green.Pivot = Vec2(0.5, 0.5)
		green.Size = Vec2(128, 128)
		green.Color = Vec4(0.5, 0.75, 0.5, 1)
		green.Touchable = true

		local label = Scene.Label.Create()
		label.Anchor = Vec2(0.5, 0.0)
		label.Pivot = Vec2(0.5, 1.0)
		label.Y = -64
		label.Text = "move mouse inside green rectangle"
		label.FontSize = 32
		green:Attach(label)
	end

	if ImScene.IsMouseHovered(green) then
		ImScene.Tooltip(bg, "green rectangle")

		local blue = ImScene.SpawnRectangle(bg)
		if ImScene.IsFirstCall() then
			blue.Anchor = Vec2(0.75, 0.5)
			blue.Pivot = Vec2(0.5, 0.5)
			blue.Size = Vec2(128, 128)
			blue.Color = Vec4(0.5, 0.5, 0.75, 1)
		end
	end
end
