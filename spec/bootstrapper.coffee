specs = [
  'lib/anything_spec'
]

# Unless you really know what you're doing,
# don't edit below this line

specs = ("specs/#{uri}" for uri in specs)

requirejs.config
  baseUrl: '../../../public/dev/js'
  paths:
    specs: '../../../spec/testem/compiled'

require specs, ->
  env = jasmine.getEnv()
  env.addReporter(new jasmine.HtmlReporter)
  env.execute()
