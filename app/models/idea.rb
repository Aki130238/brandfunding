class Idea < ApplicationRecord
  has_many :select_genre_in_ideas, dependent: :destroy
  has_many :idea_users, through: :select_genre_in_ideas
  has_many :idea_comments, dependent: :destroy
  belongs_to :user

  validates :idea_title, presence: true
  validates :idea_amount, presence: true
  validates :idea_about, presence: true
  validates :idea_usage, presence: true
  validates :idea_commit, presence: true
  validates :product_image, presence: true
  validates :idea_category, presence: true
  validates :idea_category_details, presence: true
  validates :idea_material, presence: true
  validates :work_style, presence: true
  validates :delivery_date, presence: true
  validates :budget, presence: true
  validates :idea_user_ids, presence: true

  validate :delivery_date_cannot_be_in_the_past

  def delivery_date_cannot_be_in_the_past
    if delivery_date.present? && delivery_date < Date.today
      errors.add(:delivery_date, "過去の日付には設定できません。")
    end
  end
end
