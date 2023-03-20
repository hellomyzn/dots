local ls = require('luasnip')

-- require("luasnip.loaders.from_snipmate").lazy_load()

ls.config.set_config({
  history = true,
  updateevents = 'TextChanged,TextChangedI',
})

ls.add_snippets('php', {
  ls.parser.parse_snippet('class', 'class $1\n{\n    $0\n}'),
  ls.parser.parse_snippet('pubf', 'public function $1($2): $3\n{\n    $0\n}'),
  ls.parser.parse_snippet('prif', 'private function $1($2): $3\n{\n    $0\n}'),
  ls.parser.parse_snippet('prof', 'protected function $1($2): $3\n{\n    $0\n}'),
  ls.parser.parse_snippet('testt', 'public function test_$1()\n{\n    $0\n}'),
  ls.parser.parse_snippet('testa', '/** @test */\npublic function $1()\n{\n    $0\n}'),
  ls.parser.parse_snippet('docf', '/**\n * ${summary}\n * ${description}\n *\n * @param ${type} ${name}\n * @return ${type}\n *\n * e.g.\n * @param \\App\\Models\\User $user\n * @return bool\n */'),
  ls.parser.parse_snippet('docv', '/**\n * ${description}\n *\n * @var ${type}\n *\n * e.g.\n * @var \\App\\Models\\User $user\n * @var array <int, string>*/'),
})

ls.add_snippets('typescript', {
  ls.parser.parse_snippet('import', "import $1 from '$0'"),
})

ls.add_snippets('vue', {
  ls.parser.parse_snippet('defineProps', 'defineProps<{\n  $0\n}>()'),
})
