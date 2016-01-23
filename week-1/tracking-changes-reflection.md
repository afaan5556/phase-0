# How does tracking and adding changes make developers' lives easier?

Tracking and adding changes allows developrs to make incremental changes that can be tested and used as the next fall-back point, much like in a video game where you pass a mile-stone at which you can re-spawn at if die later

# What is a commit?

A commit is the act of saving a packaged unit of changes and updates to the working branch.

# What are the best practices for commit messages?

Best practices for commit messages include the use of the imperative tense (as a way of an excample, to say that the commit adds something only if accepted, and so the word to use is "add" rather than "added")

It also follows a structure that includes a summary line like a subject line of an e-mail that is 50 characters of less, followed by the body of the message. This should include resources used and the motivation for the change, comparing the change to the previous version.

# What does the HEAD^ argument mean?

HEAD is the term used for the current position of a workflow (i.e. active branch and position)  and the HEAD^ argument is the last commit made in that workflow

# What are the three stages of a git commit and how do you move a file from one stage to the other?

The three stages of a git commit are:
1. Create a branch using git checkout -b "BRANCH_NAME" and proceed with the changes
2. Add the file changed to the staging area using git add FILE_NAME
3. Commit the change with a commit message using git commit -m "MESSAGE"

# Write a handy cheat sheet of the commands you need to commit your changes

Create branch to work on: git checkout -b new-branch
Add changes to staging area: git add file-name
Commit changes: git commit -m "Commit message"

# What is a pull request and how to you create and merge one?

A pull request is the process in which changes made and tracked locally using git (hopefully on a feature branch!!) are sent back to Github for integration with the master branch. A pull request is made after the proposed changes are sent to Githu using the command "git push origin branch-name" This will show up as a "Pull Request" on Github. That pull request can be inspected/reviewed and then "merged" into the Github master along with commentary using the prompts on Github

# Why are pull requests preferred when working with teams?

Pull requests are preferred when working with teams because they allow for a trasnparent, structured, and reviewable way in which to merge many features and changes that have been delegated to many different people/teams into a master product. It is a way in which distributed working can be integrated back into a single product.

