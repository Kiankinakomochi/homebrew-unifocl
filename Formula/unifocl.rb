class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.4.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.4.0/unifocl-3.4.0-macos-arm64.tar.gz"
  sha256 "f30c4b47d5002c7ec16a8c42218696c0bb0695583ff3d7b467a3e2c2afda4886"
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
