class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = t('flash.sent')
    else
      flash.now[:error] = t('flash.not_sent')
      render :new
    end
  end
end
