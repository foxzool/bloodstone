class TagsController < InheritedResources::Base
  load_and_authorize_resource :except => :posts_list
  
  def posts_list
    @posts = Post.tagged_with(params[:name]).paginate(:page => params[:page])
    render 'posts/index'
  end
end
