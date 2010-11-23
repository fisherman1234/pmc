class Transaction < ActiveRecord::Base
  belongs_to :sell
  belongs_to :buy
end
