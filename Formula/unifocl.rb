class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.2.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.2.1/unifocl-3.2.1-macos-arm64.tar.gz"
  sha256 "228a90e7be4d861d5c8ebe1ae6d5fa779081cc38b5fdc9ee669d19fa78f33fec"
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
