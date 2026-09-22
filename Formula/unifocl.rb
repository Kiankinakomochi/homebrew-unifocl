class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.18.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.18.0/unifocl-3.18.0-macos-arm64.tar.gz"
  sha256 "bbd3b28ee987438a0de5927e1c21561b27f7cd8ae4f547ba6974a0649f001066"
  license "Apache-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"unifocl"
  end

  test do
    output = shell_output("#{bin}/unifocl exec \"/version\" --agentic --format json")
    assert_match '"status":"success"', output
  end
end
