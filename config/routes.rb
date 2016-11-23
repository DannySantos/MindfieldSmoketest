Rails.application.routes.draw do
  resources :experts do
    collection do
      get '/success', action: "success"
    end
  end
  
  resources :consumers do
    collection do
      get '/success', action: "success"
      get '/questions', action: "questions"
    end
  end
  
  resources :consumer_answers, only: :index
end
