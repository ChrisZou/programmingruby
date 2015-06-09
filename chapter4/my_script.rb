namespace :api, constraints: {subdomain: "api"} do
  namespace :v1 do
    resources :people
  end
end