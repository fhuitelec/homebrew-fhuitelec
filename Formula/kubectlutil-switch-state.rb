class KubectlutilSwitchState < Formula
    desc "Kubernetes state control that segregates contexts to enable or disable kubectl usage"
    homepage "https://github.com/fhuitelec/kubectl-tools"
    url "https://github.com/fhuitelec/kubectl-tools/archive/0.1.0.tar.gz"
    sha256 "8330903e64944947ac42079670787af7cd627e55b93935aad1b10cc88606bb23"
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
