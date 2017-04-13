#!/usr/bin/env ruby

require 'yaml'
require 'json'

module Fgi
  class << self
  end
  autoload :Config, 'fgi/config'
  autoload :Version, 'fgi/version'
  autoload :Executor, 'fgi/executor'
  autoload :HTMLRequest, 'fgi/html_request'
  autoload :Helper, 'fgi/helper'
  autoload :Configurator, 'fgi/configurator'
  autoload :GenerateFile, 'fgi/generate_file'

  CONFIG_FILE = '.fast_gitlab_issues.yml'
end
