require "language/go"

class SlackStatus < Formula
    desc "Tiny utilitary tool to update your Slack status using your CLI"
    homepage "https://github.com/fhuitelec/slack-status"
    url "https://github.com/fhuitelec/slack-status/archive/0.2.1.tar.gz"
    sha256 "b6c760906c510ba65b0c283875ce2d1cdee336bff7846688c6a2b3f95b57d26b"
    version "0.2.1"
    head "https://github.com/fhuitelec/slack-status.git"

    depends_on "go" => :build

    go_resource "github.com/docopt/docopt-go" do
        url "https://github.com/docopt/docopt.go.git",
            :tag => "0.6.2"
    end

    def install
        ENV["GOPATH"] = buildpath

        bin_path = buildpath/"src/github.com/fhuitelec/slack-status"
        bin_path.install Dir["*"]
        Language::Go.stage_deps resources, buildpath/"src"
        cd bin_path do
            system "go", "build", "-o", bin/"slack-status", "."
        end
    end

    test do
        system "which", "slack-status"
    end
end