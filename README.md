# OmniAuth Academia.edu

This is an omniauth strategy for Academia.edu

To use, you'll need an application key and secret provided by Academia.edu

## Usage

```ruby
use OmniAuth::Builder do
  provider :academiaedu, 'app_key', 'app_secret'
end
```