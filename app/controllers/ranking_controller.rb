class RankingController < ApplicationController
    
    def have
        @item_ids = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        
        @items = @item_ids.map {|item_id , count| Item.find(item_id)}
    end
    
    def want
        @item_ids = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
        @items = @item_ids.map {|item_id , count| Item.find(item_id)}
    end
end
