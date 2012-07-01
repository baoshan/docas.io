## Introducing Docas

Docas is an automatic documentation service which not only documents your GitHub
repo at GitHub pages, but also keeps them up-to-date when new commits are pushed
to GitHub.

## How Docas Works

Every time you push to GitHub, docas automatically synchronizes documents hosted
at GitHub pages. Source files and documents are different branchs (`master`
and `gh-pages` accordingly) of the same repo.

The always up-to-date document site by default locates at:

    your_github_login.github.com/your_repository_name

will include:

  1. **A project page.** The place not only perfect for keeping great ideas,
  but also help forming better architecture by including effective description
  for every folder and source code.

  2. **Source code documents.** Comments in markdown will be rendered with your
  code side-by-side to help you approach a better *literate-style* programming.

## One-Time Setup

  1. Add `docas` as your collaborator.
  2. Add service hook `http://docas.io` from the [admin panel].
  3. You're there!
    - Test it with any push or press the **Test Hook** button.
    - First build takes longer than following synchronizations.

[admin panel]: https://help.github.com/articles/post-receive-hooks

## Being Smarter

  * Start Last, Finish First!

    + Do top-down and orthogonal design before coding the first line.
    + Break large, complex tasks into small, simple, intuitive, and orthogonal
    tasks.
    + Design every task's detail in plain English and markdown.
    + *According feature:* Docco (markdown and highlighted code side-by-side.)
    + *According feature:* Browsing markdown in the project page.

  * Communicate Well

    + Include a concise description for every folder and source file.
    + Shape your ideas and communicate with your team using docas.
    + *According feature:* Description for folders and files.

  * Stay Focused When Coding

    + Uncompromised engineering finally proofs your ideas.
    + Balance your design by keeping source lines of code under a maintaibable
    size.
    + Docas let code speaks for itself!
    + *Counterpoint feature:* SLOC statistics.

  * Keep Documents Fresh
  
    + Your time spent will be rewarded when code is maintained or enhanced.
    + Rewards come both from yourself and your team.
    + *According feature:* GitHub push synchronization.

  * Release It!

    + Set another exciting goal to motivate yourself.
    + Have a party with your team!
    + *According feature:* Try docas (beta) now!

## Supported Languages

  * JavaScript
  * CoffeeScript
  * Ruby
  * Python
  * Perl
  * Shell
  * And suggest your favorite!

## Recycle Bin

## Feature

    + For source files, write the description at the first line as:
          {COMMENT_SYMBOL}{FOUR SPACES}{THE DESCRIPTION}
    + For markdown files, write the description at the first line as:
          {FOUR SPACES}{THE DESCRIPTION}
    + For directories, the description is the description for the `README.md` in
    that directory.
    + For shebang scripts, write the description as source files following the
    shebang line. 

## Reasons of falling in love with your code 

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

##Stop Doing
Falling into the deep sea of the code，to find what you want for a long time!

Confusing what is a function of some code fragments has been compiled by yourself or by others!

Repeatedly describing and testing some codes to your partners!
