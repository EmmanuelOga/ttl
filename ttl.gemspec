Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  s.name              = 'ttl'
  s.version           = '0.0.0'
  s.date              = '2010-07-28'
  s.rubyforge_project = 'ttl'

  s.summary     = "A simple Hash like collection with ttl"
  s.description = "Store key-values in a Hash like providing a time to live"

  s.authors  = ["Emmanuel Oga"]
  s.email    = 'EmmanuelOga@gmail.com'
  s.homepage = 'http://github.com/emmanueloga'

  s.require_paths = %w[lib]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README LICENSE]

  # s.add_dependency('DEPNAME', [">= 1.1.0", "< 2.0.0"])

  s.add_development_dependency('rspec', [">= 1.3.0", "< 2.0.0"])

  # = MANIFEST =
  s.files = %w[
    LICENSE
    README
    Rakefile
    lib/ttl.rb
    spec/spec_helper.rb
    spec/ttl_spec.rb
    ttl.gemspec
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^spec\/.+/ }
end
