class AddRefDateToSources < ActiveRecord::Migration
  def change
    add_column :sources, :ref_date, :string
  end
end
