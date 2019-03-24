# Jekyll

Basic set up for developing a [Jekyll](https://jekyllrb.com/) site.

# Prequisites
Install:
- Docker
- make

Alternatively, you can just [install Jekyll](https://jekyllrb.com/docs/installation/). This also requires Ruby.

# Usage
`make serve` to start the development server. This will automatically reload when you make changes to any files except `_config.yml`. Changes to the config file require restarting the server.
`make build` to build the site and spit out a `_site` folder that contains the static data ready for hosting.

# Important files / directories:
- _config.yml contains the main configuration data for the site and the root level variables that can be used in templates.
- ./_posts contains the actual posts themselves. You can also store unfinished posts in `_drafts`. Posts here won't be published to prod.

# Hosting
Ensure that you have the remote repo configured as `git remote add origin https://github.com/two-stupid-devs/two-stupid-devs.github.io`. Pushing to master will publish the site to the url `https://two-stupid-devs.github.io`.