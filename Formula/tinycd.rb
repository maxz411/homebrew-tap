class Tinycd < Formula
  desc "Tiny polling and webhook based deployments"
  homepage "https://github.com/maxz411/tinycd"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/maxz411/tinycd/releases/download/v0.4.0/tinycd-aarch64-apple-darwin.tar.gz"
      sha256 "4e87f126b199c43155393048a38ed67f785a3154c777a75110f2b2fff96b9a83"
    end
    on_intel do
      url "https://github.com/maxz411/tinycd/releases/download/v0.4.0/tinycd-x86_64-apple-darwin.tar.gz"
      sha256 "e79a28d9e1fb81286053586da4f8e0a14d7a642024eb2b56d0002016b49d7077"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maxz411/tinycd/releases/download/v0.4.0/tinycd-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90ba48e8a6e6325a00303f91d365fcab0c47577e26e9cc707afd6807fc5ab267"
    end
    on_intel do
      url "https://github.com/maxz411/tinycd/releases/download/v0.4.0/tinycd-x86_64-unknown-linux-musl.tar.gz"
      sha256 "072f2369aa67f726861609c188fb6ec9606027d9e96b695cd64ec038d1751a67"
    end
  end

  def install
    bin.install "tinycd"
  end

  test do
    assert_match "tinycd", shell_output("#{bin}/tinycd --version")
  end
end
