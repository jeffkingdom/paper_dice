# 🎲 Paper Dice

**Paper Dice** is a Ruby-powered tool that generates random dice rolls and lays them out in an easy-to-fold **8-page zine format**. This is perfect for game masters, writers, or anyone who enjoys using physical dice results in a printed, pocket-sized format.

You can print the result on a single sheet of paper, fold it into a small booklet, and have random dice rolls available wherever you go — no batteries or Wi-Fi required.

---

## 🖨 Sample PDF

If you'd rather not run the generator yourself, we've included a pre-generated sample file:

👉 [**Download `sample.pdf`**](./sample.pdf) – contains **100 pages** of dice roll zines ready to print.

---

## 🗂 Features

- Generates rolls for common RPG dice (d4, d6, d8, d10, d12, d20, d100, etc.)
- Outputs pages in **zine-ready layout**
- Scriptable via `make`
- Uses standard Ruby tooling and LaTeX
- Includes full pipeline from dice to print-ready PDF

---

## 🧻 How to Fold the Zine

This project uses the classic **8-page one-sheet zine** fold.

📖 Follow these step-by-step instructions:

- [YouTube Demo – 8 Page Zine from 1 Sheet](https://www.youtube.com/watch?v=AbFmnaU41KI)

No staples or glue required — just scissors and one fold-and-snip.

---

## 🧻 How to Get a Random Number

When you need a random number, turn the page and find the first number that isn't crossed out.
That's your number. Cross it out so that you don't use it again.

---

## 🛠 Requirements

- Ruby (3.0 or later recommended)
- [LaTeX](https://www.latex-project.org/get/) (with `lualatex` installed)
- GNU Make (if using the included Makefile)

---

## 🚀 Usage

Clone the repo and run:

```bash
make
````

This will generate randomized PDFs in the `output/` directory.

To customize the dice types or number of zines, edit the top of the `Makefile`.

## 📃 License

MIT License. Feel free to print, remix, and share.

---

