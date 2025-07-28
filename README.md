# PL/SQL Calculator Package

Prosty kalkulator w języku PL/SQL obsługujący cztery działania matematyczne oraz testy jednostkowe w `utPLSQL`.

## Zawartość

- `calculator_pkg.sql` — specyfikacja pakietu
- `calculator_pkg_body.sql` — ciało pakietu
- `calculator_pkg_test.sql` — testy jednostkowe (specyfikacja)
- `calculator_pkg_test_body.sql` — testy jednostkowe (ciało)
- `install_calculator.sql`, `install_tests.sql` — skrypty instalacyjne
- `.github/workflows/test.yml` — GitHub Actions CI

## Uruchamianie testów

Testy są automatycznie uruchamiane po każdym pushu do gałęzi `main`.
