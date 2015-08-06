require('rspec')
require('coin_combination')

describe('Fixnum#coin_combination') do
  # given 4 cents it will return 4 pennies
  it ('it makes change to pennies only') do
    expect((4).coin_combination()).to(eq('4 pennies'))
  end
end
