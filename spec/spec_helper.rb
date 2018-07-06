require 'rubygems'
require 'humanize'
require 'rspec'
require 'timeout'
# require 'pry-byebug'

RSpec.configure do |config|
  config.around(:each) do |example|
    Timeout.timeout(5, &example)
  end
  config.filter_run_when_matching :focus
end
