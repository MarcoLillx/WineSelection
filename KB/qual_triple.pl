:- dynamic(prop/3).
:- dynamic(esempio/2).

:- op(300,xfx, <==).

% Facts
% Raggruppati in base alla propriet�
% usando la rappresentazione individuo-propriet�-valore

% winename
prop(wine_1, wineid, 0).
prop(wine_2, wineid, 1).
prop(wine_3, wineid, 2).
prop(wine_4, wineid, 3).
prop(wine_5, wineid, 4).
prop(wine_6, wineid, 5).
prop(wine_7, wineid, 6).
prop(wine_8, wineid, 7).
prop(wine_9, wineid, 8).
prop(wine_10, wineid, 9).
prop(wine_11, wineid, 10).
prop(wine_12, wineid, 11).
prop(wine_13, wineid, 12).
prop(wine_14, wineid, 13).
prop(wine_15, wineid, 14).
prop(wine_16, wineid, 15).
prop(wine_17, wineid, 16).
prop(wine_18, wineid, 17).
prop(wine_19, wineid, 18).
prop(wine_20, wineid, 19).
prop(wine_21, wineid, 20).
prop(wine_22, wineid, 21).
prop(wine_23, wineid, 22).
prop(wine_24, wineid, 23).
prop(wine_25, wineid, 24).
prop(wine_26, wineid, 25).
prop(wine_27, wineid, 26).
prop(wine_28, wineid, 27).
prop(wine_29, wineid, 28).
prop(wine_30, wineid, 29).
prop(wine_31, wineid, 30).
prop(wine_32, wineid, 31).
prop(wine_33, wineid, 32).
prop(wine_34, wineid, 33).
prop(wine_35, wineid, 34).
prop(wine_36, wineid, 35).
prop(wine_37, wineid, 36).
prop(wine_38, wineid, 37).
prop(wine_39, wineid, 38).
prop(wine_40, wineid, 39).

% Fixed acidity
prop(wine_1, fixed_acidity, 7.0).
prop(wine_2, fixed_acidity, 6.3).
prop(wine_3, fixed_acidity, 8.1).
prop(wine_4, fixed_acidity, 7.2).
prop(wine_5, fixed_acidity, 6.2).
prop(wine_6, fixed_acidity, 8.1).
prop(wine_7, fixed_acidity, 8.1).
prop(wine_8, fixed_acidity, 8.6).
prop(wine_9, fixed_acidity, 7.9).
prop(wine_10, fixed_acidity, 6.6).
prop(wine_11, fixed_acidity, 7.4).
prop(wine_12, fixed_acidity, 7.8).
prop(wine_13, fixed_acidity, 7.8).
prop(wine_14, fixed_acidity, 11.2).
prop(wine_15, fixed_acidity, 7.4).
prop(wine_16, fixed_acidity, 7.9).
prop(wine_17, fixed_acidity, 7.3).
prop(wine_18, fixed_acidity, 7.8).
prop(wine_19, fixed_acidity, 7.5).
prop(wine_20, fixed_acidity, 6.7).
prop(wine_21, fixed_acidity, 6.2).
prop(wine_22, fixed_acidity, 6.8).
prop(wine_23, fixed_acidity, 6.7).
prop(wine_24, fixed_acidity, 5.2).
prop(wine_25, fixed_acidity, 6.8).
prop(wine_26, fixed_acidity, 6.7).
prop(wine_27, fixed_acidity, 7.0).
prop(wine_28, fixed_acidity, 6.1).
prop(wine_29, fixed_acidity, 5.0).
prop(wine_30, fixed_acidity, 6.2).
prop(wine_31, fixed_acidity, 7.9).
prop(wine_32, fixed_acidity, 10.3).
prop(wine_33, fixed_acidity, 5.6).
prop(wine_34, fixed_acidity, 12.6).
prop(wine_35, fixed_acidity, 11.3).
prop(wine_36, fixed_acidity, 9.4).
prop(wine_37, fixed_acidity, 10.7).
prop(wine_38, fixed_acidity, 5.0).
prop(wine_39, fixed_acidity, 7.8).
prop(wine_40, fixed_acidity, 7.4).

% Volatile acidity
prop(wine_1, volatile_acidity, 0.27).
prop(wine_2, volatile_acidity, 0.30).
prop(wine_3, volatile_acidity, 0.28).
prop(wine_4, volatile_acidity, 0.23).
prop(wine_5, volatile_acidity, 0.32).
prop(wine_6, volatile_acidity, 0.22).
prop(wine_7, volatile_acidity, 0.27).
prop(wine_8, volatile_acidity, 0.23).
prop(wine_9, volatile_acidity, 0.18).
prop(wine_10, volatile_acidity, 0.16).
prop(wine_11, volatile_acidity, 0.70).
prop(wine_12, volatile_acidity, 0.88).
prop(wine_13, volatile_acidity, 0.76).
prop(wine_14, volatile_acidity, 0.28).
prop(wine_15, volatile_acidity, 0.66).
prop(wine_16, volatile_acidity, 0.60).
prop(wine_17, volatile_acidity, 0.65).
prop(wine_18, volatile_acidity, 0.58).
prop(wine_19, volatile_acidity, 0.50).
prop(wine_20, volatile_acidity, 0.58).
prop(wine_21, volatile_acidity, 0.66).
prop(wine_22, volatile_acidity, 0.26).
prop(wine_23, volatile_acidity, 0.23).
prop(wine_24, volatile_acidity, 0.44).
prop(wine_25, volatile_acidity, 0.53).
prop(wine_26, volatile_acidity, 0.26).
prop(wine_27, volatile_acidity, 0.24).
prop(wine_28, volatile_acidity, 0.31).
prop(wine_29, volatile_acidity, 0.55).
prop(wine_30, volatile_acidity, 0.450).
prop(wine_31, volatile_acidity, 0.35).
prop(wine_32, volatile_acidity, 0.32).
prop(wine_33, volatile_acidity, 0.85).
prop(wine_34, volatile_acidity, 0.31).
prop(wine_35, volatile_acidity, 0.62).
prop(wine_36, volatile_acidity, 0.30).
prop(wine_37, volatile_acidity, 0.35).
prop(wine_38, volatile_acidity, 0.42).
prop(wine_39, volatile_acidity, 0.57).
prop(wine_40, volatile_acidity, 0.590).

% Citric acid
prop(wine_1, citric_acid, 0.36).
prop(wine_2, citric_acid, 0.34).
prop(wine_3, citric_acid, 0.40).
prop(wine_4, citric_acid, 0.32).
prop(wine_5, citric_acid, 0.16).
prop(wine_6, citric_acid, 0.43).
prop(wine_7, citric_acid, 0.41).
prop(wine_8, citric_acid, 0.40).
prop(wine_9, citric_acid, 0.37).
prop(wine_10, citric_acid, 0.40).
prop(wine_11, citric_acid, 0.0).
prop(wine_12, citric_acid, 0.0).
prop(wine_13, citric_acid, 0.04).
prop(wine_14, citric_acid, 0.56).
prop(wine_15, citric_acid, 0.0).
prop(wine_16, citric_acid, 0.06).
prop(wine_17, citric_acid, 0.0).
prop(wine_18, citric_acid, 0.02).
prop(wine_19, citric_acid, 0.36).
prop(wine_20, citric_acid, 0.08).
prop(wine_21, citric_acid, 0.48).
prop(wine_22, citric_acid, 0.42).
prop(wine_23, citric_acid, 0.31).
prop(wine_24, citric_acid, 0.04).
prop(wine_25, citric_acid, 0.35).
prop(wine_26, citric_acid, 0.39).
prop(wine_27, citric_acid, 0.36).
prop(wine_28, citric_acid, 0.58).
prop(wine_29, citric_acid, 0.14).
prop(wine_30, citric_acid, 0.26).
prop(wine_31, citric_acid, 0.46).
prop(wine_32, citric_acid, 0.45).
prop(wine_33, citric_acid, 0.05).
prop(wine_34, citric_acid, 0.72).
prop(wine_35, citric_acid, 0.67).
prop(wine_36, citric_acid, 0.56).
prop(wine_37, citric_acid, 0.53).
prop(wine_38, citric_acid, 0.24).
prop(wine_39, citric_acid, 0.09).
prop(wine_40, citric_acid, 0.08).

% Residual sugar
prop(wine_1, residual_sugar, 20.70).
prop(wine_2, residual_sugar, 1.60).
prop(wine_3, residual_sugar, 6.90).
prop(wine_4, residual_sugar, 8.50).
prop(wine_5, residual_sugar, 7.00).
prop(wine_6, residual_sugar, 1.50).
prop(wine_7, residual_sugar, 1.45).
prop(wine_8, residual_sugar, 4.20).
prop(wine_9, residual_sugar, 1.20).
prop(wine_10, residual_sugar, 1.50).
prop(wine_11, residual_sugar, 1.90).
prop(wine_12, residual_sugar, 2.60).
prop(wine_13, residual_sugar, 2.30).
prop(wine_14, residual_sugar, 1.90).
prop(wine_15, residual_sugar, 1.80).
prop(wine_16, residual_sugar, 1.60).
prop(wine_17, residual_sugar, 1.20).
prop(wine_18, residual_sugar, 2.00).
prop(wine_19, residual_sugar, 6.10).
prop(wine_20, residual_sugar, 1.80).
prop(wine_21, residual_sugar, 1.2).
prop(wine_22, residual_sugar, 1.7).
prop(wine_23, residual_sugar, 2.1).
prop(wine_24, residual_sugar, 1.4).
prop(wine_25, residual_sugar, 3.8).
prop(wine_26, residual_sugar, 1.1).
prop(wine_27, residual_sugar, 2.8).
prop(wine_28, residual_sugar, 5.0).
prop(wine_29, residual_sugar, 8.3).
prop(wine_30, residual_sugar, 4.4).
prop(wine_31, residual_sugar, 3.6).
prop(wine_32, residual_sugar, 6.4).
prop(wine_33, residual_sugar, 1.4).
prop(wine_34, residual_sugar, 2.2).
prop(wine_35, residual_sugar, 5.2).
prop(wine_36, residual_sugar, 2.8).
prop(wine_37, residual_sugar, 2.6).
prop(wine_38, residual_sugar, 2.0).
prop(wine_39, residual_sugar, 2.3).
prop(wine_40, residual_sugar, 4.4).

% Chlorides
prop(wine_1, chlorides, 0.045).
prop(wine_2, chlorides, 0.049).
prop(wine_3, chlorides, 0.050).
prop(wine_4, chlorides, 0.058).
prop(wine_5, chlorides, 0.045).
prop(wine_6, chlorides, 0.044).
prop(wine_7, chlorides, 0.033).
prop(wine_8, chlorides, 0.035).
prop(wine_9, chlorides, 0.040).
prop(wine_10, chlorides, 0.044).
prop(wine_11, chlorides, 0.076).
prop(wine_12, chlorides, 0.098).
prop(wine_13, chlorides, 0.092).
prop(wine_14, chlorides, 0.075).
prop(wine_15, chlorides, 0.075).
prop(wine_16, chlorides, 0.069).
prop(wine_17, chlorides, 0.065).
prop(wine_18, chlorides, 0.073).
prop(wine_19, chlorides, 0.071).
prop(wine_20, chlorides, 0.097).
prop(wine_21, chlorides, 0.029).
prop(wine_22, chlorides, 0.049).
prop(wine_23, chlorides, 0.046).
prop(wine_24, chlorides, 0.036).
prop(wine_25, chlorides, 0.034).
prop(wine_26, chlorides, 0.040).
prop(wine_27, chlorides, 0.034).
prop(wine_28, chlorides, 0.039).
prop(wine_29, chlorides, 0.032).
prop(wine_30, chlorides, 0.063).
prop(wine_31, chlorides, 0.078).
prop(wine_32, chlorides, 0.073).
prop(wine_33, chlorides, 0.045).
prop(wine_34, chlorides, 0.072).
prop(wine_35, chlorides, 0.086).
prop(wine_36, chlorides, 0.080).
prop(wine_37, chlorides, 0.070).
prop(wine_38, chlorides, 0.060).
prop(wine_39, chlorides, 0.065).
prop(wine_40, chlorides, 0.086).

% Free sulfur dioxide
prop(wine_1, free_sulfur_dioxide, 45.0).
prop(wine_2, free_sulfur_dioxide, 14.0).
prop(wine_3, free_sulfur_dioxide, 30.0).
prop(wine_4, free_sulfur_dioxide, 47.0).
prop(wine_5, free_sulfur_dioxide, 30.0).
prop(wine_6, free_sulfur_dioxide, 28.0).
prop(wine_7, free_sulfur_dioxide, 11.0).
prop(wine_8, free_sulfur_dioxide, 17.0).
prop(wine_9, free_sulfur_dioxide, 16.0).
prop(wine_10, free_sulfur_dioxide, 48.0).
prop(wine_11, free_sulfur_dioxide, 11.0).
prop(wine_12, free_sulfur_dioxide, 25.0).
prop(wine_13, free_sulfur_dioxide, 15.0).
prop(wine_14, free_sulfur_dioxide, 17.0).
prop(wine_15, free_sulfur_dioxide, 13.0).
prop(wine_16, free_sulfur_dioxide, 15.0).
prop(wine_17, free_sulfur_dioxide, 15.0).
prop(wine_18, free_sulfur_dioxide, 9.0).
prop(wine_19, free_sulfur_dioxide, 17.0).
prop(wine_20, free_sulfur_dioxide, 15.0).
prop(wine_21, free_sulfur_dioxide, 29.0).
prop(wine_22, free_sulfur_dioxide, 41.0).
prop(wine_23, free_sulfur_dioxide, 30.0).
prop(wine_24, free_sulfur_dioxide, 43.0).
prop(wine_25, free_sulfur_dioxide, 26.0).
prop(wine_26, free_sulfur_dioxide, 45.0).
prop(wine_27, free_sulfur_dioxide, 22.0).
prop(wine_28, free_sulfur_dioxide, 36.0).
prop(wine_29, free_sulfur_dioxide, 35.0).
prop(wine_30, free_sulfur_dioxide, 63.0).
prop(wine_31, free_sulfur_dioxide, 15.0).
prop(wine_32, free_sulfur_dioxide, 5.0).
prop(wine_33, free_sulfur_dioxide, 12.0).
prop(wine_34, free_sulfur_dioxide, 6.0).
prop(wine_35, free_sulfur_dioxide, 6.0).
prop(wine_36, free_sulfur_dioxide, 6.0).
prop(wine_37, free_sulfur_dioxide, 5.0).
prop(wine_38, free_sulfur_dioxide, 19.0).
prop(wine_39, free_sulfur_dioxide, 34.0).
prop(wine_40, free_sulfur_dioxide, 6.0).

% Total sulfur dioxide
prop(wine_1, total_sulfur_dioxide, 170.0).
prop(wine_2, total_sulfur_dioxide, 132.0).
prop(wine_3, total_sulfur_dioxide, 97.0).
prop(wine_4, total_sulfur_dioxide, 186.0).
prop(wine_5, total_sulfur_dioxide, 136.0).
prop(wine_6, total_sulfur_dioxide, 129.0).
prop(wine_7, total_sulfur_dioxide, 63.0).
prop(wine_8, total_sulfur_dioxide, 109.0).
prop(wine_9, total_sulfur_dioxide, 75.0).
prop(wine_10, total_sulfur_dioxide, 143.0).
prop(wine_11, total_sulfur_dioxide, 34.0).
prop(wine_12, total_sulfur_dioxide, 67.0).
prop(wine_13, total_sulfur_dioxide, 54.0).
prop(wine_14, total_sulfur_dioxide, 60.0).
prop(wine_15, total_sulfur_dioxide, 40.0).
prop(wine_16, total_sulfur_dioxide, 59.0).
prop(wine_17, total_sulfur_dioxide, 21.0).
prop(wine_18, total_sulfur_dioxide, 18.0).
prop(wine_19, total_sulfur_dioxide, 102.0).
prop(wine_20, total_sulfur_dioxide, 65.0).
prop(wine_21, total_sulfur_dioxide, 75.0).
prop(wine_22, total_sulfur_dioxide, 102.0).
prop(wine_23, total_sulfur_dioxide, 100.0).
prop(wine_24, total_sulfur_dioxide, 168.0).
prop(wine_25, total_sulfur_dioxide, 143.0).
prop(wine_26, total_sulfur_dioxide, 115.0).
prop(wine_27, total_sulfur_dioxide, 93.0).
prop(wine_28, total_sulfur_dioxide, 145.0).
prop(wine_29, total_sulfur_dioxide, 105.0).
prop(wine_30, total_sulfur_dioxide, 168.0).
prop(wine_31, total_sulfur_dioxide, 38.0).
prop(wine_32, total_sulfur_dioxide, 14.0).
prop(wine_33, total_sulfur_dioxide, 28.0).
prop(wine_34, total_sulfur_dioxide, 29.0).
prop(wine_35, total_sulfur_dioxide, 33.0).
prop(wine_36, total_sulfur_dioxide, 23.0).
prop(wine_37, total_sulfur_dioxide, 11.0).
prop(wine_38, total_sulfur_dioxide, 41.0).
prop(wine_39, total_sulfur_dioxide, 16.0).
prop(wine_40, total_sulfur_dioxide, 22.0).

% Sulphates
prop(wine_1, sulphates, 0.45).
prop(wine_2, sulphates, 0.49).
prop(wine_3, sulphates, 0.44).
prop(wine_4, sulphates, 0.40).
prop(wine_5, sulphates, 0.47).
prop(wine_6, sulphates, 0.45).
prop(wine_7, sulphates, 0.56).
prop(wine_8, sulphates, 0.53).
prop(wine_9, sulphates, 0.63).
prop(wine_10, sulphates, 0.52).
prop(wine_11, sulphates, 0.56).
prop(wine_12, sulphates, 0.68).
prop(wine_13, sulphates, 0.65).
prop(wine_14, sulphates, 0.58).
prop(wine_15, sulphates, 0.56).
prop(wine_16, sulphates, 0.46).
prop(wine_17, sulphates, 0.47).
prop(wine_18, sulphates, 0.57).
prop(wine_19, sulphates, 0.80).
prop(wine_20, sulphates, 0.54).
prop(wine_21, sulphates, 0.39).
prop(wine_22, sulphates, 0.48).
prop(wine_23, sulphates, 0.64).
prop(wine_24, sulphates, 0.33).
prop(wine_25, sulphates, 0.57).
prop(wine_26, sulphates, 0.58).
prop(wine_27, sulphates, 0.38).
prop(wine_28, sulphates, 0.60).
prop(wine_29, sulphates, 0.51).
prop(wine_30, sulphates, 0.52).
prop(wine_31, sulphates, 0.86).
prop(wine_32, sulphates, 0.82).
prop(wine_33, sulphates, 0.82).
prop(wine_34, sulphates, 0.82).
prop(wine_35, sulphates, 0.69).
prop(wine_36, sulphates, 0.92).
prop(wine_37, sulphates, 0.65).
prop(wine_38, sulphates, 0.74).
prop(wine_39, sulphates, 0.74).
prop(wine_40, sulphates, 0.50).


% Alcohol
prop(wine_1, alcohol, 8.8).
prop(wine_2, alcohol, 9.5).
prop(wine_3, alcohol, 10.1).
prop(wine_4, alcohol, 9.9).
prop(wine_5, alcohol, 9.6).
prop(wine_6, alcohol, 11.0).
prop(wine_7, alcohol, 12.0).
prop(wine_8, alcohol, 9.7).
prop(wine_9, alcohol, 10.8).
prop(wine_10, alcohol, 12.4).
prop(wine_11, alcohol, 9.4).
prop(wine_12, alcohol, 9.8).
prop(wine_13, alcohol, 9.8).
prop(wine_14, alcohol, 9.8).
prop(wine_15, alcohol, 9.4).
prop(wine_16, alcohol, 9.4).
prop(wine_17, alcohol, 10.0).
prop(wine_18, alcohol, 9.5).
prop(wine_19, alcohol, 10.5).
prop(wine_20, alcohol, 9.2).
prop(wine_21, alcohol, 12.8).
prop(wine_22, alcohol, 10.5).
prop(wine_23, alcohol, 10.7).
prop(wine_24, alcohol, 12.1).
prop(wine_25, alcohol, 12.7).
prop(wine_26, alcohol, 9.6).
prop(wine_27, alcohol, 12.6).
prop(wine_28, alcohol, 12.3).
prop(wine_29, alcohol, 12.5).
prop(wine_30, alcohol, 9.8).
prop(wine_31, alcohol, 12.8).
prop(wine_32, alcohol, 12.6).
prop(wine_33, alcohol, 12.9).
prop(wine_34, alcohol, 9.8).
prop(wine_35, alcohol, 13.4).
prop(wine_36, alcohol, 11.7).
prop(wine_37, alcohol, 11.0).
prop(wine_38, alcohol, 14.0).
prop(wine_39, alcohol, 12.7).
prop(wine_40, alcohol, 9.0).



% Color
prop(wine_1, color, white).
prop(wine_2, color, white).
prop(wine_3, color, white).
prop(wine_4, color, white).
prop(wine_5, color, white).
prop(wine_6, color, white).
prop(wine_7, color, white).
prop(wine_8, color, white).
prop(wine_9, color, white).
prop(wine_10, color, white).
prop(wine_11, color, red).
prop(wine_12, color, red).
prop(wine_13, color, red).
prop(wine_14, color, red).
prop(wine_15, color, red).
prop(wine_16, color, red).
prop(wine_17, color, red).
prop(wine_18, color, red).
prop(wine_19, color, red).
prop(wine_20, color, red).
prop(wine_21, color, white).
prop(wine_22, color, white).
prop(wine_23, color, white).
prop(wine_24, color, white).
prop(wine_25, color, white).
prop(wine_26, color, white).
prop(wine_27, color, white).
prop(wine_28, color, white).
prop(wine_29, color, white).
prop(wine_30, color, white).
prop(wine_31, color, red).
prop(wine_32, color, red).
prop(wine_33, color, red).
prop(wine_34, color, red).
prop(wine_35, color, red).
prop(wine_36, color, red).
prop(wine_37, color, red).
prop(wine_38, color, red).
prop(wine_39, color, red).
prop(wine_40, color, red).


% Quality
prop(wine_1, quality, good).
prop(wine_2, quality, good).
prop(wine_3, quality, good).
prop(wine_4, quality, good).
prop(wine_5, quality, good).
prop(wine_6, quality, good).
prop(wine_7, quality, bad).
prop(wine_8, quality, bad).
prop(wine_9, quality, bad).
prop(wine_10, quality, good).
prop(wine_11, quality, bad).
prop(wine_12, quality, bad).
prop(wine_13, quality, bad).
prop(wine_14, quality, good).
prop(wine_15, quality, bad).
prop(wine_16, quality, bad).
prop(wine_17, quality, bad).
prop(wine_18, quality, good).
prop(wine_19, quality, bad).
prop(wine_20, quality, bad).
prop(wine_21, quality, good).
prop(wine_22, quality, good).
prop(wine_23, quality, good).
prop(wine_24, quality, good).
prop(wine_25, quality, good).
prop(wine_26, quality, good).
prop(wine_27, quality, good).
prop(wine_28, quality, good).
prop(wine_29, quality, good).
prop(wine_30, quality, bad).
prop(wine_31, quality, good).
prop(wine_32, quality, good).
prop(wine_33, quality, good).
prop(wine_34, quality, good).
prop(wine_35, quality, good).
prop(wine_36, quality, good).
prop(wine_37, quality, good).
prop(wine_38, quality, good).
prop(wine_39, quality, good).
prop(wine_40, quality, bad).


% Rules

% Fixed acidity classification
prop(F, fa_class, low) :-
    F < 6.

prop(F, fa_class, medium) :-
    F >= 6, F =< 8.

prop(F, fa_class, high) :-
    F > 8.

%Volatile acidity classification
prop(VA, va_class, low) :-
    VA < 0.3.

prop(VA, va_class, medium) :-
    VA >= 0.3, VA =< 0.6.

prop(VA, va_class, high) :-
    VA > 0.6.

% Citric acid classification
prop(CA, ca_class, low) :-
    CA < 0.25.

prop(CA, ca_class, medium) :-
    CA >= 0.25, CA < 0.5.

prop(CA, ca_class, high) :-
    CA >= 0.5.

% Residual sugar classification
prop(RS, rs_class, low) :-
    RS < 3.

prop(RS, rs_class, medium) :-
    RS >= 3, RS < 6.

prop(RS, rs_class, high) :-
    RS >= 6.

% Chlorides classification
prop(Cl, cl_class, low) :-
    Cl < 0.04.

prop(Cl, cl_class, medium) :-
    Cl >= 0.04, Cl < 0.08.

prop(Cl, cl_class, high) :-
    Cl >= 0.08.

% Free sulfur dioxide classification
prop(FS, fs_class, low) :-
    FS < 20.

prop(FS, fs_class, medium) :-
    FS >= 20, FS < 40.

prop(FS, fs_class, high) :-
    FS >= 40.

% Total sulfur dioxide classification
prop(TS, ts_class, low) :-
    TS < 50.

prop(TS, ts_class, medium) :-
    TS >= 50, TS < 100.

prop(TS, ts_class, high) :-
    TS >= 100.

% Density classification
prop(D, d_class, low) :-
    D < 0.995.

prop(D, d_class, medium) :-
    D >= 0.995, D < 0.997.

prop(D, d_class, high) :-
    D >= 0.997.

% Sulphates classification
prop(S, s_class, low) :-
    S < 0.4.

prop(S, s_class, medium) :-
    S >= 0.4, S < 0.8.

prop(S, s_class, high) :-
    S >= 0.8.

% Alcohol classification
prop(A, a_class, low) :-
    A < 9.

prop(A, a_class, medium) :-
    A >= 9, A < 11.

prop(A, a_class, high) :-
    A >= 11.


% Features attributo(nome, valore)

attributo(fixAcid_Class, [low, medium, high]).
attributo(volAcid_class, [low, medium, high]).
attributo(citAcid_class, [low, medium, high]).
attributo(rSugar_class, [low, medium, high]).
attributo(chlorides_class, [low, medium, high]).
attributo(freeSulf_class, [low, medium, high]).
attributo(totSulf_class, [low, medium, high]).
attributo(sulphates_class, [low, medium, high]).
attributo(alcohol_class, [low, medium, high]).
attributo(color_class, [red, white]).

%esempio(good, [fixAcid_Class = medium, volAcid_class = low,
%citAcid_class = medium, rSugar_class = high, chlorides_class = low,
%freeSulf_class = high, totSulf_class = high, sulphates_class =
%medium, alcohol_class = medium, color_class = red]).
%esempio(bad, [fixAcid_Class = low, volAcid_class = low, citAcid_class
%= high, rSugar_class = medium, chlorides_class = low, freeSulf_class =
%low, totSulf_class = high, sulphates_class = low, alcohol_class = high,
%color_class = white]).


classifica(Oggetto, Classe) :-
    Classe <== Descrizione,
    member(CongAttributi, Descrizione),
    soddisfa(Oggetto, CongAttributi).

soddisfa(Oggetto, Congiunzione) :-
    \+ (member(Att = Valx, Congiunzione),
        member(Att = Valy, Oggetto),
        Valx \== Valy).

apprendi(Classe) :-
    bagof(esempio(C,O), esempio(C,O), Esempi),
    apprendi(Esempi, Classe, Descrizione),
    assert(Classe<==Descrizione).

apprendi(Esempi, Classe, []) :-
    \+ member(esempio(Classe, _), Esempi).

apprendi(Esempi, Classe, [Conge|Congi]) :-
    apprendi_cong(Esempi, Classe, Conge),
    rimuovi(Esempi, Conge, RestoEsempi),
    apprendi(RestoEsempi, Classe, Congi).

apprendi_cong(Esempi, Classe, []) :-
    \+ (member(esempio(ClasseX, _), Esempi),
        ClasseX \== Classe),!.

apprendi_cong(Esempi, Classe, [Cond|Conds]) :-
    scegli_cond(Esempi, Classe, Cond),
    filtra(Esempi, [Cond], Esempi1),
    apprendi_cong(Esempi1, Classe, Conds).

scegli_cond(Esempi, Classe, AttVal) :-
    findall(AV/Punti, punti(Esempi, Classe, AV, Punti), AVs),
    best(AVs, AttVal).

best([AttVal/_],AttVal).
best([AV0/S0,AV1/S1|AVSlist],AttVal) :-
    S1 > S0, !,
    best([AV1/S1|AVSlist], AttVal);
    best([AV0/S0|AVSlist], AttVal).

filtra(Esempi, Cond, Esempi1) :-
    findall(esempio(Classe,Ogg),
            (member(esempio(Classe,Ogg),Esempi), soddisfa(Ogg, Cond)),
            Esempi1).

rimuovi([],_,[]).
rimuovi([esempio(_,Ogg)|Es], Conge, Es1) :-
    soddisfa(Ogg, Conge), !,
    rimuovi(Es, Conge, Es1).
rimuovi([E|Es], Conge, [E|Es1]) :-
    rimuovi(Es, Conge, Es1).


punti(Esempi, Classe, AttVal, Punti) :-
    candidato(Esempi, Classe, AttVal),
    filtra(Esempi, [AttVal], Esempi1),
    length(Esempi1, N1),
    conta_pos(Esempi1, Classe, Npos1),
    Npos1 > 0,
    Punti is (Npos1 + 1) / (N1 + 2).

candidato(Esempi,Classe,Att = Val) :-
    attributo(Att, Valori),
    member(Val, Valori),
    adatto(Att = Val, Esempi, Classe).


adatto(AttVal, Esempi, Classe) :-
    member(esempio(ClasseX, OggX), Esempi),
    ClasseX \== Classe,
    \+ soddisfa(OggX, [AttVal]),!.

conta_pos([],_,0).
conta_pos([esempio(ClasseX,_)|Esempi],Classe,N) :-
    conta_pos(Esempi, Classe, N1),
    (ClasseX = Classe, !, N is N1+1; N=N1).
