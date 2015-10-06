Rails.application.routes.draw do

	root "home#index"
	post "results", to: "home#results"
end
