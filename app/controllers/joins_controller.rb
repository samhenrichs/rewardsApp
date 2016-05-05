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

  def destroy
    @join = Join.find(params[:id])
    @join.destroy
    redirect_to root_path
  end


  private

  def post_params
    params.require(:join).permit(:email)
  end

end
