# Glory keyed display fixture

This is the standard HTML-table workload, using Glory's XML display API and
framework-owned `Each`. It is separate from Glory's own div-based comparison;
their timing results must not be combined.

The local dependency and shared business model assume the two checkouts are
siblings named `glory` and `js-framework-benchmark`. This fixture uses the
standard `Math.random` word-selection algorithm. Glory's own fixture uses its
independent deterministic data oracle instead.

```powershell
npm run build-prod
```

The script invokes `glory/scripts/build-js-framework-benchmark.ps1`, uses a
separate D: Cargo target and wasm-bindgen 0.2.129, and writes `bundled-dist`.
The upstream server and WebDriver runner discover it through package metadata.
No acceptance/profiling exports are compiled into this measured application.

For a complete local comparison, build the peer implementations, start the
upstream server on port 8080, and from the sibling Glory checkout run:

```powershell
python benchmarks/run-standard.py --out D:/BuildCache/glory-standard/my-run
```

That runner freezes implementation/harness inputs, checks all eight keyed
implementations and runs every currently enabled upstream CPU, memory and size
case with unchanged default sample counts and throttling. The result directory
must be empty before a new run; earlier evidence should be preserved.
