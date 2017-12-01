require 'rails_helper'

RSpec.describe "lit_cases/new", type: :view do
  before(:each) do
    assign(:lit_case, LitCase.new())
  end

  it "renders new lit_case form" do
    render

    assert_select "form[action=?][method=?]", lit_cases_path, "post" do
    end
  end
end
