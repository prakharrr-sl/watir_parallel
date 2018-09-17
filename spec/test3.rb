## Totally Irrelevant test but trying something different
require 'rubygems'
require 'watir'
require 'rspec/core'
require 'selenium/webdriver'
require 'selenium/webdriver/remote'
require_relative '../util/spec_helper'


describe "Prakhar's Test?" do
  it "does stuff and some other stuff" do
    browser = Watir::Browser.new
    browser.goto 'amazon.com'
    text = browser.text_field id: 'twotabsearchtextbox'
    text.exists?
    text.set 'Mobile Phones'
    
    button_search = browser.button value: 'Go'
    button_search.exists?
    button_search.click
	puts "My test is here!!! LOOOOK AT MEEEEE!!!"
    browser.url.should == 'https://www.amazon.com/s?k=Mobile+Phones&ref=nb_sb_noss_2'

  end
end

