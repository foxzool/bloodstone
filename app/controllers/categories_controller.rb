class CategoriesController < InheritedResources::Base
  load_and_authorize_resource :except => :posts_list

  def posts_list
    @posts = resource.posts.paginate :page => params[:page], :order => 'created_at DESC'
  end
end
