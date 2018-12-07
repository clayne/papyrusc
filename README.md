# papyrusc
Papyrus Compiler, designed with the intent to embed into OpenCK.

## Working on this
The front-end is generated via `flex`. This can be obtained via [https://github.com/westes/flex](https://github.com/westes/flex). To generate the C code after updating the definitions, run `flex ./papyrus.l` (some options can be ran depending on the goal.)

## Goals

The goal is to be a fully embeddable compiler, extending papyrus to a real working compatible language.

## Papyrus Documentation
Sadly there is no full language spec (meaning amounts of the language have to reverse engineered via the existing compiler as of right now) but the best place to go is Bethesda's [Language Reference](https://www.creationkit.com/index.php?title=Papyrus_Language_Reference)
