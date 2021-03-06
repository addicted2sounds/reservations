require 'rails_helper'

RSpec.describe "tables/edit", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      :number => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit table form" do
    render

    assert_select "form[action=?][method=?]", table_path(@table), "post" do

      assert_select "input#table_number[name=?]", "table[number]"

      assert_select "textarea#table_notes[name=?]", "table[notes]"
    end
  end
end
