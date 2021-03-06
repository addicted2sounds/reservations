require 'rails_helper'

RSpec.describe "tables/index", type: :view do
  before(:each) do
    assign(:tables, [
      Table.create!(
        :number => 1,
        :notes => "MyText"
      ),
      Table.create!(
        :number => 1,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of tables" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
