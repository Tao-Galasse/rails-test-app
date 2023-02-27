# frozen_string_literal: true

require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  def setup
    @supplier = Supplier.create(name: 'my supplier')
    @account = Account.create(supplier: @supplier, account_number: '123')
  end

  test 'saved_changes is available after update' do
    @supplier.update(name: 'updated')
    assert @supplier.saved_changes['name']
    puts 'supplier is ok!'

    @account.update(account_number: '999', supplier_attributes: { name: 'new supplier' })
    assert_not @account.saved_changes.empty? # this will fail: no account_number or supplier_id is registered as changed
  end
end
