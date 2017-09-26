module API
  module V1
    class Users < Grape::API
      resources :users do

        helpers do
          def user_params
            ActionController::Parameters.new(params).permit(:name, :email, :password)
          end
        end

        # /api/v1/users
        desc "Return all users"
        get do
          User.all
        end

        # /api/v1/users/{id}        
        desc "Return a user"
        params do
          requires :id, type: Integer
        end
        get ':id' do
          User.find(params[:id])
        end

        desc "create a user"
        params do
          requires :name, type: String
          requires :email, type: String
          requires :password, type: String
        end
        post do
          User.create(user_params)
        end

        desc "Update a user"
        params do
          optional :name, type: String
          optional :email, type: String
          optional :password, type: String
        end
        patch ':id' do
          user = User.find(params[:id])
          user.name = params[:name] if params[:name].present?
          user.email = params[:email] if params[:email].present?
          user.password = params[:password] if params[:password].present?
          user.save
        end

        desc "Delete a user"
        delete ':id' do
          User.find(params[:id]).destroy
        end
      end
    end
  end
end