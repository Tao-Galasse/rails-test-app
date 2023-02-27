# frozen_string_literal: true

class Account < ApplicationRecord
  belongs_to :supplier, inverse_of: :account
  accepts_nested_attributes_for :supplier
end
