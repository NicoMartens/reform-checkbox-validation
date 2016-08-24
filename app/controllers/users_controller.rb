class UsersController < ApplicationController
  
  def new
    @form = UserForm.new(User.new)
  end

  def create
    @form = UserForm.new(User.new)
    if @form.validate(params[:user]) && @form.save
      redirect_to :new
    else
      render :new
    end
  end
end
