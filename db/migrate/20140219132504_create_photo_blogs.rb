class CreatePhotoBlogs < ActiveRecord::Migration
  def change
    create_table :photo_blogs do |t|
      t.text :entry
      t.string :location
      t.date :date_taken

      t.timestamps
    end
  end
end
