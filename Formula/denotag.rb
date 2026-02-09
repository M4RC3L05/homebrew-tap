# typed: false
# frozen_string_literal: true

class Denotag < Formula
  desc "Tag editor built with deno"
  homepage "https://github.com/m4rc3l05/denotag"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.20/denotag-x86_64-apple-darwin.tar.gz"
      sha256 "3eab60cce6c55b60f891383e2ca6bcba3b33181c84f3c62ef3c9b38dc025aa9a"

      def install
        bin.install "denotag"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.20/denotag-aarch64-apple-darwin.tar.gz"
      sha256 "d0f086b1c83b359da6456636f3c48ce60ff5d60a821cb6dd339c06bc63e7f106"

      def install
        bin.install "denotag"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.20/denotag-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "sha256:525218a6a7914e52e89b8b32633296b928bc384800d7339fdfae6a8afeb12c9c"
      def install
        bin.install "denotag"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/M4RC3L05/denotag/releases/download/v4.6.20/denotag-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5f2a371701a0913b881fc6833f2a7002c1af3cfe30cae7e22013c2fbab81558e"
      def install
        bin.install "denotag"
      end
    end
  end
end