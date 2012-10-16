class AddPubDayToSources < ActiveRecord::Migration
  def change
    add_column :sources, :pub_day, :integer
  end
end
