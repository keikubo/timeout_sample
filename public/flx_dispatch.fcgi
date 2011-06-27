#!/usr/bin/env /usr/local/rvm/rubies/ruby-1.8.7-p334/bin/ruby

__user_home   = "/home/USER_NAME"
__rails_root  = ""

__rails_root    = __user_home  + __rails_root

ENV['GEM_HOME'] = __user_home + "/.gem/ruby/1.8"
ENV['GEM_PATH'] = ENV['GEM_HOME']
ENV['RAILS_ENV'] ||= 'production'

require File.dirname(__FILE__) + "/../config/environment" unless defined?(RAILS_ROOT)
require 'fcgi_handler'

RailsFCGIHandler.process!
