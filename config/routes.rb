Rails.application.routes.draw do
    get 'admin/overview'
    get 'admin/posts'
    get 'admin/comments'
    get 'admin/newsletter'
    get 'admin/subscribers'

    root 'application#home'

    get '/home',    to: 'application#home'
    get '/about',   to: 'application#about'
    get '/contact', to: 'application#contact'

    get '/login', to: 'application#login'
end
