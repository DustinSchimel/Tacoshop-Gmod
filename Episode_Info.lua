--Episode 1: Print--
print("Are you bitch?")


--Episode 2: Variables--
test1 = 123
test2 = 143.54
test3 = true
test4 = "Text"

test1 = 43 		--Makes the variable have a new value--

print(test1)
print(test2)
print(test3)
print(test4)


--Episode 3: Math--
test5 = 30 * 10 / 30 + 100 - 30 	--Follows PEMDAS--
test6 = 2
test7 = 2

--Math functions: http://lua-users.org/wiki/MathLibraryTutorial--

print(test5)
print(test6 + test7)


--Episode 4: If statements / operators--
-- == Equal to--
-- > Greater than--
-- < Less than--
-- <= Less than or equal to--
-- >= Greater than or equal to--
-- ~= Not equal to--

test8 = 30
test9 = 100
test10 = 200

if test8 < 29 then		--Test for if this is true, if not it skips--
	print("The number is less than 29")

elseif test8 > 31 then		--Test for if this is true, if not it skips--
	print("The number is less than 31")

else                        	--Happens when non of those are possible--
	print("The number is 30")
end				--Must put an 'end' statement to end the if--


if test9 > 50 and 10 > 2 then 	--Checks for if both are true--
	print ("Both are true")
end


if test10 < 1000 or 10 == 10 then --Checks for if one is at least true--
	print ("At least one is true")
end


--Episode 5: Tables--
test11 = {}				--Creates a table with nothing inside yet--

test11[1] = 40 				--Puts values inside of the table
test11[2] = 1337
test11["Name"] = 500			--Can have a name, but is not recommended in any means--

print(test11[1])
print(test11[2])
print(test11["Name"])


test12 = {79 , 500}			--Creates a table with values inside--

print(test12[1])
print(test12[2])


test13 = {}					

test13[1] = {}				--Creates a table within a table--
test13[1][1] = "Fag"

print (test13[1][1])


--Episode 6: Loops--
for i = 1 , 100 do			--Declares a variable of i that is 1. 
	print(i)			--This variable then increases by one until it reaches 100	
end					--Must start with 'do' then end with 'end'--


counter = 0

while counter < 100 do				--Loops while something is true, once false it stops--
	counter = counter + 1
	print(counter)
end


table1 = {}
table1[5] = "Hello"
table1[200] = "What's up."
table1[321] = "You piece of shit!"
						--The key variable can be anything, but the key is the number that the table is currently at--
for key , value in pairs(table1) do		--The value variable can be anything, but the value is what is inside that key--
	print(key, value)			--It loops through until it has went through all the data there is in that table--
end						

io.read() 					--Needed to stop the program from closing itself--
