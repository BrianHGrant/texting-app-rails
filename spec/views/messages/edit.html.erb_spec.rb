require 'rails_helper'

RSpec.describe "messages/edit", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :body => "MyString",
      :from => "MyString",
      :to => "MyString",
      :username => "MyString"
    ))
  end

  it "renders the edit message form" do
    render

    assert_select "form[action=?][method=?]", message_path(@message), "post" do

      assert_select "input#message_body[name=?]", "message[body]"

      assert_select "input#message_from[name=?]", "message[from]"

      assert_select "input#message_to[name=?]", "message[to]"

      assert_select "input#message_username[name=?]", "message[username]"
    end
  end
end
