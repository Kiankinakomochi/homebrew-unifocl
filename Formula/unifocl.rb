class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.16.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.16.0/unifocl-3.16.0-macos-arm64.tar.gz"
  sha256 "c81a088350dbb8a71e24f6f5f0792a1297fe7961d6e761b4f75b4fa62ead599a"
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
