class Daytona < Formula
  desc "This is a Daytona CLI for workspace management"
  homepage "https://daytona.io/"
  url "https://github.com/idagelic/homebrew-dtn/archive/v0.1.0-alpha.tar.gz"
  sha256 "44d1e4edbd9bbb969e3f9d7b60ab64216d932fa3620dc507e87ddf270bf3c1e7"
  license "MIT"

  depends_on "go" => :build

  # Define the resource named "daytona"
  resource "prebuilt-binary" do
    url "https://github.com/idagelic/homebrew-dtn/releases/download/v0.1.0-alpha/daytona_linux_amd64"
    sha256 "0bdf701641fb26048fc4cba2d1c9c04b533323b4b4b9f78dd8cf96d9afdc514e"
  end

  def install
    # Use the pre-built binary from the resource
    bin.install resource("prebuilt-binary").cached_download => "daytona"
    chmod "+x", "#{bin}/daytona" # Set execute permissions (if needed)
  end

  test do
    # Run the "daytona help" command and check if it exits successfully
    assert_nothing_raised { system "#{bin}/daytona", "help" }
  end
end
