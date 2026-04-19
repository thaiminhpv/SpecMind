# SpecMind: Cognitively Inspired, Interactive Multi-Turn Framework for Postcondition Inference

This repository contains the replication package for the paper.

---

## Abstract

Specifications are vital for ensuring program correctness, yet writing them manually remains challenging and time-intensive. Recent large language model (LLM)-based methods have shown successes in generating specifications such as postconditions, but existing single-pass prompting often yields inaccurate results. In this paper, we present SpecMind, a novel framework for postcondition generation that treats LLMs as interactive and exploratory reasoners rather than one-shot generators. SpecMind employs feedback-driven multi-turn prompting approaches, enabling the model to iteratively refine candidate postconditions by incorporating implicit and explicit correctness feedback, while autonomously deciding when to stop. This process fosters deeper code comprehension and improves alignment with true program behavior via exploratory attempts. Our empirical evaluation shows that SpecMind significantly outperforms state-of-the-art approaches in both the accuracy and completeness of generated postconditions, as well as in automated bug detection.


## Project Structure

```
.
├── experiments
│   ├── README.md
├── README.md
└── specmind
    ├── evalplus
    │   ├── README.md
    ├── fixeval
    │   ├── README.md
```

## How to run SpecMind

### 1. Run on EvalPlus

Follow the setup instructions in `specmind/evalplus/README.md` and `specmind/fixeval/README.md`

```bash
conda create -n specmind-evalplus python=3.12 -y
conda activate specmind-evalplus
```

Then run the following scripts to run the experiments:

```bash
bash ./experiments/greedy.sh
bash ./experiments/exploratory.sh
bash ./experiments/single-pass.sh
```

### 2. Bug Detection on FixEval

See [`specmind/fixeval/README.md`](/specmind/fixeval/README.md) for the setup instructions.

Then run the following script to run the experiments:

```bash
bash ./specmind/fixeval/bug_detection_fixeval.sh
```
