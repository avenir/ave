class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.references :listing
      t.string :country
      t.float :shipping_rate

      t.timestamps
    end

    add_index :shippings, :listing_id

  end
end
