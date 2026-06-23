# c_crown/0006_ht_hashkey

- Source: `ht_processed.c`
- Source note: processed source

## O0

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/c_crown/0006_ht_hashkey/ht_processed.c:8:21: error: use of undeclared identifier 'FNV_OFFSET'`
  - `    uint64_t hash = FNV_OFFSET;`
  - `                    ^`
  - `benchmark/c_crown/0006_ht_hashkey/ht_processed.c:11:17: error: use of undeclared identifier 'FNV_PRIME'`
  - `        hash *= FNV_PRIME;`
  - `                ^`
  - `2 errors generated.`

## O1

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/c_crown/0006_ht_hashkey/ht_processed.c:8:21: error: use of undeclared identifier 'FNV_OFFSET'`
  - `    uint64_t hash = FNV_OFFSET;`
  - `                    ^`
  - `benchmark/c_crown/0006_ht_hashkey/ht_processed.c:11:17: error: use of undeclared identifier 'FNV_PRIME'`
  - `        hash *= FNV_PRIME;`
  - `                ^`
  - `2 errors generated.`

## O2

- Status: failed: clang emit error
- Features: none
- Compiler messages:
  - `benchmark/c_crown/0006_ht_hashkey/ht_processed.c:8:21: error: use of undeclared identifier 'FNV_OFFSET'`
  - `    uint64_t hash = FNV_OFFSET;`
  - `                    ^`
  - `benchmark/c_crown/0006_ht_hashkey/ht_processed.c:11:17: error: use of undeclared identifier 'FNV_PRIME'`
  - `        hash *= FNV_PRIME;`
  - `                ^`
  - `2 errors generated.`
