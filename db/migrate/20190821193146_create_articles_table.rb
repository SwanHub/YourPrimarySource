class CreateArticlesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :source
      t.string :author
      t.date :publish_date
      t.text :url
      t.text :urlToImage
      t.text :content
      t.references :candidate, foreign_key: true

      t.timestamps
    end
  end
end
