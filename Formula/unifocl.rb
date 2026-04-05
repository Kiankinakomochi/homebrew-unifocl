class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.1/unifocl-3.8.1-macos-arm64.tar.gz"
  sha256 "887768205f4071e9b6f35688bd88df1642077a665fc324b7b33ba9657903778a"
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
