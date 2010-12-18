class HomeController < ApplicationController

  def index
    #    @posts = Post.pag"inate :page => params[:page], :order => 'created_at DESC', :include => [:user]
    @post = Post.order("created_at DESC").first
  end

end
