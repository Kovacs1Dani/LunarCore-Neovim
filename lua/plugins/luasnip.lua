return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  config = function()
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    require("luasnip.loaders.from_vscode").lazy_load()

    -- Define your C snippets here
    ls.add_snippets("c", {
      -- 1. qint
      s("qint", {
        t({ "int compare(const void* a, const void* b) {", "" }),
        t("    return (*(int*)"), i(1, "a"), t(" - *(int*)"), i(2, "b"), t(");"),
        t({ "", "}" }),
      }),

      -- 2. bsearch
      s("bsearch", {
        t({ "int left = 0, right = n - 1;", "while (left <= right) {", "" }),
        t("    int mid = left + (right - left) / 2;"),
        t({ "", "    if (nums[mid] == target) return mid;", "" }),
        t("    if (nums[mid] < target) "), i(1, "left = mid + 1;"),
        t({ "", "    else " }), i(2, "right = mid - 1;"),
        t({ "", "}", "return -1;" }),
      }),

      -- 3. mainc
      s("mainc", {
        t({ "#include <stdio.h>", "#include <stdlib.h>", "#include <string.h>", "#include <unistd.h>", "", "" }),
        t({ "int main() {", "    " }), i(0),
        t({ "", "    return 0;", "}" }),
      }),
    })

    -- 4. Define C++ snippets
    ls.add_snippets("cpp", {
      s("maincpp", {
        t({ "#include <iostream>", "#include <vector>", "#include <string>", "#include <algorithm>", "", "using namespace std;", "", "int main() {", "    ios_base::sync_with_stdio(false);", "    cin.tie(NULL);", "", "    " }),
        i(0),
        t({ "", "", "    return 0;", "}" }),
      }),
    })

    -- This line makes all "c" snippets also work in "cpp" files automatically!
    ls.filetype_extend("cpp", { "c" })
  end,
}
