(function() {
  var specs, uri;

  specs = ['lib/anything_spec'];

  specs = (function() {
    var _i, _len, _results;
    _results = [];
    for (_i = 0, _len = specs.length; _i < _len; _i++) {
      uri = specs[_i];
      _results.push("specs/" + uri);
    }
    return _results;
  })();

  requirejs.config({
    baseUrl: '../../../public/dev/js',
    paths: {
      specs: '../../../spec/testem/compiled'
    }
  });

  require(specs, function() {
    var env;
    env = jasmine.getEnv();
    env.addReporter(new jasmine.HtmlReporter);
    return env.execute();
  });

}).call(this);
