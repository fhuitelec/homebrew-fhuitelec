class KubectlSwitchState < Formula
    desc "Kubernetes state control that segregates contexts to enable or disable kubectl usage"
    homepage "https://github.com/fhuitelec/kubectl-tools"
    url "https://github.com/fhuitelec/kubectl-tools/archive/0.1.0.tar.gz"
    sha256 "183e745503a01ab59f23f8426093d316744d6a1daf0f2b220bea350ee87599b6"
    version "0.1.0"
    head "https://github.com/fhuitelec/kubectl-tools.git"

    depends_on "kubernetes-cli" => :optional

    def install
      bin.install "bin/kubectl-switch-state"
    end

    test do
      system "which", "kubectl-switch-state"
    end
  end
