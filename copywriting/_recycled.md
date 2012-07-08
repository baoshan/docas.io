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

  * Architecturing the Project Include a concise description for all folders and source files.

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
    + Communicate your design in docas generated documents with your team.
    + Coding will be a breeze when your ideas get into shape.

  * Judge the Sanity of Design by analysing source lines of code.

    + Tackle the puzzle down piece by piece.
    + Keep source lines of code under a maintaibable size.

  * Maintain Up-to-Date Documents using Docas
  
    + Time spent will be rewarded when the code is maintained or enhanced.
    + Rewards can come either from you or your team.
    + Read your own source code, Luke!
    + Invite friends to review your work.

## Supported Languages

  * JavaScript
  * CoffeeScript
  * Ruby
  * Python
  * Perl
  * Shell
  * And suggest your favorite!
