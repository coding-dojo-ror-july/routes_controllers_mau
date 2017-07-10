class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render 'new'
  end

  def edit
    @id = params[:id]
    @user = User.find(params[:id])
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      age: params[:age]
    )
    redirect_to users_path # '/users'
  end

  def update
    User.find(params[:id]).update(user_params)
    redirect_to users_path # '/users'
  end

  def patch
    User.find(params[:id]).update(user_params)
    redirect_to users_path # '/users'
  end

  def delete
    User.delete(
      first_name: params[:first_name]
    )
    redirect_to users_path # '/users'
  end

  def total
    render json: { total: User.count }
  end

  private def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :age)
  end
end
