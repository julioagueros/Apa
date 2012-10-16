class AddPubMonthToSources < ActiveRecord::Migration
  def change
    add_column :sources, :pub_month, :integer
  end
end
