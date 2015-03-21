# Grape fragment cache.

## Features

- Grape fragment cache.

## Installation

Add this line to your application's Gemfile:

    gem 'grape-present_cache'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grape-present-cache

## Usage

```ruby
module MyApi < Grape::API
  format :json

  include Grape::PresentCache

  resources :posts do
    desc "Return a post"
    get ":id" do
      post = Post.find(params[:id])
      present_cache(key: "api:posts:#{post.id}", expires_in: 2.hours) do
        present :post, post, with: API::Entities::Post
      end
      present :meta, Meta.new, with: API::Entities::Meta
    end
  end
end
```

## TODO

- Use Grape::Endpoint as cache_key prefix
- Support other methods.(eg: expire, delete_matched, update...)
- Rspec

## Contributing

1. Fork it ( https://github.com/u2/grape-present-cache/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
