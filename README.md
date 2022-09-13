# CheatSheets

Who's got time to remember stuff? Introducing CheatSheets - a method for remembering those pesky command line snippets that are as forgettable as they are useful.

It works like this - each type of program or app gets it's own file in a YAML format, be it Git or VsCode. It is given a suffix of .cheat ( git.cheat.yaml or curl.cheat.yaml) so it can be easily searched or indexed in the user's system. The cherry on the top is writing an alias in .bashrc for opening all the cheatsheets with one command.

# Installation

Clone the project into any directory of your choosing. Write an alias that uses your favorite editor, pointing to the folder. I have VsCode bound to 'code' so for me it looks like this:

  alias cheats='code "/home/barakiva/Development/Code Snippets/cheatsheets"'

Then whenever I forgot (again) how to remove a branch I've created with a typo, instead of wasting precious minutes I open the terminal and write "cheats". VsCode opens the Cheats folder. I look at the git.cheats.yaml file, search for "branch", ctrl+c, ctrl+v (you know how it goes) and done!
