# To Do

## Show the basic idea of RMarkdown:
* *Rational*:
  * easing the audience into the workshop
  * making them comfortable with the more interactive style
  * more promising then real work with RMarkdown
1. just showing some features:
  * other outputs (change to pdf)
  * other languages (change the first chunk to python)
3. promise the dynamic character -> We need new data
4. *Key take away*
  * use RMarkdown, pretty cool
  * use **relative** paths!!!
5. transition to the smallest multi-lab study in the world

## Learn how to collaborate with a public project
1. Fork this GitHub repo
  * *Rational*:
    * get some smooth action (only point and click)
    * experience the distributed character of git
2. Clone your Git-repo
  * RStudio -> New Project -> Version Control -> Git -> Repo Link
3. Your first commit
  * execute R/save.R to save data file with a unique name
  * add the file in RStudio
  * commit file
  * *Rational*: Easy, funny, no merge conflicts
4. Render the RMarkdown
  * *Rational*: Get a success fast.
5. Push to your GitHub
  * Password/Username
  * if problems wait till 9.
6. Create Pull Request
7. *Key take away*
  * what is a commit
  * difference between local/remote
  * clone & push
8. Merge of Pull Requests
9. Set Up SSH:
  * RStudio -> Tools -> Global Options -> Git/SVN -> Create RSA-Key -> copy
  * GitHub -> Settings -> Key -> paste
  * Close RStudio/Delete Folder
  * Reclone with SSH: RStudio -> New Project -> Version Control -> Git -> SSH-Repo Link
  * while everyone is working, Andreas or Aaron merges the other PR's
10. Show rerendering of markdown with all data
11. Pull from Upstream -> everyone gets all data
12. Push to own repo (test if SSH is working everywhere)
13. Break (maybe even Lunch break)
  
## Learn to Collaborate with trusted collaborators

1. Find groups of 3-4
2. decide in which repo to work of each small group to work
3. decide on a funny group name and which repo should be the common one
4. Add Andreas as Collaborator
5. switch to Andreas computer, clone of Aaron's repro
6. add script named after funny group name with the plot from markdown
7. Show change of plot from Andreas and Aaron -> merge conflict
8. Show how to resolve and push
9. *Key take away*
  * difference local/remote/upstream
  * push vs pull request -> trust/ownership
10. Groups shall repeat
  * every group member shall commit at least once to common repo
  * slide with working suggestions to add to ggplot for people without ggplot knowledge
11. Big chaos -> Help all groups to resolve the chaos
12. Add pull request by each group
13. Break (while Aaron merges all each pull request)

## Use repro to build basic dockerfile and makefile

1. change yaml
2. automate()
3. in makefile add markdown.html to all
4. make all
5. make all
6. change R/read.R
7. make all
8. make all
6. make all -B
7. build docker image -> make build
8. deinstall needed package
9. make all DOCKER=TRUE
10. show sessioninfo -> 3.6.2 instead of 3.6.1/ ubuntu instead of solus
11. explain automate_load_packages/automate_load_data
11. *Key take away*

## do it all yourself from scratch

1. RStudio -> New Project -> New Directory -> Repro Template -> anynameyouwant
2. automate()
3. make build && make all DOCKER=TRUE
4. add *.html to .gitignore
4. commit the rest
5. usethis::use_github(protocol = "ssh")

## Q & A

## Open Questions

When to do the following:
* change RProject Settings to more reproducible
* install tidyverse /reinstall repro package -> before the workshops starts?
* pull of docker image verse:3.6.2 -> lunch break?
