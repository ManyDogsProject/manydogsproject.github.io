# ManyDogs Project

This repo contains the source code for the [ManyDogs Project website](https://manydogsproject.github.io/).

## Site info
* This site is built with [Quarto](https://quarto.org/).

## Making changes to the content

- Pull any remote changes to your local repo (i.e., make sure you have the latest version).
- Edit the Quarto Markdown `.qmd` files and push changes to the remote repo. Then use `quarto publish gh-pages` from your terminal (not in the R console).
- Put images in the `images` folder.
- Use relative URLs whenever possible, e.g., `pilot.html` instead of `https://manydogsproject.github.io/pilot.html`.
- **Do not touch the files in the folders that start with an underscore `_` unless you're sure you know what you're doing!**

## Setting up a local site to preview changes

- Clone the GitHub repo on your local machine.
- Install [Quarto](https://quarto.org/docs/get-started/).
- `cd` into the Git repo for the website.
- Preview the local site: `quarto preview`.
- You should see any changes you save on your local `.md` files (refresh).
- Push your changes when you're happy with the preview!

Thanks to the [ManyPrimates Project](https://manyprimates.github.io/) for inspiration and code for the website.