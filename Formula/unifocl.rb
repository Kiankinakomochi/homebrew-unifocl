class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.7.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.7.0/unifocl-2.7.0-macos-arm64.tar.gz"
  sha256 "37614b63cfd10f17fa73e305d73656946ef4ec3e3bd3bba5ceec4688f35177c8"
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
