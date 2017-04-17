require('rspec')
require('queen')

describe("Array#attack") do
  it('checks if the queen can attack') do
    expect(([1,2]).attack([2,4])).to(eq(false))
  end
end
