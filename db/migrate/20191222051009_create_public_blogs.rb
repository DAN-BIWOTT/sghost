class CreatePublicBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :public_blogs do |t|
      t.text :comments
      t.string :primateName

      t.timestamps
    end
  end
end
