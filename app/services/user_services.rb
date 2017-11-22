class UserServices

  def get_imc(user:, weight:, height:)
     imc      = weight/(height * height)
     index  = set_imc_index(imc)
     user.update(mass_index: index)

     index
  end

  def set_imc_index(imc)
      if imc <= 15
        1
      elsif imc > 15 && imc <= 16
        2
      elsif imc > 16 && imc <= 18.5
        3
      elsif imc > 18 && imc <= 25
        4
      elsif imc > 25 && imc <= 30
        5
      elsif imc > 30 && imc <= 35
        6
      elsif imc > 35 && imc <= 40
        7
      elsif imc > 40
        8
      end
  end

end