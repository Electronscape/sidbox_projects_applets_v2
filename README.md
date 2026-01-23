# Applet Version 2

Applet Version 2 is the baseline application format for running software on the newer **SIDBOX OS**.

With the introduction of a full windowing desktop environment, applications are no longer assumed to be single, fixed binaries. Applets must now support relocation in memory and are designed with **multiple concurrent launches** in mind.

This version formalises how applications are loaded, how they access the system API, and how they coexist safely within the OS.

---

## Key Changes

### Memory Relocation

Applications are now relocated at load time rather than running from a fixed address.  
This allows:

- Multiple instances of the same app to run simultaneously
- Safer memory isolation
- Future support for unloading and reloading applets dynamically

---

## API Access Model

API access has been streamlined and unified.

The SIDBOX API is exposed through a structured root object, allowing both explicit and convenience-style access depending on context.

### Explicit API Access

```c
API->gui->console->printf(0, "hello world\n");
