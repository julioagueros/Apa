class RemoveRefDateFromSources < ActiveRecord::Migration
  def up
    remove_column :sources, :ref_date
  end

  def down
    add_column :sources, :ref_date, :date
  end
end
