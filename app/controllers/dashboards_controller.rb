class DashboardsController < ApplicationController

  def profile
    @user = current_user
    skip_authorization
    # @resa = @user.bars.map { |b| [b, b.reservations] }.select { |item| item[1].count > 0 }
    @resa = []
    @user.bars.each do |b|
       if b.reservations.present?
        @resa << b
      end
    end
  end

end
