class ExercisesController < ApplicationController
   before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    # 【要件】注文されていないすべての料理を返すこと
    #   * left_outer_joinsを使うこと
    foods = Food.left_outer_joins(:orders)
foods.each do |food|
  puts food.name
end
  end

  def exercise2
    # 【要件】注文されていない料理を提供しているすべてのお店を返すこと
    #   * left_outer_joinsを使うことS
    shops = Shop.left_outer_joins(:addresses)
shops.each do |shop|
  puts shop.name
end
  end

  def exercise3
    # 【要件】配達先の一番多い住所を返すこと
    #   * joinsを使うこと
    #   * 取得したAddressのインスタンスにorders_countと呼びかけると注文の数を返すこと
    address = Address.joins(:orders)
   address.each do |shop|
     puts address.name

     # puts address.orders_count
   end

  end

  def exercise4
    # 【要件】一番お金を使っている顧客を返すこと
    #   * joinsを使うこと
    #   * 取得したCustomerのインスタンスにfoods_price_sumと呼びかけると合計金額を返すこと
    # @customer = Customer
  end
end
