class AddPictureToSpreeHandbags < ActiveRecord::Migration
  def change
    add_column :spree_handbags, :pictures, :json
  end
end
