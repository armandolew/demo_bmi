class UserPresenter < DelegateClass(User)
  def initialize(user)
    super(user)
  end

  def show_mass_index
    case self.mass_index
      when 1 then ["Very severely underweight", "danger", "fa fa-exclamation-triangle"]
      when 2 then ["Severely underweight", "danger", "fa fa-exclamation-triangle"]
      when 3 then ["Underweight", "warning", "fa fa-exclamation-triangle"]
      when 4 then ["Normal (healthy weight)",  "success", "fa  fa-check-circle"]
      when 5 then ["Overweight", "warning", "fa fa-exclamation-triangle"]
      when 6 then ["Obese Class I (Moderately obese)", "warning", "fa fa-exclamation-triangle"]
      when 7 then ["Obese Class II (Severely obese)", "danger", "fa fa-exclamation-triangle"]
      when 8 then ["Obese Class III (Very severely obese)", "danger", "fa fa-exclamation-triangle"]
    end
  end


end