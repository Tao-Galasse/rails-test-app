# frozen_string_literal: true

class Supplier < ApplicationRecord
  has_one :account, inverse_of: :supplier
end
