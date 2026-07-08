class Tinycd < Formula
  desc "Tiny polling and webhook based deployments"
  homepage "https://github.com/maxz411/tinycd"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/maxz411/tinycd/releases/download/v0.3.0/tinycd-aarch64-apple-darwin.tar.gz"
      sha256 "e6fc1989b0b69da3104d7543cfe7dd1845c692b83f514006023771b395e78881"
    end
    on_intel do
      url "https://github.com/maxz411/tinycd/releases/download/v0.3.0/tinycd-x86_64-apple-darwin.tar.gz"
      sha256 "b94f24c174169eadbe58d8a6ea07b04c4b76b5a312b08ba06e079276e6753e1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/maxz411/tinycd/releases/download/v0.3.0/tinycd-aarch64-unknown-linux-musl.tar.gz"
      sha256 "975d87de3ae212b3587a280189e077a5ade3537440c68fefa1167355ec77920e"
    end
    on_intel do
      url "https://github.com/maxz411/tinycd/releases/download/v0.3.0/tinycd-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e27710ea2b3d0372cb9c30ecf506898de98511381d5f419194590a534874740b"
    end
  end

  def install
    bin.install "tinycd"
  end

  test do
    assert_match "tinycd", shell_output("#{bin}/tinycd --version")
  end
end
