class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "I've got it, speak soon :)"
    else
      flash.now[:error] = 'It wont send for some reason, you could try emailing me at berry.laur@gmail.com instead.'
      render :new
    end
  end
end
