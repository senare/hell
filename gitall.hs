#!/usr/bin/env runhaskell

{-# LANGUAGE OverloadedStrings #-}

import Turtle
import qualified Data.Text as T

repo = ["boar", "oryx", "yak", "ccpush", "kudu", "teal"]
wrkspace = "D:\\wrkspace\\"

gitall cmd = do 
	asd <- select $ map (wrkspace ++) repo
	liftIO(cd (fromText $ T.pack asd))
	liftIO(stdout(inshell cmd empty))

status = sh $ gitall "git status"

pull = sh $ gitall "git pull --rebase"
