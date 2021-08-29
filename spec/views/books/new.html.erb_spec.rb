require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      title: "MyString",
      status: "MyString",
      description: "MyText",
      status_date: "MyString",
      datetime: "MyString",
      internal_info: "MyText"
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[status]"

      assert_select "textarea[name=?]", "book[description]"

      assert_select "input[name=?]", "book[status_date]"

      assert_select "input[name=?]", "book[datetime]"

      assert_select "textarea[name=?]", "book[internal_info]"
    end
  end
end
