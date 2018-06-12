module PortfoliosHelper
  def sortable
    "sortable" if logged_in? :site_admin
  end
end
