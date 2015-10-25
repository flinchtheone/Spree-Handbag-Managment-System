class CreateSpreeHandbags < ActiveRecord::Migration
  def self.up
    create_table :spree_handbags do |t|
      t.string :make
      t.string :colour
      t.string :security_tag
      t.string :invoice_number
      t.string :dust_bag
      t.text :work_details
      t.boolean :is_clean
      t.boolean :is_repair
      t.boolean :is_colour
      t.integer :stage
      t.datetime :arrival_date
      t.datetime :completion_date
      t.boolean :is_complete
      t.boolean :is_paid
      t.boolean :is_limbo
      t.integer :collection_id
      t.integer :position
      t.references :user, index: true      
      t.timestamps
    end
      add_foreign_key :spree_handbags, :spree_users, column: :user_id
  end

  def self.down
    drop_table :spree_handbags
  end
end