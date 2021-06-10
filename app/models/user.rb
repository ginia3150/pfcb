class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :age_id, numericality: { other_than: 1 }
  with_options presence: true do
    validates :n_name
    with_options format: { with: /\A[0-9]+\z/ } do
      validates :height
      validates :weight
    end
  end
end
