class PostsController < InheritedResources::Base
  load_and_authorize_resource :except => [:feed, :archives, :tags_list]
 
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
    @posts = Post.select("title, id, body, created_at").order("created_at DESC").limit(20) 
    respond_to do |format|
      format.rss { render :layout => false } #index.rss.builder
    end
  end

  #显示所有文章
  def archives
    @posts = Post.select("id, created_at, title, cache_slug").order("created_at desc").all
    @post_months = @posts.group_by { |t| t.created_at.beginning_of_month }
  end

  #按标签显示文章
  def tags_list
    @posts = Post.tagged_with(params[:name]).paginate(:page => params[:page])
    render 'posts/index'
  end
  
  protected

  def collection
    @posts = Post.order("created_at desc").all
  end
end
