Gem::Specification.new do |s|
  s.name        = 'gamecenter_api'
  s.version     = '0.0.1'
  s.summary     = "Gamecenter api"
  s.description = "Ruby API to access gamecenter"
  s.authors     = ["Denis Kuznetsov"]
  s.email       = 'bytecheg@gmail.com'
  s.files       = ["lib/gamecenter_api.rb", "lib/gamecenter_api/client.rb"]
  s.homepage    =
    'https://rubygems.org/gems/gamecenter_api'
  s.license       = 'MIT'

  s.add_runtime_dependency 'rest-client'
  s.add_runtime_dependency 'json'
end