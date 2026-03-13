class Dot < Formula
  desc "Dotfiles manager with pluggable secret injection (pass, op, bw, env)"
  homepage "https://github.com/chrisfentiman/dot"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.3.1/dotf-aarch64-macos"
      sha256 "fa22fc16e5f250e3dd6429052017fc33263ce4b894572f689d2cf73780c693fc"
    elsif Hardware::CPU.intel?
      url "https://github.com/chrisfentiman/dot/releases/download/v0.3.1/dotf-x86_64-macos"
      sha256 "a0a6ddc56f55b954dfa7f29aeb6e32166de8562f4460f2449d143c076ccb28be"
    end
  end

  def install
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    chmod 0755, "dotf-#{arch}-macos"
    bin.install "dotf-#{arch}-macos" => "dotf"
  end

  test do
    assert_predicate bin/"dotf", :exist?
  end
end
