Gem::Specification.new do |s|
    s.name         = "studio_game"
    s.version      = "1.0.0"
    s.author       = "Cecilia M. Quintana A."
    s.email        = "ceciquin@protonmail.com"
    s.homepage     = "https://github.com/ceciquin/studio-game-cq"
    s.summary      = "Ruby application that play a game and uses main Ruby features"
    s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
    s.licenses     = ['MIT']
    s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))
    
    s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
    s.test_files    = Dir["spec/**/*"]
    s.executables   = [ 'studio_game' ]
    
    s.required_ruby_version = '>=2.3'
    s.add_development_dependency 'rspec', '~> 2.8', '>= 2.8.0'
  end