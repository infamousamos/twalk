![twalk](https://i.imgur.com/iozPbVn.png)

![version](https://img.shields.io/badge/version-beta-green.svg)
[![security](https://hakiri.io/github/amoose/twalk/feature%252Fcreation.svg)](https://hakiri.io/github/amoose/twalk/feature%252Fcreation)
[![Code Climate](https://codeclimate.com/github/amoose/twalk/badges/gpa.svg)](https://codeclimate.com/github/amoose/twalk)
[![Test Coverage](https://codeclimate.com/github/amoose/twalk/badges/coverage.svg)](https://codeclimate.com/github/amoose/twalk/coverage)

Slide decks presented on the web. All you need to present: a browser. All you need to participate: a browser.

  - Create beautiful presentations based on templates.
  - Launch presentation with a URL on twitter.
  - Control presentation with your mobile device.
  - Audience follows along to presentation from link or matched by location.

Why Twitter?

- Twitter connects people.
- It allows anybody to sign up with only an email address. 
- Presentations are public engagements, it makes sense to keep the conversation open.
- Real-time.

## Getting Started

#### Requirements

- Ruby 2.0+
- Bundler
- Redis

##### Register your application with Twitter

- The callback URL will resemble: http://localhost:3000/auth/twitter/callback
- Be sure to enable 'Sign in with Twitter'

![Sign in with Twitter](http://i.imgur.com/ZAMoIwS.png)

1. Clone the repo `git clone git@github.com:amoose/twalk.git`
2. Bundle `bundle install`
3. Copy and configure parameters `cp config/application.yml.example config/application.yml`
3. Start the server with `bin/rails s`



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

License
-

MIT

*Free Software, Hell Yeah!*
