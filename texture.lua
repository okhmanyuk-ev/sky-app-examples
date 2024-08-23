local vertices = {
	Vertex():WithPos(Vec3(0.5, -0.5, 0)):WithTexCoord(Vec2(1, 1)),
	Vertex():WithPos(Vec3(-0.5, -0.5, 0)):WithTexCoord(Vec2(0, 1)),
	Vertex():WithPos(Vec3(0.5, 0.5, 0)):WithTexCoord(Vec2(1, 0)),
	Vertex():WithPos(Vec3(-0.5, 0.5, 0)):WithTexCoord(Vec2(0, 0))
}
local indices = { 0, 1, 2, 2, 1, 3 }

local texture = nil

FetchTexture("tada.png", function(_texture)
	texture = _texture
end)

function Frame()
	Gfx.Clear(0.125, 0.125, 0.125, 1.0)
	Gfx.Begin(Gfx.Mode.Triangles, Gfx.State():WithTexture(texture))
	for i = 1, #indices do
		Gfx.Vertex(vertices[indices[i] + 1])
	end
	Gfx.End()
end
