module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Paulo Borba's Portfolio"
    @seo_keywords = "Paulo Borba portfolio"
  end
end
