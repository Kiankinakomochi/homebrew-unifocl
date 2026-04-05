class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.7"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.7/unifocl-3.8.7-macos-arm64.tar.gz"
  sha256 "27588ebd4766b3e017b6e37b0c27bb239c1ae70d3063d8ea384bc54a517d7fa3"
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
