Project13::Application.routes.draw do
  get   "/"                   => "main#home"
  get   "/about"              => "main#about"
  get   "/contact_us"         => "main#contact_us"
  post  "/contact_us_post"    => "main#contact_us_post"
  get   "/thank_you"          => "main#thank_you" 
   
     
  
  get   "/sign_in"            => "volunteer#sign_in"
  post  "/sign_in_post"       => "volunteer#sign_in_post" 
  post  "/sign_out"           => "volunteer#sign_out_post"
  get   "/sign_up"            => "volunteer#sign_up"
  post  "/sign_up_post"       => "volunteer#sign_up_post"
  get   "/location"           => "volunteer#location"
  
  get   "/admin/sign_in"      => "admin#sign_in"
  post  "/admin/sign_in_post" => "admin#sign_in_post"
  get   "/admin/sign_up"      => "admin#sign_up"
  post  "/admin/sign_up_post" => "admin#sign_up_post"
  get "/admin/listings"       => "admin#listings"
end


