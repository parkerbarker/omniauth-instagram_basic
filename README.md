# OmniAuth::InstagramBasic

OmniAuth staregy for [Instagram Basic Display Api](https://developers.facebook.com/docs/instagram-basic-display-api). For issues please ping me on Twitter @cameronbarker.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-instagram_basic'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install omniauth-instagram_basic

## Usage

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram_display, ENV['INSTAGRAM_CLIENT_ID'], ENV['INSTAGRAM_CLIENT_SECRET'], scope:'user_profile,user_media'
end
```

```
{
    "provider"=>"instagram_basic",
    "uid"=>17841400623220074,
    "info"=> {
        "id"=>"5375921395840366", 
        "account_type"=>"PERSONAL", 
        "media_count"=>994, 
        "username"=>"parkerbarkers"
    },
    "credentials"=> {
        "token"=> "IGQVJYZA29lbGVTMjdvMTZAnS09jYnhWN0F1NkdVV2x5aGgtU2U1SUFLMHBpWVpkd2Q4eDlORGx1bnpjbUhGaklkX293RDEtY3IydmI0c0pUQU9vT2FMMWkzeEV5cURTdmxZAV0d5LUlp",
        "expires"=> true,
        "short_lived_token"=> "IGQVJVQXBZAU1ltY0tEckUxSWlURjJzc0NGOFFKejBsaHZA3YmpuSWVBNTNMSUtxYTJIR0NSUFEyaTlQRHJ3SUJqQ2ZAjRHlFQURCMEs3UWFrRkFOWnRkd0N3bmNRQWFVSllTZAExSM2poekFZALVVtRVc4Q3JnNHJRMnpHMWZAs",
        "expires_at"=> 5181752
   },
    "extra"=> {
        "raw_info" =>
            { "id"=> "5175921395840366", 
            "account_type"=> "PERSONAL", 
            "media_count"=> 994, 
            "username"=> "parkerbarkers"}
        }
    }
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To update gem on RubyGems.org  
```
gem build
gem signin
gem push omniauth-instagram_bas...
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cameronbarker/omniauth-instagram_basic. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/cameronbarker/omniauth-instagram_basic/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Omniauth::InstagramBasic project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/cameronbarker/omniauth-instagram_basic/blob/main/CODE_OF_CONDUCT.md).
