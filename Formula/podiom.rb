class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.339"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.339/podiom_v0.1.339_darwin_arm64.tar.gz"
      sha256 "83685cdb0accefd2a0e234081c874cdf7ff1fb929f5ffe6c13cea2cbe6753220"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.339/podiom_v0.1.339_darwin_amd64.tar.gz"
      sha256 "0f0da704bac5e3af93a77e8b7409b6fdb169634c12c666a898e1821210fd70df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.339/podiom_v0.1.339_linux_arm64.tar.gz"
      sha256 "5acfc39237e5b0310bfe820af7423f4e846169e70353681127bbae441aecfb3b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.339/podiom_v0.1.339_linux_amd64.tar.gz"
      sha256 "694a1e498813fec2b1e0e59aaec76f9704bec89828b3227b2a988aca0455c398"
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
