module Fgi
  class Executor
    def process_data(title, description)
      # load config
      config = File.expand_path(CONFIG_FILE)
      Fgi::Config.load(config)
      # curl to server
      Fgi::HTMLRequest.new(title, description).push
    end
  end
end
