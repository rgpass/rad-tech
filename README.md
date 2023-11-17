# Rad Tech

## Objective

Create a server-side rendered page that covers best practices, including semantic HTML, accessibility, responsive design/general layout considerations, and code quality/organization.

## Setup Instructions

### One-Time Steps

Note: This assumes you are using macOS.

- Clone this repo: `git clone https://github.com/rgpass/rad-tech.git`
- Change directory to repo root: `cd rad-tech`
- Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Install Brew dependencies: `brew bundle`
- Install Ruby
  - Add `asdf` Ruby plugin: `asdf plugin add ruby`
  - Install correct Ruby version via `asdf`: `asdf install`
  - Open up a new Terminal instance (or re-`source` if you know how)
  - Sanity check that you're running the correct Ruby version
    - Check the `$PATH`: `which ruby`
    - If this returns something like `/Users/<you>/.asdf/shims/ruby`, then you're all set. Jump to next parent bullet
    - If it returns `/usr/bin/ruby`, then your `$PATH` is not pointing to the correct place
    - This is different based on which shell you use. For Oh My Zsh, modify `~/.zshrc` so `asdf` is in the `plugins=()` list
    - ex. `plugins=(git asdf)`
    - Once that's done, run `source ~/.zshrc` and `which ruby` should return the expected result
- Install Ruby gems: `bundle install`

### Starting the Server

- Start the server: `ruby app.rb`
- Visit the page in the browser: `http://127.0.0.1:4567/`

## Reasoning

- Sinatra was chosen to simulate a Ruby-based backend, while not having all the overhead of a Rails app
- Did not use a preprocessor to better showcase vanilla CSS skills
- Wanted to have DRY HTML so all styling would be handled in CSS
- Applied Normalize.css to create a unified experience across browsers
- Did not circle-crop the images because inspecting the Figma file's images shows they just _happen_ to be cropped

## Improvements

- Desktop view
- DRY up `application.css`
- Add Y Statements for each item under Reasoning
- Handle error state
- Add pagination or infinite scrolling
- Redo the designs to use auto-layout for much easier implementation
- Suggest for the columns to be in the same order to minimize complexity
- Suggest for designs in the future to use real data to remove ambiguity
