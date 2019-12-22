class CreateBlogPanels < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_panels do |t|
      t.text :btitle
      t.string :bimage
      t.text :bmessage

      t.timestamps
    end
  end
end
