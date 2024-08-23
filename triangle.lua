function Frame()
	Gfx.Clear(0.25, 0.0, 0.25, 1.0);
	Gfx.Begin(Gfx.Mode.Triangles)
	Gfx.Vertex(0.5, -0.5, 0.0, 0.0, 0.0, 1.0, 1.0)
	Gfx.Vertex(-0.5, -0.5, 0.0, 1.0, 0.0, 0.0, 1.0)
	Gfx.Vertex(0.0, 0.5, 0.0, 0.0, 1.0, 0.0, 1.0)
	Gfx.End()
end
