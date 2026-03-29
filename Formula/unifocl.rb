class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.21.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.21.0/unifocl-2.21.0-macos-arm64.tar.gz"
  sha256 "b5f90648e3ca41fa39073c7ac6c5c855a6f7dd486f9ad80f594a5d5b9073e101"
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
