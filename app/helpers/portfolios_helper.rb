module PortfoliosHelper
  def sortable
    "sortable" if logged_in? :site_admin
  end

  def portfolio_back_btn
    link_to "Return", portfolios_path
  end

  def portfolio_edit_btn item
    link_to "Edit", edit_portfolio_path(item) if logged_in?(:site_admin)
  end

  def portfolio_delete_btn item
    link_to "Delete",
      item,
      method: :delete,
      data: {
        title: 'Delete Portfolio Confirmation',
        confirm: 'Do you want to delete your portfolio?',
        commit: 'Yes',
        cancel: 'No'
      } if logged_in? :site_admin
  end
end
