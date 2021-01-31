class SessionsController < ApplicationController
  def create
    user = User.where(username: params['username'])
               .where(email: params['email'])
               .where(password_digest: params['password_digest']).first

    if user&.active
      session['logged'] = true
      session['user_id'] = user.id
      redirect_to root_path
    else
      @error = 'Email, Username, or Password invalid'
      render 'new'
    end
  end

  def destroy
    session['logged'] = false
    session['user_id'] = nil
    redirect_to root_path
  end
end
