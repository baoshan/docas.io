## Introducing Docas

Docas is a **documentation service** which not only **documents** your GitHub repo,
but also **synchronizes** them on new commits.

## How Docas Works

Source files and documents are different branchs (`master` and `gh-pages` accordingly) 
of the same repo. Every time you push to GitHub, docas synchronizes documents hosted
at GitHub pages automatically.

The always up-to-date document site is hosted at
`your_github_login.github.com/your_repository_name` by default, which includes:

  1. **A project page.** The place not only perfect for keeping great ideas,
  but also help you form a better architecture by including concise description
  for every folder and source file.

  2. **Source code documents.** Comments in markdown will be displayed alongside 
  your code to help you approach a better *literate-style* programming.

## One-Time Setup

  1. Add `docas` as your collaborator from the [admin panel].
  2. Add service hook `http://docas.io`.
  3. You're there!
    - Test it with any push or press the **Test Hook** button.
    - First build takes longer than following synchronizations.

[admin panel]: https://help.github.com/articles/post-receive-hooks

## Being Smarter

  * **Start Last, Finish First!**

    + Do top-down and orthogonal design before coding the first line.
    + Break large and complex tasks into small, simple, intuitive, and orthogonal
    tasks.
    + Design every task's detail in plain English and markdown.


    + *According feature:* Docco (markdown and highlighted code side-by-side.)
    + *According feature:* Browsing markdown in the project page.


  * **Communicate Well**

    + Include a concise description for every folder and source file.
    + Shape your ideas and communicate with your team using docas.

    + *According feature:* Description for folders and files.


  * **Stay Focused When Coding**

    + Uncompromised engineering finally proofs your ideas.
    + Balance your design by keeping source lines of code under a maintaibable
    size.
    + Docas let your code speaks for itself!
    + *Counterpoint feature:* SLOC statistics.
    

  * **Keep Documents Fresh**
  
    + Your time spent will be rewarded when code is maintained or enhanced.
    + Rewards come both from yourself and your team.
    + *According feature:* GitHub push synchronization.
   

  * **Release It!**

    + Set another exciting goal to motivate yourself.
    + Have a party with your team!
    + *According feature:* Try docas (beta) now!

## Features

**Instant Documentation**

  * Generates HTML documents.
  * Hosted at GitHub pages.
  * Source codes and documents in a same repo.
  * CNAME support.

**Automatically Synchronization**

  * One-time setup.
  * Updates documents on new commits synchronously.
  * Writes everything in the same place.
  * Streamlined literate programming experience.

**Write Freely**

  * Write document in markdown.
  * Code highlighted by pygments.
  * Browses markdown in the project page.
  * Comments are displayed alongside code.
  * Literate-style programming.

**Beyond Source Code**

  * Descriptions for folders and source files.
  * SLOC / Size statistics.
  * Languages statistics.
  * Recent commits log.

## Supported Languages

  * JavaScript
  * CoffeeScript
  * Ruby
  * Python
  * Perl
  * Shell
  * And suggest your favorite!
