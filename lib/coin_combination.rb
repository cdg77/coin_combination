class Fixnum
  define_method(:coin_combination) do
    given_amount = self
    counter = 0

    dimes = given_amount./(10)
    after_dimes = given_amount%10
    nickles = after_dimes./(5)
    after_nickles = after_dimes%5

    until counter.== (after_nickles)
        counter = counter.+(1)
        pennies = counter
    end

    answer = pennies.to_s + " pennies, " + nickles.to_s + " nickles, " + dimes.to_s + " dimes"
    answer
  end
end
