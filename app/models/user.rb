class User < ApplicationRecord
  enum role: UserRoles::ROLES
  after_initialize :set_defaul_role, if: :new_record?

  def set_defaul_role
    self.role ||= :user
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    user ||= User.new(email: data['email'],
                      password: Devise.friendly_token[0, 20])
    user.skip_confirmation!
    user.save
    user
  end
end
