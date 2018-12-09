# papyrusc
Papyrus Compiler, designed with the intent to embed into OpenCK.

## Working on this
The front-end is generated via `flex`. This can be obtained via [https://github.com/westes/flex](https://github.com/westes/flex). To generate the C code after updating the definitions, run `flex ./papyrus.l` (some options can be ran depending on the goal.)

## Goals

The goal is to be a fully embeddable compiler, extending papyrus to a real working compatible language.

## Papyrus Documentation
Sadly there is no full language spec (meaning amounts of the language have to reverse engineered via the existing compiler as of right now) but the best place to go is Bethesda's [Language Reference](https://www.creationkit.com/index.php?title=Papyrus_Language_Reference) which is not a full spec but does contain decent documentation on syntax.

This compiler will target the output Papyrus Executable (.pex) file as well as possibly indepedent formats on the future. To see information on the .pex file format, see [UESP's Compiled File Reference](https://en.uesp.net/wiki/Tes5Mod:Compiled_Script_File_Format).
