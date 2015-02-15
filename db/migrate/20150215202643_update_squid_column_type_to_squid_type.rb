class UpdateSquidColumnTypeToSquidType < ActiveRecord::Migration
  def change
    rename_column :squids, :type, :squid_type 
  end
end
