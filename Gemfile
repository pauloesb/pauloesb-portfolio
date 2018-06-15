source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'friendly_id', '~> 5.1.0'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'bootstrap', '~> 4.1.1'
gem 'petergate', '~> 1.8', '>= 1.8.1'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'jquery-infinite-pages', '~> 0.2.0'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'dotenv-rails', '~> 2.4'
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
gem 'mini_magick', '~> 4.8'
gem 'carrierwave-aws', '~> 1.3'
gem 'cocoon', '~> 1.2', '>= 1.2.11'
gem 'gritter', '~> 1.2'
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.2'
gem 'data-confirm-modal', '~> 1.6', '>= 1.6.2'
gem 'mail_form', '~> 1.7', '>= 1.7.1'
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

ruby "2.4.1"
