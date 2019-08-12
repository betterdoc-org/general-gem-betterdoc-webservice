$LOAD_PATH.push File.expand_path('lib', __dir__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "betterdoc-webservice"
  spec.version     = File.read(File.expand_path("BETTERDOC_WEBSERVICE_VERSION", __dir__)).strip
  spec.authors     = ["BetterDoc GmbH"]
  spec.email       = ["development@betterdoc.de"]
  spec.homepage    = "http://www.betterdoc.de"
  spec.summary     = "Commonly used elements in our webservice"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  spec.add_dependency 'jwt', '~> 2.1.0'
  spec.add_dependency 'logging', '~> 2.2.2'
  spec.add_dependency 'logging-rails', '~> 0.6.0'
  spec.add_dependency 'lograge', '~> 0.10.0'
  spec.add_dependency 'pg', '~> 1.1.4'
  spec.add_dependency 'rails', '>= 5.2.3'
  spec.add_dependency 'rails_db_guard', '~> 1'
  spec.add_development_dependency 'minitest-ci', '~> 3.4.0'
  spec.add_development_dependency 'mocha', '~> 1.8.0'
  spec.add_development_dependency 'rubocop', '~> 0.68.1'
  spec.add_development_dependency 'rubocop-junit-formatter', '~> 0.1.4'
  spec.add_development_dependency 'rubocop-performance', '~> 1.2.0'
end
