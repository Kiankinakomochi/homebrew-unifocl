class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.3.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.3.0/unifocl-2.3.0-macos-arm64.tar.gz"
  sha256 "54e5eb40855c3b511b9760aa329b72f65fbc8448f542e3bf8bc23cd12c60e040"
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
