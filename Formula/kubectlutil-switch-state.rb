class KubectlutilSwitchState < Formula
    desc "Kubernetes state control that segregates contexts to enable or disable kubectl usage"
    homepage "https://github.com/fhuitelec/kubectl-tools"
    url "https://github.com/fhuitelec/kubectl-tools/archive/0.1.0.tar.gz"
    sha256 "f3430f175ec78d0bd0fe97c934e6f3b129def2313acb493ee6722fe89706409d"
    version "0.1.0"
    head "https://github.com/fhuitelec/kubectl-tools.git"

    depends_on "kubernetes-cli" => :optional

    def install
      bin.install "bin/kubectlutil-switch-state"
    end

    test do
      system "which", "kubectlutil-switch-state"
    end
  end
