class Fixnum
  define_method(:coin_combination) do
    given_amount = self
    counter = 0

    quarters = given_amount./(25)
    after_quarters = given_amount % 25
    dimes = after_quarters./(10)
    after_dimes = after_quarters % 10
    nickles = after_dimes./(5)
    after_nickles = after_dimes % 5

    until counter.== (after_nickles)
        counter = counter.+(1)
        pennies = counter
    end

    answer = pennies.to_s + " pennies, " + nickles.to_s + " nickles, " + dimes.to_s + " dimes, " + quarters.to_s + " quarters"
    answer
  end
end
