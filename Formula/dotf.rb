class Dotf < Formula
  desc "Dotfiles manager with pluggable secret injection (pass, op, bw, env)"
  homepage "https://github.com/chrisfentiman/dot"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.1/dotf-aarch64-apple-darwin.tar.gz"
      sha256 "c7c446a2c26ea43aa09e83090c215b4226b3062b4ac66c9686807a8bbcc44e4f"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.1/dotf-x86_64-apple-darwin.tar.gz"
      sha256 "52b157c74750b3a1cf4731d4ababb99e6e5a524322da8b59952d1f9e2dffee31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.1/dotf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82063062acb20cc3213dfaafa981fef04bf318174de97fe08487f75dc18b2caf"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.1/dotf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d053c0575cf7630a86141347e0dca90332f98174332d0b50977c2f30d91c6fa0"
    end
  end

  def install
    bin.install "dotf"
  end

  test do
    assert_predicate bin/"dotf", :exist?
  end
end
