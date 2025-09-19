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

Environment `fixeval-runner` is used to run the code.

```bash
conda create -n fixeval-runner python=3.6 -y
conda activate fixeval-runner
```

## 2. Run

```bash
./run.sh
```
