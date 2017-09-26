module API
  module V2
    class Root < Grape::API
      version 'v2', using: :path
      format :json
      mount API::V2::Users
    end
  end
end