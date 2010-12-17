class PostsController < InheritedResources::Base
  load_and_authorize_resource :except => :feed
  
  def create
    @post = Post.new(params[:post])
    @post.tag_list = params[:post][:newtags]
    @post.user_id = current_user.id
    create!
  end

  def update
    @post = Post.find(params[:id])
    @post.tag_list.add params[:post][:newtags]
    update!
  end
  
  def feed
    @posts = 
    @posts = Post.select("title, id, body, created_at").order("created_at DESC").limit(20) 
    respond_to do |format|
      format.rss { render :layout => false } #index.rss.builder
    end
end

  protected

  def collection
    @posts = Post.order("created_at desc").all
  end

end
