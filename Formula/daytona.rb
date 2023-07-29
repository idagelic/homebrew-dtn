class Daytona < Formula
  desc "Daytona CLI for workspace management"
  homepage "https://daytona.io/" # The URL to the project's homepage
  url "https://github.com/idagelic/homebrew-dtn/archive/v0.1.0-alpha.tar.gz" # Replace with the download URL for your release
  sha256 "44d1e4edbd9bbb969e3f9d7b60ab64216d932fa3620dc507e87ddf270bf3c1e7" # You can generate this with 'shasum -a 256 your-cli-X.X.X.tar.gz'
  license "MIT" # Replace with the appropriate license for your CLI

  depends_on "go" => :build

  def install
    # Install the pre-built binary directly into the Homebrew 'bin' directory
    bin.install "homebrew-dtn-0.1.0-alpha" => "daytona" # Rename the binary to 'your-cli' in the 'bin' directory
    # system "go", "build", "-o", bin/"your-cli"
    # Additionally, you can install any necessary files, such as documentation or completion scripts.
    # For example:
    # doc.install "docs/readme.txt"
    # bash_completion.install "completion/bash-completion.sh"
  end

  test do
    # Add a simple test to verify that your CLI works correctly.
    assert_match "expected output", shell_output("#{bin}/daytona help")
  end
end
