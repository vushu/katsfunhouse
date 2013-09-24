module BookReader where

loadStory a b =  if(b == "dk")
					then loadStoryDk a
					else loadStoryEn a

loadStoryEn "1" = do
		inpStr <- readFile "stories/en/greenhunt.txt"
		putStrLn inpStr
loadStoryEn "2" = do
		inpStr <- readFile "stories/en/hippiemystery.txt"
		putStrLn inpStr

loadStoryEn x = do
		putStrLn $ "fail"

loadStoryDk "1" = do
		inpStr <- readFile "stories/dk/dengroenejagt.txt"
		putStrLn inpStr
loadStoryDk "2" = do
	 	inpStr <- readFile "stories/dk/hippiemysteriet.txt"
		putStrLn inpStr
loadStoryDk x = do
		putStrLn $ "fail"
