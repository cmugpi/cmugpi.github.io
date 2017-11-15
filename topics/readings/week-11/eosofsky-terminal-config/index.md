---
layout: page
title: "Git Branch in the Prompt"
---

{% include toc.md %}

# Git Branch in the Prompt
{:.ui.dividing.header.no_toc}


## Adding the Current Git Branch to Your Prompt

You can add the current git branch to your prompt by adding this line to your
`.bashrc`:

    PS1="$PS1 \$(git branch 2> /dev/null | grep '*' | cut -c 3-) $ "

The `$PS1` at the beginning means that we are appending new text to our
previously defined `PS1` variable. We wrap the oneliner in `\$()` so that it
is not interpreted as a string and so it is executed every time we print the
prompt. The oneliner gets info about the branches, greps for the line
containing the * (the current branch), and then selects the part of that line
that we want in the prompt. (We also pass output on `stderr` to `/dev/null` so
that we don't get an error when we're not in a git repo.) The $ at the end
prints a literal $ at the end of the prompt. Note that if you already had one
at the end of your `PS1`, you'll probably want to delete it.
