local bg = Scene.Rectangle.Create()
bg.Stretch = Vec2(1, 1)
bg.TopColor = Vec4(0, 0.25, 0, 1)
bg.BottomColor = Vec4(0, 0.125, 0, 1)
Scene.GetRoot():Attach(bg)

local simple = Scene.Sprite.Create()
simple.Anchor = Vec2(0.5, 0.5)
simple.Pivot = Vec2(0.5, 0.5)
bg:Attach(simple)

FetchTexture("tada.png", function(texture)
	simple.Texture = texture
end)
