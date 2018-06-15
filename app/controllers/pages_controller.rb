class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
    @contact_form = ContactForm.new
  end

  def send_message
    form = ContactForm.new(form_params)
    form.deliver
    redirect_to root_path, notice: "Thanks for your message. You will get a reply soon."
  end

  private

  def form_params
    params.require(:contact_form).permit(:name, :email, :phone, :message).merge!(to_mail: "pauloesb@gmail.com")
  end
end
