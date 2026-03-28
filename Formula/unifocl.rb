class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.8.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.8.0/unifocl-2.8.0-macos-arm64.tar.gz"
  sha256 "85e42bd6238cd23ba2c8b5271b755e9f828afcfd67b50b921b07bc549af90ee8"
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
