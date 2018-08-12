class Matching < ApplicationRecord
  belongs_to :sender, class_name: 'User', foreign_key: :sender_id
  belongs_to :receiver, class_name: 'User', foreign_key: :receiver_id

  enum status: { wait: 0, good: 1, no_good: 2 }
end
