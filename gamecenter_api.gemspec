Gem::Specification.new do |s|
  s.name        = 'gamecenter_api'
  s.version     = '0.0.1'
  s.summary     = "Gamecenter api"
  s.description = "Ruby API to access gamecenter"
  s.authors     = ["Denis Kuznetsov"]
  s.email       = 'bytecheg@gmail.com'
  s.files       = ["lib/gamecenter.rb", "lib/gamecenter/api.rb"]
  s.homepage    =
    'https://rubygems.org/gems/gamecenter_api'
  s.license       = 'MIT'

  spec.add_runtime_dependency 'rest-client'
  spec.add_runtime_dependency 'json'
end