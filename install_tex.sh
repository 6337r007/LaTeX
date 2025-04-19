#!/bin/bash

# Skrypt instalacyjny do generowania CV z LaTeX
# Działa na systemach opartych na Debianie (Ubuntu, Mint, itp.)

echo "📦 Instalacja wymaganych pakietów LaTeX..."

# Lista wymaganych pakietów
PACKAGES=(
    texlive-latex-base
    texlive-xetex
    texlive-latex-extra
    texlive-fonts-recommended
    texlive-pictures
    texlive-lang-polish
)

# Sprawdzenie czy użytkownik ma uprawnienia sudo
if [ "$EUID" -ne 0 ]; then
    echo "❗ Proszę uruchom skrypt z uprawnieniami administratora:"
    echo "   sudo ./install_tex.sh"
    exit 1
fi

# Aktualizacja listy pakietów
apt update

# Instalacja
for pkg in "${PACKAGES[@]}"; do
    echo "🔧 Instaluję: $pkg"
    apt install -y "$pkg"
done

echo ""
echo "✅ Wszystkie wymagane pakiety zostały zainstalowane."
echo ""
echo "📂 Aby wygenerować swoje CV w formacie PDF, użyj komendy:"
echo "   xelatex -output-directory=build cv.tex"
echo ""
echo "📁 Plik wynikowy znajdziesz w katalogu: ./build/cv.pdf"

