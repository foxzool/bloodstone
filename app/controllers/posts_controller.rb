class PostsController < InheritedResources::Base
  load_and_authorize_resource

  def create
    @post = Post.new(params[:post])
    @post.tag_list = params[:newtags]
    @post.user_id = current_user.id
    create!
  end

  protected

  def collection
    @posts = Post.order("created_at desc").all
  end

end
