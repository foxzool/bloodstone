Bloodstone::Application.routes.draw do
  
  root :to => "home#index"
  
  get "home/index"
  get "feed" => 'posts#feed', :defaults => { :format => 'rss' }
  get 'tags/:name' => 'posts#tags_list' , :as => 'tag_posts'
  get 'categories/:id' => 'categories#posts_list', :as => 'category_posts'
  get 'archives' => 'posts#archives', :as => 'month_posts'
  
  resources 'posts'

  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
  end
  devise_for :users

  scope '/admin' do
    resources 'posts', 'categories', 'tags', 'settings'
  end
  
    
end
