class Fixnum
  define_method(:coin_combination) do
    given_amount = self
    counter = 0

    # until counter.== (4)
    #     pennies = counter.+(1)
    # end

    # not_pennies = given_amount - pennies
    #
    # nickles = not_pennies./(5)
    #

    # until counter.==(given_amount % 5 == 0)
    #   counter = counter.+(1)
    #   nickles = counter
    # end

    nickles = given_amount./(5)
    after_nickles = given_amount%5

    until counter.==(after_nickles)
        counter = counter.+(1)
        pennies = counter
    end
    answer = pennies.to_s + " pennies" + ", " + nickles.to_s + " nickles"
    answer
  end
end
