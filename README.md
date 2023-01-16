# ManyDogs Project

This repo contains the source code for the [ManyDogs Project website](https://manydogsproject.github.io/).

## Site info
* This site is built with [Quarto](https://quarto.org/).

## Making changes to the content

- Pull any remote changes to your local repo (i.e., make sure you have the latest version).
- Only use the `main` branch.
- Edit the Quarto Markdown `.qmd` files.
- Put images in the `images` folder.
- Use relative URLs whenever possible, e.g., `pilot.qmd` instead of `https://manydogsproject.github.io/pilot.html`.
- When you're ready to publish, use `quarto render` from your terminal (not in the R console). Then `git push`. See Quarto's documentation on [Publishing > GitHub Pages](https://quarto.org/docs/publishing/github-pages.html) for more information.
- **Do not touch the files in the folders that start with an underscore `_` unless you're sure you know what you're doing!**

## Setting up a local site to preview changes

- Clone the GitHub repo on your local machine.
- Install [Quarto](https://quarto.org/docs/get-started/).
- `cd` into the Git repo for the website.
- Preview the local site: `quarto preview`.
- You should see any changes you save on your local `.qmd` files (refresh).
- Push your changes when you're happy with the preview!

Thanks to the [ManyPrimates Project](https://manyprimates.github.io/) for inspiration and code for the website.