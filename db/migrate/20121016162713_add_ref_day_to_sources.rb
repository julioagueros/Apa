class AddRefDayToSources < ActiveRecord::Migration
  def change
    add_column :sources, :ref_day, :integer
  end
end
