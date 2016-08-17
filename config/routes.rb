Rails.application.routes.draw do
    root 'application#home'

    get '/home',    to: 'application#home'
    get '/about',   to: 'application#about'
    get '/contact', to: 'application#contact'
end
