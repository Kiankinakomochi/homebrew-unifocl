class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.9.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.9.0/unifocl-2.9.0-macos-arm64.tar.gz"
  sha256 "30b05a960866f2c961d715bd93582552170ba32bd9fdffcc700a249deaee3a05"
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
