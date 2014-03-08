%water.t
View.Set ("offscreenonly;graphics:1000,700,nobuttonbar")
Draw.Fill (1, 1, blue, black)
for x : 100 .. 900 by 100
	for y : 100 .. 600 by 100
		Draw.Arc (x, y, 50, 15, 180, 0, brightblue)
	end for
end for
%Pic.Save( Pic.New( 0, 0, maxx, maxy ), "images/water.bmp" )
