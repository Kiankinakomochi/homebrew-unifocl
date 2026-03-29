class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.17.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.17.0/unifocl-2.17.0-macos-arm64.tar.gz"
  sha256 "d6ad0888e42fb61569eddeaca2c401b84306a6b1ad66f43c9f1d120c05e3f34c"
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
