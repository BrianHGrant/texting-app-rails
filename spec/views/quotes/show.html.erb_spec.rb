require 'rails_helper'

RSpec.describe "quotes/show", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      :quote => "Quote",
      :author => "Author",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Quote/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Category/)
  end
end
