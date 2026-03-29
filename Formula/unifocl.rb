class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.20.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.20.1/unifocl-2.20.1-macos-arm64.tar.gz"
  sha256 "6d27f5250bbf0a6c14d21e8e98b519e9c7331b6c103d18e532cb59936e09b3f3"
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
