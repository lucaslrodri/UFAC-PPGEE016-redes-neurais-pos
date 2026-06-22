#!/usr/bin/env python3
"""
Extrai as figuras (fotos/imagens raster) do PDF de slides do Cusco
('introducao as redes neurais.pdf') para a pasta assets/cusco/.

Usa o utilitario `pdfimages` (poppler) para extrair as imagens embutidas e
descarta os artefatos minusculos (overlays vetoriais de 2x2 px) mantendo
apenas imagens com lado minimo >= MIN_SIZE px. Os nomes incluem o numero
da pagina do PDF (root-PPP-NNN.png) para facilitar a identificacao.

Uso:
    python3 scripts/extract_cusco_figures.py [caminho_do_pdf]
"""
import os
import sys
import shutil
import subprocess

MIN_SIZE = 120  # px: lado minimo para considerar uma imagem "real"

PDF_DEFAULT = (
    "/Users/lucaslrodri/Insync/lucas.rodrigues@ufac.br/Google Drive/Ensino/"
    "Redes Neurais/Material/Cusco/introducao as redes neurais.pdf"
)
HERE = os.path.dirname(os.path.abspath(__file__))
OUT_DIR = os.path.normpath(os.path.join(HERE, "..", "assets", "cusco"))


def sips_dims(path):
    """Retorna (width, height) de uma imagem via `sips` (macOS)."""
    out = subprocess.check_output(
        ["sips", "-g", "pixelWidth", "-g", "pixelHeight", path],
        text=True,
    )
    w = h = 0
    for line in out.splitlines():
        line = line.strip()
        if line.startswith("pixelWidth:"):
            w = int(line.split(":")[1])
        elif line.startswith("pixelHeight:"):
            h = int(line.split(":")[1])
    return w, h


def main():
    pdf = sys.argv[1] if len(sys.argv) > 1 else PDF_DEFAULT
    if not os.path.isfile(pdf):
        sys.exit(f"PDF nao encontrado: {pdf}")

    tmp = os.path.join(OUT_DIR, "_raw")
    if os.path.isdir(tmp):
        shutil.rmtree(tmp)
    os.makedirs(tmp, exist_ok=True)

    # Extrai todas as imagens como PNG, com numero da pagina no nome.
    subprocess.run(
        ["pdfimages", "-png", "-p", pdf, os.path.join(tmp, "cusco")],
        check=True,
    )

    kept = 0
    for name in sorted(os.listdir(tmp)):
        if not name.lower().endswith(".png"):
            continue
        src = os.path.join(tmp, name)
        try:
            w, h = sips_dims(src)
        except Exception:
            continue
        if min(w, h) < MIN_SIZE:
            os.remove(src)
            continue
        dst = os.path.join(OUT_DIR, name)
        shutil.move(src, dst)
        kept += 1
        print(f"  mantida {name:28s} {w}x{h}")

    shutil.rmtree(tmp, ignore_errors=True)
    print(f"\n{kept} figuras salvas em {OUT_DIR}")


if __name__ == "__main__":
    main()
