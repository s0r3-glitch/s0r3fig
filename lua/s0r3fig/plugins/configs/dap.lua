local bundles = {
  vim.fn.glob('~/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar'),
}
local config = {
  on_attach = on_attach,
  init_options = {
    bundles = bundles
  },
}

