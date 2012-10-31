@dev_dir = 'public/dev'
@quiet = true

notification :growl

guard 'coffeescript', {
  :all_on_start => true,
  :output => "#{@dev_dir}/js",
  :hide_success => @quiet,
} do
  watch(%r{^app/(.+\.coffee)$})
end

guard 'coffeescript', {
  :all_on_start => true,
  :output => "spec/testem/compiled",
  :hide_success => @quiet,
} do
  watch(%r{^spec/(.+\.coffee)$})
end

guard 'haml', {
  :run_at_start => true,
  :input => 'markup',
  :output => @dev_dir,
  :notifications => !@quiet,
} do
  watch(%r{^.+(\.haml)$})
end

guard 'compass', {
  :compile_on_start => true,
  :configuration_file => 'compass.rb',
  :css_dir => "#{@dev_dir}/css",
  :sass_dir => 'style',
} do
  watch(/^(.*)\.s[ac]ss$/)
end

def ditto(source, target, type)
  watch(source) do |m|
    src = m[0]
    tgt = [@dev_dir, target, m[1]].join('/')

    if system("ditto #{src} #{tgt}")
      n "Copied #{src} to #{tgt}", "Copied #{type} file", :success unless @quiet
    else
      n "Couldn't copy #{src} to #{tgt}", "Failed to copy #{type} file", :failed
    end
  end
end

# Copy plain files that don't need compiling
guard 'shell', {
  :all_on_start => true,
} do
  ditto(%r{^app/(.*\.js)$},      'js',         'js')
  ditto(%r{^app/(.*\.glsl)$},    'js',         'glsl')
  ditto(%r{^images/(.*)$},       'css/images', 'image')
  ditto(%r{^markup/(.*\.html)$}, '',           'html')
  ditto(%r{^style/(.*\.css)$},   'css',        'css')
end
