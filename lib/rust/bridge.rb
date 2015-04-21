require "rust/bridge/version"
require "fiddle"
require "fiddle/import"

module Rust
  module Bridge
    extend Fiddle::Importer

    Buffer = struct ['uintptr_t data', 'size_t size']

    class << Buffer
      def from_string(string)
        ptr = Fiddle::Pointer[string]
        buf = Buffer.malloc
        buf.data = ptr.to_i
        buf.size = string.size
      end
    end

    class Buffer
      def to_str
        Fiddle::Pointer.new(self.data, self.size).to_str
      end
    end
  end
end
