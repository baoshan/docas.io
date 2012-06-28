#Docas
---------------------------------------
Literate Programming can be Quicker and Dirtier. 
    
    
    
##Stop Doing
Falling into the deep sea of the code，to find what you want for a long time!

Confusing what is a function of some code fragments has been compiled by yourself or by others!

Repeatedly describing and testing some codes to your partners!
    
    
#Let the code talks with you!
    
    
##Who's Docas.io
Docas.io automatically documents your GitHub repo which will be parsed as markdown to ensure 
legibility, understandability, findability and also semantization on GitHub pages.

Every time you push new commits to GitHub, docas keeps the master branch (the source codes)
and gh-pages branch (the documentation) in sync.


##How Docas.io Works
Comments will be rendered with your code side by side to encourage literate programming styled
development. Content of comments will be parsed as markdown to ensure readability, legibility, 
and also Semantization.

Literate comments will help you be easier to understand and find the source code.

It looks like talk with you in our familiar language. 

Docas.io automatically generates html documents using docco for all sources, plus a cover
page (named `index.html` by default) for your GitHub repo automatically.

Generated documents will be hosted using GitHub pages in the same repository
which can be accessed from:

    http://your_github_login.github.com/your_repository_name

Each time you push new commits to GitHub, docas.io synchronizes the documents with source 
automatically. So the documents will be always up-to-date.


##Reasons of falling in love with your code 

  *  __Legibility__    
Comments will be rendered with your code side by side. 

  * __Synchronicity__    
comments doc and code doc will unit as one doc using docas.io to ensure Synchronous 
Update between coments and codes. 

  * __Semantization__      
Literate comments ensure readability, smooth and natural.

  * __Understandability__   
Be better to describe what function the code achieved.

  * __Findability__  
Be easier to find the code you want in clear comments and reasonable page layout. 


###For  Developer 
  * Easily find the function point of some code fragment in a hundred-line-long documentation.

  * Literate comments can grasp and analysis the overall design, comb programming ideas.

  * Generated documents help you to pick up the train of thought, also make other programmers easier to 
understand the program construction process.

  * Be good for thinking, and to all view the code from a higher level. 

###For  R&D Team
  * The required source code will be quickly find by your partners for using and improvement.

  * Enhance the efficiency of the project development and follow-up maintenance. Avoid the influence 
of personnel changes or other factors leads to efficiency low and maintenance difficulties.


## Steps to Enjoying Docas.io

* Classic Method
  
  1. Open your repo on GitHub and go to its admin page.
  2. Add `docas` as your collaborator.
  3. Add the service hook at `http://docas.io` from the [admin panel] of your repo.
  4. Test it with any push. The initial build may takes longer than following pushes.
  5. You are done. A web interface is planned.

[admin panel]: https://help.github.com/articles/post-receive-hooks

* A Web Inferface is Planned

## Become a Better Developer Right Now

  * Include a concise description for all folders and source files.

    + For source files, write the description at the first line as:
          {COMMENT_SYMBOL}{FOUR SPACES}{THE DESCRIPTION}
    + For markdown files, write the description at the first line as:
          {FOUR SPACES}{THE DESCRIPTION}
    + For directories, the description is the description for the `README.md` in
    that directory.
    + For shebang scripts, write the description as source files following the
    shebang line. 

  * Always do top-down design before coding.

    + Break large, complex tasks into many small, simple, and intuitive tasks.
    + Write down each task's procedure using markdown in comments.
    + Using docas.io to communicate the design with your team.
    + Coding will become a breeze once your ideas got proofed.

  * Judge the sanity of your design by analysing source lines of code.

    + Tackle down the puzzle piece by piece.
    + Control the source lines of code of all sources under a maintaibable size.

  * Maintain always up-to-date documentations using docas.io.
  
    + In two steps, have an always up-to-date documentation hosted at GitHub pages.
    + Read the source by yourself.
    + Invite your friends to use or comment on the source.

## Supported Languages

  * JavaScript
  * CoffeeScript
  * Ruby
  * Python
  * Perl
  * Shell
  * And suggest your favorite!
