# ManyDogs Project

This repo contains the source code for the [ManyDogs Project website](https://manydogsproject.github.io/).

## Site info
* This site uses the [minimal mistakes](https://github.com/mmistakes/minimal-mistakes) theme and is built with [Jekyll](https://jekyllrb.com/).

## Making changes to the content

- Pull any remote changes to your local repo (i.e., make sure you have the latest version).
- Edit the Markdown `.md` files. When you push changes to the remote repo, GitHub will build the site (typically within a few minutes).
- Put images in the `assets/images` folder.
- Use relative URLs whenever possible, e.g., `pilot.html` instead of `https://manydogsproject.github.io/pilot.html`.
- **Do not touch the files in the folders that start with an underscore `_` unless you're sure you know what you're doing!**

## Setting up a local site to preview changes

- Clone the GitHub repo on your local machine.
- Install Jekyll: `gem install bundler jekyll`.
    - If that gives you any errors, Google them... or check [Jekyll's documentation](https://jekyllrb.com/docs/installation/).
- Install jekyll-seo-tag: `gem install bundler jekyll-seo-tag`.
- `cd` into the Git repo for the website.
- Build the local Jekyll site: `bundle exec jekyll serve`.
- Open your browser and go to: `http://localhost:4000`.
- You should see any changes you save on your local `.md` files (refresh).
- Push your changes when you're happy with the preview!

Thanks to the [ManyPrimates Project](https://manyprimates.github.io/) for inspiration and code for the website.