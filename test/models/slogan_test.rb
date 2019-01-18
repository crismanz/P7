require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  def setup
    @slogan = Slogan.new(first_name: 'John', last_name: 'Smith', email: 'john@example.com', slogan: 'test')
  end

  test 'valid slogan' do
    assert @slogan.valid?
  end

  test 'should have the necessary required validators' do
    @slogan = Slogan.new
    assert_not @slogan.valid?
    assert_equal [:first_name, :last_name, :email, :slogan], @slogan.errors.keys
  end

  test 'invalid without first_name' do
    @slogan.first_name = nil
    refute @slogan.valid?, 'saved user without a first_name'
    assert_not_nil @slogan.errors[:name], 'no validation error for name present'
  end

  test 'invalid without email' do
    @slogan.email = nil
    refute @slogan.valid?
  end

  test 'slogan under 50 characters' do
    @slogan.slogan = "a" * 51
    assert_not @slogan.valid?
  end

end
