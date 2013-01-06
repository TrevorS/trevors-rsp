require 'hallon'
require 'hallon-openal'

module RSP

  class Client

    def initialize(key_location)
      # get the location of they developer key
      @key_location = key_location
      # setup the session
      @session = Hallon::Session.initialize IO.read(key_location)
    end

    def login(username, password)
      @session.login!(username, password)
    end

    def logout()

    end
  end
end
