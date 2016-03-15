require_relative "../models/merchant"
require_relative "../models/tag"
require_relative "../models/transaction"
# require "pry-byebug"

Merchant.delete_all
Tag.delete_all
Transaction.delete_all

merchant1 = Merchant.create( "name" => "Tesco" )
merchant2 = Merchant.create( "name" => "nPower" )
merchant3 = Merchant.create( "name" => "National Rail" )
merchant4 = Merchant.create( "name"=> "TravelLodge" )
merchant5 = Merchant.create( "name" => "Boots" )

tag1 = Tag.create( "name" => "Groceries" )
tag2 = Tag.create( "name" => "Utilities" )
tag3 = Tag.create( "name" => "Travel" )
tag4 = Tag.create( "name" => "Business" )
tag5 = Tag.create( "name" => "Medical" )

transaction1 = Transaction.create(
  "amount" => 100,
  "transaction_date" => "14-March-16",
  "merchant_id" => merchant1.id,
  "tag_id" => tag1.id
)

transaction2 = Transaction.create(
  "amount" => 75,
  "transaction_date" => "14-March-16",
  "merchant_id" => merchant2.id,
  "tag_id" => tag2.id
)

transaction3 = Transaction.create(
  "amount" => 25,
  "transaction_date" => "14-March-16",
  "merchant_id" => merchant3.id,
  "tag_id" => tag3.id
)

transaction4 = Transaction.create(
  "amount" => 100,
  "transaction_date" => "14-March-16",
  "merchant_id" => merchant4.id,
  "tag_id" => tag4.id
)

transaction5 = Transaction.create(
  "amount" => 10,
  "transaction_date" => "14-March-16",
  "merchant_id" => merchant5.id,
  "tag_id" => tag5.id
)

# binding.pry
# nil