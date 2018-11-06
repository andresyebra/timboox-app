class UserController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
    @user = User.find(params[:id])
  end

  def getUserbyEmail
    @user_email =  User.find_by(email: params[:email])
    if @user_email
      # render json: @user_email
      render json: {count: "1"}
    else
      render json: {count: "0"}
    end
  end

  def getUserbyRfc
    @user_email =  User.find_by(rfc: params[:rfc])
    if @user_email
      # render json: @user_email
      render json: {count: "1"}
    else
      render json: {count: "0"}
    end
  end


end
