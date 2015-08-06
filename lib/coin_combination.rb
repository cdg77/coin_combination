class Fixnum
  define_method(:coin_combination) do
    given_amount = self
    counter =1
    until counter.==(given_amount)
        counter = counter.+(1)
        pennies = counter
    end
    pennies.to_s + " pennies"
  end
end
