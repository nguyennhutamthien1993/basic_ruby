CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end'a+'
puts CONST + Inside_two::CONST
puts '2'
puts Inside_two::CONST + CONST
puts '22'
puts Inside_one::CONST
puts '3'
puts Inside_one::CONST.call + Inside_two::CONST