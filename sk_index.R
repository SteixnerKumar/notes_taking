#***************************************************************************************************#
#
# This script changes the color and creates an index file
#
# Author: Saurabh Steixner-Kumar
#
#***************************************************************************************************#
#
#
#***************************************************************************************************#
####           Initializations                                                                   ####
#***************************************************************************************************#
#
#working_directory_path <- '/projects/github_files/notes_taking'
working_directory_path <- 'C:/Users/kumar/Documents/git_clones/notes/notes_taking'

setwd(working_directory_path)
#
library(R.utils)
#
fileName <- 'description.html'
fileOutput = 'index.html'
#

#***************************************************************************************************#
####           Logic                                                                             ####
#***************************************************************************************************#
# create an empty index fine
base::cat('', file=fileOutput, append=FALSE, sep = "\n")
#
lines_files <- countLines(fileName)
# open connection to the html file
con <- file(fileName,open="r")
#
for (loop_lines in 1:lines_files){
  rawHTML_line <- readLines(con,n=1)
  #
#  if (rawHTML_line == '</head>') break
  # Change color
  rawHTML_line <- gsub("#9F2042", "#5B9CB0", rawHTML_line)
  rawHTML_line <- gsub("#211103", "#1B2E34", rawHTML_line)
  rawHTML_line <- gsub("#3d1308", "#243e46", rawHTML_line)
  #
  # Save index file
  rawHTML <-  base::cat(rawHTML_line, file=fileOutput, append=TRUE, sep = "\n")
  #
}
# close connection to the html file
close(con)

#
#***************************************************************************************************#

