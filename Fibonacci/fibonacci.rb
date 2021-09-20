def fibonacci_sequence(n=0)
    fibonacci_array = [0, 1]
    counter = 2
    if n <= 2
        return fibonacci_array.take(n)
    end
    while counter != n
        i = 0
        fibonacci_array << (fibonacci_array[counter-1] + fibonacci_array[counter-2])
        counter += 1
    end
    return fibonacci_array
end

def fibonacci_recursive(n=0)
    fibonacci_array = [0, 1]
    counter = 3
    if n <= 2
        return fibonacci_array.take(n)
    end
    while counter < n + 1
        fibonacci_array << fibonacci_recursive(counter - 1)[counter - 2] + fibonacci_recursive(counter - 1)[counter - 3]
        counter += 1
    end
    return fibonacci_array
end

p fibonacci_sequence(8)
p fibonacci_recursive(8)