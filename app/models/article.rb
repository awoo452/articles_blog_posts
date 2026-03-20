class Article < ApplicationRecord
  enum :status, {
    draft: "draft",
    published: "published"
  }, default: "draft"

  enum :content_type, {
    article: "article",
    blog_post: "blog_post"
  }, default: "article"

  validates :title, presence: true, length: { maximum: 140 }
  validates :summary, presence: true, length: { maximum: 300 }
  validates :body, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :status, presence: true
  validates :content_type, presence: true

  before_validation :set_slug
  before_save :sync_published_at

  scope :publicly_visible, lambda {
    published.where("published_at IS NULL OR published_at <= ?", Time.current)
  }

  def to_param
    slug
  end

  private

  def set_slug
    return if slug.present?
    base = title.to_s.parameterize
    return if base.blank?

    candidate = base
    suffix = 2

    while self.class.where.not(id: id).exists?(slug: candidate)
      candidate = "#{base}-#{suffix}"
      suffix += 1
    end

    self.slug = candidate
  end

  def sync_published_at
    return unless will_save_change_to_status?

    if published? && published_at.blank?
      self.published_at = Time.current
    elsif draft?
      self.published_at = nil
    end
  end
end
