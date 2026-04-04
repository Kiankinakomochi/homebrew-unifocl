class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.7.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.7.0/unifocl-3.7.0-macos-arm64.tar.gz"
  sha256 "f16f58aee60f7fb4ca07260c35a66721d5d7c725a522bdb11811af34d597528d"
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
