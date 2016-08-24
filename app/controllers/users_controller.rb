class UsersController < ApplicationController
  
  def new
    @form = UserForm.new(User.new)
  end

  def create
    @form = UserForm.new(User.new)
    if @form.validate(params[:user]) && @form.save
      render plain: 'User could be validated and saved'
    else
      render :new
    end
  end
end
