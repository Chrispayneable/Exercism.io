# # This is a comment
# class Complement
#   def self.of_dna(dna)
#     dna.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' )
#   end
  class Complement
    def self.of_dna(dna)
      dna.split('').map do |n|
        case n
        when 'G'
          'C'
        when 'C'
          'G'
        when 'T'
          'A'
        when 'A'
          'U'
        else
          ''
        end
      end.join
    end
  end

# # a = "GCTA"
# # h = {"G" => "C","C" => "G", "T" =>"A","A" => "U" }
# # puts a.gsub!(/\w+/) { |m| h.fetch(m,m) }
#
# a = "every good boy does fine"
# h = {"every" => "all","boy" => "girl", "fine" =>"well" }
# puts a.gsub(/\w+/) { |m| h.fetch(m,m)}
# # => "all good girl does well"
