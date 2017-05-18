#!/usr/bin/env ruby

require 'yaml'
require 'json'

module Fgi
  class << self
  end
  require_relative 'fgi/config'
  require_relative 'fgi/version'
  require_relative 'fgi/executor'
  require_relative 'fgi/html_request'
  require_relative 'fgi/helper'
  require_relative 'fgi/configurator'
  require_relative 'fgi/generate_file'

  CONFIG_FILE = '.fast_gitlab_issues.yml'
end
