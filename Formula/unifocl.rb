class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.4"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.4/unifocl-3.8.4-macos-arm64.tar.gz"
  sha256 "70112f5ddb720555e0e87c75b4e3a5f484e8d537e789d87792c0be4d9b3953e5"
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
