# 1.1 Think About Time

I learned about focus and self-confidence through mindfulness and meditation. I'm excited to apply that learning not only to the DBC course work, but also to other facets in my life such as improving my sleep patterns, biting my nails, and being less of a scatter brain (even downloaded the App!) I learned about time-boxing which I understand is a shift from completing a given task at all costs in a sequential manner and then assessing how long it took, to working on a task for a certain amount of time, and then assessing how much was accomplished in that time. I currently manage my time somewhat loosely, and at a macro level. This works more often than not, but I have known for a while that there is room for improvement. After this research, I am going to challenge myself to make a change and manage my time during Phase 0 at a more micro level, create tiny habits to improve focus and positivity, start celebrating smaller victories, and not be so hard on myself.

# 1.2 The Command Line

I was definitely nervous about learning to use the command line as I had never tried it before. I was thoroughly lost during the introduction video and became aware of the mounting nervousness and self-confidence decline. I did however recall the "embrace confusion" video from Phase 0 and managed to move ahead. When I got to the crash course a lot of what I saw in the video started to come together in my head, and after hours of practice, I made up a lot of ground on my comfort level with using the command line (Powershell / Windows)

A shell is a command line interface through which a user can access the operating system (instead of a graphical interface which we are used to) Bash is a Unix Shell (though I used Powershell / Windows)

I was able to use all the commands in the crash course except the ones that had to do with changing the local environment. Others that I was not able to use were called out in the crash course as not compatible with Powershell (such as the "<" operator in piping and redirecting)

At this time, I feel the navigation, and basic creation, copying, and moving of files and directories is pretty important. I can see how finding strings within files, and/or piping contents of files to page (less/more) could e useful too.

Answers to commands off the top of my head:

- pwd: print working directory

- ls: list non-hidden contents of current directory

- mv: move a file (though this was really "re-name" a file if a child directory argument is not given)

- cd: change directory (needs argument of which directory to change to)

- ../: move to immediate parent directory (when preceded by "cd")

- touch: make a new file (needs file argument)

- mkdir: make a new directory (needs new directory argument) 

- less: show contents of a file up to one page at a time (needs file argument)

- rmdir: remove/delete a directory (needs directory argument)

- rm: remove/delete a file (needs file argument)

- help: display help on a given/argument topic

# 1.4 Forking and Cloning

Here is how I would explain to someone how to create, fork, and clone a repo.

"Hi! Github can be intimidating if you have never used it, but the workflow is very intuitive, there is an amazing community of people willing to guide you, and I promise you will be a pro in no-time! Let's get to it!

First of all, fork and clone are fancy ways of saying "copy" (on Github) and "download" (a copy of, from Github to your local machine) but it is nice to learn new terms when learning a new skill, making it more challenging, and so that we can all learn the industry standard lingo before we immerse ourselves into it together.

Github is quite visual, and creating a repo is quite intuitive through the big "+" icon in the top-right menu bar. From there you can follow prompts on how to name the repo, give it the right visibility (public/private), and initialization options (such as readme files) - And then you have created a repo!

An existing repo can be filled with a lot of hard work contributed by a lot of people. I would hate to risk breaking a stable/working version of all that work (and I am sure you would too!). That's where forking comes in. Forking gives you the option of copying (on Github) an existing repo so that you can then safely and boldly experiment, edit, etc the content without running the risk of damaging the master piece of work in the original/existing repo. Don't worry, once you have a solid and tested contribution that you want to make back to the master, you can submit a "pull request" to do so. Forking as opposed to creating a new repo allows you to get immediately up to speed on the latest and greatest version of (stable/master) work so that you can spend time on contributions from there. If instead you would create a new repo, you would be starting with a clean slate.

To work on content in the repo and make contributions back to the community/your peers, the repo has to exist on your local machine. That's where cloning comes in. Once you have a "forked" copy of a Github repo in your Github account that you want to contribute to, you can "clone" that forked repo down to your local machine. You will find an "HTTPS" address on the Github screen of your forked repo. You can copy that HTTPS address and then use the command "git clone" followed by a paste of that HTTPS address in your local machine command line to "clone" (or download a local copy of) the forked Github repo.

Now go try it, reach out if you have any questions!"

The videos and instructions in this section were great. The only struggle I had really was deleting non-empty directories in Windows Git-Bash, for which I was able to find some form help on.

# Basics of the Web

### Browser
An application that allows you to visit and view the content of the internet

### DNS
The "phone book of the internet." A database of all ip addresses and their corresponding domain names.

### Domain
The "human friendly" address of a computer. "Facebook" is a second-level domain, and ".com" is a top-level domain

### Internat
The internet is a network of servers that are physically connected to each other

### IP Address
The uniqe identification numbers (or address) that a computer uses when on the internet

### Web App
A dynamic page on the internet that is designed to allow continuous and distributed updates and changes

### Web Server
A computer that is directly connected to the internet (as opposed to through an internet service provider (ISP))

### Website
A static page of content on the internet that is only routinely/rarely updated.

### World Wide Web
A network that sits on the internet and allows access to the internet through web-browsers


* I had no idea about DNS and that the internet and the word wide web were in fact different things.
* It felt great to see my web-page live. Even though we were given the html template that created it, I feel like I am one step closer to building my own websites one day!
* The "aha" moment I had was when I saw the cute icons explaining DNS, IP addresses, and domain names. Pictures really are worth a thousand words. The "Internet in less than 5 minutes" is a video everyone should watch.


