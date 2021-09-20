def merge_sort(mergin_array)
    return mergin_array if mergin_array.size == 1

    split_array = mergin_array.each_slice((mergin_array.size.to_f/2).round).to_a
    return (merge_sort(split_array[0]) + merge_sort(split_array[1])).sort
end
