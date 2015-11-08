# givemels
Just a simple bat script to alias ls to dir in windows command prompt. 

####Why? 
Because it's super annoying that ls doesn't exist out of the box in the command prompt.

####Is it dangerous to run?
The script creates a folder, backups the current path, pipes the alias to a new file, and adds the folder to the user path. 

It's been working great for me for years, but if you're worried, take a manual backup of your user path or remove the part of the script that modifies the path and do it yourself manually. 

There's no magic, just a regular batch script ^^
