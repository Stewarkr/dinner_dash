class MarketingController < ApplicationController
  
  def index
    @page_title = 'Welcome!'
  end
  
  def about
    @page_title = 'About'
  end
  
  def faqs
    @page_title = 'FAQs'
  end
  
end
