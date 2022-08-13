class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      #以下の2行を追加
      t.string :shop_name
      t.text :caption


      t.timestamps
    end
  end
end
