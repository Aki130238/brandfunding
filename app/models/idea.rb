class Idea < ApplicationRecord
  has_many :select_genre_in_ideas, dependent: :destroy
  has_many :idea_users, through: :select_genre_in_ideas
  has_many :idea_comments, dependent: :destroy
  belongs_to :user

  validates :idea_title, presence: true, length: { in: 1..40 }
  validates :idea_amount, presence: true, numericality: { greater_than: 0, less_than: 10000 }
  validates :idea_about, presence: true, length: { in: 1..1000 }
  validates :idea_commit, presence: true, length: { in: 1..1000 }
  validates :idea_usage, :product_image, :idea_category,
            :idea_category_details, :idea_material, :work_style,
            :delivery_date, :budget, :idea_user_ids, presence: true
  validate :delivery_date_cannot_be_in_the_past

  def delivery_date_cannot_be_in_the_past
    if delivery_date.present? && delivery_date < Date.today
      errors.add(:delivery_date, "過去の日付には設定できません。")
    end
  end
end
