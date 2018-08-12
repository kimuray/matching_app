class User < ApplicationRecord
  has_many :send_matchings, class_name: 'Matching', foreign_key: :sender_id, dependent: :destroy
  has_many :receive_matchings, class_name: 'Matching', foreign_key: :receiver_id, dependent: :destroy
  has_many :senders, through: :send_matchings, source: :sender 
  has_many :receivers, through: :receive_matchings, source: :receiver 
  has_many :not_likes, dependent: :destroy
  has_many :receive_not_likes, class_name: 'NotLike', foreign_key: :target_user_id, dependent: :destroy
  has_many :not_like_senders, through: :not_likes, source: :user
  has_many :not_like_receivers, through: :receive_not_likes, source: :target_user
end
