module API
  module V2
    class Users < Grape::API
      resource :users do
        desc 'Return all users'
        get do
          User.all
        end
      end
    end
  end
end