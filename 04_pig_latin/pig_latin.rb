def translate str
    words = str.split
    final = Array.new
    
    words.each do |elem|
        if elem[0].match(/[aeiou]/)
            elem = elem + 'ay'
            final << elem
        elsif elem[0].downcase == 'q' && elem[1].downcase == 'u'
            new_elem = elem.slice(0, 2) + 'ay'
            final << elem.slice(2, (elem.length - 1)) + new_elem
        elsif elem.match?(/(q(?=u))/) && elem.index('q') != 0
            sub1 = elem.slice(0, str.index('q') + 2)
            sub2 = elem.slice(str.index('q') + 2, str.length - 1)
            final << sub2 + sub1 + 'ay'
        else
            arr = elem.split(/([aeiou])/)
            arr << arr.shift + 'ay'
            final << arr.join
        end
    end
    final.join(' ')
end