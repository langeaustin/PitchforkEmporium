class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:full_name, :province, :address, :order_id)
    end

end
