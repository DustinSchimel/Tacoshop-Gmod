--Episode 1: Printing text onto the screen--
print("Are you bitch?")


--Episode 2: Variables--
test1 = 123
test2 = 143.54
test3 = true
test4 = "Text"

test1 = 43 --Making the variable have a new value--

print(test1)
print(test2)
print(test3)
print(test4)


--Episode 3: Math--
test5 = 30 * 10 / 30 + 100 - 30 --Follows PEMDAS--
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

if test8 < 29 then			--Test for if this is true, if not it skips--
	print("The number is less than 29")

elseif test8 > 31 then		--Test for if this is true, if not it skips--
	print("The number is less than 31")

else                        --Happens when non of those are possible--
	print("The number is 30")
end							--Must put an end statement to end the if--


if test9 > 50 and 10 > 2 then --Checks for if both are true--
	print ("Both are true")
end


if test10 < 1000 or 10 == 10 then --Checks for if one is at least true--
	print ("At least one is true")
end

io.read() --Needed to stop the program from closing itself--
