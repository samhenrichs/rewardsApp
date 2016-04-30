class JoinsController < ApplicationController

  def new
    @join = Join.new
  end

  def create
    @join = Join.new(post_params)

    if @join.save
      redirect_to @join
    else
      render 'new'
    end
  end

  def show
    
  end

  private

  def post_params
    params.require(:join).permit(:email)
  end

end
