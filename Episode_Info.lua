--Episode 1: Print
print("Are you bitch?")	--Prints the text onto the screen in parenthesis


--Episode 2: Variables
test1 = 123				--Set's a variable of the name of test1 equal to 123
test2 = 143.54
test3 = true
test4 = "Text"

test1 = 43 				--Makes the variable have a new value of 43

print(test1)			--Prints the variables
print(test2)
print(test3)
print(test4)


--Episode 3: Math
test5 = 30 * 10 / 30 + 100 - 30 	--Follows PEMDAS, and sets test5 equal to the result
test6 = 2
test7 = 2

--Math functions: http://lua-users.org/wiki/MathLibraryTutorial

print(test5)
print(test6 + test7)				--Adds the two variables to print them onto screen


--Episode 4: If statements / operators
-- == Equal to
-- > Greater than
-- < Less than
-- <= Less than or equal to
-- >= Greater than or equal to
-- ~= Not equal to

test8 = 30
test9 = 100
test10 = 200

if test8 < 29 then				--Test for if this is true, if not it skips
	print("The number is less than 29")

elseif test8 > 31 then			--Test for if this is true, if not it skips
	print("The number is less than 31")

else                        	--Happens when non of those are possible
	print("The number is 30")
end								--Must put an 'end' statement to end the if


if test9 > 50 and 10 > 2 then 	--Checks for if both are true
	print ("Both are true")
end


if test10 < 1000 or 10 == 10 then --Checks for if one is at least true
	print ("At least one is true")
end


--Episode 5: Tables
test11 = {}					--Creates a table with nothing inside yet

test11[1] = 40 				--Puts values inside of the table
test11[2] = 1337
test11["Name"] = 500		--Can have a name, but is not recommended in any means

print(test11[1])
print(test11[2])
print(test11["Name"])


test12 = {79 , 500}			--Creates a table with values inside

print(test12[1])
print(test12[2])


test13 = {}					

test13[1] = {}				--Creates a table within a table
test13[1][1] = "Fag"

print (test13[1][1])


--Episode 6: Loops
for i = 1 , 100 do			--Declares a variable of i that is 1
	print(i)				--This variable then increases by one until it reaches 100	
end							--Must start with 'do' then end with 'end'


counter = 0

while counter < 100 do		--Loops while something is true, once false it stops
	counter = counter + 1
	print(counter)
end


table1 = {}
table1[5] = "Hello"
table1[200] = "What's up."
table1[321] = "You piece of shit!"
										--The key variable can be anything, but the key is the number that the table is currently at
for key , value in pairs(table1) do		--The value variable can be anything, but the value is what is inside that key
	print(key, value)					--It loops through until it has went through all the data there is in that table
end


--Episode 7: Basic functions
function test14(var1 , var2)		--Creates variables that can be used in the fuction
	print(var1 + var2)				--Action that will be done when called to
end

test14(10 , 20) 			--Sets the variables that were put in the function, then goes back to it and runs it


function test15(a , b)
	sum = a + b				--Sets sum equal to the variables given in the call
	return sum				--Sets test15 equal to the amount of sum
end

test16 = test15(20 , 20)  	--Calls the test15 function, and sets test16 equal to test15 after it has went through it
print(test16)				--Prints out the data in test16


--Episode 8: Local
if 1 == 1 then
	local test17 = 999 		--Adding 'local' in front of a variable makes it only apply to the thing that it's in
	print(test17)			--Could be a function, loop, or an if statement, but it will only be in that

	if 1 == 1 then			--Can be in a child 'if' statement, since it's in the adult 'if' statment local was declared in
		print(test17)
	end
end

print(test17)


--Episode 9: Built-in libraries
--Libraries add pre-built functions that are able to do certain task
--http://lua-users.org/wiki/MathLibraryTutorial
--http://lua-users.org/wiki/StringLibraryTutorial
--http://lua-users.org/wiki/TableLibraryTutorial

test18 = math.ceil(10.3223) 	--Example use of the math library to round the number upward
test19 = math.floor(10.3223) 	--Example use of the math library to round the number downward

print(test18)
print(test19)


--Episode 10: Higher or Lower game
lives = 10
math.randomseed(os.time())			--Gets a random number using the computer's time
math.random(1 , 50)
randomNumber = math.random(1 , 50)	--Uses the computer's time to generate a random number inbetween the given values

print("Welcome to the higher or lower than game!")

while lives > 0 do
	print("You have "..lives.." live(s) left!, guess the number!")	--You can use ".." inbetween strings to insert things
	number = io.read()				--Waits for user input to set 'number'
	number = tonumber(number)		--Converts the string into a number

	if number == randomNumber then

		print("You guessed it correct, congratulations!")

		break 				--Ends the loop no matter what

	elseif lives ~= 1 and number < randomNumber then

		print("Guess higher!")

		lives = lives - 1
	
	elseif lives ~= 1 and number > randomNumber then

		print("Guess lower!")

		lives = lives - 1

	elseif lives == 1 and number ~= randomNumber then

		lives = lives - 1
	end
end

if lives == 0 then

	print("You failed!")

end


io.read() 					--Needed to stop the program from closing itself
