class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:order_number, :order_quantity, :order_item, :order_customer)
    end
end
