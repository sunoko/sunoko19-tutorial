module API
  module V1  
    class Users < Grape::API
      resource :users do

        # GET /api/v1/users
        desc 'Return all users'
        get do
          User.all
        end

        # GET /api/v1/people{:id}
        desc 'Return a user'
        params do
          requires :id, type: Integer
        end
        get ':id' do
          User.find(params[:id])
        end

      end
    end
  end
end