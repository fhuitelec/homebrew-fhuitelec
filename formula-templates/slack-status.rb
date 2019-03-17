require "language/go"

class SlackStatus < Formula
    desc "Tiny utilitary tool to update your Slack status using your CLI"
    homepage "https://github.com/fhuitelec/slack-status"
    url "https://github.com/fhuitelec/slack-status/archive/${FORMULA_VERSION}.tar.gz"
    sha256 "${SHA_SUM}"
    version "${FORMULA_VERSION}"
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