---
layout: default

hero:
  eyebrow: Formal-System Assistant Toolkit
  title: Verify. Analyse. <br> Process.
  tagline: >-
    Hypatia is an open-source ecosystem for verifying, analysing, and processing
    user-defined formal systems crafted in the Hypatia language and its evolving
    dialects.
  buttons:
buttons:
  - label: Get Hypatia
    url: "#implementations"
    class: button-primary
  - label: Explore Workspace
    workspace: true
    path: /
    kind: tree
    class: button-ghost

badges:
  - alt: Release
    workspace: true
    path: /releases
    kind: root
    img: https://img.shields.io/github/v/release/hypatiafsa/workspace?label=Release
  - alt: Illinois Licence
    url: https://opensource.org/license/uoi-ncsa-php
    img: https://img.shields.io/badge/License-Illinois-blue.svg
  - alt: Hackage
    component: hypatia-hs
    require_included: true
    service: hackage
    img: https://img.shields.io/hackage/v/hypatia.svg?label=Hackage
  - alt: Stackage
    component: hypatia-hs
    require_included: true
    service: stackage
    img: https://www.stackage.org/package/hypatia/badge/lts?label=Stackage

about:
  label: About
  title: A language and toolkit for explicit formal reasoning
  items:
    - title: The Language
      text: >-
        The Hypatia language is a foundation-agnostic host language for defining
        and studying formal systems.
        It is organised as a stratified tower of dialects, from the minimal core
        Sunya upward through increasingly ergonomic constructs, whose meaning is
        defined by translation to lower layers.
        At the level of the formal systems it encodes, Hypatia, like Metamath,
        treats statements as sequences of symbols without imposing a fixed
        object-level syntax or built-in semantic interpretation.
        Like Mizar, it favours an intelligible self-explanatory syntax readable
        by humans and tools alike.
    - title: The Name
      text: >-
        Hypatia is named after
        [Hypatia of Alexandria](https://en.wikipedia.org/wiki/Hypatia)
        (c.350/370–415 AD), mathematician, astronomer, and head of the
        Neoplatonic school.
        The components of the suite bear equally classical names: the validator
        Aristarchus, after [Aristarchus of
        Samothrace](https://en.wikipedia.org/wiki/Aristarchus_of_Samothrace)
        (c. 220–143 BC), grammarian and head librarian of the Library of
        Alexandria; the analyser Anaxagoras, after [Anaxagoras of
        Clazomenae](https://en.wikipedia.org/wiki/Anaxagoras) (c. 500–428 BC),
        philosopher of mind and matter; the processor Metis, after the [Titaness
        of wisdom in Greek
        mythology](https://en.wikipedia.org/wiki/Metis_(mythology)); and the
        language server Pythia, after the [high priestess of the temple of
        Apollo at Delphi](https://en.wikipedia.org/wiki/Pythia).
    - title: The toolkit
      text: >-
        All Hypatia implementations realise the same command-line suite for
        checking, analysing, transforming, and certifying formal artefacts.
        The architecture is designed around a small verifier kernel and keeps
        richer processing facilities outside the core verification boundary.
    - title: The ecosystem
      text: >-
        The Hypatia ecosystem separates the normative language from its
        implementations, documentation, libraries, and companion tools.
        The workspace joins these repositories through curated snapshots
        recording the state and exact commit of each included component.

features:
  label: Features
  title: What Hypatia is designed to support
  items:
    - title: Mechanised Verification
      text: >-
        Check that every proof step follows from the inference rules declared by
        the formal-system fragment and is valid under the active Hypatia
        dialect, keeping the acceptance path explicit.
    - title: Dialect Tower
      text: >-
        Work at different levels of abstraction while keeping explicit
        semantics-preserving translation paths from richer dialects towards the
        minimal Sunya core.
    - title: Theory Neutrality
      text: >-
        Encode formal systems without committing the host language to a built-in
        logic, set theory, type theory, or collection of ambient axioms.
    - title: Proof Certification
      badge: planned
      text: >-
        Generate explicit correctness certificates witnessing successful
        verification, supporting trusted verification pipelines and independent
        audit trails.
    - title: Transformations
      badge: planned
      text: >-
        Normalise and translate documents from and to other frameworks including
        Metamath, Mizar, Isabelle, and Lean, enabling interoperability across
        formal ecosystems.
    - title: Language Server
      badge: planned
      text: >-
        Provide IDE integration via the Language Server Protocol, bringing
        real-time diagnostics, navigation, and tooling support to your editor of
        choice.

dialects:
  label: Dialects
  title: A tower of formal languages
  items:
    - text: >-
        The dialect tower is a stratified hierarchy in which each higher layer
        is required to admit a semantics-preserving translation towards the
        layers below it, so that richer notation can be reduced to progressively
        simpler verification targets.
        Sunya forms the minimal core at the base of the tower, and its semantics
        is defined within Sunya itself.
    - text: >-
        Sunya, Sifr, and Zero, the three base dialects currently defined by the
        language, take their names from historical words for 'zero' in Sanskrit,
        Arabic, and Latin, respectively, echoing the progression from the
        minimal core towards increasingly ergonomic notation.
  blocks:
    - name: Zero
      component: hypatia-language
      path: /doc/hypatia.md#zeros-constructs
      kind: blob
      tag: experimental
      class: tag-experimental
      text: >-
        Ergonomic dialect with richer sequencing and higher-level proof
        structuring constructs.
        Under active design; not yet stable.
    - name: Sifr
      component: hypatia-language
      path: /doc/hypatia.md#sifrs-constructs
      kind: blob
      tag: syntactic sugar
      class: tag-sugar
      text: >-
        Purely syntactic layer over Sunya with no additional expressive power.
        Every Sifr construct desugars to Sunya deterministically.
    - name: Sunya
      component: hypatia-language
      path: /doc/hypatia.md#sunyas-constructs
      kind: blob
      tag: stable core
      class: tag-stable
      text: >-
        The stable minimal foundation of the tower.
        Explicit and verbose by design; easy to verify by both automated tools
        and direct human inspection.

implementations:
  label: Implementations
  title: Multiple implementations, one toolkit
  intro: >-
    The Hypatia implementations are alternative realisations of the same
    assistant toolkit. They share the same language-facing architecture and
    intended suite of capabilities, while differing in implementation language,
    internal design, and current maturity. The workspace records which
    implementations belong to each curated snapshot.
  items:
    hypatia-hs:
      text: >-
        The Haskell implementation provides the command-line application and
        reusable library components for the Hypatia toolkit.
      links:
        - label: Repository
          component: hypatia-hs
        - label: Architecture
          component: hypatia-hs
          path: /doc/architecture.md
          kind: blob
        - label: Hackage
          component: hypatia-hs
          service: hackage
        - label: Stackage
          component: hypatia-hs
          service: stackage
    hypatia-rs:
      text: >-
        The Rust implementation provides an independent realisation of the same
        Hypatia language-facing architecture and toolkit.
      links:
        - label: Repository
          component: hypatia-rs
        - label: Crates.io
          component: hypatia-rs
          service: crates
    hypatia-lean:
      text: >-
        The Lean implementation provides a proof-assistant-oriented realisation
        of the same Hypatia language-facing architecture and toolkit.
      links:
        - label: Repository
          component: hypatia-lean
        - label: Reservoir
          component: hypatia-lean
          service: reservoir

libraries:
  label: Libraries
  title: Internal libraries supporting the implementations
  intro: >-
    The ecosystem also contains independently versioned libraries developed for
    use by Hypatia implementations. Their availability is tracked by the same
    workspace snapshot.
  items:
    lib-apl-hs:
      text: >-
        The Haskell implementation of APL, an Abstract Programming Library.
      links:
        - label: Repository
          component: lib-apl-hs
    lib-apl-rs:
      text: >-
        The Rust implementation of APL, an Abstract Programming Library.
      links:
        - label: Repository
          component: lib-apl-rs
    lib-apl-lean:
      text: >-
        The Lean implementation of APL, an Abstract Programming Library.
      links:
        - label: Repository
          component: lib-apl-lean

companions:
  label: Companions
  title: Tools around the Hypatia ecosystem
  intro: >-
    Companion projects provide integrations and supporting tools without being
    part of the Hypatia program itself.
  items:
    companions-vscode:
      text: >-
        Hypatia-VSCode provides Visual Studio Code support for Hypatia files,
        including syntax highlighting, bundled colour themes, and integration
        points for language-server functionality.
      links:
        - label: Repository
          component: companions-vscode
        - label: Visual Studio Marketplace
          component: companions-vscode
          service: marketplace
        - label: Open VSX
          component: companions-vscode
          service: openvsx

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
        - "$ git clone git@github.com:hypatiafsa/hypatia-hs.git"
        - "$ cd hypatia-hs && ./install.sh && hypatia --version"
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
    - title: Language Specification
      sub: Grammar and Constructs
      component: hypatia-language
      path: /doc/hypatia.md
      kind: blob
    - title: Dialect Formalisations
      sub: Sunya, Sifr, and Zero
      component: hypatia-language
      path: /hyp
      kind: tree
    - title: Document Examples
      sub: MIU, SKI, and many more
      component: hypatia-language
      path: /exm
      kind: tree
    - title: Language Versioning
      sub: Epoch-Based Versioning
      component: hypatia-language
      path: /versioning.md
      kind: blob


    - title: Hypatia Book
      sub: User-Level Documentation
      component: hypatia-book
    - title: Workspace
      sub: Curated Ecosystem Snapshot
      workspace: true
      path: /
      kind: tree
    - title: GitHub Organisation
      sub: Source, Issues, and Discussions
      url: https://github.com/hypatiafsa
---
