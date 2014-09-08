class ChangeAmazonIdTypeInBooks < ActiveRecord::Migration
  def change
  	change_column :books , :amazon_id, :string
  end
end
