module API
  module V2
    class Root < Grape::API
      version 'v2', using: :path
      format :json
      mount V2::Users

      # swagger doc
      add_swagger_documentation(
        # markdown: GrapeSwagger::Markdown::RedcarpetAdapter.new(render_options: { highlighter: :rouge }),
        api_version: 'v2',
        base_path: '',
        hide_documentation_path: true,
        hide_format: true
      )      
    end
  end
end