class HomeController < ApplicationController

  def index
    @posts = Post.paginate :page => params[:page], :order => 'created_at DESC'
  end

end
