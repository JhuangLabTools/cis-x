# Changelog

## Unreleased

### Added

  * core: Add option to use user-specified TAD (topologically associating
    domain) annotations. See `t` option. By default, this still uses hESC
    (Human ES Cell).

  * ref-exp: Add option to handle reference sequence names prefixed with "chr".
    Set `chr-string` to either `TRUE` or `FALSE`.

  * ref-exp: Build normalized t-values for a gene across samples. See
    `precal.tvalue.bin_gt1.txt`.

### Changed

  * core: `cis-X-run` now uses short name arguments instead of unnamed
    arguments. For example, instead of `cis-X run $SAMPLE_ID ...`, run `cis-X
    run -s $SAMPLE_ID ...`.

  * Synced with 2020-02-08 and 2020-03-13 revisions.

## [1.4.0] - 2019-07-10

### Added

  * core: Identify regions with consecutive markers that exhibit ASE.

### Changed

  * core: Tighten scoring method for when known oncogenes should be reevaluated.

  * core: Updated binomial distribution statistical model.

  * seed: `cancer_gene_census.txt` no longer has a version in its filename.

## [1.3.0] - 2019-03-28

### Added

  * core: Known oncogenes in the [COSMIC Cancer Gene Census] are used to
    reevaluate cis-activated candidates.

[COSMIC Cancer Gene Census]: https://cancer.sanger.ac.uk/census

### Changed

  * core: Increased default transcription factor FPKM value to 10 for
    screening.

  * core: The motif for MYB (MYBL1 and MYBL2) are similar and treated as the
    same gene.

  * core: SNV/indel candidates are sorted by FPKM value.

## [1.2.0] - 2019-01-08

### Added

  * core: Added argument to set the FPKM threshold for the nomination of
    a cis-activated candidate.

## [1.1.0] - 2018-12-17

### Added

  * core: Added argument to handle markers in CNV/LOH regions. This can either
    be `keep` or `drop`.

  * core: Added arguments to set the threshold for the minimal coverage in WGS
    and RNA-seq when selecting heterozygous markers.

### Fixed

  * seed: Update download location for `GRCh37-lite.fa.gz`.

## 1.0.0 - 2018-07-23

  * Initial release

[1.4.0]: https://github.com/stjude/cis-x/compare/v1.3.0...v1.4.0
[1.3.0]: https://github.com/stjude/cis-x/compare/v1.2.0...v1.3.0
[1.2.0]: https://github.com/stjude/cis-x/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/stjude/cis-x/compare/v1.0.0...v1.1.0
