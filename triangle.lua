function Frame()
	Gfx.Clear(0.125, 0.125, 0.125, 1.0)
	Gfx.Begin(Gfx.Mode.Triangles)
	Gfx.Vertex(Vertex():WithPos(Vec3(0.5, -0.5, 0.0)):WithColor(Vec4(1, 0, 0, 1)))
	Gfx.Vertex(Vertex():WithPos(Vec3(-0.5, -0.5, 0.0)):WithColor(Vec4(0, 1, 0, 1)))
	Gfx.Vertex(Vertex():WithPos(Vec3(0.0, 0.5, 0.0)):WithColor(Vec4(0, 0, 1, 1)))
	Gfx.End()
end
