require 'rails_helper'

RSpec.describe "lit_cases/edit", type: :view do
  before(:each) do
    @lit_case = assign(:lit_case, LitCase.create!())
  end

  it "renders the edit lit_case form" do
    render

    assert_select "form[action=?][method=?]", lit_case_path(@lit_case), "post" do
    end
  end
end
