# papyrusc
Papyrus Compiler, designed with the intent to embed into OpenCK.

## Working on this
The front-end is generated via `flex`. This can be obtained via (https://github.com/westes/flex)[https://github.com/westes/flex]. To generate the C code after updating the definitions, run `flex ./papyrus.l` (some options can be ran depending on the goal.)

## Goals

The goal is to be a fully embeddable compiler, extending papyrus to a real working compatible language.
