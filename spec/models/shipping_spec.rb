# == Schema Information
#
# Table name: shippings
#
#  id            :integer          not null, primary key
#  listing_id    :integer
#  country       :string(255)
#  shipping_rate :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_shippings_on_listing_id  (listing_id)
#

require 'spec_helper'

describe Shipping do
  pending "add some examples to (or delete) #{__FILE__}"
end
