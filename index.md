---
layout: default

hero:
  eyebrow: Formal-System Assistant Toolkit
  title: Verify. Analyse. <br> Process.
  tagline: >-
    Hypatia is an open-source toolkit designed to verify, analyse, and process
    user-defined formal systems crafted in the eponymous language and its
    evolving dialects.
  buttons:
    - label: Install
      path: '#installation'
      kind: blob
      class: button-primary
    - label: Documentation
      path: '#documentation'
      kind: blob
      class: button-ghost
    - label: GitHub
      path: /
      kind: tree
      class: button-ghost

badges:
  - alt: Release
    path: /releases
    kind: root
    img: https://img.shields.io/github/v/release/hypatiafsa/hypatia?label=Release
  - alt: Hackage
    key: hackage
    img: https://img.shields.io/hackage/v/hypatia.svg?label=Hackage
  - alt: Stackage LTS
    key: stackage
    img: https://www.stackage.org/package/hypatia/badge/lts?label=Stackage+LTS
  - alt: Illinois Licence
    url: https://opensource.org/license/uoi-ncsa-php
    img: https://img.shields.io/badge/License-Illinois-blue.svg

about:
  label: About
  title: A foundation-agnostic host language for formal systems
  items:
    - title: The language
      text: >-
        The Hypatia language is a foundation-agnostic host language for defining
        and studying formal systems. It introduces a stratified tower of
        dialects, starting from the minimal core Sunya and extending upward with
        increasingly ergonomic constructs. The semantics of each dialect is
        defined in terms of those below it, enabling layered abstraction and
        trust. Like Metamath, Hypatia treats all statements as sequences of
        symbols, without imposing built-in syntactic structure or semantic
        interpretation. Like Mizar, it favours an intelligible, self-explaining
        syntax designed to be readable by humans and tools.
    - title: Named after
      text: >-
        [Hypatia of Alexandria](https://en.wikipedia.org/wiki/Hypatia)
        (c.350/370–415 AD), mathematician, astronomer, and head of the
        Neoplatonic school. The internal toolkits bear equally classical names:
        the validator Aristarchus, after
        [Aristarchus of
        Samothrace](https://en.wikipedia.org/wiki/Aristarchus_of_Samothrace)
        (c. 220–143 BC), grammarian and head librarian of the Library of
        Alexandria; the analyser Anaxagoras, after
        [Anaxagoras of Clazomenae](https://en.wikipedia.org/wiki/Anaxagoras) (c.
        500–428 BC), philosopher of mind and matter; the processor Metis, after
        the [Titaness of wisdom in Greek
        mythology](https://en.wikipedia.org/wiki/Metis_(mythology)); and the
        language server Pythia, after the [high priestess of the temple of
        Apollo at Delphi](https://en.wikipedia.org/wiki/Pythia).
    - title: The toolkit
      text: >-
        The Hypatia program is a standalone command-line suite built around a
        minimal verifier kernel, which checks the correctness of derivations
        against the user-supplied inference rules. This kernel is intentionally
        kept small, auditable, and does not include tactics or automated
        strategies, i.e., it is a verifier, not a full proof assistant.
    - title: The library
      text: >-
        Hypatia is also intended to serve, in a future release, as a Haskell
        library exposing an API for programmatic access to its components,
        allowing clients to generate documents, construct proof objects, and
        embed Hypatia as a verifier back-end in broader toolchains.

features:
  label: Features
  title: What you can do with Hypatia
  items:
    - title: Mechanised Verification
      text: >-
        Check that every proof step follows from the declared inference rules of
        the chosen dialect, with no hidden automation, oracles, or trusted black
        boxes.
    - title: Dialect Tower
      text: >-
        Write proofs at the level of abstraction you prefer: the minimal and
        explicit Sunya, the sugar-coated Sifr, or the ergonomic surface language
        Zero.
    - title: Theory Neutrality
      text: >-
        Hypatia imposes no logical framework or built-in axioms. It allows to
        encode classical logic, intuitionistic logic, type theory, or entirely
        custom inference systems.
    - title: Proof Certification
      badge: planned
      text: >-
        Generate syntactic or semantic certificates witnessing successful
        validation, supporting trusted verification pipelines and independent
        audit trails.
    - title: Transformations
      badge: beta
      text: >-
        Translates Hypatia documents from and to other frameworks including
        Metamath, Mizar, Isabelle, and Lean, enabling interoperability across
        formal ecosystems.
    - title: Language Server
      badge: beta
      text: >-
        Pythia provides IDE integration via the Language Server Protocol,
        bringing real-time diagnostics, navigation, and tooling support to your
        editor of choice.

dialects:
  label: Dialects
  title: A tower of formal languages
  items:
    - text: >-
        The dialect tower is a stratified hierarchy in which each layer compiles
        deterministically to the one below it, so the Sunya verifier remains the
        single trusted root of the entire software system.
        Sunya's own semantics is formally defined within the dialect itself,
        enabling bootstrapping and self-certification.
    - text: >-
        Sunya, Sifr, and Zero, the dialects currently supported by the toolkit,
        take their names from the word for 'zero' in Sanskrit, Arabic, and
        Latin, respectively; a nod to the foundational role of the minimal
        object in formal reasoning.
  blocks:
    - name: Zero
      path: /doc/hypatia.md#zeros-constructs
      kind: blob
      tag: experimental
      class: tag-experimental
      text: >-
        Ergonomic surface language with richer sequencing and higher-level proof
        structuring constructs. Under active design; not yet stable.
    - name: Sifr
      path: /doc/hypatia.md#sifrs-constructs
      kind: blob
      tag: syntactic sugar
      class: tag-sugar
      text: >-
        Shorthand notations layered over Sunya with no additional expressive
        power. Every Sifr construct desugars to Sunya deterministically.
    - name: Sunya
      path: /doc/hypatia.md#sunyas-constructs
      kind: blob
      tag: stable core
      class: tag-stable
      text: >-
        The minimal self-defining foundation of the tower. Explicit and
        verbose by design; easy to verify by both automated tools and direct
        human inspection.

install:
  label: Getting started
  title: Install & run Hypatia
  intro: >-
    Hypatia requires a working [Haskell](https://www.haskell.org/) environment
    ([GHC](https://www.haskell.org/ghc/) >= 9.6.3).
    We highly recommend [GHCup](https://www.haskell.org/ghcup/) to manage your
    Haskell installation.
  blocks:
    - title: Via Cabal
      commands:
        - "$ cabal install hypatia"
        - "$ hypatia --version"
    - title: Via Stack
      commands:
        - "$ stack install hypatia"
        - "$ hypatia --version"
    - title: From source
      commands:
        - "$ git clone git@github.com:hypatiafsa/hypatia.git"
        - "$ cd hypatia && ./install.sh && hypatia --version"
    - title: Validate a document
      commands:
        - "$ hypatia validator -dSifr --certify doc.hypatia"

editor:
  label: Editor Support
  title: Seamless integration for VS Code
  text: >-
    Hypatia-VSCode provides editor support for the Hypatia language in Visual
    Studio Code, making Hypatia documents pleasant to read and write through
    language-aware behaviour, syntax highlighting, and sensible defaults that
    integrate cleanly with your setup.
  features:
    - Bundled light and dark colour themes
    - Syntax highlighting for *.hyp and *.hypatia files
    - Automatic token-colour overlay while a Hypatia file is active
  block:
    title: Quick Install
    text: >-
      Launch **VS Code**, bring up the **Command Bar** via <box>Ctrl+P</box>,
      paste the following command, and press <box>Enter</box>.<br/><br/>
      <box>ext install hypatiafsa.hypatia</box>

resources:
  label: Resources
  title: Documentation and Community
  items:
    - title: Architecture
      sub: Haskell Software Design
      path: /doc/architecture.md
      kind: blob
    - title: Language
      sub: Grammar and Constructs
      path: /doc/hypatia.md
      kind: blob
    - title: Dialect Formalisations
      sub: Sunya, Sifr, and Zero
      path: /hyp
      kind: tree
    - title: Document Examples
      sub: "MIU, SKI, and many more"
      path: /exm
      kind: tree
    - title: GitHub Organisation
      sub: Source, Issues, and Discussions
      url: https://github.com/hypatiafsa
    - title: Versioning Policy
      sub: Epoch-Based Versioning
      path: '#versioning'
      kind: blob
    - title: Installation Guide
      sub: Full Setup Instructions
      path: '#installation'
      kind: blob
    - title: Usage Guide
      sub: Command-Line Reference
      path: '#usage'
      kind: blob
    - title: Hackage
      sub: Latest Release on the Haskell Package Repository
      key: hackage
    - title: Stackage
      sub: Release on the Stable Set of Haskell Package Repository
      key: stackage
    - title: Visual Studio Marketplace
      sub: VSCode Extension on the Visual Studio Marketplace
      key: vscode_marketplace
    - title: Open VSX Registry
      sub: VSCode Extension on the Open VSX Registry
      key: vscode_openvsx
---
