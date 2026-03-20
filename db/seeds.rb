# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.find_or_create_by!(slug: "welcome-to-your-cms") do |article|
  article.title = "Welcome to your CMS"
  article.summary = "This is a starter entry to show how articles and blog posts are structured."
  article.body = "Use the admin panel to create new entries. Each entry can be an article or blog post, and drafts stay private."
  article.status = "published"
  article.content_type = "article"
  article.published_at = Time.current
end

Article.find_or_create_by!(slug: "first-blog-post") do |article|
  article.title = "Your first blog post"
  article.summary = "A short summary that shows up on the index page."
  article.body = "Replace this with your real content. This template keeps body text simple and easy to migrate."
  article.status = "published"
  article.content_type = "blog_post"
  article.published_at = Time.current
end
