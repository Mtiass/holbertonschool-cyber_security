#!/usr/bin/env ruby
class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encrypt(message)
    cipher(message, @shift)
  end

  def decrypt(message)
    cipher(message, -@shift)
  end

  private

  def cipher(message, shift)
    encrypted_message = ""

    message.each_char do |char|
      char_value = char.ord

      if char_value >= 65 && char_value <= 90
        base = 65
      elsif char_value >= 97 && char_value <= 122
        base = 97
      else
        encrypted_message += char
        next
      end

      position = char_value - base
      new_position = (position + shift) % 26
      new_char_value = new_position + base
      new_char = new_char_value.chr
      encrypted_message += new_char
    end

    encrypted_message
  end
end
