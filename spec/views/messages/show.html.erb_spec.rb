require 'rails_helper'

RSpec.describe "messages/show", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :body => "Body",
      :from => "From",
      :to => "To",
      :username => "Username"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/From/)
    expect(rendered).to match(/To/)
    expect(rendered).to match(/Username/)
  end
end
