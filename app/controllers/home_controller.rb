class HomeController < ApplicationController
  def index
      @users = User.all
      @user = User.new(name: params[:name], password: params[:password])
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "ユーザー登録が完了しました"
        redirect_to("/home/index")
      else
        render("home/index")
      end
  end
  def create
    @user = User.new(name: params[:name], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/home/index")
    else
      render("home/index")
    end
  end
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      redirect_to("/posts/index")
    else
      render("users/login_form")
    end
  end
end
