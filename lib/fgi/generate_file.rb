module Fgi
  class GenerateFile
    def initialize(config)
      puts "Config file not found. Do you want to create a config file here? (Y/n)"
      if STDIN.gets.chomp != 'Y'
        puts "Closing...."
        raise "Failed to find a configuration file."
      else
        Fgi::Configurator.run
      end
    end

    def self.token
      puts 'Please provide a Gitlab access token before continuing:'
      Fgi::Configurator.validate_and_save_gitlab_token
      puts 'Thank you very much, we will now proceed.'
    end
  end
end
