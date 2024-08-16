function Frame()
	Gfx.Clear(0.125, 0.125, 0.125, 1.0)
	Gfx.Begin(Gfx.Triangles)
	Gfx.Vertex(0.5, -0.5, 0.0, 0.0, 0.0, 1.0, 1.0)
	Gfx.Vertex(-0.5, -0.5, 0.0, 1.0, 0.0, 0.0, 1.0)
	Gfx.Vertex(0.0, 0.5, 0.0, 0.0, 1.0, 0.0, 1.0)
	Gfx.End()
end
