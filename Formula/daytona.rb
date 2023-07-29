class Daytona < Formula
  desc "Daytona CLI for workspace management"
  homepage "https://daytona.io/" # The URL to the project's homepage
  url "https://github.com/idagelic/dtn/archive/vX.X.X.tar.gz" # Replace with the download URL for your release
  sha256 "SHA256 checksum of the release tarball" # You can generate this with 'shasum -a 256 your-cli-X.X.X.tar.gz'
  license "MIT" # Replace with the appropriate license for your CLI

  depends_on "go" => :build

  def install
    # Build and install your CLI tool here
    # For Golang, this typically involves using 'go build'
    system "go", "build", "-o", bin/"your-cli"
    # Additionally, you can install any necessary files, such as documentation or completion scripts.
    # For example:
    # doc.install "docs/readme.txt"
    # bash_completion.install "completion/bash-completion.sh"
  end

  test do
    # Add a simple test to verify that your CLI works correctly.
    assert_match "expected output", shell_output("#{bin}/your-cli --version")
  end
end
