class CreateThres < ActiveRecord::Migration[5.0]
  def change
    create_table :thres do |t|
      t.string :title
      t.string :editor

      t.timestamps
    end
  end
end
