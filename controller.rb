def create   
    @user = User.new(user_params)   
    if @user.save   
      session[:user_id] = @user.id   
      redirect_to root_url, notice: 'User successfully created.'   
    else   
      render :new   
    end   
  end  