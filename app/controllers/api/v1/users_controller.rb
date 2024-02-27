class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :update]

  # Sign Up
  def sign_up
    user = User.new(user_params)
    if user.save
      render json: { token: user.generate_jwt }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # Sign In
  def sign_in
    user = User.find_by(email: params[:email])

    if user && user.valid_password?(params[:password])
      render json: { token: user.generate_jwt }
    else
      render json: { errors: 'Invalid email or password' }, status: :unauthorized
    end
  end

  # Profile (requires authentication)
  def show
    render json: current_user
  end

  # Update Profile (requires authentication)
  def update
    if current_user.update(user_params)
      render json: current_user
    else
      render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name) # ...and any additional attributes)
  end
end
