module CustomerTags
  include Radiant::Taggable

  desc 'Load the customer from the current cart (only in cart controller)'
  tag 'customer' do |tag|
    if tag.locals.cart
      tag.locals.customer = tag.locals.cart.customer
      tag.expand
    else
      'Cart is not available on this page for customer tag'
    end
    # no more code here, return from above
  end

  desc 'Embed the authenticity token in an autonomous form input field'
  tag 'cart:auth_token' do |tag|
    if !response.session[:_csrf_token]
    token = ActiveSupport::SecureRandom.base64(32)
      response.session[:_csrf_token] = token
    else
      token ||= response.session[:_csrf_token]
      end
    "<input type=\"hidden\" value=\"#{token.to_s}\" name=\"authenticity_token\" id=\"authenticity_token\"/>"
  end  

  desc 'Customer email'
  tag 'customer:email' do |tag|
    tag.locals.customer.email
  end

  desc 'Loop over customers receipts: access receipts with &lt;cart&gt; tags.'
  tag 'customer:each_receipt' do |tag|
    rv = ''
    tag.locals.customer.carts.find(
      :all,
      :conditions => ['status IN (3,6,7)'],
      :order => 'updated_at desc'
    ).each do |c|
      tag.locals.cart = c
      rv << tag.expand
    end
  end

end
