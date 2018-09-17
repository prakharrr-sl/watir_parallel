FROM ruby

RUN gem install rspec selenium-webdriver require_all parallel_split_test sauce_whisk rake

ADD . .

CMD ruby par.rb
