# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:valid)
  end

  test 'valid user' do
    assert @user.valid?
  end

  test 'invalid without name' do
    @user.name = nil
    refute @user.valid?, 'saved user without a name'
    assert_not_nil @user.errors[:name], 'no validation error for name present'
  end

  test '#posts' do
    assert_equal 2, @user.posts.size
  end

  test '#recent' do
    assert_includes User.recent, users(:valid)
    refute_includes User.recent, users(:old)
  end
end
