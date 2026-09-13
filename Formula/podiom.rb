class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.300"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.300/podiom_v0.1.300_darwin_arm64.tar.gz"
      sha256 "dbba1968f3cfa1e47181095d258c37c018b9fcecab570fef673bfccc3cf67814"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.300/podiom_v0.1.300_darwin_amd64.tar.gz"
      sha256 "a6218b09c764d8d07f0ad3efe6c38cc0054541daefcee1e6787a03e930fa8a88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.300/podiom_v0.1.300_linux_arm64.tar.gz"
      sha256 "eff4da046dff63ed54bd6bcd8f351622df69fa221217baedaa221c79563ef3c3"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.300/podiom_v0.1.300_linux_amd64.tar.gz"
      sha256 "1610a07853eb02f5642c04887e1e4ccffb0385f66d914fb051d0f9630cccd1ca"
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
