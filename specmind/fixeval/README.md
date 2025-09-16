# SpecMind run on FixEval

## 1. Setup

```bash
conda create -n fixeval python=3.12 -y
conda activate fixeval
git clone https://github.com/FixEval/FixEval_official.git
cd FixEval_official
```

then install the dependencies as described in FixEval_official/README.md, into environment `fixeval`.
Then install additional dependencies into environment `fixeval` by running `./install.sh`.

Environment `fixeval-run` is used to run the code.

```bash
conda create -n fixeval-run python=3.12 -y
conda activate fixeval-run
```

## 2. Run

```bash
./run.sh
```
