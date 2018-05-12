require 'nokogiri'
require 'capybara'
require 'capybara/poltergeist'

namespace :crawl do
  task :all_for_category => :environment do
    url = "https://www.mercari.com/jp/category/"
      Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app, {:js_errors => false, :timeout => 1000 }) #追加のオプションはググってくださいw
    end
    Capybara.default_selector = :xpath
    session = Capybara::Session.new(:poltergeist)
    #自由にUser-Agent設定してください。
    session.driver.headers = { 'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' } 
    session.visit url
    page = Nokogiri::HTML.parse(session.html)
    
    
  end
end
