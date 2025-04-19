# 🧾 Krystian Kaczmarek — CV (LaTeX)

To repozytorium zawiera pliki źródłowe CV stworzonego w LaTeX z wykorzystaniem `xelatex`.

---

## 📥 Jak używać

1. **Sklonuj repozytorium:**

   ```bash
   git clone https://github.com/6337r007/LaTeX.git
   cd CV_-_LaTeX
   ```

2. **Zainstaluj wymagane pakiety LaTeX:**

   > ⚠️ Wymagany system oparty na Debianie/Ubuntu

   ```bash
   chmod +x install_tex.sh
   sudo ./install_tex.sh
   ```

3. **Ustaw zmienne językowe i nazwę firmy:**

   W pliku `cv.tex` znajdują się dwie zmienne, które należy dostosować przed kompilacją:

   ```latex
   \newcommand{\firma}{NAZWA FIRMY}
   \def\doclanguage{en}
   ```

4. **Wygeneruj plik PDF z CV:**

   ```bash
   xelatex -output-directory=build cv.tex
   ```

5. **Znajdź plik PDF:**

   ```bash
   ./build/cv.pdf
   ```

---

## 📦 Wymagane pakiety

Instalowane automatycznie przez `install_tex.sh`:

- `texlive-latex-base`
- `texlive-xetex`
- `texlive-latex-extra`
- `texlive-fonts-recommended`
- `texlive-pictures`
- `texlive-lang-polish`

---

## 📁 Struktura katalogów

```
.
├── cv.tex                     # Główny plik LaTeX
├── *.tex                      # Sekcje dokumentu
├── images/                    # Ikony i zdjęcie profilowe
├── build/                     # Folder na wygenerowane pliki
├── install_tex.sh             # Skrypt instalacyjny
├── README.md
└── .gitignore
```

---

## 👤 Autor

**Krystian Kaczmarek**  
🔗 [LinkedIn](https://www.linkedin.com/in/krystiankaczmarek)
