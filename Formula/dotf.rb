class Dotf < Formula
  desc "Dotfiles manager with pluggable secret injection (pass, op, bw, env)"
  homepage "https://github.com/chrisfentiman/dot"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.0/dotf-aarch64-apple-darwin.tar.gz"
      sha256 "1b886b7c9aa46fb836d844f9017fc1199a0b508e1d6c74843e6ff61782714cb4"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.0/dotf-x86_64-apple-darwin.tar.gz"
      sha256 "0eb7f09bf6c84d495de3889726f430857dc30de1f34486737b91296639f9541b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.0/dotf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "61827050fd443332b0b97e66f22c068c9e784445e0305dd6667c8a074e021877"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.8.0/dotf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b0c15422abbaca70de31b9bc1444dac278a32c405f459349601c298857ad652"
    end
  end

  def install
    bin.install "dotf"
  end

  test do
    assert_predicate bin/"dotf", :exist?
  end
end
