%menu.t
%Menu for final game

%Include the needed files
include "name.t" %For the credits procedure
include "game.t" %For the game procedure
include "clearscreen.t" %Special effects

%Include the necessary images
var eye : int := Pic.FileNew ("images/eye.bmp")
var scaledEye := Pic.Scale (eye, 160, 80)
Pic.Free (eye)
var catCD : int := Pic.FileNew ("images/catcd.bmp")
var character : int := Pic.FileNew ("images/character.bmp")
var scaledCharacter : int := Pic.Scale (character, 250, 375)
Pic.Free (character)

%Set the screen
View.Set ("offscreenonly;graphics:1000;700,nobuttonbar,noecho,nocursor,title: Michael's Game")
colorback (21)
cls
View.Update

%Font for menu
var menuFont : int := Font.New ("mono:48:bold,italic,underline")
var selectionFont : int := Font.New ("mono:30:bold,italic")
var fontColour : int := 1
%Variables for cat spinning
var degrees : int := 0
%Colours for the stars
var starColour : int := 1
%Where to put the character
var x : int := 0
%Process for getting option
var choice : string (1) := '0'

%Procedure for doing x  =0, degree = 0, choice = 0
proc setZeroes
	choice := '0'
	degrees := 0
	x := 0
	cls
	View.Update
end setZeroes

const ROTATION_AMOUNT := 10 %Has to be divisible by 360
var rotatedCD : array 1 .. 360 div ROTATION_AMOUNT of int
Pic.SetTransparentColor (catCD, 21)
var currentCD : int := 0
for i : 1 .. 360 div ROTATION_AMOUNT
	rotatedCD (i) := Pic.Rotate (catCD, i * ROTATION_AMOUNT, Pic.Width (catCD) div 2, Pic.Height (catCD) div 2)
end for

%Input array
var chars : array char of boolean
%Menu
loop
	%Input
	Input.KeyDown (chars)
	if chars (chr (ORD_1)) then
		choice := '1'
	end if
	if chars (chr (ORD_2)) then
		choice := '2'
	end if
	if chars (chr (ORD_3)) then
		choice := '3'
	end if

	%The main menu
	if choice = '0' then
		%Rotate the cd
		currentCD := currentCD + 1
		if currentCD > 360 / ROTATION_AMOUNT then
			currentCD := 1
		end if
		%Move the character
		if x + Pic.Width (scaledCharacter) < maxx then
			x := x + 10
		end if
		%Draw the images
		Pic.Draw (rotatedCD (currentCD), 0, maxy - Pic.Height (catCD), picCopy)
		Pic.Draw (rotatedCD (currentCD), 800, maxy - Pic.Height (catCD), picCopy)
		if currentCD mod 5 = 0 then
			fontColour := Rand.Int (20, 30)
		end if
		Font.Draw ("Jail Break", 310, maxy - 48, menuFont, fontColour)                                                                         %48 = size of menuFont
		%Draw the eyes
		Pic.Draw (scaledEye, 300, 520, picCopy)
		Pic.Draw (scaledEye, 540, 520, picCopy)
		%Draw a nose
		Draw.Line (510, 550, 460, 430, black)
		Draw.Line (460, 430, 530, 430, black)
		%SMILE!
		Draw.Arc (490, 420, 95, 25, 180, 360, black)
		%Draw a line to separate the menu
		Draw.ThickLine (0, 380, maxx, 380, 5, black)
		%Draw the menu options
		Font.Draw ("1. Play Jail Break", 0, 200, selectionFont, brightred)
		Font.Draw ("2. View the credits", 0, 160, selectionFont, brightred)
		Font.Draw ("3. Quit", 0, 120, selectionFont, brightred)
		Font.Draw ("Enter your choice:", 0, 60, selectionFont, yellow)
		%Decoration
		if currentCD mod 5 = 0 then
			starColour := Rand.Int (1, 7)
		end if
		Draw.FillStar (220, 400, 340, 520, starColour)
		Draw.FillStar (650, 400, 770, 520, starColour)
		%Draw the character in the middle
		Pic.Draw (scaledCharacter, x, 0, picCopy)
		%Finish the loop
		View.Update
		cls
		Time.DelaySinceLast (round (1000 / 60))
	elsif choice = '1' then
		clearScreen
		delay (1000)
		playGame
		setZeroes
	elsif choice = '2' then
		colorback (black)
		makeName
		setZeroes
		colorback (21)
		cls
		View.Update
	elsif choice = '3' then
		exit
	end if
end loop

%End the game
var bigFont : int := Font.New ("palatino:90:italic,underline")
var starX, starY : int
for i : 1 .. 150
	starX := Rand.Int (0, maxx)
	starY := Rand.Int (0, maxy)
	Draw.FillStar (starX, starY, starX + 10, starY + 10, white)
end for
Font.Draw ("Hope you had fun!", 0, 300, bigFont, brightpurple)
View.Update

