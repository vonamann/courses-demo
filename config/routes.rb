Rails.application.routes.draw do
  get '/api/users/:user_id'                    => 'api/users#courses'
  get '/api/users/:user_id/courses/:course_id' => 'api/users#lessons'
end
