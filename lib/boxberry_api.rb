require 'configurations'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup


module BoxberryApi
  include Configurations

  configurable String, :api_token, :base_url
  configuration_defaults do |c|
    c.base_url = "https://api.boxberry.ru/json.php"
  end
end
