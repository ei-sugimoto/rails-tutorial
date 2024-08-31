class User < ApplicationRecord
  enum :role, { admin: 0, user: 1, guest: 2 }

  validates :name, presence: true, length: { minimum: 1, maximum: 25 }
  validates :email, presence: true, length: { minimum: 1, maximum: 25 }, if: :not_guest?
  validates :address, presence: true, length: { minimum: 1, maximum: 100 }, if: :not_guest?

  def not_guest?
    role != 'guest'
  end
end
