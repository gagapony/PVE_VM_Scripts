{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # buildInputs: 定义进入 Shell 时可用的包
  buildInputs = [
    # 1. Python 解释器 (推荐使用特定版本，如 3.11)
    pkgs.python311

    # 2. virtualenv 工具
    pkgs.python311Packages.virtualenv

    # 3. 其他开发工具 (可选)
    # pkgs.git
    # pkgs.gcc
  ];

  # shellHook: 在所有包加载完成后执行的脚本
  shellHook = ''
    echo "Welcome to the Python Development Shell!"
    echo "Python 3.11 and virtualenv are ready."
  '';
}

