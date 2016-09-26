require 'rails_helper'

RSpec.describe "quotes/edit", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      :quote => "MyString",
      :author => "MyString",
      :category => "MyString"
    ))
  end

  it "renders the edit quote form" do
    render

    assert_select "form[action=?][method=?]", quote_path(@quote), "post" do

      assert_select "input#quote_quote[name=?]", "quote[quote]"

      assert_select "input#quote_author[name=?]", "quote[author]"

      assert_select "input#quote_category[name=?]", "quote[category]"
    end
  end
end
