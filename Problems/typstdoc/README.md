# Erdős Unofficial Offline Edition in Typst

Collect all problems from [Erdős](https://erdos.sdslabs.co). Current version is **v2024.1**, where a total of 306 problems (from #1 to #356, the numbers are **NOT** sequential!) are included.

To compile the document, you need to install [`typst`](https://github.com/typst/typst) first, then run

```bash
typst compile --font-path fonts erdos_offline.typ erdos_offline.pdf
```

to get a dynamically updated PDF file `erdos_offline.pdf`.

The final [PDF file](./erdos_offline_attachment.pdf) was post-processed by a separate tool to add the attachments in fold `attachments`, as typst does not yet support attachments in PDF.
