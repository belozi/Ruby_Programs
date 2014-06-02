class WordPlay

	def self.switch_pronouns(text)
		text.gsub(/\b(Iam|You are|I|You|Your|My)\b/i) do |pronoun|
			case pronoun.downcase
			when "i"
				"you"
			when "you"
				"me"
			when "me"
				"you"
			when "iam"
				"you are"
			when "you are"
				"i am"
			when "your"
				"my"
			when "my"
				"your"
			end
		end.sub(/^me\b/i, 'i')
	end
				

end

class String

	def sentences
		gsub(/\n|\r/, ' ').split(/\.\s*/)
	end

	def words
		scan(/\w[\w\'\-]*/)
	end
end