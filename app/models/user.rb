class User < ApplicationRecord
  has_many :like
  has_many :article
end
