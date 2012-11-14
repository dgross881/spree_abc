#source 'http://rubygems.org'
source 'http://ruby.taobao.org/'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem "capybara"
end


group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end
gem 'spree', :github => "spree/spree", :branch => "1-2-stable"
#gem 'spree_auth_devise', :git => 'git://github.com/spree/spree_auth_devise'
# referer to https://github.com/spree/spree/issues/2013
gem 'spree_auth_devise', :github => "spree/spree_auth_devise", :branch => "1-2-stable"
gem 'daemons'
gem 'delayed_job_active_record'
gem 'spree_multi_site',  :github => "RuanShan/spree_multi_site"


#only specify it here, then could use ActiveMerchant::Billing::Integrations::Alipay::Helper directly
gem 'activemerchant', :require => 'active_merchant'
gem 'activemerchant_patch_for_china' #support alipay
gem 'spree_alipay',   :github => "RuanShan/spree_alipay"

gem 'spree_china_checkout',   :path => './spree_china_checkout'


group :test, :development do
  gem 'mail_view'  #, :git => 'https://github.com/37signals/mail_view.git'
end

gem 'execjs'
gem 'therubyracer' #,   :path => '../therubyracer'

gem 'capistrano', :group => :development #deployment
group :development do
  gem "rails-erd"
end


