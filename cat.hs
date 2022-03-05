import System.Environment   
import Data.List  
import System.Exit (exitWith)
import System.IO  
import Control.Monad

main = do
    args <- getArgs
    if null args then
        putStrLn "File not Found"
    else do
        file <- openFile (head args) ReadMode
        text <- hGetContents file
        putStrLn text
        hClose file