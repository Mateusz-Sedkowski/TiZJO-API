class User < ApplicationRecord
  # == VALIDATIONS ============================================================
  validates :first_name, :last_name, :email, presence: true

end
