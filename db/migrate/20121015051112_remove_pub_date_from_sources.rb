class RemovePubDateFromSources < ActiveRecord::Migration
  def up
    remove_column :sources, :pub_date
  end

  def down
    add_column :sources, :pub_date, :date
  end
end
