module API
  module V1
    class Root < Grape::API
      version 'v1', using: :path
      format :json
      mount V1::Users
      
      # swagger doc
      add_swagger_documentation(
        # markdown: GrapeSwagger::Markdown::RedcarpetAdapter.new(render_options: { highlighter: :rouge }),
        api_version: 'v1',
        base_path: '',
        hide_documentation_path: true,
        hide_format: true
      )
    end
  end
end