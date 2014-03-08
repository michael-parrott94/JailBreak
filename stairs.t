%stairs.t
View.Set ("offscreenonly;graphics:1000,700,nobuttonbar")
%Make stairs
for i : 0 .. 600 by 100
    if i = 600 then
	Draw.Box( i, i, maxx, i + 99, black )
    else
	Draw.Box( i, i, maxx, i + 100, black )
    end if
    Draw.Fill( i + 1, i + 1, 114, black )
end for

View.Update
%Pic.Save( Pic.New( 0, 0, maxx, maxy ), "images/stairs.bmp" )
