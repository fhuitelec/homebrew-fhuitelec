class KubectlutilSwitchState < Formula
    desc "Kubernetes state control that segregates contexts to enable or disable kubectl usage"
    homepage "https://github.com/fhuitelec/kubectl-tools"
    url "https://github.com/fhuitelec/kubectl-tools/archive/${FORMULA_VERSION}.tar.gz"
    sha256 "${SHA_SUM}"
    version "${FORMULA_VERSION}"
    head "https://github.com/fhuitelec/kubectl-tools.git"

    depends_on "kubernetes-cli" => :optional

    def install
      bin.install "bin/kubectlutil-switch-state"
    end

    test do
      system "which", "kubectlutil-switch-state"
    end
  end
