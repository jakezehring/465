Rails.application.routes.draw do

	root "topics#index"
	
	resources :topics do
		resources :references, shallow: true
	end
end
