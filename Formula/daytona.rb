class Daytona < Formula
  desc "This is a Daytona CLI for workspace management"
  homepage "https://daytona.io/"
  url "https://github.com/idagelic/homebrew-dtn/archive/v0.1.0-alpha.tar.gz"
  sha256 "44d1e4edbd9bbb969e3f9d7b60ab64216d932fa3620dc507e87ddf270bf3c1e7"
  license "MIT"

  depends_on "go" => :build

  # Define the resource named "daytona"
  resource "prebuilt-binary" do
    url "https://github.com/idagelic/homebrew-dtn/archive/v0.1.0-alpha.tar.gz"
    sha256 "44d1e4edbd9bbb969e3f9d7b60ab64216d932fa3620dc507e87ddf270bf3c1e7"
  end

  def install
    # Use the pre-built binary from the resource
    bin.install resource("prebuilt-binary").files("daytona") # Replace 'daytona' with the actual binary name if different
    chmod "+x", "#{bin}/daytona" # Set execute permissions (if needed)
  end

  test do
    # Add a simple test to verify that your CLI works correctly.
    assert_match "expected output", shell_output("#{bin}/daytona help")
  end
end
