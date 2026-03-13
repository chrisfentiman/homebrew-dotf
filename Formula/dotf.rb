class Dotf < Formula
  desc "Dotfiles manager with pluggable secret injection (pass, op, bw, env)"
  homepage "https://github.com/chrisfentiman/dot"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.5.0/dotf-aarch64-macos"
      sha256 "915bc399aa2eca375e25ddf7258d33ce9b15a88d12453a7ee335c5d3a9886cac"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.5.0/dotf-x86_64-macos"
      sha256 "9b67b2e20deade26d967ddc2f50ac1645ae2e575ce282a2eae87a7b75be664db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.5.0/dotf-aarch64-linux"
      sha256 "8ebc7c61dec0fa00deda5382fbf2da719febd5ee19bbd740cc3f9f3aaba429e5"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.5.0/dotf-x86_64-linux"
      sha256 "441f70fd04762d3c0bab287383d41219c0126f41c6923f1801912820b051ebf0"
    end
  end

  def install
    os = OS.mac? ? "macos" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    binary = "dotf-#{arch}-#{os}"
    chmod 0755, binary
    bin.install binary => "dotf"
  end

  test do
    assert_predicate bin/"dotf", :exist?
  end
end
