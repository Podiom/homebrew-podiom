class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.324"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.324/podiom_v0.1.324_darwin_arm64.tar.gz"
      sha256 "9f1d919c3b4420c6c300f6d1b8f7398c3ba42a1caaff3bbef809350625c33d6c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.324/podiom_v0.1.324_darwin_amd64.tar.gz"
      sha256 "37c41e11cce665a9f8e253e3ce130bf33fa575a9c5a349d5e674b84157a7281a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.324/podiom_v0.1.324_linux_arm64.tar.gz"
      sha256 "553a364070a332cabf05c0e67624b3aa00da0dda1ef93e8dce4fe224a978eb54"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.324/podiom_v0.1.324_linux_amd64.tar.gz"
      sha256 "278811afdf3e5b8a67434262c335019da12b0341d6d78d024f93a6ce048d126d"
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
