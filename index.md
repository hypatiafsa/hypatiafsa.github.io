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

    - label: Get Hypatia
      section: implementations
      class: button-primary

    - label: Explore Workspace
      workspace: true
      path: /
      kind: tree
      class: button-ghost

badges:

  - alt: Illinois Licence
    url: https://opensource.org/license/uoi-ncsa-php
    img: https://img.shields.io/badge/License-Illinois-blue.svg
  - alt: Release
    workspace: true
    path: /releases
    kind: root
    img: https://img.shields.io/github/v/release/hypatiafsa/workspace?label=Release

  - alt: Hackage
    component: hypatia-hs
    service: hackage
    img: https://img.shields.io/hackage/v/hypatia.svg?label=Hackage
  - alt: Stackage LTS
    component: hypatia-hs
    service: stackage-lts
    img: https://www.stackage.org/package/hypatia/badge/lts?label=Stackage+LTS
  - alt: Stackage Nightly
    component: hypatia-hs
    service: stackage-nightly
    img: https://www.stackage.org/package/hypatia/badge/nightly?label=Stackage+Nightly

  - alt: Crates.io
    component: hypatia-rs
    service: crates
    img: https://img.shields.io/crates/v/hypatiafsa?label=Crates.io
  - alt: Docs.rs
    component: hypatia-rs
    service: docsrs
    img: https://img.shields.io/docsrs/hypatiafsa?label=docs.rs
  - alt: MSRV
    component: hypatia-rs
    service: crates
    img: https://img.shields.io/crates/msrv/hypatiafsa?label=MSRV

  - alt: Reservoir
    component: hypatia-lean
    service: reservoir
    img: https://img.shields.io/badge/Reservoir-Hypatia-blue

  - alt: VS Marketplace
    component: companions-vscode
    service: marketplace
    img: https://img.shields.io/badge/VS%20Marketplace-Hypatia-blue
  - alt: Open VSX
    component: companions-vscode
    service: openvsx
    img: https://img.shields.io/open-vsx/v/hypatiafsa/hypatia?label=Open+VSX

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

    - title: The Toolkit
      text: >-
        All Hypatia implementations realise the same command-line suite for
        checking, analysing, transforming, and certifying formal artefacts.
        The architecture centres on a small verifier kernel and keeps richer
        processing facilities outside the core verification boundary.
    - title: The Ecosystem
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
        Work at different levels of abstraction with explicit
        semantics-preserving translations from richer dialects to the Sunya
        core.
        Each layer reduces to a simpler verification target.
    - title: Theory Neutrality
      text: >-
        Encode formal systems without imposing a background logic, set theory,
        type theory, or ambient axioms on the host language.
        Foundational assumptions remain explicit in the encoded system.

    - title: Proof Certification
      badge: planned
      text: >-
        Generate explicit correctness certificates witnessing successful
        verification, supporting trusted verification pipelines and independent
        audit trails.
    - title: Transformations
      badge: planned
      text: >-
        Normalise and translate documents to and from Metamath, Mizar, Isabelle,
        Lean, and other frameworks, enabling interoperability across formal
        ecosystems.
    - title: Language Server
      badge: planned
      text: >-
        Provide IDE integration through the Language Server Protocol, supporting
        real-time diagnostics, navigation, and other language-aware editor
        services.

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
    The Hypatia Formal-System Assistant admits alternative realisations while
    retaining the same language-facing architecture and intended command suite.
    Implementations may differ in language, internal design, and maturity; the
    workspace records which ones belong to each curated snapshot.

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
        - label: Stackage LTS
          component: hypatia-hs
          service: stackage-lts
        - label: Stackage Nightly
          component: hypatia-hs
          service: stackage-nightly

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
        - label: Docs.rs
          component: hypatia-rs
          service: docsrs

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
    use by Hypatia implementations.
    Their availability is tracked by the same workspace snapshot.

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
  title: Companion tools and integrations
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
        - label: VS Marketplace
          component: companions-vscode
          service: marketplace
        - label: Open VSX
          component: companions-vscode
          service: openvsx

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
    - title: Workspace Versioning
      sub: Epoch-Based Versioning
      workspace: true
      path: /versioning.md
      kind: blob

    - title: GitHub Organisation
      sub: Source, Issues, and Discussions
      url: https://github.com/hypatiafsa

---
