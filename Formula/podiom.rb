class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.414"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.414/podiom_v0.1.414_darwin_arm64.tar.gz"
      sha256 "7b712fb064e72ceae3e444e5915c16e128bcc4ae37e77d0b4c8a00ddd271a87a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.414/podiom_v0.1.414_darwin_amd64.tar.gz"
      sha256 "638f02c1bdfe4b01420a5d0c096fc79e0875524d521e261ac3d9eddc50ebb33e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.414/podiom_v0.1.414_linux_arm64.tar.gz"
      sha256 "2a43c89f6754fe99bb24476513c754a201e52ea9530d4927efdac54b06f4be11"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.414/podiom_v0.1.414_linux_amd64.tar.gz"
      sha256 "cb7312c2fe315bfa9771e4bee713fc140636f80e7eab787a9b2309a81098b92a"
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
