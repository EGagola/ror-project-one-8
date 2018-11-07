class Clothing < ApplicationRecord
  before_filter :must_be_admin, only: [:edit, :destroy]
  belongs_to :outer

  def edit
    ...
  end

  private def must_be_admin
    unless current_user && current_user.admin?
      redirect_to_root_path, notice: "Some message"
    end
  end
end
