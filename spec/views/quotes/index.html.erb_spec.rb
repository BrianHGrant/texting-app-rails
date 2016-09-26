require 'rails_helper'

RSpec.describe "quotes/index", type: :view do
  before(:each) do
    assign(:quotes, [
      Quote.create!(
        :quote => "Quote",
        :author => "Author",
        :category => "Category"
      ),
      Quote.create!(
        :quote => "Quote",
        :author => "Author",
        :category => "Category"
      )
    ])
  end

  it "renders a list of quotes" do
    render
    assert_select "tr>td", :text => "Quote".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
