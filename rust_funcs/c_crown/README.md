# c_crown

- Benchmarks: 14
- CSV compile expected: 0
- LLVM IR emitted OK: 7
- Missing LLM block: 0
- Failed: 7

| Benchmark | Status | CSV compile expected | Source |
|---|---|---:|---|
| `0001_avl_rotate` | failed | False | `rotate` |
| `0002_brotli_parseint` | ok | unknown | `brotli_parseint` |
| `0003_avl_insert` | failed | unknown | `insert` |
| `0004_avl_minvalue` | ok | unknown | `minvalue` |
| `0005_buffer_new` | ok | unknown | `buffer` |
| `0006_ht_hashkey` | ok | unknown | `ht` |
| `0007_libcsv_get_opts` | failed | unknown | `libcsv_get_opts` |
| `0008_libtree` | ok | unknown | `libtree` |
| `0009_url` | failed | unknown | `url` |
| `0010_avl_delete` | failed | unknown | `delete` |
| `0011_brotli_filesize` | failed | unknown | `brotli_filesize` |
| `0012_buffer_resize` | failed | unknown | `buffer_complex` |
| `0013_ht_create` | ok | unknown | `ht_complex` |
| `0014_libcsv_init` | ok | unknown | `libcsv_init` |
