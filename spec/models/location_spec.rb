require 'rails_helper'

describe Location do
  it { should validate_presence_of :avatar}
  it { should have_many :items }
  it { should have_many :zombies }
end
