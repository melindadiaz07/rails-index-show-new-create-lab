class CouponsController < ApplicationController

   def index
    @coupons = Coupon.all
   end

   def show
      id = params[:id]
      @coupon = Coupon.find(id)
   end

   def new
     @coupon = Coupon.new
   end

   def create
      store = params["coupon"]["store"]
      code = params["coupon"]["coupon_code"]
      coupon = Coupon.create(store: store, coupon_code: code)
      redirect_to coupons_path(coupon)
   end

end
