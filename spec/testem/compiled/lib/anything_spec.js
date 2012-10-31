(function() {

  define(['lib/anything'], function(anything) {
    return describe('anything', function() {
      return it('says "Success!"', function() {
        spyOn(console, 'log');
        anything.saySomething();
        return expect(console.log).toHaveBeenCalledWith('Success!');
      });
    });
  });

}).call(this);
