class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.date :releaseDate
      t.string :title
      t.string :email
      t.integer :rating
      t.string :comment
      t.date :reviewDate

      t.timestamps
    end
  end
end
