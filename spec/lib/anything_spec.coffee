define ['lib/anything'], (anything) ->
  describe 'anything', ->
    it 'says "Success!"', ->
      spyOn(console, 'log')
      anything.saySomething()
      expect(console.log).toHaveBeenCalledWith('Success!')
