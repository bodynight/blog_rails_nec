require 'rails_helper'

RSpec.describe Contact, type: :model do
  it {should validate_presece_of :email}
  it {should validate_presece_of :message}
end
