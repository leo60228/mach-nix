{python, fetchurl, ...}:
rec {
  resolvelib = python.pkgs.buildPythonPackage {
    name = "resolvelib-0.8.1";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/ac/20/9541749d77aebf66dd92e2b803f38a50e3a5c76e7876f45eb2b37e758d82/resolvelib-0.8.1.tar.gz";
      sha256 = "c6ea56732e9fb6fca1b2acc2ccc68a0b6b8c566d8f3e78e0443310ede61dbd37";
    };
    doCheck = false;
  };
  tree-format = python.pkgs.buildPythonPackage {
    name = "tree-format-0.1.2";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/0d/91/8d860c75c3e70e6bbec7b898b5f753bf5da404be9296e245034360759645/tree-format-0.1.2.tar.gz";
      sha256 = "a538523aa78ae7a4b10003b04f3e1b37708e0e089d99c9d3b9e1c71384c9a7f9";
    };
    doCheck = false;
  };
  packaging = python.pkgs.buildPythonPackage {
    name = "packaging-21.3";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/df/9e/d1a7217f69310c1db8fdf8ab396229f55a699ce34a203691794c5d1cad0c/packaging-21.3.tar.gz";
      sha256 = "dd47c42927d89ab911e606518907cc2d3a1f38bbd026385970643f9c5b8ecfeb";
    };
    propagatedBuildInputs = [ python.pkgs.pyparsing ];
    doCheck = false;
  };

  pytest = python.pkgs.pytest.override {
    inherit packaging;
    setuptools-scm = python.pkgs.setuptools-scm.override {
      inherit packaging;
    };
  };

  distlib = python.pkgs.distlib;
  networkx = python.pkgs.networkx;
  setuptools = python.pkgs.setuptools;
  toml = python.pkgs.toml;
  wheel = python.pkgs.wheel;
}
