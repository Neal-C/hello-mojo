# A Mojo playground for fun & curiosity

## Important
Date : January 14th 2024

At time of writing: 
- Most features are behind login/paywalls and it requires an account to try the language. There's a wait list and such
- Mojo is still early and not yet a Python superset
- Mojo is not Open-Source and cannot be installed (by fear of reverse engineering?)
- Mojo's current license specifically disallows commercial and production use
- The binaries produced by the SDK are not restricted, it's just the SDK itself, the license is saying you can't distribute the mojo compiler for commercial purposes.
- They plan to be open-source slowly over time : "We expect to open-source Mojo progressively over time as it continues to mature. Mojo is still young, so we will continue to incubate it within Modular until more of its internal architecture is fleshed out."
- ⚠ ⚠ Mojo SDK collects telemetry ⚠ ⚠

Source & Relevant links : [ https://github.com/modularml/mojo/issues/25, https://docs.modular.com/mojo/faq.html#open-source, https://www.modular.com/legal/mojo, https://docs.modular.com/mojo/faq.html ]

## https://www.modular.com/max/mojo

"Mojo combines the usability of Python with the performance of C, unlocking unparalleled programmability of AI hardware and extensibility of AI models."

### Notes :
- Python interoperability is their goal and somewhat works as of today
- C/C++ (transparent) interoperability is also a roadmap goal
- Made by Chris Lattner, the founder of LLVM compiler toolchain and Swift programming language
- Very very inspired by Rust (ownership system copied)
- Brings static type checking
- Aims to bring performance to python
- Mojo claims a 35,000x speed-up over Python
- Language design and philosophy explicitly thought for AI and ML. With a mission to unify AI software 
- Mojo combines the usability of Python with the systems programming features it’s missing
- It hopes to fully support modern chip architectures and leverage hardware specific to AI/ML training (GPUs and other accelerators) and direct access to accelerated hardware. 
- Wants and claims faster matrix multiplication
- Mojo supports both just-in-time (JIT) and ahead-of-time (AOT) compilation. In either a REPL environment or Jupyter notebook, Mojo is JIT’d. However, for AI deployment, it’s important that Mojo also supports AOT compilation instead of having to JIT compile everything. You can compile your Mojo programs using the mojo CLI.
- Nowadays, the standard technology for specialized machine learning accelerators is MLIR. MLIR is a relatively new open-source compiler infrastructure started at Google (whose leads moved to Modular)
-  Mojo is the first major language designed expressly for MLIR



### Requirements:

A mojo auth key. 

Get yours here:https://developer.modular.com/signup
Also you have the  web playground here: https://developer.modular.com/login

And Docker

### Commands

clone

```shell
git clone git@github.com:Neal-C/hello-mojo.git
cd hello-mojo
```

Once obtained, replace AUTH_KEY=DEFAULT by yours in the Dockerfile.
if you don't want to mess the Dockerfile or plan on sharing it, you can pass your AUTH_KEY as a build argument

```shell
docker build --no-cache --build-arg AUTH_KEY=REPLACE_ME! -t neal-c:mojo 
```

Run the image with our own mojo files

```shell
docker run -it -v $PWD:/workspace --network=host --name Neal-C_mojo neal-c:mojo
```

You will have Jupyter Lab Client at http://localhost:8888/lab connected to the Jupyter Lab server running inside Docker container

You should have folder "workspace" containing your mojo source code.
You can add jupyter notebooks and interact with them

If any of the commands went wrong, or are deprecated (today January 14th 2024).
I trust that you know how to reach me to report it



```shell
```