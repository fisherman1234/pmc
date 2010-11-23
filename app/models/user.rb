class User < ActiveRecord::Base
  has_many :buy
  has_many :sell
end
