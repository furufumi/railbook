class LoginController < ApplicationController
  skip_before_action :check_logined
  def index
    render :index, layout: false
  end


  def auth
    usr = User.authenticate(params[:userid],params[:password])
    if usr then
      reset_session
      session[:usr] = usr.id
      session[:loger] = usr.userid
      redirect_to books_path
    else
      flash.now[:referer] = params[:referer]
      @error = 'ユーザーID/パスワードが間違っています。'
      render 'index'
    end

  end
end
