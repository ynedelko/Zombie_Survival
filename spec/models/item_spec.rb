require 'rails_helper'

describe Item do
  it { should validate_presence_of :avatar}
  it { should belong_to :itemable }
end
