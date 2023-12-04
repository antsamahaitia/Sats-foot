CREATE DATABASE footStat;
USE footStat;

CREATE TABLE competition (
    id_competition VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(50)
);

INSERT INTO competition VALUES ('COMP22', 'Ligue 1');
INSERT INTO competition VALUES ('COMP3', 'Bundesliga');
INSERT INTO competition VALUES ('COMP2', 'Premier League');
INSERT INTO competition VALUES ('COMP4', 'LaLiga');
INSERT INTO competition VALUES ('COMP5', 'Serie A');

CREATE TABLE equipe (
    id_equipe VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(50),
    id_competition VARCHAR(10),
    FOREIGN KEY (id_competition) REFERENCES competition(id_competition)
);

INSERT INTO equipe VALUES ('EQU52', 'Real Madrid', 'COMP4');
INSERT INTO equipe VALUES ('EQU55', 'Valencia', 'COMP4');
INSERT INTO equipe VALUES ('EQU31', 'Everton', 'COMP2');
INSERT INTO equipe VALUES ('EQU309', 'Lens', 'COMP22');
INSERT INTO equipe VALUES ('EQU86', 'Udinese', 'COMP5');
INSERT INTO equipe VALUES ('EQU950', 'Reims', 'COMP22');
INSERT INTO equipe VALUES ('EQU311', 'Montpellier', 'COMP22');
INSERT INTO equipe VALUES ('EQU84', 'Roma', 'COMP5');
INSERT INTO equipe VALUES ('EQU161', 'Wolves', 'COMP2');
INSERT INTO equipe VALUES ('EQU278', 'Genoa', 'COMP5');
INSERT INTO equipe VALUES ('EQU607', 'Lille', 'COMP22');
INSERT INTO equipe VALUES ('EQU941', 'Clermont Foot', 'COMP22');
INSERT INTO equipe VALUES ('EQU65', 'Barcelona', 'COMP4');
INSERT INTO equipe VALUES ('EQU167', 'Man City', 'COMP2');
INSERT INTO equipe VALUES ('EQU95', 'Luton', 'COMP2');
INSERT INTO equipe VALUES ('EQU613', 'Nice', 'COMP22');
INSERT INTO equipe VALUES ('EQU80', 'AC Milan', 'COMP5');
INSERT INTO equipe VALUES ('EQU219', 'Mainz', 'COMP3');
INSERT INTO equipe VALUES ('EQU109', 'Bochum', 'COMP3');
INSERT INTO equipe VALUES ('EQU925', 'Granada', 'COMP4');
INSERT INTO equipe VALUES ('EQU63', 'Atletico', 'COMP4');
INSERT INTO equipe VALUES ('EQU304', 'PSG', 'COMP22');
INSERT INTO equipe VALUES ('EQU15', 'Chelsea', 'COMP2');
INSERT INTO equipe VALUES ('EQU272', 'Empoli', 'COMP5');
INSERT INTO equipe VALUES ('EQU29', 'West Ham', 'COMP2');
INSERT INTO equipe VALUES ('EQU148', 'Strasbourg', 'COMP22');
INSERT INTO equipe VALUES ('EQU162', 'Crystal Palace', 'COMP2');
INSERT INTO equipe VALUES ('EQU37', 'Bayern', 'COMP3');
INSERT INTO equipe VALUES ('EQU2332', 'Brest', 'COMP22');
INSERT INTO equipe VALUES ('EQU45', 'Eintracht Frankfurt', 'COMP3');
INSERT INTO equipe VALUES ('EQU54', 'Real Betis', 'COMP4');
INSERT INTO equipe VALUES ('EQU36', 'Leverkusen', 'COMP3');
INSERT INTO equipe VALUES ('EQU276', 'Napoli', 'COMP5');
INSERT INTO equipe VALUES ('EQU51', 'Mallorca', 'COMP4');
INSERT INTO equipe VALUES ('EQU163', 'Sheff Utd', 'COMP2');
INSERT INTO equipe VALUES ('EQU282', 'FC Koln', 'COMP3');
INSERT INTO equipe VALUES ('EQU41', 'Stuttgart', 'COMP3');
INSERT INTO equipe VALUES ('EQU50', 'Freiburg', 'COMP3');
INSERT INTO equipe VALUES ('EQU30', 'Tottenham', 'COMP2');
INSERT INTO equipe VALUES ('EQU838', 'Las Palmas', 'COMP4');
INSERT INTO equipe VALUES ('EQU839', 'Villarreal', 'COMP4');
INSERT INTO equipe VALUES ('EQU248', 'Monaco', 'COMP22');
INSERT INTO equipe VALUES ('EQU183', 'Bournemouth', 'COMP2');
INSERT INTO equipe VALUES ('EQU67', 'Sevilla', 'COMP4');
INSERT INTO equipe VALUES ('EQU174', 'Nottingham Forest', 'COMP2');
INSERT INTO equipe VALUES ('EQU146', 'Lorient', 'COMP22');
INSERT INTO equipe VALUES ('EQU228', 'Lyon', 'COMP22');

CREATE TABLE statistique_general (
    id_statistique INT AUTO_INCREMENT PRIMARY KEY,
    id_equipe VARCHAR(10),
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe),
    buts INT,
    tirs_pm DOUBLE,
    carton_j INT,
    carton_r INT,
    possession DOUBLE,
    passes_reussies DOUBLE,
    aeriens_gagnes DOUBLE,
    categorie VARCHAR(50),
    note DOUBLE
);

INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU37', 27.0, 21.666666666666668, 4.0, 1.0, 0.6185, 0.8882536382536382, 13.0, 'domicil', 7.21);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU36', 21.0, 19.333333333333332, 8.0, 0.0, 0.6548166666666667, 0.9017113783533766, 11.666666666666666, 'domicil', 7.05);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU24', 23.0, 15.333333333333334, 17.0, 0.0, 0.5757166666666667, 0.8675857646681628, 9.5, 'domicil', 7.04);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU26', 17.0, 21.5, 5.0, 1.0, 0.6689166666666666, 0.8793764375159724, 19.5, 'domicil', 7.04);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU167', 17.0, 12.5, 9.0, 2.0, 0.6057666666666666, 0.903577772139051, 7.5, 'domicil', 7.03);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU41', 20.0, 18.5, 8.0, 0.0, 0.5949166666666666, 0.8704475952182374, 16.166666666666668, 'domicil', 7.01);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU304', 20.0, 15.571428571428571, 5.0, 0.0, 0.7075285714285714, 0.9104255714551198, 6.428571428571429, 'domicil', 7.01);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU52', 15.0, 20.166666666666668, 11.0, 0.0, 0.5955833333333334, 0.8888888888888888, 8.833333333333334, 'domicil', 7.0);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU23', 18.0, 14.571428571428571, 20.0, 0.0, 0.5395857142857142, 0.835980363846376, 12.571428571428571, 'domicil', 6.93);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU7614', 19.0, 15.5, 9.0, 0.0, 0.5692666666666667, 0.864490298737296, 9.5, 'domicil', 6.91);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU65', 15.0, 16.0, 16.0, 0.0, 0.6570142857142858, 0.8914285714285715, 10.0, 'domicil', 6.89);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU75', 17.0, 17.714285714285715, 9.0, 0.0, 0.5197285714285714, 0.8616519174041298, 13.0, 'domicil', 6.89);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU249', 7.0, 15.0, 5.0, 0.0, 0.5201, 0.8546365914786967, 10.4, 'domicil', 6.89);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU248', 13.0, 13.166666666666666, 14.0, 0.0, 0.5543, 0.8308282699072593, 11.5, 'domicil', 6.87);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU63', 17.0, 16.0, 11.0, 0.0, 0.5338142857142857, 0.8575957727873184, 13.142857142857142, 'domicil', 6.84);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU84', 18.0, 14.142857142857142, 11.0, 0.0, 0.5429571428571428, 0.8443659899970579, 13.428571428571429, 'domicil', 6.84);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU607', 8.0, 12.333333333333334, 9.0, 1.0, 0.5683666666666667, 0.8344571813890762, 13.166666666666666, 'domicil', 6.83);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU13', 18.0, 15.0, 9.0, 1.0, 0.6164714285714286, 0.8825404610102991, 13.142857142857142, 'domicil', 6.82);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU54', 10.0, 15.285714285714286, 14.0, 0.0, 0.5296285714285714, 0.860291927316056, 12.285714285714286, 'domicil', 6.82);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU613', 7.0, 12.857142857142858, 11.0, 1.0, 0.5198571428571428, 0.8677202224173252, 9.714285714285714, 'domicil', 6.78);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU37', 16.0, 18.166666666666668, 13.0, 0.0, 0.6386833333333333, 0.8879710893133712, 12.5, 'exterieur', 7.12);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU304', 14.0, 17.833333333333332, 12.0, 0.0, 0.6489166666666667, 0.8991339786041773, 7.666666666666667, 'exterieur', 7.07);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU36', 16.0, 13.166666666666666, 15.0, 0.0, 0.5567, 0.8745056683364092, 7.5, 'exterieur', 6.91);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU75', 13.0, 14.666666666666666, 8.0, 0.0, 0.59825, 0.8664166185804962, 17.833333333333332, 'exterieur', 6.89);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU167', 16.0, 19.857142857142858, 14.0, 0.0, 0.6384, 0.9005901044030867, 8.285714285714286, 'exterieur', 6.89);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU52', 16.0, 15.5, 15.0, 1.0, 0.55585, 0.9027747432816255, 8.0, 'exterieur', 6.88);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU276', 16.0, 16.0, 17.0, 0.0, 0.5718, 0.8574579542321478, 11.714285714285714, 'exterieur', 6.86);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU30', 15.0, 14.285714285714286, 19.0, 1.0, 0.6214428571428572, 0.8820992092020129, 9.571428571428571, 'exterieur', 6.84);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU1211', 15.0, 11.5, 19.0, 0.0, 0.4877166666666667, 0.7753371868978806, 17.666666666666668, 'exterieur', 6.84);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU63', 13.0, 10.5, 14.0, 1.0, 0.5204333333333333, 0.8351472471190781, 12.166666666666666, 'exterieur', 6.83);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU87', 9.0, 10.833333333333334, 17.0, 0.0, 0.4807166666666667, 0.8321195860482944, 13.666666666666666, 'exterieur', 6.79);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU32', 8.0, 13.0, 11.0, 0.0, 0.4862833333333333, 0.8051470588235294, 15.333333333333334, 'exterieur', 6.77);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU13', 9.0, 14.0, 8.0, 1.0, 0.6053333333333333, 0.8590686274509803, 13.5, 'exterieur', 6.75);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU2783', 16.0, 13.428571428571429, 19.0, 0.0, 0.5477, 0.8562172169083616, 13.0, 'exterieur', 6.75);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU65', 12.0, 14.714285714285714, 17.0, 1.0, 0.6778428571428572, 0.8916975881261595, 14.285714285714286, 'exterieur', 6.74);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU162', 7.0, 12.857142857142858, 14.0, 0.0, 0.42038571428571425, 0.7798268724124953, 16.428571428571427, 'exterieur', 6.74);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU41', 11.0, 13.333333333333334, 8.0, 0.0, 0.5585, 0.841717791411043, 15.666666666666666, 'exterieur', 6.72);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU15', 12.0, 12.5, 25.0, 1.0, 0.5895666666666667, 0.8775692582663092, 10.0, 'exterieur', 6.71);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU31', 9.0, 11.166666666666666, 14.0, 1.0, 0.3779333333333333, 0.7473042662916081, 18.666666666666668, 'exterieur', 6.7);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU248', 14.0, 16.0, 17.0, 0.0, 0.5492428571428571, 0.8364446921147952, 11.0, 'exterieur', 6.7);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU37', 43.0, 19.916666666666668, 17.0, 1.0, 0.6285916666666665, 0.8881118881118881, 12.75, 'general', 7.16);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU304', 34.0, 16.615384615384617, 17.0, 0.0, 0.680476923076923, 0.9056624046416676, 7.0, 'general', 7.04);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU36', 37.0, 16.25, 23.0, 0.0, 0.6057583333333333, 0.8889983984230627, 9.583333333333334, 'general', 6.98);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU167', 33.0, 16.46153846153846, 23.0, 2.0, 0.6233384615384615, 0.9020007188211333, 7.923076923076923, 'general', 6.96);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU52', 31.0, 17.5, 26.0, 1.0, 0.5728857142857142, 0.8966442953020134, 8.357142857142858, 'general', 6.93);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU75', 30.0, 16.307692307692307, 17.0, 0.0, 0.5559692307692308, 0.8640606767794633, 15.23076923076923, 'general', 6.89);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU41', 31.0, 15.916666666666666, 16.0, 0.0, 0.5767, 0.8567886830975645, 15.916666666666666, 'general', 6.86);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU63', 30.0, 13.461538461538462, 25.0, 1.0, 0.5276384615384615, 0.8474453611231727, 12.692307692307692, 'general', 6.84);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU65', 27.0, 15.357142857142858, 33.0, 1.0, 0.6674285714285715, 0.8915621042937723, 12.142857142857142, 'general', 6.8100000000000005);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU23', 31.0, 13.153846153846153, 37.0, 0.0, 0.5326615384615385, 0.843531202435312, 10.846153846153847, 'general', 6.8);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU30', 25.0, 16.153846153846153, 34.0, 3.0, 0.6034538461538461, 0.8797333333333334, 8.76923076923077, 'general', 6.8);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU13', 27.0, 14.538461538461538, 17.0, 2.0, 0.6113307692307692, 0.8721056932715882, 13.307692307692308, 'general', 6.79);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU26', 28.0, 17.307692307692307, 23.0, 4.0, 0.5714461538461538, 0.8611338239302262, 14.384615384615385, 'general', 6.79);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU248', 27.0, 14.692307692307692, 31.0, 0.0, 0.5515692307692307, 0.8338296605122096, 11.23076923076923, 'general', 6.78);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU7614', 29.0, 14.5, 19.0, 0.0, 0.5787666666666667, 0.8441835645677694, 12.75, 'general', 6.78);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU276', 26.0, 17.923076923076923, 23.0, 1.0, 0.5851307692307692, 0.8679406731317741, 11.076923076923077, 'general', 6.77);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU24', 31.0, 14.923076923076923, 32.0, 0.0, 0.5228846153846154, 0.862257184138706, 8.153846153846153, 'general', 6.76);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU87', 20.0, 13.846153846153847, 35.0, 0.0, 0.4751538461538462, 0.8348964784993806, 13.615384615384615, 'general', 6.76);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU607', 17.0, 12.538461538461538, 28.0, 1.0, 0.5712307692307692, 0.8538760247375233, 11.692307692307692, 'general', 6.76);
INSERT INTO statistique_general (id_equipe, buts, tirs_pm, carton_j, carton_r, possession, passes_reussies, aeriens_gagnes, categorie, note) VALUES ('EQU2783', 32.0, 13.714285714285714, 32.0, 0.0, 0.5675071428571429, 0.8701902748414376, 11.785714285714286, 'general', 6.75);

CREATE TABLE statistique_defense (
    id_statistique INT AUTO_INCREMENT PRIMARY KEY,
    id_equipe VARCHAR(10),
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe),
    tirs_pm DOUBLE,
    tacles_pm DOUBLE,
    interceptions_pm DOUBLE,
    fautes_pm DOUBLE,
    hors_jeux_pm DOUBLE,
    categorie VARCHAR(50),
    note DOUBLE
);

INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU146', 17.285714285714285, 20.857142857142858, 12.142857142857142, 11.714285714285714, 1.8571428571428572, 'domicil', 6.73);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU67', 11.0, 20.714285714285715, 8.285714285714286, 14.428571428571429, 2.857142857142857, 'domicil', 6.71);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU31', 9.857142857142858, 20.0, 9.0, 11.571428571428571, 2.0, 'domicil', 6.57);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU84', 8.571428571428571, 20.0, 6.857142857142857, 12.857142857142858, 1.8571428571428572, 'domicil', 6.84);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU228', 12.428571428571429, 20.0, 10.142857142857142, 16.142857142857142, 1.7142857142857142, 'domicil', 6.47);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU148', 13.0, 19.857142857142858, 10.0, 13.857142857142858, 0.5714285714285714, 'domicil', 6.62);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU30', 13.833333333333334, 19.833333333333332, 8.166666666666666, 11.0, 3.1666666666666665, 'domicil', 6.76);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU51', 10.166666666666666, 19.833333333333332, 8.5, 14.0, 5.333333333333333, 'domicil', 6.57);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU161', 15.333333333333334, 19.666666666666668, 9.333333333333334, 15.5, 2.6666666666666665, 'domicil', 6.6);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU183', 13.857142857142858, 19.142857142857142, 9.285714285714286, 12.428571428571429, 1.2857142857142858, 'domicil', 6.54);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU941', 13.0, 19.0, 9.571428571428571, 12.428571428571429, 1.5714285714285714, 'domicil', 6.49);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU163', 19.857142857142858, 18.857142857142858, 9.142857142857142, 11.857142857142858, 2.0, 'domicil', 6.34);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU248', 10.0, 18.833333333333332, 11.166666666666666, 16.166666666666668, 2.1666666666666665, 'domicil', 6.87);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU95', 13.5, 18.666666666666668, 9.166666666666666, 12.0, 1.6666666666666667, 'domicil', 6.62);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU162', 11.666666666666666, 18.666666666666668, 8.0, 11.833333333333334, 1.5, 'domicil', 6.67);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU219', 10.2, 18.6, 12.0, 14.6, 2.4, 'domicil', 6.47);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU86', 9.166666666666666, 18.5, 6.166666666666667, 12.666666666666666, 1.3333333333333333, 'domicil', 6.43);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU45', 9.333333333333334, 18.166666666666668, 7.833333333333333, 11.666666666666666, 1.5, 'domicil', 6.62);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU80', 13.0, 17.833333333333332, 7.333333333333333, 12.166666666666666, 1.0, 'domicil', 6.7);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU174', 12.0, 17.833333333333332, 9.166666666666666, 9.5, 3.0, 'domicil', 6.6899999999999995);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU55', 12.142857142857142, 22.142857142857142, 9.0, 13.142857142857142, 0.7142857142857143, 'exterieur', 6.5);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU2332', 13.142857142857142, 22.142857142857142, 10.0, 12.285714285714286, 1.4285714285714286, 'exterieur', 6.61);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU311', 14.166666666666666, 21.666666666666668, 9.333333333333334, 12.166666666666666, 2.3333333333333335, 'exterieur', 6.65);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU272', 18.166666666666668, 21.333333333333332, 8.166666666666666, 11.166666666666666, 2.5, 'exterieur', 6.44);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU838', 13.625, 21.25, 7.25, 10.625, 2.0, 'exterieur', 6.54);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU163', 18.0, 20.833333333333332, 9.166666666666666, 11.833333333333334, 1.8333333333333333, 'exterieur', 6.34);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU30', 13.285714285714286, 20.571428571428573, 9.0, 12.142857142857142, 1.7142857142857142, 'exterieur', 6.84);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU304', 15.5, 20.5, 7.833333333333333, 10.5, 1.3333333333333333, 'exterieur', 7.07);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU950', 14.0, 20.285714285714285, 11.0, 16.428571428571427, 3.5714285714285716, 'exterieur', 6.65);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU31', 14.833333333333334, 20.166666666666668, 9.666666666666666, 12.5, 1.3333333333333333, 'exterieur', 6.7);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU109', 16.571428571428573, 20.142857142857142, 8.142857142857142, 12.428571428571429, 2.2857142857142856, 'exterieur', 6.44);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU162', 12.857142857142858, 20.142857142857142, 9.285714285714286, 11.285714285714286, 0.8571428571428571, 'exterieur', 6.74);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU248', 10.142857142857142, 20.142857142857142, 11.142857142857142, 14.428571428571429, 3.142857142857143, 'exterieur', 6.7);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU50', 16.833333333333332, 19.5, 9.833333333333334, 9.0, 2.0, 'exterieur', 6.4);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU309', 12.285714285714286, 19.428571428571427, 8.428571428571429, 14.285714285714286, 2.857142857142857, 'exterieur', 6.54);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU278', 12.714285714285714, 19.285714285714285, 10.428571428571429, 11.285714285714286, 1.0, 'exterieur', 6.45);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU15', 11.166666666666666, 19.166666666666668, 7.666666666666667, 14.833333333333334, 2.8333333333333335, 'exterieur', 6.71);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU148', 13.2, 19.0, 11.4, 13.8, 1.2, 'exterieur', 6.33);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU174', 15.142857142857142, 19.0, 9.571428571428571, 12.285714285714286, 2.0, 'exterieur', 6.47);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU282', 19.5, 19.0, 9.166666666666666, 12.5, 1.1666666666666667, 'exterieur', 6.39);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU30', 13.538461538461538, 20.23076923076923, 8.615384615384615, 11.615384615384615, 2.3846153846153846, 'general', 6.8);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU31', 12.153846153846153, 20.076923076923077, 9.307692307692308, 12.0, 1.6923076923076923, 'general', 6.63);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU2332', 11.5, 19.916666666666668, 9.75, 13.333333333333334, 0.9166666666666666, 'general', 6.67);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU163', 19.0, 19.76923076923077, 9.153846153846153, 11.846153846153847, 1.9230769230769231, 'general', 6.34);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU55', 9.714285714285714, 19.642857142857142, 9.5, 13.785714285714286, 1.2857142857142858, 'general', 6.57);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU67', 12.384615384615385, 19.615384615384617, 8.461538461538462, 12.923076923076923, 2.6923076923076925, 'general', 6.66);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU248', 10.076923076923077, 19.53846153846154, 11.153846153846153, 15.23076923076923, 2.6923076923076925, 'general', 6.78);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU148', 13.083333333333334, 19.5, 10.583333333333334, 13.833333333333334, 0.8333333333333334, 'general', 6.5);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU838', 11.857142857142858, 19.5, 7.928571428571429, 11.0, 2.0714285714285716, 'general', 6.57);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU162', 12.307692307692308, 19.46153846153846, 8.692307692307692, 11.538461538461538, 1.1538461538461537, 'general', 6.71);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU161', 14.461538461538462, 19.153846153846153, 8.692307692307692, 13.76923076923077, 2.1538461538461537, 'general', 6.63);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU950', 13.23076923076923, 19.153846153846153, 10.692307692307692, 14.615384615384615, 3.3076923076923075, 'general', 6.67);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU304', 12.076923076923077, 18.923076923076923, 7.923076923076923, 9.846153846153847, 1.4615384615384615, 'general', 7.04);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU51', 13.571428571428571, 18.642857142857142, 9.214285714285714, 16.5, 3.7142857142857144, 'general', 6.49);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU109', 15.416666666666666, 18.5, 9.583333333333334, 13.5, 2.25, 'general', 6.51);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU174', 13.692307692307692, 18.46153846153846, 9.384615384615385, 11.0, 2.4615384615384617, 'general', 6.57);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU183', 16.384615384615383, 18.46153846153846, 8.384615384615385, 12.461538461538462, 1.3076923076923077, 'general', 6.47);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU311', 13.923076923076923, 18.23076923076923, 8.923076923076923, 12.153846153846153, 2.3076923076923075, 'general', 6.66);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU282', 16.75, 18.166666666666668, 10.25, 11.75, 1.6666666666666667, 'general', 6.46);
INSERT INTO statistique_defense (id_equipe, tirs_pm, tacles_pm, interceptions_pm, fautes_pm, hors_jeux_pm, categorie, note) VALUES ('EQU941', 14.76923076923077, 18.076923076923077, 10.23076923076923, 12.153846153846153, 1.6923076923076923, 'general', 6.53);

CREATE TABLE statistique_attaque (
    id_statistique INT AUTO_INCREMENT PRIMARY KEY,
    id_equipe VARCHAR(10),
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe),
    tirs_pm DOUBLE,
    tirs_ca_pm DOUBLE,
    dribbles_pm DOUBLE,
    fautes_subies_pm DOUBLE,
    categorie VARCHAR(50),
    note DOUBLE
);

INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU161', 11.0, 3.5, 17.166666666666668, 10.666666666666666, 'domicil', 6.6);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU37', 21.666666666666668, 9.833333333333334, 14.5, 8.333333333333334, 'domicil', 7.21);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU613', 12.857142857142858, 3.142857142857143, 14.142857142857142, 11.285714285714286, 'domicil', 6.78);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU950', 11.833333333333334, 4.833333333333333, 12.833333333333334, 9.0, 'domicil', 6.6899999999999995);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU36', 19.333333333333332, 9.0, 12.333333333333334, 8.5, 'domicil', 7.05);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU41', 18.5, 9.0, 12.166666666666666, 11.666666666666666, 'domicil', 7.01);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU52', 20.166666666666668, 8.333333333333334, 12.166666666666666, 13.166666666666666, 'domicil', 7.0);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU167', 12.5, 5.333333333333333, 11.666666666666666, 11.666666666666666, 'domicil', 7.03);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU65', 16.0, 6.428571428571429, 11.571428571428571, 13.857142857142858, 'domicil', 6.89);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU607', 12.333333333333334, 5.333333333333333, 11.333333333333334, 14.166666666666666, 'domicil', 6.83);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU183', 12.142857142857142, 4.714285714285714, 11.285714285714286, 10.714285714285714, 'domicil', 6.54);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU304', 15.571428571428571, 6.285714285714286, 11.285714285714286, 13.142857142857142, 'domicil', 7.01);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU276', 20.166666666666668, 5.666666666666667, 11.166666666666666, 10.0, 'domicil', 6.66);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU86', 14.333333333333334, 5.166666666666667, 11.0, 11.333333333333334, 'domicil', 6.43);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU2332', 17.8, 5.6, 11.0, 13.4, 'domicil', 6.74);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU146', 9.285714285714286, 3.5714285714285716, 10.857142857142858, 12.0, 'domicil', 6.73);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU30', 18.333333333333332, 7.0, 10.833333333333334, 13.833333333333334, 'domicil', 6.76);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU54', 15.285714285714286, 4.285714285714286, 10.714285714285714, 14.142857142857142, 'domicil', 6.82);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU228', 15.571428571428571, 5.571428571428571, 10.714285714285714, 9.142857142857142, 'domicil', 6.47);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU925', 13.0, 5.571428571428571, 10.571428571428571, 13.142857142857142, 'domicil', 6.49);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU37', 18.166666666666668, 6.833333333333333, 16.833333333333332, 10.333333333333334, 'exterieur', 7.12);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU304', 17.833333333333332, 7.333333333333333, 13.333333333333334, 11.0, 'exterieur', 7.07);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU65', 14.714285714285714, 5.857142857142857, 12.857142857142858, 14.714285714285714, 'exterieur', 6.74);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU248', 16.0, 6.571428571428571, 11.142857142857142, 10.142857142857142, 'exterieur', 6.7);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU15', 12.5, 5.166666666666667, 11.0, 12.666666666666666, 'exterieur', 6.71);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU146', 8.0, 3.0, 11.0, 13.0, 'exterieur', 6.49);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU30', 14.285714285714286, 5.0, 10.857142857142858, 15.142857142857142, 'exterieur', 6.84);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU36', 13.166666666666666, 5.833333333333333, 10.833333333333334, 9.666666666666666, 'exterieur', 6.91);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU839', 9.166666666666666, 4.0, 10.833333333333334, 15.166666666666666, 'exterieur', 6.57);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU941', 10.666666666666666, 3.1666666666666665, 10.833333333333334, 15.0, 'exterieur', 6.58);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU607', 12.714285714285714, 5.142857142857143, 10.714285714285714, 14.0, 'exterieur', 6.7);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU2332', 13.428571428571429, 4.0, 10.428571428571429, 11.142857142857142, 'exterieur', 6.61);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU52', 15.5, 5.75, 10.375, 14.125, 'exterieur', 6.88);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU183', 12.666666666666666, 5.0, 10.333333333333334, 9.166666666666666, 'exterieur', 6.39);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU162', 12.857142857142858, 4.571428571428571, 10.285714285714286, 11.285714285714286, 'exterieur', 6.74);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU29', 12.142857142857142, 3.7142857142857144, 10.142857142857142, 9.571428571428571, 'exterieur', 6.68);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU54', 11.142857142857142, 3.5714285714285716, 10.0, 14.714285714285714, 'exterieur', 6.49);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU55', 9.571428571428571, 3.7142857142857144, 9.714285714285714, 12.714285714285714, 'exterieur', 6.5);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU925', 9.428571428571429, 3.142857142857143, 9.714285714285714, 14.857142857142858, 'exterieur', 6.3);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU63', 10.5, 4.833333333333333, 9.666666666666666, 11.833333333333334, 'exterieur', 6.83);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU37', 19.916666666666668, 8.333333333333334, 15.666666666666666, 9.333333333333334, 'general', 7.16);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU161', 12.0, 4.0, 13.0, 11.384615384615385, 'general', 6.63);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU304', 16.615384615384617, 6.769230769230769, 12.23076923076923, 12.153846153846153, 'general', 7.04);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU65', 15.357142857142858, 6.142857142857143, 12.214285714285714, 14.285714285714286, 'general', 6.8100000000000005);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU36', 16.25, 7.416666666666667, 11.583333333333334, 9.083333333333334, 'general', 6.98);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU613', 13.23076923076923, 4.461538461538462, 11.538461538461538, 10.615384615384615, 'general', 6.74);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU52', 17.5, 6.857142857142857, 11.142857142857142, 13.714285714285714, 'general', 6.93);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU607', 12.538461538461538, 5.230769230769231, 11.0, 14.076923076923077, 'general', 6.76);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU146', 8.692307692307692, 3.3076923076923075, 10.923076923076923, 12.461538461538462, 'general', 6.62);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU30', 16.153846153846153, 5.923076923076923, 10.846153846153847, 14.538461538461538, 'general', 6.8);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU183', 12.384615384615385, 4.846153846153846, 10.846153846153847, 10.0, 'general', 6.47);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU2332', 15.25, 4.666666666666667, 10.666666666666666, 12.083333333333334, 'general', 6.67);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU41', 15.916666666666666, 6.666666666666667, 10.583333333333334, 11.666666666666666, 'general', 6.86);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU950', 11.307692307692308, 4.461538461538462, 10.538461538461538, 8.692307692307692, 'general', 6.67);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU167', 16.46153846153846, 7.153846153846154, 10.384615384615385, 11.153846153846153, 'general', 6.96);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU54', 13.214285714285714, 3.9285714285714284, 10.357142857142858, 14.428571428571429, 'general', 6.66);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU248', 14.692307692307692, 6.538461538461538, 10.23076923076923, 11.384615384615385, 'general', 6.78);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU15', 13.846153846153847, 5.0, 10.153846153846153, 11.692307692307692, 'general', 6.66);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU162', 12.384615384615385, 4.384615384615385, 10.153846153846153, 11.923076923076923, 'general', 6.71);
INSERT INTO statistique_attaque (id_equipe, tirs_pm, tirs_ca_pm, dribbles_pm, fautes_subies_pm, categorie, note) VALUES ('EQU925', 11.214285714285714, 4.357142857142857, 10.142857142857142, 14.0, 'general', 6.39);

-- views

CREATE OR REPLACE VIEW v_equipe AS
SELECT e.id_equipe,e.nom as equipe,c.nom as competition FROM equipe e JOIN competition c ON e.id_competition = c.id_competition;

CREATE OR REPLACE VIEW v_general_general AS
SELECT e.equipe,e.competition,sg.buts,sg.tirs_pm,sg.carton_j,sg.carton_r,sg.possession,sg.passes_reussies,sg.aeriens_gagnes,sg.note FROM statistique_general sg JOIN v_equipe e ON sg.id_equipe = e.id_equipe WHERE sg.categorie = 'general';

CREATE OR REPLACE VIEW v_general_domicile AS
SELECT e.equipe,e.competition,sg.buts,sg.tirs_pm,sg.carton_j,sg.carton_r,sg.possession,sg.passes_reussies,sg.aeriens_gagnes,sg.note FROM statistique_general sg JOIN v_equipe e ON sg.id_equipe = e.id_equipe WHERE sg.categorie = 'domicil';

CREATE OR REPLACE VIEW v_general_exterieur AS
SELECT e.equipe,e.competition,sg.buts,sg.tirs_pm,sg.carton_j,sg.carton_r,sg.possession,sg.passes_reussies,sg.aeriens_gagnes,sg.note FROM statistique_general sg JOIN v_equipe e ON sg.id_equipe = e.id_equipe WHERE sg.categorie = 'exterieur';

-- 

CREATE OR REPLACE VIEW v_defense_general AS
SELECT e.equipe,e.competition,sd.tirs_pm,sd.tacles_pm,sd.interceptions_pm,sd.fautes_pm,sd.hors_jeux_pm,sd.note FROM statistique_defense sd JOIN v_equipe e ON sd.id_equipe = e.id_equipe WHERE sd.categorie = 'general';

CREATE OR REPLACE VIEW v_defense_domicile AS
SELECT e.equipe,e.competition,sd.tirs_pm,sd.tacles_pm,sd.interceptions_pm,sd.fautes_pm,sd.hors_jeux_pm,sd.note FROM statistique_defense sd JOIN v_equipe e ON sd.id_equipe = e.id_equipe WHERE sd.categorie = 'domicil';

CREATE OR REPLACE VIEW v_defense_exterieur AS
SELECT e.equipe,e.competition,sd.tirs_pm,sd.tacles_pm,sd.interceptions_pm,sd.fautes_pm,sd.hors_jeux_pm,sd.note FROM statistique_defense sd JOIN v_equipe e ON sd.id_equipe = e.id_equipe WHERE sd.categorie = 'exterieur';

-- 

CREATE OR REPLACE VIEW v_attaque_general AS
SELECT e.equipe,e.competition,sa.tirs_pm,sa.tirs_ca_pm,sa.dribbles_pm,sa.fautes_subies_pm,sa.note FROM statistique_attaque sa JOIN v_equipe e ON sa.id_equipe = e.id_equipe WHERE sa.categorie = 'general';

CREATE OR REPLACE VIEW v_attaque_domicile AS
SELECT e.equipe,e.competition,sa.tirs_pm,sa.tirs_ca_pm,sa.dribbles_pm,sa.fautes_subies_pm,sa.note FROM statistique_attaque sa JOIN v_equipe e ON sa.id_equipe = e.id_equipe WHERE sa.categorie = 'domicil';

CREATE OR REPLACE VIEW v_attaque_exterieur AS
SELECT e.equipe,e.competition,sa.tirs_pm,sa.tirs_ca_pm,sa.dribbles_pm,sa.fautes_subies_pm,sa.note FROM statistique_attaque sa JOIN v_equipe e ON sa.id_equipe = e.id_equipe WHERE sa.categorie = 'exterieur';
