class PostsController < InheritedResources::Base
  load_and_authorize_resource
  
  def create
    @post = Post.new(params[:post])
    @post.tag_list = params[:post][:newtags]
    @post.user_id = current_user.id
    create!
  end

  def update
    @post = Post.find(params[:id])
    @post.tag_list = params[:post][:newtags]
    update!
  end

  protected

  def collection
    @posts = Post.order("created_at desc").all
  end

end
