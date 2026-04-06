class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.8"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.8/unifocl-3.8.8-macos-arm64.tar.gz"
  sha256 "5017070bb3eb7c8f745e8cf129f0c8a00fadc518298921db633a5f5d4fa2bc40"
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
