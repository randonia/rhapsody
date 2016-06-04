# Rhapsody Template #
_a less-than-minimal Sinatra framework_

## What is this? ##
Rhapsody Template is a scaffolding to take the busy work out of rapidly prototyping a "less than minimal" web framework. Sinatra by itself is incredibly lightweight, and Rails is incredibly cumbersome. This aims to be somewhere in between.

## Use ##
Setup is intended to be minimal. View the Dependencies Setup header below, but ultimately the only packages you need are:

* Ruby
* Bundler
* rbenv

### Running the server ###
After dependency setup, just run `dev_server.sh` to begin. It should auto-load using the rerun gem.

    $ ./dev_server.sh

### Development Console ###
`dev_console.sh` gives you access to a REPL debug interface for your app.

    $ ./dev_console.sh

#### API ####
`api/` directory houses endpoint definitions and all ruby files are loaded automatically by `initializers/_init.rb`. For more information on Sinatra's DSL, visit their [README page](http://www.sinatrarb.com/intro.html)

#### Models ####
`models/` directory houses models, and are loaded automatically by `initializers/_init.rb`

#### Dev Console ####

### Dependencies Setup ###
    $ rbenv install VERSION
    $ rbenv local VERSION
    $ gem install bundler
    $ cd server
    $ bundle install

## Contact ##
If you find anything stupid, [Tweet](https://twitter.com/Zambini845) at me or submit a Pull Request. As sarcastic as I may sound, I welcome constructive feedback.
