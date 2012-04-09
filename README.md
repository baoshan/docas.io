### One-Sentence Pitch

  1. Docas.io is your team member working hard on writing documents for your GitHub repo.
  2. Docas.io is a service synchronizes source code and documentation in real-time. 
  3. Docas.io elimits documentation phase from development process totally.
  4. Documentation as a Service!
  
  Actually, I don't like all above pitches :( Room for improvements? 

### Introduction

Docas.io generates an html documents for each recognizable source, plus a cover
page for your repo automatically. Comments of source codes will be parsed
through markdown and rendered alongside your code. The cover page contains
scale measurement, language stats, commit history, and a project structure
navigator.

On your each push to the git repo, docas.io will synchronize the documentation
with source increnentally. So you'll get an always-up-to-date documents
automatically.

Using docas.io is as simple as

  1. Add `docas` as your collaborator,
  2. Active the service from service hooks.

From then on, every push to GitHub will be synchronized by docas.io in almost
real-time. Author your source code as usual, but I bet you will pay more
attention to the inner beauty of the source than ever before!

As Robert Bringhurst stated, *Typography exists only to honor the content*,
For developers, documentation exists only to honor the source code. Start to
appreciate well-designed code from inspecting docas rendered documents today.

### Pricing and Plans

  * Lily (Free)
    
    * Public Repos:   Unlimited
    * Private Repos:  0
    * Sync Times:     Unlimited
    * Max Repo Size:  1MB
    * Price:          0/mo

  * Orchid (Paid)

    * Public Repos:   Unlimited
    * Private Repos:  Unlimited
    * Sync Times:     Unlimited
    * Max Repo Size:  8MB
    * Price:          $7/mo

### Features

  * Documentation with no extra cost
    + Always up-to-date documentation
    + Comments becomes documents automatically (using Docco)
    + Syntax Highlighting (using Pygments)
    + Synchronizes with source in real-time
    + Supports
      - JavaScript
      - Ruby
      - Python
      - Java
      - Shell
      - C, etc.
      - and Shebang Script

  * Your repository, a 3000-feet view
    + Project structure navigator
    + Scale measurement in physical SLOC
    + Statics of languages (over 150)
    + Recent commit history

  * Document freely
    + Highly-legible typography
    + Rich semantics with markdown
    + Separation-of-concern, top-down-design, ..., focus on the quality of code undistractedly

  * Configuration free

  * Fully functional offline version for
    + archiving purposes, or
    + client delivery

  * Flexible domain name: 
    + your own domain, e.g. `docs.docas.io`, or
    + classic github-styled link, e.g. `baoshan.github.com/docas`

### Improvement over Docas Command-Line

  * No annoying "Page Build Successful" notification

