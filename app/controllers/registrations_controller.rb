# Overriding Registrations Controller
class RegistrationsController < Devise::RegistrationsController

	def new
		super
	end

	def create
		@user =  User.create(sign_up_params)
		puts @user.inspect
		render :text => "this is testing"
	end

	def update
		super
	end 
  # private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email,
                                 :password, :password_confirmation)
  end

  # def account_update_params
  #    params.require(:user).permit(:first_name, :last_name, :email,
  #                       				:password, :password_confirmation)
  # end
end
