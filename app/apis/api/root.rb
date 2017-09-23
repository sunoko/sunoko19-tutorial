module API
  class Root < Grape::API
    prefix 'api'
    format :json
    mount API::V1::Root
    mount API::V2::Root
  end
end