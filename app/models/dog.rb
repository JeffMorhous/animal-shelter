class Dog < ApplicationRecord
  def days_in_shelter
    (Date.today - arrival_date.to_date).to_i
  end
end
