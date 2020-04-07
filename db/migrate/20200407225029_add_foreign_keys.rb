class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :events, :users, column: :creator_id
    add_foreign_key :attendance_events, :users, column: :attendee_id
    add_foreign_key :attendance_events, :events, column: :attended_event_id
  end
end
