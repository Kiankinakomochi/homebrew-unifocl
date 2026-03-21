class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v1.0.0/unifocl-1.0.0-macos-arm64.tar.gz"
  sha256 "a9c5f03f6008c47b2890db978a3e723f43eda14c2e5debe5aabaffb1a8a384ba"
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
