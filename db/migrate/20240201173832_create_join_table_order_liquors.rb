class CreateJoinTableOrderLiquors < ActiveRecord::Migration[6.1]
  def change
    create_join_table :orders, :liquors do |t|
      # t.index [:order_id, :liquor_id]
      # t.index [:liquor_id, :order_id]
    end
  end
end
