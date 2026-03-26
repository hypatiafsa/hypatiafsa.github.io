---
layout: default

hero:
  eyebrow: Formal-System Assistant Toolkit
  title: Verify. Analyse. <br> Process.
  tagline: >-
    Hypatia is an open-source formal language and toolkit designed to support
    the verification, analysis, and processing of user-defined formal systems
    crafted in the Hypatia language and its evolving dialects.
  buttons:
    - label: Install
      kind: blob
      path: '#installation'
      class: btn-primary
    - label: Documentation
      kind: blob
      path: '#documentation'
      class: btn-ghost
    - label: GitHub
      kind: tree
      path: /
      class: btn-ghost

badges:
  - alt: Release
    kind: root
    path: /releases
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
        syntax designed to be readable by both humans and tools without
        additional commentary.
    - title: Named after
      text: >-
        Hypatia of Alexandria (c.350/370–415 AD), mathematician, astronomer, and
        head of the Neoplatonic school. The internal toolkits bear equally
        classical names: the validator Aristarchus, after Aristarchus of
        Samothrace (c. 220–143 BC), grammarian and head librarian of the Library
        of Alexandria; the analyser Anaxagoras, after Anaxagoras of Clazomenae
        (c. 500–428 BC), philosopher of mind and matter; the processor Metis,
        after the Titaness of wisdom in Greek mythology; and the language server
        Pythia, after the high priestess of the temple of Apollo at Delphi.
    - title: The toolkit
      text: >-
        The Hypatia program is a standalone command-line suite built around a
        minimal verifier kernel, which checks the correctness of derivations
        against the user-supplied inference rules. This kernel is intentionally
        kept small and auditable, and does not include tactics or automated
        strategies: it is a verifier, not a full proof assistant.
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
        Hypatia imposes no logical framework or built-in axioms. It can encode
        classical logic, intuitionistic logic, type theory, or entirely custom
        inference systems.
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
        single trusted root of the entire system.
        Sunya's own semantics is formally defined within Sunya itself, enabling
        bootstrapping and self certification.
    - text: >-
        Sunya, Sifr, and Zero take their names from the word for 'zero' in
        Sanskrit, Arabic, and Latin respectively; a nod to the foundational role
        of the minimal object in formal reasoning.
  blocks:
    - name: Zero
      tag: experimental
      class: tag-experimental
      text: >-
        Ergonomic surface language with richer sequencing and higher-level proof
        structuring constructs. Under active design; not yet stable.
    - name: Sifr
      tag: syntactic sugar
      class: tag-sugar
      text: >-
        Shorthand notations layered over Sunya with no additional expressive
        power. Every Sifr construct desugars to Sunya deterministically.
    - name: Sunya
      tag: stable core
      class: tag-stable
      text: >-
        The minimal self-defining foundation of the tower. Explicit and
        verbose by design. Easy to verify by both automated tools and direct
        human inspection.

install:
  label: Getting started
  title: Install & run Hypatia
  intro: >-
    Hypatia requires a working Haskell environment (GHC ≥ 9.6.3).
    We highly recommend <a href="https://www.haskell.org/ghcup/">GHCup</a> to
    manage your Haskell installation.
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
  title: VS Code extension
  intro: >-
    Hypatia-VSCode provides first-class editor support for the Hypatia language
    in Visual Studio Code, making Hypatia documents pleasant to read and write
    through language-aware behaviour, syntax highlighting, and sensible
    defaults that integrate cleanly with your existing setup.
  features:
    - Syntax highlighting for *.hyp and *.hypatia files
    - Bundled light and dark colour themes
    - Token-colour overlay that leaves your global VS Code theme untouched
    - Automatic token colours while a Hypatia file is active, restored on switch
    - Optional automatic theme switching (hypatia.style.autotheme)
    - Configurable semantic highlighting per file type



resources:
  label: Resources
  title: Documentation and Community
  items:
    - #icon: "\U0001F4D6"
      title: Language
      sub: Grammar and Constructs
      kind: blob
      path: /doc/hypatia.md
    - #icon: "\U0001F3DB\uFE0F"
      title: Architecture
      sub: Haskell Software Design
      kind: blob
      path: /doc/architecture.md
    - #icon: "\U0001F4DA"
      title: Dialect Formalisations
      sub: Sunya, Sifr, and Zero
      kind: tree
      path: /hyp
    - #icon: "\U0001F4D0"
      title: Document Examples
      sub: "MIU, SKI, and many more"
      kind: tree
      path: /exm
    - #icon: "\U0001F419"
      title: GitHub Organisation
      sub: Source, Issues, and Discussions
      url: https://github.com/hypatiafsa
    - #icon: "\U0001F3F7\uFE0F"
      title: Versioning Policy
      sub: Epoch-Based Versioning
      kind: blob
      path: '#versioning'
    - #icon: "\u2699\uFE0F"
      title: Installation Guide
      sub: Full Setup Instructions
      kind: blob
      path: '#installation'
    - #icon: "\u276F\u2581"
      title: Usage Guide
      sub: Command-Line Reference
      kind: blob
      path: '#usage'
    - #icon: "\U0001F4E6"
      title: Hackage
      sub: Latest Release on the Haskell Package Repository
      key: hackage
    - #icon: "\U0001F4E6"
      title: Stackage
      sub: Release on the Stable Set of Haskell Package Repository
      key: stackage
    - #icon: "\U0001F9E9"
      title: Visual Studio Marketplace
      sub: VSCode Extension on the Visual Studio Marketplace
      key: vscode_marketplace
    - #icon: "\U0001F9E9"
      title: Open VSX Registry
      sub: VSCode Extension on the Open VSX Registry
      key: vscode_openvsx
---
