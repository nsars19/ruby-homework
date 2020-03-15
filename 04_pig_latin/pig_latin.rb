# def translate str

#     if str[0].match(/[aeiou]/)
#         str = str + 'ay'

#     else
#         arr = str.split(/([aeiou])/)
#         arr << arr.shift + 'ay'
#         return arr.join
#     end
# end

# (/([aeiou])/)
# (/q(?=u)([aeiou])/)
# def translate str
#     word_array = str.split(' ')

#     i = 0
#     while i < word_array.length
#         if word_array[i][0].match(/[aeiou]/)
#             word_array[i] = word_array[i] + 'ay'
#             i += 1
#         else
#             arr = word_array[i].split(/([aeiou])/)
#             arr << arr.shift + 'ay'
#             i += 1
#             return arr.join
#         end
#     end
#     word_array.join(' ')
# end

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

# irb(main):001:0> str = 'square'
# => "square"
# irb(main):002:0> str.slice(0, str.index('q'))
# => "s"
# irb(main):003:0> str.slice(0, str.index('q')+1)
# => "sq"
# irb(main):004:0> str.slice(0, str.index('q') + 2)
# => "squ"
# irb(main):005:0> str1 = str.slice(0, str.index('q') + 2)
# => "squ"
# irb(main):006:0> str.slice(str.index('q') + 2, 3)
# => "are"
# irb(main):007:0> str.slice(str.index('q') + 2, 6)
# => "are"
# irb(main):008:0> str.slice(str.index('q') + 2, str.index('q') + 1)
# => "ar"
# irb(main):009:0> str.slice(str.index('q') + 2, (str.length - 1))
# => "are"
# irb(main):010:0> str2 = str.slice(str.index('q') + 2, str.length - 1)
# => "are"
# irb(main):011:0> finalstr = str2 + str1
# => "aresqu"
# irb(main):012:0> finalstr = str2 + str1 + 'ay'
# => "aresquay"
