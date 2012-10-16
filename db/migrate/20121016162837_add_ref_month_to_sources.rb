class AddRefMonthToSources < ActiveRecord::Migration
  def change
    add_column :sources, :ref_month, :integer
  end
end
