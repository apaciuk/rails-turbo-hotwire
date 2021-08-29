require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        status: "Status",
        description: "MyText",
        status_date: "Status Date",
        datetime: "Datetime",
        internal_info: "MyText"
      ),
      Book.create!(
        title: "Title",
        status: "Status",
        description: "MyText",
        status_date: "Status Date",
        datetime: "Datetime",
        internal_info: "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Status Date".to_s, count: 2
    assert_select "tr>td", text: "Datetime".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
