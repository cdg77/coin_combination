require('rspec')
require('coin_combination')

describe('Fixnum#coin_combination') do
  # it ('it makes change to pennies only') do
  #   expect((4).coin_combination()).to(eq('4 pennies'))
  # end

  it ('it makes change to nickles and pennies') do
    expect((9).coin_combination()).to(eq("4 pennies, 1 nickles"))
  end
end
