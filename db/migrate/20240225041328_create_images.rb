class CreateImages < ActiveRecord::Migration[7.1]
  def change
    create_table :golf_course_images do |t|
      t.string :url
      t.text :description
      t.string :author
      t.timestamps
    end
  end
end
