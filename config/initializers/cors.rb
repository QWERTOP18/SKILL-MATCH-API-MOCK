
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "*"
      resource "*",
        headers: :any,
        methods: [ :get, :post, :options, :put, :delete ]
      # credentials: true  # Cookieや認証情報を含むリクエストを許可する場合はtrueに
    end
  end
