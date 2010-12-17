Bloodstone::Application.routes.draw do
  
  root :to => "home#index"
  
  get "home/index"
  get "/feed" => 'posts#feed'
  get 'tags/:name' => 'tags#posts_list' , :as => 'tag_posts'
  get 'categories/:id' => 'categories#posts_list', :as => 'category_posts'
  
  resources 'posts'
  
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
  end
  
  

  scope '/admin' do
    resources 'categories'
    resources 'tags'
  end
  
    
end