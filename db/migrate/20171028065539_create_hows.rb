class CreateHows < ActiveRecord::Migration
  def change
    create_table :hows do |t|

      t.string :comment
      t.belongs_to :post
      
      t.timestamps null: false
    end
  end
end
