class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.19.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.19.0/unifocl-2.19.0-macos-arm64.tar.gz"
  sha256 "1d7bcc8691f1699b826f63c03d203be76d28f005ed36165f2c927b7a3c4adbed"
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
