class PostsController < InheritedResources::Base
  load_and_authorize_resource

  protected

  def collection
    @posts = Post.order("created_at desc").all
  end

end
