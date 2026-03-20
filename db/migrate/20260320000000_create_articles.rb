class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :summary, null: false
      t.text :body, null: false
      t.string :slug, null: false
      t.string :status, null: false, default: "draft"
      t.string :content_type, null: false, default: "article"
      t.datetime :published_at
      t.string :cover_image_key
      t.string :cover_image_alt

      t.timestamps
    end

    add_index :articles, :slug, unique: true
    add_index :articles, :status
    add_index :articles, :content_type
    add_index :articles, :published_at
  end
end
