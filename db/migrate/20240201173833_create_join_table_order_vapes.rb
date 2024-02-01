class CreateJoinTableOrderVapes < ActiveRecord::Migration[6.1]
  def change
    create_join_table :orders, :vapes do |t|
      # t.index [:order_id, :vape_id]
      # t.index [:vape_id, :order_id]
    end
  end
end
