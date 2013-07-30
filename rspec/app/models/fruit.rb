# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class Fruit < ActiveRecord::Base
  attr_accessible :name

  def squishy?
    true
  end
end
