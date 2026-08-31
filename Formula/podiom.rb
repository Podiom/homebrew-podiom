class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.271"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.271/podiom_v0.1.271_darwin_arm64.tar.gz"
      sha256 "7b78dcf41472a7e76f2096f992e55b3f6f0ae7bf3b4896511d32bdc5bef5756a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.271/podiom_v0.1.271_darwin_amd64.tar.gz"
      sha256 "b0fd3e8098ffd93590bf3e5d7ac6c073159126844a885d91bf0e910149da5eba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.271/podiom_v0.1.271_linux_arm64.tar.gz"
      sha256 "4121b1b2fbeb32e6429e05e241ddc111095eadfa52d66dfd27cb4a99b7db5905"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.271/podiom_v0.1.271_linux_amd64.tar.gz"
      sha256 "328111ef7121f104ebfcc0c838793bf65a07a0868ce2c59d40d9f39c68802ee8"
    end
  end

  def install
    bin.install "podiom"
    bin.install "podiomd"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/podiom --version")
    assert_match "v#{version}", shell_output("#{bin}/podiomd --version")
  end
end
