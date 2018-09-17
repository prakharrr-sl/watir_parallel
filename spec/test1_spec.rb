require_relative "../util/spec_helper"

describe "Amazon Search" do
  it "search text on Amazon" do
  	@base_url = "https://www.amazon.com"
    @browser.get(@base_url + "/")
    @browser.title.should == 'Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more'

    text = @browser.find_element :id, "twotabsearchtextbox"
    text.send_keys "Mobile Phones"

    search = @browser.find_element :value, "Go"
    search.click
    expect(@browser.current_url).to be eq "https://www.amazon.com/s?k=Mobile+Phones&ref=nb_sb_noss_2"

  end
end
