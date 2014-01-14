class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email,
    :presence     => true,
    :uniqueness   => true

  validates :password,
    :confirmation => true,
    :length       => { :minimum => 8 },
    :if           => :password_required?

  validates :password_confirmation,
    :presence     => true,
    :if           => :password_required?

  def password_required?
    !persisted? || password.present? || password_confirmation.present?
  end
end
