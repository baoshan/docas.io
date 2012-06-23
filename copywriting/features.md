## How docas.io Works

Docas.io generates html documents using docco for all sources, plus a cover
page (named `index.html` by default) for your GitHub repo automatically.

Generated documents will be hosted using GitHub pages in the same repository
which can be accessed from:

    http://your_github_login.github.com/your_repository_name

Comments will be rendered with your code side by side to encourage literate
programming styled development. Content of comments will be parsed as markdown
to ensure readability, legibility, and also semanticity.

Each time you push new commits to GitHub, docas.io synchronizes the documents
with source automatically. So your documentation will be always up-to-date.

## Steps to Enjoying Docas.io

* Classic Method

  1. Add `docas` as your collaborator.
  2. Add the service hook at `http://docas.io` from the [admin panel] of your repo.
  3. You are done.

[admin panel]: https://help.github.com/articles/post-receive-hooks

* A Web Inferface is Planned

## Become a Better Developer Right Now

  * Include a concise description for all folders and source files.
  * Always do top-down design before coding.
  * Judge the sanity of your design by analysing source lines of code.
  * Maintain always up-to-date documentations using docas.io.

## Supported Languages

  * JavaScript
  * CoffeeScript
  * Ruby
  * Python
  * Perl
  * Shell
  * And suggest your favorite!
