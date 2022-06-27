class User < ApplicationRecord
  def full_address
    "#{number}, #{street}, #{city}-#{postcode}, #{country}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
