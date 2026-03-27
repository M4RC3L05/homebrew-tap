# typed: false
# frozen_string_literal: true

class Denotag < Formula
  desc "Tag editor built with deno"
  homepage "https://github.com/m4rc3l05/denotag"
  version "5.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/M4RC3L05/denotag/releases/download/v5.0.0/denotag-x86_64-apple-darwin.tar.gz"
      sha256 "b5109e0ff7f7c0c7aa97a675c0b09a33dd825d9612efdb5a5c4e2affbd419bf7"

      def install
        bin.install "denotag"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/M4RC3L05/denotag/releases/download/v5.0.0/denotag-aarch64-apple-darwin.tar.gz"
      sha256 "5e2650b346df9f09103d9f76545dc801b1ab616b66524a0548da72e0e9c0141f"

      def install
        bin.install "denotag"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/M4RC3L05/denotag/releases/download/v5.0.0/denotag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3362e750e1e1461aa05e18a3dc6b10b687fa8cee63dbd74a955a1756faacd7e5"
      def install
        bin.install "denotag"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/M4RC3L05/denotag/releases/download/v5.0.0/denotag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c28474eb927bcd5809aa663d8040ee06580c82e6b35066f22fec4afe39e06b57"
      def install
        bin.install "denotag"
      end
    end
  end
end