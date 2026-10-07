# Changelog

## Unreleased

- Clean governed workers when outer initial process discovery fails, including
  governor initialization and near-timeout snapshots.

- Update MTK to 0.3.4 from pinned public source, including the job registry,
  command-first resource/display flags, and complete public proxy removal.
- Preserve emergency cleanup when process inspection fails and restore terminal settings.
- Preserve outer capture termination status when a signal interrupts inspection.
- Verify installed helpers, configuration overrides, and workload management
  with bounded local Homebrew tests.
