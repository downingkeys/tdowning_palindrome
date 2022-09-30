require "tdowning_palindrome/version"

module TdowningPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include TdowningPalindrome
end

class Integer
  include TdowningPalindrome
end