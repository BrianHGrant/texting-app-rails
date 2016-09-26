require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :body => "Body",
        :from => "From",
        :to => "To",
        :username => "Username"
      ),
      Message.create!(
        :body => "Body",
        :from => "From",
        :to => "To",
        :username => "Username"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
  end
end
