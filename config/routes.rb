Rails.application.routes.draw do
  get  'songs/link' => 'songs#link'
  resources :songs
  resources :musics
  resources :beats
  root 'songs#index'
end
