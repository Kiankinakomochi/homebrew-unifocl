class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.16.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.16.0/unifocl-2.16.0-macos-arm64.tar.gz"
  sha256 "4b0c6eb9bdd1a55e6cf3f5444cae83f390d48c84fd3e576abc035050a6d5f0f9"
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
