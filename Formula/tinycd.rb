class Tinycd < Formula
  desc "Tiny polling and webhook based deployments"
  homepage "https://github.com/maxz411/tinycd"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/maxz411/tinycd/releases/download/v0.2.0/tinycd-aarch64-apple-darwin.tar.gz"
      sha256 "2de066e50866fa78b55502501a276146f65a1e6e416d21b1ee35ab4ef5a52678"
    end
    on_intel do
      url "https://github.com/maxz411/tinycd/releases/download/v0.2.0/tinycd-x86_64-apple-darwin.tar.gz"
      sha256 "0cfd7af8d8489340def02d4344305764edf5ecde19be242ee04e1e1a7667f26e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maxz411/tinycd/releases/download/v0.2.0/tinycd-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e5c7769a332ee5f48365721256bf9de60dceca8436b49c364f4ee2d10618f65"
    end
    on_intel do
      url "https://github.com/maxz411/tinycd/releases/download/v0.2.0/tinycd-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81d6b87a5f0f897fce66b93cabdff193ca96245d07efcc7ee6dc85649c286c53"
    end
  end

  def install
    bin.install "tinycd"
  end

  test do
    assert_match "tinycd", shell_output("#{bin}/tinycd --version")
  end
end
