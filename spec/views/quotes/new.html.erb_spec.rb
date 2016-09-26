require 'rails_helper'

RSpec.describe "quotes/new", type: :view do
  before(:each) do
    assign(:quote, Quote.new(
      :quote => "MyString",
      :author => "MyString",
      :category => "MyString"
    ))
  end

  it "renders new quote form" do
    render

    assert_select "form[action=?][method=?]", quotes_path, "post" do

      assert_select "input#quote_quote[name=?]", "quote[quote]"

      assert_select "input#quote_author[name=?]", "quote[author]"

      assert_select "input#quote_category[name=?]", "quote[category]"
    end
  end
end
