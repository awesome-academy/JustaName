class Payment < ApplicationRecord

    def setup!(return_url, cancel_url)
        payment_request = payment_request self.quantity
        response = client.setup(
          payment_request,
          return_url,
          cancel_url,
          pay_on_paypal: true
        )
        self.token = response.token
        self.save! rescue false
        @redirect_uri = response.redirect_uri
        @popup_uri = response.popup_uri
        self
      end
    
      def cancel!
        self.canceled = true
        self.save! rescue false
        self
      end
    
      def complete!(payer_id = nil)
        payment_request = payment_request  self.quantity
        response = client.checkout!(self.token, payer_id, payment_request)
        self.payer_id = payer_id
        self.transaction_id = response.payment_info.first.transaction_id
        self.status = "completed"
        self.purchased_at = Time.now
        #TODO calculate expires_at
    
        self.save! rescue false
        self
      end
end
