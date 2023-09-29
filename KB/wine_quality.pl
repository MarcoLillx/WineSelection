:- dynamic(prop/3).
:- dynamic(esempio/2).

:- op(300,xfx, <==).

% Facts
% usando la rappresentazione individuo-proprieta-valore

% wineid
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
prop(wine_41, wineid, 40).

% Fixed acidity
prop(wine_1, fixed_acidity, 8.1).
prop(wine_2, fixed_acidity, 8.6).
prop(wine_3, fixed_acidity, 7.9).
prop(wine_4, fixed_acidity, 8.3).
prop(wine_5, fixed_acidity, 6.6).
prop(wine_6, fixed_acidity, 6.2).
prop(wine_7, fixed_acidity, 6.4).
prop(wine_8, fixed_acidity, 7.1).
prop(wine_9, fixed_acidity, 11.2).
prop(wine_10, fixed_acidity, 7.9).
prop(wine_11, fixed_acidity, 8.9).
prop(wine_12, fixed_acidity, 6.9).
prop(wine_13, fixed_acidity, 7.8).
prop(wine_14, fixed_acidity, 6.9).
prop(wine_15, fixed_acidity, 6.9).
prop(wine_16, fixed_acidity, 7.8).
prop(wine_17, fixed_acidity, 7.9).
prop(wine_18, fixed_acidity, 10.3).
prop(wine_19, fixed_acidity, 5.6).
prop(wine_20, fixed_acidity, 12.6).
prop(wine_21, fixed_acidity, 11.3).
prop(wine_22, fixed_acidity, 9.4).
prop(wine_23, fixed_acidity, 10.7).
prop(wine_24, fixed_acidity, 6.2).
prop(wine_25, fixed_acidity, 6.8).
prop(wine_26, fixed_acidity, 6.7).
prop(wine_27, fixed_acidity, 5.2).
prop(wine_28, fixed_acidity, 6.8).
prop(wine_29, fixed_acidity, 5.2).
prop(wine_30, fixed_acidity, 8.5).
prop(wine_31, fixed_acidity, 5.8).
prop(wine_32, fixed_acidity, 9.1).
prop(wine_33, fixed_acidity, 7.1).
prop(wine_34, fixed_acidity, 6.9).
prop(wine_35, fixed_acidity, 10.3).
prop(wine_36, fixed_acidity, 11.6).
prop(wine_37, fixed_acidity, 10.4).
prop(wine_38, fixed_acidity, 7.4).
prop(wine_39, fixed_acidity, 7.3).
prop(wine_40, fixed_acidity, 7.8).
prop(wine_41, fixed_acidity, 8.5).

% Volatile acidity
prop(wine_1, volatile_acidity, 0.27).
prop(wine_2, volatile_acidity, 0.23).
prop(wine_3, volatile_acidity, 0.18).
prop(wine_4, volatile_acidity, 0.42).
prop(wine_5, volatile_acidity, 0.25).
prop(wine_6, volatile_acidity, 0.16).
prop(wine_7, volatile_acidity, 0.26).
prop(wine_8, volatile_acidity, 0.18).
prop(wine_9, volatile_acidity, 0.280).
prop(wine_10, volatile_acidity, 0.320).
prop(wine_11, volatile_acidity, 0.220).
prop(wine_12, volatile_acidity, 0.200).
prop(wine_13, volatile_acidity, 0.645).
prop(wine_14, volatile_acidity, 0.685).
prop(wine_15, volatile_acidity, 0.605).
prop(wine_16, volatile_acidity, 0.645).
prop(wine_17, volatile_acidity, 0.35).
prop(wine_18, volatile_acidity, 0.32).
prop(wine_19, volatile_acidity, 0.85).
prop(wine_20, volatile_acidity, 0.31).
prop(wine_21, volatile_acidity, 0.62).
prop(wine_22, volatile_acidity, 0.30).
prop(wine_23, volatile_acidity, 0.35).
prop(wine_24, volatile_acidity, 0.66).
prop(wine_25, volatile_acidity, 0.26).
prop(wine_26, volatile_acidity, 0.23).
prop(wine_27, volatile_acidity, 0.44).
prop(wine_28, volatile_acidity, 0.53).
prop(wine_29, volatile_acidity, 0.30).
prop(wine_30, volatile_acidity, 0.260).
prop(wine_31, volatile_acidity, 0.240).
prop(wine_32, volatile_acidity, 0.590).
prop(wine_33, volatile_acidity, 0.320).
prop(wine_34, volatile_acidity, 0.390).
prop(wine_35, volatile_acidity, 0.170).
prop(wine_36, volatile_acidity, 0.580).
prop(wine_37, volatile_acidity, 0.610).
prop(wine_38, volatile_acidity, 1.185).
prop(wine_39, volatile_acidity, 0.650).
prop(wine_40, volatile_acidity, 0.580).
prop(wine_41, volatile_acidity, 0.280).

% Citric acid
prop(wine_1, citric_acid, 0.41).
prop(wine_2, citric_acid, 0.40).
prop(wine_3, citric_acid, 0.37).
prop(wine_4, citric_acid, 0.62).
prop(wine_5, citric_acid, 0.29).
prop(wine_6, citric_acid, 0.33).
prop(wine_7, citric_acid, 0.24).
prop(wine_8, citric_acid, 0.36).
prop(wine_9, citric_acid, 0.56).
prop(wine_10, citric_acid, 0.51).
prop(wine_11, citric_acid, 0.48).
prop(wine_12, citric_acid, 0.14).
prop(wine_13, citric_acid, 0.0).
prop(wine_14, citric_acid, 0.0).
prop(wine_15, citric_acid, 0.12).
prop(wine_16, citric_acid, 0.0).
prop(wine_17, citric_acid, 0.46).
prop(wine_18, citric_acid, 0.45).
prop(wine_19, citric_acid, 0.05).
prop(wine_20, citric_acid, 0.72).
prop(wine_21, citric_acid, 0.67).
prop(wine_22, citric_acid, 0.56).
prop(wine_23, citric_acid, 0.53).
prop(wine_24, citric_acid, 0.48).
prop(wine_25, citric_acid, 0.42).
prop(wine_26, citric_acid, 0.31).
prop(wine_27, citric_acid, 0.04).
prop(wine_28, citric_acid, 0.35).
prop(wine_29, citric_acid, 0.34).
prop(wine_30, citric_acid, 0.21).
prop(wine_31, citric_acid, 0.44).
prop(wine_32, citric_acid, 0.38).
prop(wine_33, citric_acid, 0.32).
prop(wine_34, citric_acid, 0.40).
prop(wine_35, citric_acid, 0.47).
prop(wine_36, citric_acid, 0.66).
prop(wine_37, citric_acid, 0.49).
prop(wine_38, citric_acid, 0.00).
prop(wine_39, citric_acid, 0.00).
prop(wine_40, citric_acid, 0.02).
prop(wine_41, citric_acid, 0.56).

% Residual sugar
prop(wine_1, residual_sugar, 1.45).
prop(wine_2, residual_sugar, 4.20).
prop(wine_3, residual_sugar, 1.20).
prop(wine_4, residual_sugar, 19.25).
prop(wine_5, residual_sugar, 1.10).
prop(wine_6, residual_sugar, 1.10).
prop(wine_7, residual_sugar, 6.40).
prop(wine_8, residual_sugar, 1.40).
prop(wine_9, residual_sugar, 1.90).
prop(wine_10, residual_sugar, 1.80).
prop(wine_11, residual_sugar, 1.80).
prop(wine_12, residual_sugar, 2.40).
prop(wine_13, residual_sugar, 2.00).
prop(wine_14, residual_sugar, 2.50).
prop(wine_15, residual_sugar, 10.70).
prop(wine_16, residual_sugar, 5.50).
prop(wine_17, residual_sugar, 3.60).
prop(wine_18, residual_sugar, 6.40).
prop(wine_19, residual_sugar, 1.40).
prop(wine_20, residual_sugar, 2.20).
prop(wine_21, residual_sugar, 5.20).
prop(wine_22, residual_sugar, 2.80).
prop(wine_23, residual_sugar, 2.60).
prop(wine_24, residual_sugar, 1.20).
prop(wine_25, residual_sugar, 1.70).
prop(wine_26, residual_sugar, 2.10).
prop(wine_27, residual_sugar, 1.40).
prop(wine_28, residual_sugar, 3.80).
prop(wine_29, residual_sugar, 1.50).
prop(wine_30, residual_sugar, 16.20).
prop(wine_31, residual_sugar, 3.50).
prop(wine_32, residual_sugar, 1.60).
prop(wine_33, residual_sugar, 11.00).
prop(wine_34, residual_sugar, 4.60).
prop(wine_35, residual_sugar, 1.40).
prop(wine_36, residual_sugar, 2.20).
prop(wine_37, residual_sugar, 2.10).
prop(wine_38, residual_sugar, 4.25).
prop(wine_39, residual_sugar, 1.20).
prop(wine_40, residual_sugar, 2.00).
prop(wine_41, residual_sugar, 1.80).

% Chlorides
prop(wine_1, chlorides, 0.033).
prop(wine_2, chlorides, 0.035).
prop(wine_3, chlorides, 0.040).
prop(wine_4, chlorides, 0.040).
prop(wine_5, chlorides, 0.068).
prop(wine_6, chlorides, 0.057).
prop(wine_7, chlorides, 0.040).
prop(wine_8, chlorides, 0.043).
prop(wine_9, chlorides, 0.075).
prop(wine_10, chlorides, 0.341).
prop(wine_11, chlorides, 0.077).
prop(wine_12, chlorides, 0.085).
prop(wine_13, chlorides, 0.082).
prop(wine_14, chlorides, 0.105).
prop(wine_15, chlorides, 0.073).
prop(wine_16, chlorides, 0.086).
prop(wine_17, chlorides, 0.078).
prop(wine_18, chlorides, 0.073).
prop(wine_19, chlorides, 0.045).
prop(wine_20, chlorides, 0.072).
prop(wine_21, chlorides, 0.086).
prop(wine_22, chlorides, 0.080).
prop(wine_23, chlorides, 0.070).
prop(wine_24, chlorides, 0.029).
prop(wine_25, chlorides, 0.049).
prop(wine_26, chlorides, 0.046).
prop(wine_27, chlorides, 0.036).
prop(wine_28, chlorides, 0.034).
prop(wine_29, chlorides, 0.038).
prop(wine_30, chlorides, 0.074).
prop(wine_31, chlorides, 0.029).
prop(wine_32, chlorides, 0.066).
prop(wine_33, chlorides, 0.038).
prop(wine_34, chlorides, 0.022).
prop(wine_35, chlorides, 0.037).
prop(wine_36, chlorides, 0.074).
prop(wine_37, chlorides, 0.200).
prop(wine_38, chlorides, 0.097).
prop(wine_39, chlorides, 0.065).
prop(wine_40, chlorides, 0.073).
prop(wine_41, chlorides, 0.092).

% Free sulfur dioxide
prop(wine_1, free_sulfur_dioxide, 11.0).
prop(wine_2, free_sulfur_dioxide, 17.0).
prop(wine_3, free_sulfur_dioxide, 16.0).
prop(wine_4, free_sulfur_dioxide, 41.0).
prop(wine_5, free_sulfur_dioxide, 39.0).
prop(wine_6, free_sulfur_dioxide, 21.0).
prop(wine_7, free_sulfur_dioxide, 27.0).
prop(wine_8, free_sulfur_dioxide, 31.0).
prop(wine_9, free_sulfur_dioxide, 17.0).
prop(wine_10, free_sulfur_dioxide, 17.0).
prop(wine_11, free_sulfur_dioxide, 29.0).
prop(wine_12, free_sulfur_dioxide, 21.0).
prop(wine_13, free_sulfur_dioxide, 8.0).
prop(wine_14, free_sulfur_dioxide, 22.0).
prop(wine_15, free_sulfur_dioxide, 40.0).
prop(wine_16, free_sulfur_dioxide, 5.0).
prop(wine_17, free_sulfur_dioxide, 15.0).
prop(wine_18, free_sulfur_dioxide, 5.0).
prop(wine_19, free_sulfur_dioxide, 12.0).
prop(wine_20, free_sulfur_dioxide, 6.0).
prop(wine_21, free_sulfur_dioxide, 6.0).
prop(wine_22, free_sulfur_dioxide, 6.0).
prop(wine_23, free_sulfur_dioxide, 5.0).
prop(wine_24, free_sulfur_dioxide, 29.0).
prop(wine_25, free_sulfur_dioxide, 41.0).
prop(wine_26, free_sulfur_dioxide, 30.0).
prop(wine_27, free_sulfur_dioxide, 43.0).
prop(wine_28, free_sulfur_dioxide, 26.0).
prop(wine_29, free_sulfur_dioxide, 18.0).
prop(wine_30, free_sulfur_dioxide, 41.0).
prop(wine_31, free_sulfur_dioxide, 5.0).
prop(wine_32, free_sulfur_dioxide, 34.0).
prop(wine_33, free_sulfur_dioxide, 16.0).
prop(wine_34, free_sulfur_dioxide, 5.0).
prop(wine_35, free_sulfur_dioxide, 5.0).
prop(wine_36, free_sulfur_dioxide, 10.0).
prop(wine_37, free_sulfur_dioxide, 5.0).
prop(wine_38, free_sulfur_dioxide, 5.0).
prop(wine_39, free_sulfur_dioxide, 15.0).
prop(wine_40, free_sulfur_dioxide, 9.0).
prop(wine_41, free_sulfur_dioxide, 35.0).

% Total sulfur dioxide
prop(wine_1, total_sulfur_dioxide, 63.0).
prop(wine_2, total_sulfur_dioxide, 109.0).
prop(wine_3, total_sulfur_dioxide, 75.0).
prop(wine_4, total_sulfur_dioxide, 172.0).
prop(wine_5, total_sulfur_dioxide, 124.0).
prop(wine_6, total_sulfur_dioxide, 82.0).
prop(wine_7, total_sulfur_dioxide, 124.0).
prop(wine_8, total_sulfur_dioxide, 87.0).
prop(wine_9, total_sulfur_dioxide, 60.0).
prop(wine_10, total_sulfur_dioxide, 56.0).
prop(wine_11, total_sulfur_dioxide, 60.0).
prop(wine_12, total_sulfur_dioxide, 40.0).
prop(wine_13, total_sulfur_dioxide, 16.0).
prop(wine_14, total_sulfur_dioxide, 37.0).
prop(wine_15, total_sulfur_dioxide, 83.0).
prop(wine_16, total_sulfur_dioxide, 18.0).
prop(wine_17, total_sulfur_dioxide, 37.0).
prop(wine_18, total_sulfur_dioxide, 13.0).
prop(wine_19, total_sulfur_dioxide, 88.0).
prop(wine_20, total_sulfur_dioxide, 29.0).
prop(wine_21, total_sulfur_dioxide, 19.0).
prop(wine_22, total_sulfur_dioxide, 17.0).
prop(wine_23, total_sulfur_dioxide, 16.0).
prop(wine_24, total_sulfur_dioxide, 75.0).
prop(wine_25, total_sulfur_dioxide, 122.0).
prop(wine_26, total_sulfur_dioxide, 96.0).
prop(wine_27, total_sulfur_dioxide, 119.0).
prop(wine_28, total_sulfur_dioxide, 109.0).
prop(wine_29, total_sulfur_dioxide, 96.0).
prop(wine_30, total_sulfur_dioxide, 197.0).
prop(wine_31, total_sulfur_dioxide, 109.0).
prop(wine_32, total_sulfur_dioxide, 182.0).
prop(wine_33, total_sulfur_dioxide, 66.0).
prop(wine_34, total_sulfur_dioxide, 19.0).
prop(wine_35, total_sulfur_dioxide, 33.0).
prop(wine_36, total_sulfur_dioxide, 47.0).
prop(wine_37, total_sulfur_dioxide, 16.0).
prop(wine_38, total_sulfur_dioxide, 14.0).
prop(wine_39, total_sulfur_dioxide, 21.0).
prop(wine_40, total_sulfur_dioxide, 18.0).
prop(wine_41, total_sulfur_dioxide, 103.0).

% Sulphates
prop(wine_1, sulphates, 0.56).
prop(wine_2, sulphates, 0.53).
prop(wine_3, sulphates, 0.63).
prop(wine_4, sulphates, 0.67).
prop(wine_5, sulphates, 0.58).
prop(wine_6, sulphates, 0.46).
prop(wine_7, sulphates, 0.49).
prop(wine_8, sulphates, 0.37).
prop(wine_9, sulphates, 0.58).
prop(wine_10, sulphates, 1.08).
prop(wine_11, sulphates, 0.53).
prop(wine_12, sulphates, 0.63).
prop(wine_13, sulphates, 0.59).
prop(wine_14, sulphates, 0.57).
prop(wine_15, sulphates, 0.52).
prop(wine_16, sulphates, 0.55).
prop(wine_17, sulphates, 0.86).
prop(wine_18, sulphates, 0.82).
prop(wine_19, sulphates, 0.82).
prop(wine_20, sulphates, 0.82).
prop(wine_21, sulphates, 0.69).
prop(wine_22, sulphates, 0.92).
prop(wine_23, sulphates, 0.65).
prop(wine_24, sulphates, 0.39).
prop(wine_25, sulphates, 0.48).
prop(wine_26, sulphates, 0.64).
prop(wine_27, sulphates, 0.33).
prop(wine_28, sulphates, 0.57).
prop(wine_29, sulphates, 0.48).
prop(wine_30, sulphates, 0.50).
prop(wine_31, sulphates, 0.43).
prop(wine_32, sulphates, 0.38).
prop(wine_33, sulphates, 0.40).
prop(wine_34, sulphates, 0.37).
prop(wine_35, sulphates, 0.28).
prop(wine_36, sulphates, 0.57).
prop(wine_37, sulphates, 0.63).
prop(wine_38, sulphates, 0.54).
prop(wine_39, sulphates, 0.47).
prop(wine_40, sulphates, 0.57).
prop(wine_41, sulphates, 0.75).

% Alcohol
prop(wine_1, alcohol, 12.0).
prop(wine_2, alcohol, 9.7).
prop(wine_3, alcohol, 10.8).
prop(wine_4, alcohol, 9.7).
prop(wine_5, alcohol, 11.0).
prop(wine_6, alcohol, 10.9).
prop(wine_7, alcohol, 12.6).
prop(wine_8, alcohol, 12.7).
prop(wine_9, alcohol, 9.8).
prop(wine_10, alcohol, 9.2).
prop(wine_11, alcohol, 9.4).
prop(wine_12, alcohol, 9.7).
prop(wine_13, alcohol, 9.8).
prop(wine_14, alcohol, 10.6).
prop(wine_15, alcohol, 9.4).
prop(wine_16, alcohol, 9.6).
prop(wine_17, alcohol, 12.8).
prop(wine_18, alcohol, 12.6).
prop(wine_19, alcohol, 12.9).
prop(wine_20, alcohol, 9.8).
prop(wine_21, alcohol, 13.4).
prop(wine_22, alcohol, 11.7).
prop(wine_23, alcohol, 11.0).
prop(wine_24, alcohol, 12.8).
prop(wine_25, alcohol, 10.5).
prop(wine_26, alcohol, 10.7).
prop(wine_27, alcohol, 12.1).
prop(wine_28, alcohol, 12.7).
prop(wine_29, alcohol, 13.0).
prop(wine_30, alcohol, 9.8).
prop(wine_31, alcohol, 11.7).
prop(wine_32, alcohol, 8.5).
prop(wine_33, alcohol, 11.5).
prop(wine_34, alcohol, 12.6).
prop(wine_35, alcohol, 9.6).
prop(wine_36, alcohol, 9.0).
prop(wine_37, alcohol, 8.4).
prop(wine_38, alcohol, 10.7).
prop(wine_39, alcohol, 10.0).
prop(wine_40, alcohol, 9.5).
prop(wine_41, alcohol, 10.5).


% Color
prop(wine_1, color, white).
prop(wine_2, color, white).
prop(wine_3, color, white).
prop(wine_4, color, white).
prop(wine_5, color, white).
prop(wine_6, color, white).
prop(wine_7, color, white).
prop(wine_8, color, white).
prop(wine_9, color, red).
prop(wine_10, color, red).
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
prop(wine_21, color, red).
prop(wine_22, color, red).
prop(wine_23, color, red).
prop(wine_24, color, white).
prop(wine_25, color, white).
prop(wine_26, color, white).
prop(wine_27, color, white).
prop(wine_28, color, white).
prop(wine_29, color, white).
prop(wine_30, color, white).
prop(wine_31, color, white).
prop(wine_32, color, white).
prop(wine_33, color, white).
prop(wine_34, color, white).
prop(wine_35, color, white).
prop(wine_36, color, red).
prop(wine_37, color, red).
prop(wine_38, color, red).
prop(wine_39, color, red).
prop(wine_40, color, red).
prop(wine_41, color, red).

% Quality
prop(wine_1, quality, bad).
prop(wine_2, quality, bad).
prop(wine_3, quality, bad).
prop(wine_4, quality, bad).
prop(wine_5, quality, good).
prop(wine_6, quality, good).
prop(wine_7, quality, good).
prop(wine_8, quality, good).
prop(wine_9, quality, bad).
prop(wine_10, quality, bad).
prop(wine_11, quality, bad).
prop(wine_12, quality, bad).
prop(wine_13, quality, bad).
prop(wine_14, quality, bad).
prop(wine_15, quality, bad).
prop(wine_16, quality, bad).
prop(wine_17, quality, good).
prop(wine_18, quality, good).
prop(wine_19, quality, good).
prop(wine_20, quality, good).
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
prop(wine_31, quality, bad).
prop(wine_32, quality, bad).
prop(wine_33, quality, bad).
prop(wine_34, quality, bad).
prop(wine_35, quality, bad).
prop(wine_36, quality, bad).
prop(wine_37, quality, bad).
prop(wine_38, quality, bad).
prop(wine_39, quality, good).
prop(wine_40, quality, good).
prop(wine_41, quality, good).

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

% CLASSI
% le classi saranno definite come una lista di possibili Liste di coppie attributo-valore
% cioe avra� la seguente forma: classe<==[cong1 or cong2 or ... or
% congn] (Forma Normale Disgiuntiva) congn e' una congiunzione di coppie
% att=val

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


% riconosce la classe di appartenenza

classifica(Oggetto, Classe) :- % Oggetto e' una sequenza di lista di coppie(attributo,valore)
    Classe <== Descrizione,  % Prende dalla classe una lista di Liste(una congiunzione)
    member(CongAttributi, Descrizione),
    soddisfa(Oggetto, CongAttributi).

% Verifica se nella lista passata in Congiunzione c'e' una coppia
% att=valx e se c'e' nella lista passata in Oggetto una coppia att=valy.
% Se vengono verificate queste tre condizioni, allora esegue un not
soddisfa(Oggetto, Congiunzione) :-
    \+ (member(Att = Valx, Congiunzione),
        member(Att = Valy, Oggetto),
        Valx \== Valy).

% apprendi(Classe): raccoglie il training set in una lista, costruisce e manda
% in output una descrizione per la Classe e asserisce la corrispondente Regola

apprendi(Classe) :-
    bagof(esempio(C,O), esempio(C,O), Esempi),  % raccoglie gli esempi
    apprendi(Esempi, Classe, Descrizione),  % induce la regola
    assert(Classe<==Descrizione).   % apprende la regola

% apprendi(Esempi,Classe,Descrizione): Descrizione copre esattamente gli esempi
% di classe nella lista Esempi

apprendi(Esempi, Classe, []) :-
    \+ member(esempio(Classe, _), Esempi).  % non ci sono esempi da coprire

% Conge e' una lista di coppie att=val che copre almeno un esempio
% positivo e nessun esempio negativo Congi si ottiene rimuovendo da
% Esempi quelli coperti da Conge coprendo i rimanenti oggetti di Classe
% in Esempi

% Costruisce la descrizione determinando una congiunzione

apprendi(Esempi, Classe, [Conge|Congi]) :- apprendi_cong(Esempi, Classe, Conge),
    rimuovi(Esempi, Conge, RestoEsempi),   % rimuove gli esempi che la soddisfano
    apprendi(RestoEsempi, Classe, Congi).  % copre gli esempi rimasti

% apprendi_cong(Esempi,Classe,Cong)
% Cong e' la lista di valori di attributi soddisfatti da almeno un
% esempio di Classe e da nessun esempio di un altra classe

apprendi_cong(Esempi, Classe, []) :-
    \+ (member(esempio(ClasseX, _), Esempi),    % non ci sono esempi
        ClasseX \== Classe),!.                  % di altre classi

apprendi_cong(Esempi, Classe, [Cond|Conds]) :-
    scegli_cond(Esempi, Classe, Cond),          % sceglie attributo=valore
    filtra(Esempi, [Cond], Esempi1),            % Esempi1 soddisfano Cond
    apprendi_cong(Esempi1, Classe, Conds).

scegli_cond(Esempi, Classe, AttVal) :-
    findall(AV/Punti, punti(Esempi, Classe, AV, Punti), AVs),
    best(AVs, AttVal).                  % coppia attributo=valore con il miglior punteggio

best([AttVal/_],AttVal).                % se c'e' una sola coppia e' la migliore
best([AV0/S0,AV1/S1|AVSlist],AttVal) :-
    S1 > S0, !,                         % se AV1 e' meglio di AV0
    best([AV1/S1|AVSlist], AttVal);     % prendo AV1
    best([AV0/S0|AVSlist], AttVal).     % altrimenti AV0

filtra(Esempi, Cond, Esempi1) :-
    findall(esempio(Classe,Ogg),
            (member(esempio(Classe,Ogg),Esempi), soddisfa(Ogg, Cond)),
            Esempi1).

rimuovi([],_,[]).
rimuovi([esempio(_,Ogg)|Es], Conge, Es1) :-
    soddisfa(Ogg, Conge), !,            % il primo esempio matcha Conge
    rimuovi(Es, Conge, Es1).            % lo rimuove

% mantiene il primo esempio
rimuovi([E|Es], Conge, [E|Es1]) :-
    rimuovi(Es, Conge, Es1).


punti(Esempi, Classe, AttVal, Punti) :- % cerca un attributo/valore adatto nella coppia
    candidato(Esempi, Classe, AttVal),  % Esempi1 soddisfa la condizione Att=Val
    filtra(Esempi, [AttVal], Esempi1),
    length(Esempi1, N1),
    conta_pos(Esempi1, Classe, Npos1),  % numero di esempi positivi
    Npos1 > 0,                          % almeno un esempio positivo
    Punti is (Npos1 + 1) / (N1 + 2).

candidato(Esempi,Classe,Att = Val) :-
    attributo(Att, Valori),
    member(Val, Valori),
    adatto(Att = Val, Esempi, Classe).


adatto(AttVal, Esempi, Classe) :-
    member(esempio(ClasseX, OggX), Esempi), % almeno un esempio negativo deve non matchare con AttVal
    ClasseX \== Classe,                     % esempio negativo
    \+ soddisfa(OggX, [AttVal]),!.          % che non matcha

% conta_pos(Esempi,Classe,N)
% N è il numero degli esempi positivi di Classe
conta_pos([],_,0).
conta_pos([esempio(ClasseX,_)|Esempi],Classe,N) :-
    conta_pos(Esempi, Classe, N1),
    (ClasseX = Classe, !, N is N1+1; N=N1).
