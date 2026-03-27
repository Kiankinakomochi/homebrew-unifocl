class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.5.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.5.1/unifocl-2.5.1-macos-arm64.tar.gz"
  sha256 "63c27cc322dc3eac0d6ef410556cb6145e915e5d883e98ccb8998b69643ec7dc"
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
