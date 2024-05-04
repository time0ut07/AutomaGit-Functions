# Automated-Git Functions


The scripts was crafted for fun and was aiming to reduce time and effort into a commit during my FYP period.


Completed: 4th May 2024


## Warning


**Please ensure that your changes works before pushing/creating your pull request**


**Ensure that you have cloned the repo and your script (both) are in the same directory**


**For push: Only use this script once you are done with your changes**


## Git Push Usage


This script will automatically **PUSH** your commits to your branch


Execute the file and enter the repo name, commit message, and branch name (optional)


*Do note that this script needs to be in the same directory as your repo*


![](https://imgur.com/EVAnWwV.png)


## Git Pull Usage


*Note: As of May of 2024, github does not have any commands to create a pull request from your cmd*


This script will automatically create a new branch for your changes. Since github does not have any commands for creating pull requests, you will have to do it yourself (this script already cut down the steps by half).


Execute the file and enter the repo name, branch name (optional), and commit message


*Do note that this script needs to be in the same directory as your repo*


![](https://imgur.com/bVuHnNJ.png)


Now you can just go back to your page and open view the new branch, create a pull request to merge with the main branch or just push more changes to your own branch before merging with main


## Resources


Here are some resources for fun


### Links


[Rules for branch](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets)


[Auto-Deletion of branch after pull](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-the-automatic-deletion-of-branches)


[Creating Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)


[Manual Pull](https://gist.github.com/ross-spencer/9c5c1f59212638c7c891d393087db6d1)


[Git Push + Other commands](https://github.com/git-guides/git-push)


### Commands


`git rev-parse --abbrev-ref HEAD` Displays the current branch you are on


`git status` Displays status (Current branch + changes made)
