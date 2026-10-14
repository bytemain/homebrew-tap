class Prog < Formula
  desc "Manage git repositories by path rules and find them by keyword"
  homepage "https://github.com/bytemain/prog"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/bytemain/prog/releases/download/v0.1.0/prog-aarch64-apple-darwin.tar.gz"
      sha256 "01140f22e6051d44f347aa02d6f4b854a48996bd8582cc7dab9d7254f6addab5"
    end
    on_intel do
      url "https://github.com/bytemain/prog/releases/download/v0.1.0/prog-x86_64-apple-darwin.tar.gz"
      sha256 "5082ecdf6bc7a457034ba0c3af12a32946a157f997ed4c77a9b12d1fdeae1406"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bytemain/prog/releases/download/v0.1.0/prog-aarch64-unknown-linux-musl.tar.gz"
      sha256 "126d766972d9eeb1962cbe12963a292360a9af64029034195f1cb2a3e8aeb7d4"
    end
    on_intel do
      url "https://github.com/bytemain/prog/releases/download/v0.1.0/prog-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1e36713bc08a9dbd585001970c8dd4e538b6e56ed58976d3be6e121335c1bbc"
    end
  end

  def install
    bin.install "prog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prog --version")
  end
end
