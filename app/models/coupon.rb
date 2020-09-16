class Coupon < ApplicationRecord

    def display_coupon
        self.store + " - " + self.coupon_code
    end
end
