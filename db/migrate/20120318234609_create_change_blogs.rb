class CreateChangeBlogs < ActiveRecord::Migration
  def change
    create_table :change_blogs do |t|
      t.string :title
      t.string :datetime
      t.string :user
      t.string :location
      t.text :body

      t.timestamps
    end
  end
end
