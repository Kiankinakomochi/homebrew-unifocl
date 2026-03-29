class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.10.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.10.0/unifocl-2.10.0-macos-arm64.tar.gz"
  sha256 "c242f594aca8ccd1b26d96780f69f221f1bf669cfcbef1eb550d17248f0bb364"
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
