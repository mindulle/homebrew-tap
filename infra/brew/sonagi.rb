# typed: false
# frozen_string_literal: true

class Sonagi < Formula
  desc "Unified Orchestrator CLI for the Sonagi Ecosystem"
  homepage "https://github.com/mindulle/sonagi-tools"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-darwin-arm64.tar.gz"
      sha256 "c52e0340e30dd5f959ad6805608a52a44cc439bdd6a7b1f5f8357daa5a4f3a15"

      def install
        bin.install "sonagi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-darwin-x64.tar.gz"
      sha256 "aeb4f7effe4550031a5df8ea31ca3040c589b160f3e437a29ef060c0032708e9"

      def install
        bin.install "sonagi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-linux-arm64.tar.gz"
      sha256 "b5f45e6afdfb28532004653f93e8da7057093cc377aaf6438edb61d2e6354b26"

      def install
        bin.install "sonagi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-linux-x64.tar.gz"
      sha256 "2a77a0c749be0cd85c2c28e0bdd0921f88a1f3cd0b5170ded20b83b87711ada8"

      def install
        bin.install "sonagi"
      end
    end
  end

  test do
    system "#{bin}/sonagi", "--version"
  end
end
