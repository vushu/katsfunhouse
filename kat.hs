--Owned By Vushu

import Data.String
import BookReader
main :: IO ()
main = do
	putStrLn $ "*****************************************************************"
	putStrLn $ "**************  Welcome to Kats Fun House! **********************"
	putStrLn $ "*****************************************************************\r\n"
	putStrLn $ "Have fun with Kat :D, Choose a number.\r\n"
	menu

menu = do
	putStrLn $ "\r-----Main Menu----- \r\n"
	putStrLn $ "1. Play Quiz "
	putStrLn $ "2. Go out Shopping"
	putStrLn $ "3. Cooking Time"
	putStrLn $ "4. Story telling"
	putStrLn $ "5. Info\r\n"
	putStrLn $ "\r------------------- \r\n"
	a <- getLine
	doActivity a

doActivity "1" = quizMenu
doActivity "2" = goShopping
doActivity "3" = cookingTime
doActivity "4" = storyTelling
doActivity "5" = info
doActivity x = do
	putStrLn $ "Nope not valid Bitch do again!"
	menu

info = do
	putStrLn $ "\nKats Fun House v.1.0\r\n"

	putStrLn $ "\nThis Game is dedicated to Katrine, please enjoy this big joke\r\nmade by Dan, because he was very bored:D \r\n"

	putStrLn $ "\nEnter to Continue Kats Fun House"
	a <- getLine
	menu

quizMenu = do
	putStrLn $ "Quiz Time With Kat are you Ready?, Then Choose a Quiz \r\n"

	putStrLn $ "0. Back to Menu"
	putStrLn $ "1. Kat Quiz"
	putStrLn $ "2. Random Kat Quiz"
	a <-getLine
	playQuiz a

playQuiz "0" = menu
playQuiz "1" = quizOne
playQuiz "2" = quizTwo
playQuiz x = do
	putStrLn $ "Not valied try again"
	quizMenu

playQuiz x = do
	putStrLn $ "Nope invalid"
	quizMenu

	putStrLn $ "yo"
quizOne = do

	putStrLn $ "Anatomi Quiz"
	a <-getLine

	putStrLn $ "yo"


quizTwo = do
	putStrLn $ "Random Kat Quiz"

	a <-getLine

	putStrLn $ "yo"
goShopping = do
	print "Shopping!"
	a <-getLine
	putStrLn $ "yo"

cookingTime = do
	putStrLn $ "Cooking Time!"

	a <-getLine
	putStrLn $ "yo"

storyTelling = do
	putStrLn $ "Story telling Time!\r\n"
	putStrLn $ "0. Back to Menu"
	putStrLn $ "1. The Green Hunt"
	putStrLn $ "2. Hippie Mystery"
	--putStrLn $ "3. Kat and The Smurfs"
	--putStrLn $ "4. Pink haired Kat"
	--putStrLn $ "5. Kats Fun House"

	a <-getLine
	loadStory a "dk"
	storyTelling








