# typed: false
# frozen_string_literal: true

class Denotag < Formula
  desc "Tag editor built with deno"
  homepage "https://github.com/m4rc3l05/denotag"
  version "4.6.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.21/denotag-x86_64-apple-darwin.tar.gz"
      sha256 "d21b8febe76e95ba7132a12b88e643ef160f039d6883bf63b14914a1fe003a6f"

      def install
        bin.install "denotag"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.21/denotag-aarch64-apple-darwin.tar.gz"
      sha256 "5e5f25b14ad46b11812586c302cda57ccfc6cae4f5a96620ddb3d2c50ea57aa6"

      def install
        bin.install "denotag"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.21/denotag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e81913f69336ece75701bb778496894ba3b8ee9a047f6b0b5ce7490feeffb22"
      def install
        bin.install "denotag"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.21/denotag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab0198d402f80636c66d0984d02269868293e9953f4bd926a0b8eeba78f29a8f"
      def install
        bin.install "denotag"
      end
    end
  end
end