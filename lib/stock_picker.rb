def stock_picker prices
    index = 0
    result =
    prices.reduce(Array.new()) do |pair, price|
        pair = [0, 0, 0] if pair[0] == nil
        prices.each_with_index do |price_compare, i|
            if i > index && pair[-1] < price_compare-price
                pair = [index, i, price_compare-price]
            end
        end
        index += 1
        pair
    end
    result.pop
    result
end

p stock_picker([5,8,10,30,1,4,1,6,7,3,10,1,200,0,30,70,3])