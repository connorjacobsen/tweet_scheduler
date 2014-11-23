# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tweet_scheduler/version'

Gem::Specification.new do |spec|
  spec.name          = "tweet_scheduler"
  spec.version       = TweetScheduler::VERSION
  spec.authors       = ["Connor Jacobsen"]
  spec.email         = ["jacobsen.connor@gmail.com"]
  spec.summary       = %q{CLI tweet scheduler.}
  spec.homepage      = "https://github.com/connorjacobsen/tweet_scheduler"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "highline", "~> 1.6.21"
  spec.add_development_dependency "twitter", "~> 5.13.0"
  spec.add_development_dependency "rufus-scheduler", "~> 3.0.9"
  spec.add_development_dependency "figaro", "~> 1.0.0"
end
