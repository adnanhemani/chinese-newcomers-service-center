class Item < ActiveRecord::Base
  has_one :form_b
  attr_accessor :client_name
  attr_accessor :client_ssn
end
