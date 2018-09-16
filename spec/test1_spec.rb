require_relative "../util/spec_helper"

describe "Amazon Search" do
  it "search text on Amazon" do
  	@base_url = "https://www.amazon.com"
    @browser.get(@base_url + "/")
	expect(@browser.title).to eq 'Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more'
  end
end
