lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'metatags/version'
Gem::Specification.new do |s|
  s.name = "metatags"
  s.author = "John Butler"
  s.email = "john.butler@betapond.com"
  s.homepage = "https://github.com/betapond/metatags"
  s.summary = "A simple meta tag generator that doesn't screw with the attributes that you're setting."
  s.files = Dir["{lib}/**/*"] + ["readme.markdown"]
  s.version = Metatags::VERSION
end
