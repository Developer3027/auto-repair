class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Create roles
  enum role: { user: 0, tech: 1, admin: 2 }
  # Set default role after initialization
  after_initialize :set_default_role, if: :new_record?

  private
  # Set default role
  def set_default_role
    self.role ||= :user
  end
end
