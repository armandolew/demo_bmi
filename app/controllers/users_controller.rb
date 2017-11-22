class UsersController < ApplicationController

  def mass_index
  end

  def calculate_bmi
    UserServices.new.get_imc(user: current_user, weight: bmi_params[:weight].to_f, height: bmi_params[:height].to_f)
    redirect_to users_show_path(:id => current_user.id)
  end

  def show
  end

  def bmi_params
    params.require(:bmi).permit(:height, :weight)
  end
end
