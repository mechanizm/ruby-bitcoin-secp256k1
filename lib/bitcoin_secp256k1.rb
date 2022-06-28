# -*- encoding : ascii-8bit -*-
require 'bitcoin_secp256k1/version'
require 'bitcoin_secp256k1/c'
require 'bitcoin_secp256k1/utils'
require 'bitcoin_secp256k1/ecdsa'
require 'bitcoin_secp256k1/key'

module BitcoinSecp256k1

  EC_COMPRESSED = C::Constants['SECP256K1_EC_COMPRESSED'].to_i
  EC_UNCOMPRESSED = C::Constants['SECP256K1_EC_UNCOMPRESSED'].to_i

  FLAG_SIGN = C::Constants['SECP256K1_CONTEXT_SIGN'].to_i
  FLAG_VERIFY = C::Constants['SECP256K1_CONTEXT_VERIFY'].to_i
  NO_FLAGS = C::Constants['SECP256K1_CONTEXT_NONE'].to_i
  ALL_FLAGS = FLAG_SIGN | FLAG_VERIFY

  class AssertError < StandardError; end
  class LoadModuleError < StandardError; end

end
