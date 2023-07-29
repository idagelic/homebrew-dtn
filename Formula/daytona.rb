class Daytona < Formula
  desc "This is a Daytona CLI for workspace management"
  homepage "https://daytona.io/"
  url "https://github.com/idagelic/homebrew-dtn/archive/v0.1.0-alpha.tar.gz"
  sha256 "44d1e4edbd9bbb969e3f9d7b60ab64216d932fa3620dc507e87ddf270bf3c1e7"
  license "MIT"

  depends_on "go" => :build

  def install
    # Install the pre-built binary directly into the Homebrew 'bin' directory
    bin.install "homebrew-dtn-0.1.0-alpha" => "daytona"
    # system "go", "build", "-o", bin/"your-cli"
    # Additionally, you can install any necessary files, such as documentation or completion.
    # For example:
    # doc.install "docs/readme.txt"
    # bash_completion.install "completion/bash-completion.sh"
  end

  test do
    # Add a simple test to verify that your CLI works correctly.
    assert_match "expected output", shell_output("#{bin}/daytona help")
  end
end
