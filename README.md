![Banner](banner.png)

# Multiple-Programming-Languages

A small collection of example programs, one per language, kept as a tour of different languages rather than as a single project. Each file in `src/` stands alone.

## Files

- `src/python.py`: a Python script that builds a tiny time-seeded random number generator and prints one number. It previously imported `matplotlib.pyplot` without ever using it, so it crashed on a machine without matplotlib even though it only needs `numpy`; the unused import is removed, and the computed number is now printed instead of discarded (before this pass the script ran and printed nothing).
- `src/Go4Launch.go`: a Go program printing two launch lines.
- `src/JuliaGoolia.jl`: a Julia script printing Fibonacci numbers below 100.
- `src/TypeScript.ts`: a TypeScript snippet printing a greeting and a star triangle.
- `src/c-p-p.cpp`: a C++ program printing "Hello World!" and a counting loop.
- `src/html.html`: a plain HTML page (the ITcorp example page).
- `src/javajava.java`: a Java "Hello world!" program.
- `src/jupyterNotebook.ipynb`: a Jupyter tutorial notebook (markdown plus a numpy random-array cell and a plotting section).
- `src/latex.tex`: a LaTeX university assignment document (ENGE401) with worked solutions.
- `src/r.r`: an R script estimating pi by Monte Carlo simulation.
- `src/rust.rs`: a Rust guessing game (needs a Cargo project with `rand 0.8.3`, as noted in its own header comment).
- `src/solidity.sol`: a Solidity 0.7.1 contract sketch with `hello`, `helloGas`, and balance helpers; `getAccountBalance` is left as an empty exercise stub in the original.
- `src/sql.sql`: a ClickHouse-style query estimating contributor longevity from a GitHub events table; it is an example query, not a portable SQL script.

## Verified behaviour and limits

`python.py` was run before and after this pass: before, it exited 0 and printed nothing; after, it exits 0 and prints one number between 0 and 1. All files pass a syntax or parse check where a tool was available here (`py_compile` for the Python file, JSON validity for the notebook); the Go, Java, Rust, Julia, R, LaTeX, Solidity, and SQL examples were not compiled or run in this pass because their toolchains are not installed in this environment and no new tool was installed, so their descriptions above are taken from reading the code, not from running it.

Branding (`logo.png`, `banner.png`) was already in the repo from an earlier rollout and is referenced above.
