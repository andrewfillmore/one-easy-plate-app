class UsersController < ApplicationController
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { id: user.id, first_name: user.first_name, last_name: user.last_name, email: user.email }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = current_user
  
    user.first_name = params[:first_name] || user.first_name
    user.last_name = params[:last_name] || user.last_name
    user.email = params[:email] || user.email
    user.password = params[:password] || user.password
    user.password_confirmation = params[:password_confirmation] || user.password_confirmation
    
    if user.save
      render json: user
    else 
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def destroy
    user = User.find(params[:id])
    if current_user == user
      user.destroy
      render json: { message: "User successfully destroyed" }
    end
  end
end
