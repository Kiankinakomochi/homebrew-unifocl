class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.12.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.12.0/unifocl-3.12.0-macos-arm64.tar.gz"
  sha256 "5f14549413945c3be94451a823ab0ef12bdd59e757873418e8858f406813c675"
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
