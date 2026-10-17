class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.18.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.18.1/unifocl-3.18.1-macos-arm64.tar.gz"
  sha256 "dda068744a1c442ca928ffa1295f06a648992398e4ab61edc7f00ae4379ac042"
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
