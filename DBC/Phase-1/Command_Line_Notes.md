## Bash
## PostGres or general read/write permissions issues


## kill zombie server

$ ps ax | grep shotgun
11152 s000  R+     0:00.00 grep shotgun
10766 s001  S+     0:00.60 /Users/ryandeussing/.rvm/gems/ruby-1.9.3-p429@sinatra/bin/shotgun

$ kill -9 10766

#done

## git log
`git lg` => git log
`git lg -p` => just see files that were changed

## remove a non empty directory

rm -rf 'directory'

## open up my bash profile
		subl .bash_profile

## copy a file from location to another

		cp /Users/max/repos/automate-guard-setup/automate-guard-setup.rb .

		/Users/SeanBoramLee/Downloads

## shortcuts

ctrl z	stops job
ctrl c 	kills job

ctrl a 	jump to beginning of line
ctrl e 	jump to end of line
ctrl f 	forward one character
ctrl b 	backward one character

ctrl k 	cuts line after cursor
ctrl u 	cuts line after cursor

## snippets

* ERB							`er`
* print ERB tag 	`pe`
* if block 				`if`
* if/else block 	`ife`
* each 						`each`
* form_for 				`ff`

## Github

### Remove a branch

`git branch -d branch_name`


### Pulling data down from a commit

`git pull origin` => pulls all data from the origin

`git branch -a` => shows all hidden branches

`git co -b pair-ericbooker12,seanyboy49,shawnte remotes/origin/pair-ericbooker12,seanyboy49,shawnte Branch pair-ericbooker12,seanyboy49,shawnte` => co a new branch and copy/paste the full line of corresponding branch on GitHub


### Merge on local

* Press i to enter insert mode.

* Now you can type your message, as if you were in a normal (non-modal) text editor.

* Press esc to go back to command mode.

* Then type :w followed by enter to save.

* Finally :q followed by enter to quit.

### Merge Unrelated Histories
`git push origin master --allow-unrelated-histories`
