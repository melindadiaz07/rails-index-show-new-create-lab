Rails.application.routes.draw do

  
  get "/coupons", to: "coupons#index"
  get "/coupons/new", to: "coupons#new"
  post "/coupons", to: "coupons#create"
  
  get "/coupons/:id", to: "coupons#show", as: "coupon"


end
