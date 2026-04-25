# [ACL'26] SpecMind: Cognitively Inspired, Interactive Multi-Turn Framework for Postcondition Inference

This repository contains the replication package for the ACL'26 paper in Main Track.

## Project Structure

```
.
├── README.md
├── evalplus
│   ├── README.md
├── fixeval
│   ├── README.md
```

## How to run SpecMind

### 1. Run on EvalPlus

Follow the setup instructions in [`evalplus/README.md`](/evalplus/README.md).

Then run the following scripts to run the experiments:

```bash
bash ./experiments/greedy.sh
bash ./experiments/exploratory.sh
bash ./experiments/single-pass.sh
```

### 2. Bug Detection on FixEval

See [`fixeval/README.md`](/fixeval/README.md) for the setup instructions.

Then run the following script to run the experiments:

```bash
bash bug_detection_fixeval.sh
```
