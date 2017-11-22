require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UserServices, type: :service do
  describe UserServices do
    describe "#calculate_bmi" do

      before do
        @user = User.create(email: "test@test.com")
        @user_service = UserServices.new
        @height = 1.70
        @weight = 80.0
      end

      describe "overweight" do
        it "should be overweight" do
          expect(@user_service.get_imc(user:@user, weight: @weight, height: @height)).to be(5)
        end
      end


    end
  end
end