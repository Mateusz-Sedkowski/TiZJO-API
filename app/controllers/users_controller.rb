class UsersController < ApplicationController
  before_action :set_user, only: %i(update destroy)

  def create
    @user = User.new(user_params)

    if @user.save
      render @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def index
    @users = User.all
  end

  def update
    if @user.update(user_params)
      render @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @user.destroy
      head :destroy
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(
                             :first_name,
                             :last_name,
                             :use_nickname,
                             :nickname,
                             :email
    )
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
