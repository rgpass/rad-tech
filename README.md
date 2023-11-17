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

This section includes choices that I made and why, following the [Y-Statements](https://medium.com/olzzio/y-statements-10eb07b5a177) structure (loosely).

- **Sinatra:** Given the job description mentions HTML over-the-wire via Ruby on Rails libraries and Rails would be overkill for this assignment, I decided to serve the app via Sinatra and neglected other servers, bundlers, and pure HTML/CSS/JS
- **Pure/Vanilla CSS:** Given the assignment says explicitly to not use styles provided by external libraries and that the preprocessor is directly related to the architecture, I decided to go with pure CSS, neglecting that it's not used (or rarely used) in production environments
- **Desktop column order:** Given the design's significantly different layout for desktop and mobile, I decided to focus on mobile first while still having the HTML be DRY & accessible and handle all styling in CSS only, neglecting the order of the columns in the desktop design
- **Normalize.css:** I applied Noramlize.css to create a unified experience across browsers, neglecting the small increase in render times (by shipping more code than needed)
- **Not cropping images:** Given the design's images being all cropped into a circle, I decided against this because the Figma file shows they just _happen_ to be cropped

## Improvements

Given more time, I would improve this assignment by...

- handling error state
- adding pagination
- redoing the designs to use auto-layout for much easier implementation
- restructuring the columns in the designs to be in the same order to minimize complexity
- replacing placeholder data in the designs with real data to remove ambiguity

## Final Thoughts

This was the first time I have seen such a large difference in layout depending on mobile vs desktop. My immediate thought was to have two different HTML structures, but I wanted to challenge myself to get it done with DRY HTML, and use CSS for all things presentation. Depending on the product and team culture, the choice to go with better code (over matching the designs) may be the right choice. If it's not, then the best option would be to have un-DRY HTML.

The majority of my experience is in React and using component libaries like Bootstrap, Material, and Chakra, so it was cool to just do everything vanilla. I would've liked to showcase my JavaScript/TypeScript skills, but perhaps I can do that in another assignment. 😃
