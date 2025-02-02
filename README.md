# Portfolio Projets Data Engineering

## Projets en SQL, Power BI... : <br/>

#### Vous pouvez consulter mon Linkedin : linkedin.com/in/marie-floriane-choumpeau-mafounga/

- [x] **SQL & Power BI** - 
  - Projet e_commerce : BDD et analyse des données <br />
      *Voir sur Power BI Public:* **[Dashboard](https://app.powerbi.com/groups/me/reports/e0737ece-2b74-4876-9433-2275f91888fb/ReportSection?ctid=e065ecf4-22b4-4599-9daf-24c5cb5e12d3&pbi_source=shareVisual&visual=9315eb35a2449d427a9f&height=227.06&width=326.64&bookmarkGuid=b3e669ff-0eb8-4bc2-a0b2-323201e4caa9)**<br />
      *Consulter le script SQL de création de base de données et d'insertion de données:* **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/e2b4dd5c654d5c70c0b103e4e1ce4dfffe794dc6/SQL_creation_BDD)**<br />
      *Consulter le script SQL d'analyse de données:* **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/3fbd5aad57bf247209ce596dc42ef4b11169ac0a/SQL_Data_analyse)**<br />



![image](https://github.com/MariefloChm/DataengineerPortfolioProjects/assets/123181986/d913786b-0e0e-4c93-9cf6-911759a3080d)


  - Projet analyse des données d'une plateforme de streaming <br />

      *Consulter la feuille de route du projet:* **[ICI](https://www.notion.so/Etapes-du-projet-afe4cd1c824b4cf2be52bcc3dda469f0?pvs=4)**<br />
      *Consulter le résumé du projet:* **[ICI](https://www.notion.so/R-sum-du-Projet-d-Analyse-des-Donn-es-de-Streaming-d5de989c8d5e436fb280699623f1d7d8?pvs=4)**<br />
      *Voir sur Power BI Public:* **[Dashboard](https://app.powerbi.com/groups/me/reports/a95c34d6-0008-427a-a759-f9df4ed69317?ctid=e065ecf4-22b4-4599-9daf-24c5cb5e12d3&pbi_source=linkShare)**<br />
      *Consulter la base de données Kaggle utilisée pour ce projet:* **[ICI](https://www.kaggle.com/datasets/rajatkumar30/streaming-application-viewership/data)**<br />
      *Consulter le script SQL  de nettoyage des données:* **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/e2b4dd5c654d5c70c0b103e4e1ce4dfffe794dc6/SQL_creation_BDD)**<br />
      *Consulter le script SQL de filtrage des données:* **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/3fbd5aad57bf247209ce596dc42ef4b11169ac0a/SQL_Data_analyse)**<br />
      *Consulter le script SQL contenant les jointures:* **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/3fbd5aad57bf247209ce596dc42ef4b11169ac0a/SQL_Data_analyse)**<br />
      *Consulter le script SQL contenant les CTEs:* **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/3fbd5aad57bf247209ce596dc42ef4b11169ac0a/SQL_Data_analyse)**<br />
      *Consulter le script SQL contenant les sous-requêtes:* **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/3fbd5aad57bf247209ce596dc42ef4b11169ac0a/SQL_Data_analyse)**<br />

    ![image](https://github.com/MariefloChm/DataengineerPortfolioProjects/assets/123181986/7855fd53-f2a2-4ff6-8545-19cf51802d9d)


## Projets en Python : <br/>

  - Projet d'analyse des données météorologiques <br />
  
      *Description:*
Ce projet vise à analyser des données météorologiques et à développer un modèle prédictif pour estimer les températures futures. Nous avons utilisé des techniques de machine learning pour atteindre cet objectif.

      *Objectifs:*
    - Préparation des données
    - Analyse exploratoire des données (EDA)
    - Développement et évaluation de modèles prédictifs
    - Validation croisée pour évaluer la robustesse des modèles

    *Data:*
lien vers la BDD https://meteo.data.gouv.fr/datasets/6569b27598256cc583c917a7

    *Analyse Exploratoire des Données (EDA)*
    - Visualisation des données
    - Statistiques descriptives
    - Identification des relations entre les variables

    *Modélisation et Prédiction*
     - Sélection des caractéristiques pertinentes
     - Division des données en ensembles d'entraînement et de test
     - Entraînement et évaluation des modèles
     - Validation croisée pour évaluer la robustesse des modèles

    ### Résultats
    #### RMSE sur l'ensemble de test
    8.358149640383994e-14

    #### Scores de validation croisée
    [2.01264151e-12, 2.49099479e-13, 2.21331366e-13, 2.08240526e-12, 3.92456706e-13]

    ### Utilisation
    #### Prérequis
    - Python 3.x
    - Pandas
    - NumPy
    - Scikit-learn
    - Matplotlib
    - Seaborn

    #### Installation
  Clonez le dépôt et installez les dépendances :
```bash
git clone https://github.com/MariefloChm/DataengineerPortfolioProjects.git
cd votre-repo
pip install -r requirements.txt
```

  #### Exécution
  Exécutez le notebook Jupyter pour reproduire l'analyse et les résultats :
```jupyter notebook projet_python1.ipynb```

voir le jupyter notebook **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/main/projet_python1.ipynb)**<br />







- **Projet d'analyse des données immobilières** <br />

    *Description:*
Ce projet vise à analyser des données immobilières en France et à développer un modèle prédictif pour estimer les valeurs foncières des biens immobiliers. Nous avons utilisé des techniques avancées de Machine Learning pour atteindre cet objectif.

    *Objectifs:*
    - Préparation et enrichissement des données
    - Analyse exploratoire des données (EDA)
    - Développement, optimisation et évaluation de modèles prédictifs (Régression Linéaire et XGBoost)
    - Analyse des résidus pour évaluer la performance des modèles

    *Data:*
Le dataset contient des informations sur les transactions immobilières en France, y compris les prix des biens, les surfaces bâties et les terrains associés.  
Lien vers la BDD : [**disponible** (propriétaire privé)](https://www.kaggle.com/datasets/franoisgeorgesjulien/france-total-real-estate-sales-2022)

    *Analyse Exploratoire des Données (EDA):*
    - Nettoyage des données (remplacement des valeurs manquantes et gestion des outliers)
    - Création de nouvelles caractéristiques comme la densité bâtie et le rapport pièces/surface
    - Statistiques descriptives pour comprendre la distribution des variables clés
    - Visualisation des données pour identifier des tendances et des relations

    *Modélisation et Prédiction:*
     - Sélection des caractéristiques pertinentes : surface réelle bâtie, nombre de pièces principales, surface terrain, densité bâtie, rapport pièces/surface
     - Division des données en ensembles d'entraînement et de test (80% / 20%)
     - Entraînement des modèles : Régression Linéaire et XGBoost
     - Évaluation des performances avec le RMSE
     - Analyse graphique des prédictions vs valeurs réelles et des résidus

    ### Résultats
    #### Régression Linéaire
    - **RMSE sur l'ensemble de test :** 6 266 840  
    #### XGBoost
    - **RMSE sur l'ensemble de test :** 5 435 926

    ### Utilisation
    #### Prérequis
    - Python 3.x
    - Pandas
    - NumPy
    - Scikit-learn
    - Matplotlib
    - XGBoost

    #### Installation
  Clonez le dépôt et installez les dépendances :
```bash
git clone https://github.com/MariefloChm/DataengineerPortfolioProjects.git
cd votre-repo
pip install -r requirements.txt
```

  #### Exécution
  Exécutez le notebook Jupyter pour reproduire l'analyse et les résultats :
```jupyter notebook PostPython3.ipynb```

voir le jupyter notebook **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/main/PostPython3.ipynb)**<br />




# Projet Python Semaine 4 : Optimisation des Modèles et Techniques Avancées

## Description
Ce projet fait partie d'une série d'exploration de Python en un mois. Lors de cette quatrième semaine, nous avons exploré l'optimisation des modèles de machine learning et introduit les réseaux de neurones avec Keras.

## Objectifs :
- Optimiser les performances des modèles via **GridSearchCV**.
- Expérimenter avec **XGBoost** et comparer ses résultats avec des réseaux de neurones.
- Créer des visualisations pour analyser les performances des modèles.

## Étapes principales :
1. **Préparation des données** :
   - Traitement des valeurs manquantes et des outliers.
   - Normalisation des données avec `MinMaxScaler`.

2. **Optimisation des modèles** :
   - Réglage des hyperparamètres via GridSearchCV pour XGBoost.
   - Introduction aux réseaux de neurones avec Keras.

3. **Visualisations des résultats** :
   - Comparaison des valeurs prédites et réelles.
   - Analyse des résidus pour évaluer la qualité des modèles.

## Résultats :
- **XGBoost** :
  - RMSE après optimisation : `5.8M`.
- **Réseaux de Neurones** :
  - RMSE : `6.2M`.

## Prérequis :
- Python 3.x
- Bibliothèques listées dans `requirements.txt`

## Installation :
Clonez ce dépôt et installez les dépendances :
```bash
git clone https://github.com/VotreNomUtilisateur/VotreDepot.git
cd VotreDepot
pip install -r requirements.txt
```

 #### Exécution :
  Exécutez le notebook Jupyter pour reproduire l'analyse et les résultats :
```jupyter notebook PostPython4.ipynb```

voir le jupyter notebook **[ICI](https://github.com/MariefloChm/DataengineerPortfolioProjects/blob/main/PostPython4.ipynb)**<br />
