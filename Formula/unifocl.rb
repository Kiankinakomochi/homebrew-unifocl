class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.2.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.2.0/unifocl-3.2.0-macos-arm64.tar.gz"
  sha256 "3ff3e4525d81343cf544f99988f97c9e98421c03d9098f2c9fda2933b0ac3852"
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
