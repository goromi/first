class UsersController < ApplicationController
 before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}

  def index
    @users = User.all
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
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
        flash[:notice] = "ログインしました"
        session[:user_id] = @user.id
        redirect_to("/home/index")
    else
       @error_message = "メールアドレスまたはパスワードが間違っています"
        @email = params[:email]
        @password = params[:password]
        render("users/login_form")
    end
  end

  def login_form
  end

  def logout
    session[:user_id] = nil
   flash[:notice] = "ログアウトしました"
   redirect_to("/home/index")
  end

  def time
    if session[:user_id]
        @timetime = Timetime.new(timerecord: params[:record],user_id: @current_user.id)
        @timetime.save
        redirect_to("/users/second")
    end
  end

  def second
    @timetimes = Timetime.all.order(timerecord: :asc)
    

  end

  def show
    @user = User.find_by(id: params[:id])
    @timetime = Timetime.find_by(user_id: params[:id] )
  end

end
