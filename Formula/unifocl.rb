class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.6"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.6/unifocl-3.8.6-macos-arm64.tar.gz"
  sha256 "dc72e37acfb74277d5d536654309f13182d8b9a545a99c6cf604ea30b4c0bd30"
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
