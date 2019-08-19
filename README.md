# Fgi

## Welcome to Fast Gitlab Issues!

Fast Gitlab Issues, aka Fgi, is a command line issue creation tool for Gitlab v8.8+.

To install, add the following to your project's Gemfile:

```ruby
gem 'fgi', git: 'https://github.com/moduloTech/fast-gitlab-issues.git'
```

And run `bundle install`.

After it finishes, run `$ fgi --config` if the gem is new to the project, or run `$ fgi --token <token>` if you are new to the project and fgi was previously installed.

You can create your token from Gitlab -> Settings -> Access Tokens
From then on, create your issues from the console:

```sh
$ fgi My awesome title goes here
```

This will open our default text editor (currently hardcoded to Vim) so you can provide a description, and when you close, it will create an issue on Gitlab. A link to the new issue will be provided if you want to check it out.

The following commands are currently supported:

$ fgi \<title\>         \# initiates the process to create a gitlab issue  
$ fgi --help          \# opens this help menu  
$ fgi --config        \# starts the configuration wizard  
$ fgi --token \<token\> \# saves the private gitlab token to a file and adds it to .gitignore

The config will ask you for your gitlab access token (you can get it from AF2) and the project URL from gitlab.

Any bugs/requests please open an issue, feel free to use fgi to do so!

# TOdos
Currently fgi doesn't count time, i'd add this functionality
* start, pause, resume, finish, or something like that. 
* i'd add shortcuts "fgi new" > "fgi n"
* it doesn't operate with labels
* i couldn't find list command to enlist existing issues. something like "fgi list todo"

Lev's best workflow is:
* find an issue from todo or milestone with list command
* get its description
* start working:
  * start timer
	* change its label todo > doing (wip)
	* set up a branch
* optionally pause / resume timer, execute /spent
* optionally leave a comment
* finish working:
  * push
	* deploy
	* label doing > dome
	* execute /spent
