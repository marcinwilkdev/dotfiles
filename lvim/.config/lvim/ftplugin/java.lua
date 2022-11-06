local home = os.getenv("HOME")

WORKSPACE_PATH = home .. "/dev/java_workspace/"
CONFIG = "linux"

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local workspace_dir = WORKSPACE_PATH .. project_name

local config = {
  cmd = {
    'java',

    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-javaagent:' .. home .. '/.local/share/nvim/mason/packages/jdtls/lombok.jar',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

    '-jar',
    vim.fn.glob(home .. "/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),

    '-configuration',
    home .. "/.local/share/nvim/mason/packages/jdtls/config_" .. CONFIG,

    '-data',
    workspace_dir,
  },

  root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),
}

require('jdtls').start_or_attach(config)
