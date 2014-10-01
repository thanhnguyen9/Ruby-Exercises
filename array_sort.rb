def array_sort


  arr = []
  p "Plase input your array: "
  arr = gets.chomp


  sort = true

  while sort do

    sort = false

    (0 .. (arr.length - 2)).each do |i|
        if arr[i] > arr[i+1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          sort = true
        end

    end
  end
  p "This is your arry after sorted: #{arr}"
end

array_sort()
