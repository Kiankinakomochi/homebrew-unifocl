class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.12.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.12.0/unifocl-2.12.0-macos-arm64.tar.gz"
  sha256 "da29a5f592cd10b4e13b0ac073811d64910296cfd66fc7f6f25949ab8f91bf9d"
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
