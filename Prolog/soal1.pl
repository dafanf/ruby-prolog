tax(Income, Tax) :-
    Income =< 50000000, Tax is (0.05 * Income).
tax(Income, Tax) :-
    Income =< 250000000,
    ProgressiveTax is (0.05 * 50000000),
    Tax is (0.15 * (Income-50000000) + ProgressiveTax).
tax(Income, Tax) :-
    Income =< 500000000,
    ProgressiveTax is ((0.05 * 50000000) + (0.15 * 200000000)),
    Tax is (0.25 * (Income-250000000) + ProgressiveTax ).
tax(Income, Tax) :-
    Income > 500000000,
    ProgressiveTax is ((0.05 * 50000000) + (0.15 * 200000000) + (0.25 * 250000000)),
    Tax is (0.30 * (Income-500000000) + ProgressiveTax).