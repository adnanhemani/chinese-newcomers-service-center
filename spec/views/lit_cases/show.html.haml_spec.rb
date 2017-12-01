require 'rails_helper'

RSpec.describe "lit_cases/show", type: :view do
  before(:each) do
    @lit_case = assign(:lit_case, LitCase.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
