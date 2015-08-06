require('rspec')
require('coin_combination')

describe('Fixnum#coin_combination') do
  it ('it makes change to pennies only') do
    expect((4).coin_combination()).to(eq('4 pennies, 0 nickles, 0 dimes, 0 quarters'))
  end

  it ('it makes change to nickles and pennies') do
    expect((9).coin_combination()).to(eq("4 pennies, 1 nickles, 0 dimes, 0 quarters"))
  end

  it ('it makes change to dimes, nickles, and pennies') do
    expect((16).coin_combination()).to(eq("1 pennies, 1 nickles, 1 dimes, 0 quarters"))
  end

  it ('it makes change to dimes, nickles, pennies and quarters') do
    expect((41).coin_combination()).to(eq("1 pennies, 1 nickles, 1 dimes, 1 quarters"))
  end
end

# 0 nickles, 0 dimes, 0 quarters
