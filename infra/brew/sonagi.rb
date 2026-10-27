# typed: false
# frozen_string_literal: true

class Sonagi < Formula
  desc "Unified Orchestrator CLI for the Sonagi Ecosystem"
  homepage "https://github.com/mindulle/sonagi-tools"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64_SHA256"

      def install
        bin.install "sonagi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-darwin-x64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_X64_SHA256"

      def install
        bin.install "sonagi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"

      def install
        bin.install "sonagi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mindulle/sonagi-tools/releases/download/v0.1.0/sonagi-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X64_SHA256"

      def install
        bin.install "sonagi"
      end
    end
  end

  test do
    system "#{bin}/sonagi", "--version"
  end
end
