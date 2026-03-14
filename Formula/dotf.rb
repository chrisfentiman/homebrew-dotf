class Dotf < Formula
  desc "Dotfiles manager with pluggable secret injection (pass, op, bw, env)"
  homepage "https://github.com/chrisfentiman/dot"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.9.0/dotf-aarch64-apple-darwin.tar.gz"
      sha256 "f9b6304ecb5ee8db56ab508e38b416585869dfd42b33ed7faed50e609ed9a893"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.9.0/dotf-x86_64-apple-darwin.tar.gz"
      sha256 "911ca114d8456a4c824c22b2eaa6ec56f93f0ed1e5bcf62f5b47896413110d71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.9.0/dotf-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b2ea5322ad77a91087bbecb00dfb321a9f9cf408230c1e23a08ebc4b5b718dd"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.9.0/dotf-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdfd23bda939996789551501b1f228c32e528f907edd91d08b3a03f0c663ab84"
    end
  end

  def install
    bin.install "dotf"
  end

  test do
    assert_predicate bin/"dotf", :exist?
  end
end
