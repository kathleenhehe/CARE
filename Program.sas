*********************************************************************
 MAY 22, 2008 11:43 AM
 
 This is an example of a SAS program that creates a SAS
 file from the 2007 NHIS Public Use ALTHEALT.DAT ASCII file
 
 This is stored in ALTHEALT.SAS
*********************************************************************;

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS;
LIBNAME  NHIS     "C:\NHIS2007";

* USER NOTE: PLACE NEXT STATEMENT IN SUBSEQUENT PROGRAMS
             IF YOU ALLOW PROGRAM TO PERMANENTLY STORE FORMATS;
LIBNAME  LIBRARY  "C:\NHIS2007";

FILENAME ASCIIDAT 'C:\NHIS2007\ALTHEALT.dat';

* DEFINE VARIABLE VALUES FOR REPORTS;

*  USE THE STATEMENT "PROC FORMAT LIBRARY=LIBRARY"
     TO PERMANENTLY STORE THE FORMAT DEFINITIONS;

*  USE THE STATEMENT "PROC FORMAT" IF YOU DO NOT WISH
      TO PERMANENTLY STORE THE FORMATS;

PROC FORMAT LIBRARY=LIBRARY;
*PROC FORMAT;

   VALUE $GROUPC
      ' '< - HIGH   = "All Values"
   ;
   VALUE GROUPN
      LOW - HIGH   = "All Values"
   ;
   VALUE $VERBAT
      ' '< - HIGH   = "Verbatim Response"
   ;
   VALUE ADP001X
      10                 = "10 Household"
      20                 = "20 Person"
      30                 = "30 Sample Adult"
      31                 = "31 Sample Adult Cancer"
      34                 = "34 Adult Alternative Medicine"
      40                 = "40 Sample Child"
      44                 = "44 Child Alternative Medicine"
      60                 = "60 Family"
      70                 = "70 Injury/Poisoning Episode"
      75                 = "75 Injury/Poisoning Verbatim"
   ;
   VALUE ADP002X
      .                   = '.'
      OTHER              = "Survey Year"
   ;
   VALUE ADP009X
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP019X
      1                  = "1 Only one time"
      2                  = "2 2-5 times"
      3                  = "3 6-10 times"
      4                  = "4 11-15 times"
      5                  = "5 16-20 times"
      6                  = "6 More than 20 times"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP020X
      500                = "500 $500 or more"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE ADP022X
      1                  = "1 Mentioned"
      2                  = "2 Not mentioned"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP109X
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $ADP110X
      "97"               = "97 Refused"
      "98"               = "98 Not ascertained"
      "99"               = "99 Don't know"
      OTHER              = "Verbatim response"
      ' '                 = ' '
   ;
   VALUE ADP111X
      01                 = "01 Acid reflux or heartburn"
      02                 = "02 Angina"
      03                 = "03 Anxiety"
      04                 = "04 Asthma"
      05                 = "05 Arthritis"
      06                 = "06 Attention Deficit Disorder/Hyperactivity"
      07                 = "07 Autism"
      08                 = "08 Benign tumors, cysts"
      09                 = "09 Bipolar Disorder"
      10                 = "10 Birth defect"
      11                 = "11 Cancer"
      12                 = "12 Cholesterol"
      13                 = "13 Chronic Bronchitis"
      14                 = "14 Circulation problems (other than in the legs)"
      15                 = "15 Constipation severe enough to require medication"
      16                 = "16 Coronary heart disease"
      17                 = "17 Dementia, including Alzheimer's Disease"
      18                 = "18 Dental pain"
      19                 = "19 Depression"
      20                 = "20 Diabetes"
      21                 = "21 Emphysema"
      22                 = "22 Excessive sleepiness during the day"
      23                 = "23 Excessive use of alcohol or tobacco"
      24                 = "24 Fibromyalgia"
      25                 = "25 Fracture, bone/joint injury"
      26                 = "26 Gout"
      27                 = "27 Gum disease"
      28                 = "28 Gynecologic problem"
      29                 = "29 Hay fever"
      30                 = "30 Hearing problem"
      31                 = "31 Heart attack"
      32                 = "32 Other heart condition or disease"
      33                 = "33 Hernia"
      34                 = "34 Hypertension"
      35                 = "35 Inflammatory bowel disease"
      36                 = "36 Influenza or pneumonia"
      37                 = "37 Insomnia or trouble sleeping"
      38                 = "38 Irritable bowel"
      39                 = "39 Jaw pain"
      40                 = "40 Joint pain or stiffness/other joint condition"
      41                 = "41 Knee problems (not arthritis, not joint injury)"
      42                 = "42 Liver problem"
      43                 = "43 Lung/breathing problem (not already listed)"
      44                 = "44 Lupus"
      45                 = "45 Mania or psychosis"
      46                 = "46 Memory loss or loss of other cognitive function"
      47                 = "47 Menopause"
      48                 = "48 Menstrual problems"
      49                 = "49 Mental retardation"
      50                 = "50 Missing limbs (fingers, toes or digits), amputee"
      51                 = "51 Osteoporosis, tendinitis"
      52                 = "52 Other developmental problem"
      53                 = "53 Other injury"
      54                 = 
"54 Other nerve damage, including carpal tunnel syndrome"
      55                 = "55 Phobia or fears"
      56                 = "56 Polio (myelitis), paralysis, para/quadriplegia"
      57                 = "57 Poor circulation in legs"
      58                 = "58 Prostate trouble or impotence"
      59                 = "59 Regular headaches"
      60                 = "60 Rheumatoid arthritis"
      61                 = "61 Schizophrenia"
      62                 = "62 Seizures"
      63                 = "63 Senility"
      64                 = "64 Sinusitis"
      65                 = "65 Skin problems"
      66                 = "66 Sprain or strain"
      67                 = "67 Stroke"
      68                 = "68 Substance abuse, other than alcohol or tobacco"
      69                 = "69 Filled problem"
      70                 = "70 Filled problem"
      71                 = "71 Ulcer"
      72                 = "72 Urinary problem"
      73                 = "73 Varicose veins, hemorrhoids"
      74                 = "74 Vision problem"
      75                 = "75 Weak or failing kidneys"
      76                 = "76 Weight problem"
      77                 = "77 Back pain or problem"
      78                 = "78 Head or chest cold"
      79                 = "79 Neck pain or problem"
      80                 = "80 Severe headache or migraine"
      81                 = "81 Stomach or intestinal illness"
      82                 = "82 Other - specify"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE ADP118X
      1                  = "1 Before"
      2                  = "2 At about the same time"
      3                  = "3 After"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP156K
      01                 = "01 Curandero"
      02                 = "02 Espiritista"
      03                 = "03 Hierbero or Yerbera"
      04                 = "04 Shaman"
      05                 = "05 Botanica"
      06                 = "06 Native American Healer/Medicine man"
      07                 = "07 Sobador"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE ADP285K
      1                  = "1 Feldenkreis"
      2                  = "2 Alexander Technique"
      3                  = "3 Pilates"
      4                  = "4 Trager Psychophysical Integration"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP545K
      01                 = "01 First combination herb pill"
      02                 = "02 Androstenedione"
      03                 = "03 Black cohosh"
      04                 = "04 Carnitine"
      05                 = "05 Chasteberry"
      06                 = "06 Condroitin"
      07                 = "07 Coenzyme Q-10"
      08                 = "08 Comfrey"
      09                 = "09 Conjugated Linolenic Acid (CLA)"
      10                 = "10 Cranberry (pills, gelcaps)"
      11                 = "11 Creatine"
      12                 = "12 DHEA"
      13                 = "13 Echinacea"
      14                 = "14 Ephedra"
      15                 = "15 Evening primrose"
      16                 = "16 Feverfew"
      17                 = "17 Fiber or Psyllium (pills or powder)"
      18                 = "18 Fish oil or omega 3 or DHA fatty acid supplements
"
      19                 = "19 Flaxseed Oil or Pills"
      20                 = "20 Garlic supplements (pills, gelcaps)"
      21                 = "21 Ginger pills or gelcaps"
      22                 = "22 Ginkgo biloba"
      23                 = "23 Ginseng"
      24                 = "24 Glucosamine"
      25                 = "25 Goldenseal"
      26                 = "26 Guarana"
      27                 = "27 Grape Seed Extract"
      28                 = "28 Green tea pills (not brewed tea)"
      29                 = "29 EGCG (pills)"
      30                 = "30 Hawthorn"
      31                 = "31 Horny Goat Weed"
      32                 = "32 Kava kava"
      33                 = "33 Lecithin"
      34                 = "34 Lutein"
      35                 = "35 Lycopene"
      36                 = "36 Melatonin"
      37                 = "37 MSM (Methylsulfonylmethane)"
      38                 = "38 Milk thistle"
      39                 = "39 Prebiotics or Probiotics"
      40                 = "40 SAM-e"
      41                 = "41 Saw palmetto"
      42                 = "42 Senna"
      43                 = "43 Soy supplements or soy isoflavones"
      44                 = "44 St. John's wort"
      45                 = "45 Valerian"
      47                 = "47 Second combination herb pill"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE ADP547K
      1                  = "1 Yes"
      2                  = "2 No"
      7                  = "7 Refused"
      8                  = "8 Not asceratained"
      9                  = "9 Don't know"
   ;
   VALUE ADP751K
      1                  = "1 Same reasons"
      2                  = "2 Different reasons"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP022L
      01                 = "01 Multivitamin and/or mineral combination"
      02                 = "02 Calcium"
      03                 = "03 Chromium"
      04                 = "04 Coral Calcium"
      05                 = "05 Folic acid/folate"
      06                 = "06 Iron"
      07                 = "07 Magnesium"
      08                 = "08 Niacin"
      09                 = "09 Potassium"
      10                 = "10 Selenium"
      11                 = "11 Vitamin A"
      12                 = "12 Vitamin B complex"
      13                 = "13 Vitamin B6"
      14                 = "14 Vitamin B12"
      15                 = "15 Vitamin C"
      16                 = "16 Vitamin D"
      17                 = "17 Vitamin E"
      18                 = "18 Vitamin K"
      19                 = "19 Zinc"
      20                 = "20 Vitamin Packet"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE $ADP226L
      "97"               = "97 Refused"
      "98"               = "98 Not acertained"
      "99"               = "99 Don't know"
      OTHER              = "Verbatim response"
      ' '                 = ' '
   ;
   VALUE ADP441L
      000                = "000 Never"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE ADP442L
      0                  = "0 Never"
      1                  = "1 Day"
      2                  = "2 Week"
      3                  = "3 Month"
      4                  = "4 Year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP443L
      1                  = "1 Under $15"
      2                  = "2 $15-$29"
      3                  = "3 $30-$59"
      4                  = "4 $60-$89"
      5                  = "5 $90-$119"
      6                  = "6 $120 or more"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP449L
      000                = "000 Do not buy"
      997                = "997 Refused"
      998                = "998 Not ascertained"
      999                = "999 Don't know"
   ;
   VALUE ADP450L
      0                  = "0 Do not buy"
      1                  = "1 Day"
      2                  = "2 Week"
      3                  = "3 Month"
      4                  = "4 Year"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP542L
      01                 = "01 Acid reflux or heartburn"
      02                 = "02 Angina"
      03                 = "03 Anxiety"
      04                 = "04 Asthma"
      05                 = "05 Arthritis"
      06                 = "06 Attention Deficit Disorder/Hyperactivity"
      07                 = "07 Autism"
      08                 = "08 Benign tumors, cysts"
      09                 = "09 Bipolar Disorder"
      10                 = "10 Birth defect"
      11                 = "11 Cancer"
      12                 = "12 Cholesterol"
      13                 = "13 Chronic Bronchitis"
      14                 = "14 Circulation problems (other than in the legs)"
      15                 = "15 Constipation severe enough to require medication"
      16                 = "16 Coronary heart disease"
      17                 = "17 Dementia, including Alzheimer's Disease"
      18                 = "18 Dental pain"
      19                 = "19 Depression"
      20                 = "20 Diabetes"
      21                 = "21 Emphysema"
      22                 = "22 Excessive sleepiness during the day"
      23                 = "23 Excessive use of alcohol or tobacco"
      24                 = "24 Fibromyalgia"
      25                 = "25 Fracture, bone/joint injury"
      26                 = "26 Gout"
      27                 = "27 Gum disease"
      28                 = "28 Gynecologic problem"
      29                 = "29 Hay fever"
      30                 = "30 Hearing problem"
      31                 = "31 Heart attack"
      32                 = "32 Other heart condition or disease"
      33                 = "33 Hernia"
      34                 = "34 Hypertension"
      35                 = "35 Inflammatory bowel disease"
      36                 = "36 Influenza or pneumonia"
      37                 = "37 Insomnia or trouble sleeping"
      38                 = "38 Irritable bowel"
      39                 = "39 Jaw pain"
      40                 = "40 Joint pain or stiffness/other joint condition"
      41                 = "41 Knee problems (not arthritis, not joint injury)"
      42                 = "42 Liver problem"
      43                 = "43 Lung/breathing problem (not already listed)"
      44                 = "44 Lupus"
      45                 = "45 Mania or psychosis"
      46                 = "46 Memory loss or loss of other cognitive functions"
      47                 = "47 Menopause"
      48                 = "48 Menstrual problems"
      49                 = "49 Mental retardation"
      50                 = "50 Missing limbs (fingers, toes or digits), amputee"
      51                 = "51 Osteoporosis, tendinitis"
      52                 = "52 Other developmental problem"
      53                 = "53 Other injury"
      54                 = 
"54 Other nerve damage, including carpal tunnel syndrome"
      55                 = "55 Phobia or fears"
      56                 = "56 Polio (myelitis), paralysis, para/quadriplegia"
      57                 = "57 Poor circulation in legs"
      58                 = "58 Prostate trouble or impotence"
      59                 = "59 Regular headaches"
      60                 = "60 Rheumatoid arthritis"
      61                 = "61 Schizophrenia"
      62                 = "62 Seizures"
      63                 = "63 Senility"
      64                 = "64 Sinusitis"
      65                 = "65 Skin problems"
      66                 = "66 Sprain or strain"
      67                 = "67 Stroke"
      68                 = "68 Substance abuse, other than alcohol or tobacco"
      69                 = "69 Filled problem"
      70                 = "70 Filled problem"
      71                 = "71 Ulcer"
      72                 = "72 Urinary problem"
      73                 = "73 Varicose veins, hemorrhoids"
      74                 = "74 Vision problems"
      75                 = "75 Weak or failing kidneys"
      76                 = "76 Weight problems"
      77                 = "77 Back pain or problem"
      78                 = "78 Head or chest cold"
      79                 = "79 Neck pain or problem"
      80                 = "80 Severe headache or migraine"
      81                 = "81 Stomach or intestinal illness"
      82                 = "82 Other - specify"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE ADP588L
      01                 = "01 Vegetarian"
      02                 = "02 Macrobiotic"
      03                 = "03 Atkins"
      04                 = "04 Pritikin"
      05                 = "05 Ornish"
      06                 = "06 Zone"
      07                 = "07 South Beach"
      97                 = "97 Refused"
      98                 = "98 Not Ascertained"
      99                 = "99 Don't Know"
   ;
   VALUE ADP723L
      1                  = "1 Yoga"
      2                  = "2 Tai Chi"
      3                  = "3 Qi Gong"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP834L
      01                 = "01 2-11 times a year"
      02                 = "02 Monthly"
      03                 = "03 2-3 times per month"
      04                 = "04 Weekly"
      05                 = "05 2-3 times per week"
      06                 = "06 4-6 times per week"
      07                 = "07 Daily"
      97                 = "97 Refused"
      98                 = "98 Not ascertained"
      99                 = "99 Don't know"
   ;
   VALUE ADP878L
      1                  = "1 Meditation"
      2                  = "2 Guided imagery"
      3                  = "3 Progressive relaxation"
      4                  = "4 Deep breathing exercises"
      5                  = "5 Support group meeting"
      6                  = "6 Stress management class"
      7                  = "7 Refused"
      8                  = "8 Not ascertained"
      9                  = "9 Don't know"
   ;
   VALUE ADP027M
      1                  = "1 Not ascertained answers only"
      2                  = "2 Refused and don't know answers only"
      3                  = "3 Refused, DK, and not ascertained answers only"
      4                  = "4 At least one valid answer"
   ;

DATA NHIS.ALTHEALT;
   * CREATE A SAS DATA SET;
   INFILE ASCIIDAT PAD LRECL=5216;

   * DEFINE LENGTH OF ALL VARIABLES;

   LENGTH

      /* IDN LENGTHS */

      RECTYPE  $ 3   SRVY_YR    4   HHX      $ 6   FMX      $ 2
      FPX      $ 2   WTFA_SA    8

      /* UCF LENGTHS */

      STRAT_P    4   PSU_P      3

      /* ALT LENGTHS */

      ACU_EVER   3   AYU_EVER   3   BIO_EVER   3   CHE_EVER   3
      COM_EVER   3   EHT_EVER   3   HYP_EVER   3   MAS_EVER   3
      NAT_EVER   3   ACU_USEM   3   ACU_NUM    3   ACU_PAY    4
      ACU_TRET   3   ACUCND01   3   ACUCND02   3   ACUCND03   3
      ACUCND04   3   ACUCND05   3   ACUCND06   3   ACUCND07   3
      ACUCND08   3   ACUCND09   3   ACUCND10   3   ACUCND11   3
      ACUCND12   3   ACUCND13   3   ACUCND14   3   ACUCND15   3
      ACUCND16   3   ACUCND17   3   ACUCND18   3   ACUCND19   3
      ACUCND20   3   ACUCND21   3   ACUCND22   3   ACUCND23   3
      ACUCND24   3   ACUCND25   3   ACUCND26   3   ACUCND27   3
      ACUCND28   3   ACUCND29   3   ACUCND30   3   ACUCND31   3
      ACUCND32   3   ACUCND33   3   ACUCND34   3   ACUCND35   3
      ACUCND36   3   ACUCND37   3   ACUCND38   3   ACUCND39   3
      ACUCND40   3   ACUCND41   3   ACUCND42   3   ACUCND43   3
      ACUCND44   3   ACUCND45   3   ACUCND46   3   ACUCND47   3
      ACUCND48   3   ACUCND49   3   ACUCND50   3   ACUCND51   3
      ACUCND52   3   ACUCND53   3   ACUCND54   3   ACUCND55   3
      ACUCND56   3   ACUCND57   3   ACUCND58   3   ACUCND59   3
      ACUCND60   3   ACUCND61   3   ACUCND62   3   ACUCND63   3
      ACUCND64   3   ACUCND65   3   ACUCND66   3   ACUCND67   3
      ACUCND68   3   ACUCND69   3   ACUCND70   3   ACUCND71   3
      ACUCND72   3   ACUCND73   3   ACUCND74   3   ACUCND75   3
      ACUCND76   3   ACUCND77   3   ACUCND78   3   ACUCND79   3
      ACUCND80   3   ACUCND81   3   ACUCND82   3   ACUCND83   3
      ACUCND84   3   ACUCND85   3   ACUCND86   3   ACUCND87   3
      ACUCONCT   3   ACU_SPEC $ 75  ACU_MOST   3   ACUMED00   3
      ACUMED01   3   ACUMED02   3   ACUMED03   3   ACUMED04   3
      ACUMED05   3   ACU_TIM1   3   ACU_TIM2   3   ACU_TIM3   3
      ACU_TIM4   3   ACU_TIM5   3   ACU_ENG    3   ACU_WEL    3
      ACU_IMM    3   ACU_NOHP   3   ACU_EXPS   3   ACU_SUGG   3
      ACU_FFC    3   ACUDISC    3   ACUPRF1    3   ACUPRF2    3
      ACUPRF3    3   ACUPRF4    3   ACUPRF5    3   ACUPRF6    3
      ACUPRF7    3   ACUMNOT1   3   ACUMNOT2   3   ACUMNOT3   3
      ACUMNOT4   3   ACUMNOT5   3   ACUMNOT6   3   ACUMNOT7   3
      ACUMNOT8   3   ACUMNOT9   3   ACU_SDEF $ 75  ACU_ATT    3
      ACUNNT01   3   ACUNNT02   3   ACUNNT03   3   ACUNNT04   3
      ACUNNT05   3   ACUNNT06   3   ACUNNT07   3   ACUNNT08   3
      ACUNNT09   3   ACUNNT10   3   AYU_USEM   3   AYU_NUM    3
      AYU_PAY    4   AYU_TRET   3   AYUCND01   3   AYUCND02   3
      AYUCND03   3   AYUCND04   3   AYUCND05   3   AYUCND06   3
      AYUCND07   3   AYUCND08   3   AYUCND09   3   AYUCND10   3
      AYUCND11   3   AYUCND12   3   AYUCND13   3   AYUCND14   3
      AYUCND15   3   AYUCND16   3   AYUCND17   3   AYUCND18   3
      AYUCND19   3   AYUCND20   3   AYUCND21   3   AYUCND22   3
      AYUCND23   3   AYUCND24   3   AYUCND25   3   AYUCND26   3
      AYUCND27   3   AYUCND28   3   AYUCND29   3   AYUCND30   3
      AYUCND31   3   AYUCND32   3   AYUCND33   3   AYUCND34   3
      AYUCND35   3   AYUCND36   3   AYUCND37   3   AYUCND38   3
      AYUCND39   3   AYUCND40   3   AYUCND41   3   AYUCND42   3
      AYUCND43   3   AYUCND44   3   AYUCND45   3   AYUCND46   3
      AYUCND47   3   AYUCND48   3   AYUCND49   3   AYUCND50   3
      AYUCND51   3   AYUCND52   3   AYUCND53   3   AYUCND54   3
      AYUCND55   3   AYUCND56   3   AYUCND57   3   AYUCND58   3
      AYUCND59   3   AYUCND60   3   AYUCND61   3   AYUCND62   3
      AYUCND63   3   AYUCND64   3   AYUCND65   3   AYUCND66   3
      AYUCND67   3   AYUCND68   3   AYUCND69   3   AYUCND70   3
      AYUCND71   3   AYUCND72   3   AYUCND73   3   AYUCND74   3
      AYUCND75   3   AYUCND76   3   AYUCND77   3   AYUCND78   3
      AYUCND79   3   AYUCND80   3   AYUCND81   3   AYUCND82   3
      AYUCND83   3   AYUCND84   3   AYUCND85   3   AYUCND86   3
      AYUCND87   3   AYUCONCT   3   AYU_SPEC $ 75  AYU_MOST   3
      AYUMED00   3   AYUMED01   3   AYUMED02   3   AYUMED03   3
      AYUMED04   3   AYUMED05   3   AYU_TIM1   3   AYU_TIM2   3
      AYU_TIM3   3   AYU_TIM4   3   AYU_TIM5   3   AYU_ENG    3
      AYU_WEL    3   AYU_IMM    3   AYU_NOHP   3   AYU_EXPS   3
      AYU_SUGG   3   AYU_FFC    3   AYUDISC    3   AYUPRF1    3
      AYUPRF2    3   AYUPRF3    3   AYUPRF4    3   AYUPRF5    3
      AYUPRF6    3   AYUPRF7    3   BIO_USEM   3   BIO_NUM    3
      BIO_PAY    4   BIO_TRET   3   BIOCND01   3   BIOCND02   3
      BIOCND03   3   BIOCND04   3   BIOCND05   3   BIOCND06   3
      BIOCND07   3   BIOCND08   3   BIOCND09   3   BIOCND10   3
      BIOCND11   3   BIOCND12   3   BIOCND13   3   BIOCND14   3
      BIOCND15   3   BIOCND16   3   BIOCND17   3   BIOCND18   3
      BIOCND19   3   BIOCND20   3   BIOCND21   3   BIOCND22   3
      BIOCND23   3   BIOCND24   3   BIOCND25   3   BIOCND26   3
      BIOCND27   3   BIOCND28   3   BIOCND29   3   BIOCND30   3
      BIOCND31   3   BIOCND32   3   BIOCND33   3   BIOCND34   3
      BIOCND35   3   BIOCND36   3   BIOCND37   3   BIOCND38   3
      BIOCND39   3   BIOCND40   3   BIOCND41   3   BIOCND42   3
      BIOCND43   3   BIOCND44   3   BIOCND45   3   BIOCND46   3
      BIOCND47   3   BIOCND48   3   BIOCND49   3   BIOCND50   3
      BIOCND51   3   BIOCND52   3   BIOCND53   3   BIOCND54   3
      BIOCND55   3   BIOCND56   3   BIOCND57   3   BIOCND58   3
      BIOCND59   3   BIOCND60   3   BIOCND61   3   BIOCND62   3
      BIOCND63   3   BIOCND64   3   BIOCND65   3   BIOCND66   3
      BIOCND67   3   BIOCND68   3   BIOCND69   3   BIOCND70   3
      BIOCND71   3   BIOCND72   3   BIOCND73   3   BIOCND74   3
      BIOCND75   3   BIOCND76   3   BIOCND77   3   BIOCND78   3
      BIOCND79   3   BIOCND80   3   BIOCND81   3   BIOCND82   3
      BIOCND83   3   BIOCND84   3   BIOCND85   3   BIOCND86   3
      BIOCND87   3   BIOCONCT   3   BIO_SPEC $ 75  BIO_MOST   3
      BIOMED00   3   BIOMED01   3   BIOMED02   3   BIOMED03   3
      BIOMED04   3   BIOMED05   3   BIO_TIM1   3   BIO_TIM2   3
      BIO_TIM3   3   BIO_TIM4   3   BIO_TIM5   3   BIO_ENG    3
      BIO_WEL    3   BIO_IMM    3   BIO_NOHP   3   BIO_EXPS   3
      BIO_SUGG   3   BIO_FFC    3   BIODISC    3   BIOPRF1    3
      BIOPRF2    3   BIOPRF3    3   BIOPRF4    3   BIOPRF5    3
      BIOPRF6    3   BIOPRF7    3   CHE_USEM   3   CHE_NUM    3
      CHE_PAY    4   CHE_TRET   3   CHECND01   3   CHECND02   3
      CHECND03   3   CHECND04   3   CHECND05   3   CHECND06   3
      CHECND07   3   CHECND08   3   CHECND09   3   CHECND10   3
      CHECND11   3   CHECND12   3   CHECND13   3   CHECND14   3
      CHECND15   3   CHECND16   3   CHECND17   3   CHECND18   3
      CHECND19   3   CHECND20   3   CHECND21   3   CHECND22   3
      CHECND23   3   CHECND24   3   CHECND25   3   CHECND26   3
      CHECND27   3   CHECND28   3   CHECND29   3   CHECND30   3
      CHECND31   3   CHECND32   3   CHECND33   3   CHECND34   3
      CHECND35   3   CHECND36   3   CHECND37   3   CHECND38   3
      CHECND39   3   CHECND40   3   CHECND41   3   CHECND42   3
      CHECND43   3   CHECND44   3   CHECND45   3   CHECND46   3
      CHECND47   3   CHECND48   3   CHECND49   3   CHECND50   3
      CHECND51   3   CHECND52   3   CHECND53   3   CHECND54   3
      CHECND55   3   CHECND56   3   CHECND57   3   CHECND58   3
      CHECND59   3   CHECND60   3   CHECND61   3   CHECND62   3
      CHECND63   3   CHECND64   3   CHECND65   3   CHECND66   3
      CHECND67   3   CHECND68   3   CHECND69   3   CHECND70   3
      CHECND71   3   CHECND72   3   CHECND73   3   CHECND74   3
      CHECND75   3   CHECND76   3   CHECND77   3   CHECND78   3
      CHECND79   3   CHECND80   3   CHECND81   3   CHECND82   3
      CHECND83   3   CHECND84   3   CHECND85   3   CHECND86   3
      CHECND87   3   CHECONCT   3   CHE_SPEC $ 75  CHE_MOST   3
      CHEMED00   3   CHEMED01   3   CHEMED02   3   CHEMED03   3
      CHEMED04   3   CHEMED05   3   CHE_TIM1   3   CHE_TIM2   3
      CHE_TIM3   3   CHE_TIM4   3   CHE_TIM5   3   CHE_ENG    3
      CHE_WEL    3   CHE_IMM    3   CHE_NOHP   3   CHE_EXPS   3
      CHE_SUGG   3   CHE_FFC    3   CHEDISC    3   CHEPRF1    3
      CHEPRF2    3   CHEPRF3    3   CHEPRF4    3   CHEPRF5    3
      CHEPRF6    3   CHEPRF7    3   COM_USEM   3   COM_NUM    3
      COM_PAY    4   COM_TRET   3   COMCND01   3   COMCND02   3
      COMCND03   3   COMCND04   3   COMCND05   3   COMCND06   3
      COMCND07   3   COMCND08   3   COMCND09   3   COMCND10   3
      COMCND11   3   COMCND12   3   COMCND13   3   COMCND14   3
      COMCND15   3   COMCND16   3   COMCND17   3   COMCND18   3
      COMCND19   3   COMCND20   3   COMCND21   3   COMCND22   3
      COMCND23   3   COMCND24   3   COMCND25   3   COMCND26   3
      COMCND27   3   COMCND28   3   COMCND29   3   COMCND30   3
      COMCND31   3   COMCND32   3   COMCND33   3   COMCND34   3
      COMCND35   3   COMCND36   3   COMCND37   3   COMCND38   3
      COMCND39   3   COMCND40   3   COMCND41   3   COMCND42   3
      COMCND43   3   COMCND44   3   COMCND45   3   COMCND46   3
      COMCND47   3   COMCND48   3   COMCND49   3   COMCND50   3
      COMCND51   3   COMCND52   3   COMCND53   3   COMCND54   3
      COMCND55   3   COMCND56   3   COMCND57   3   COMCND58   3
      COMCND59   3   COMCND60   3   COMCND61   3   COMCND62   3
      COMCND63   3   COMCND64   3   COMCND65   3   COMCND66   3
      COMCND67   3   COMCND68   3   COMCND69   3   COMCND70   3
      COMCND71   3   COMCND72   3   COMCND73   3   COMCND74   3
      COMCND75   3   COMCND76   3   COMCND77   3   COMCND78   3
      COMCND79   3   COMCND80   3   COMCND81   3   COMCND82   3
      COMCND83   3   COMCND84   3   COMCND85   3   COMCND86   3
      COMCND87   3   COMCONCT   3   COM_SPEC $ 75  COM_MOST   3
      COMMED00   3   COMMED01   3   COMMED02   3   COMMED03   3
      COMMED04   3   COMMED05   3   COM_TIM1   3   COM_TIM2   3
      COM_TIM3   3   COM_TIM4   3   COM_TIM5   3   COM_ENG    3
      COM_WEL    3   COM_IMM    3   COM_NOHP   3   COM_EXPS   3
      COM_SUGG   3   COM_FFC    3   COMDISC    3   COMPRF1    3
      COMPRF2    3   COMPRF3    3   COMPRF4    3   COMPRF5    3
      COMPRF6    3   COMPRF7    3   COMMNOT1   3   COMMNOT2   3
      COMMNOT3   3   COMMNOT4   3   COMMNOT5   3   COMMNOT6   3
      COMMNOT7   3   COMMNOT8   3   COMMNOT9   3   COM_SDEF $ 75
      COM_ATT    3   COMNNT01   3   COMNNT02   3   COMNNT03   3
      COMNNT04   3   COMNNT05   3   COMNNT06   3   COMNNT07   3
      COMNNT08   3   COMNNT09   3   COMNNT10   3   EHT_USEM   3
      EHT_NUM    3   EHT_PAY    4   EHT_TRET   3   EHTCND01   3
      EHTCND02   3   EHTCND03   3   EHTCND04   3   EHTCND05   3
      EHTCND06   3   EHTCND07   3   EHTCND08   3   EHTCND09   3
      EHTCND10   3   EHTCND11   3   EHTCND12   3   EHTCND13   3
      EHTCND14   3   EHTCND15   3   EHTCND16   3   EHTCND17   3
      EHTCND18   3   EHTCND19   3   EHTCND20   3   EHTCND21   3
      EHTCND22   3   EHTCND23   3   EHTCND24   3   EHTCND25   3
      EHTCND26   3   EHTCND27   3   EHTCND28   3   EHTCND29   3
      EHTCND30   3   EHTCND31   3   EHTCND32   3   EHTCND33   3
      EHTCND34   3   EHTCND35   3   EHTCND36   3   EHTCND37   3
      EHTCND38   3   EHTCND39   3   EHTCND40   3   EHTCND41   3
      EHTCND42   3   EHTCND43   3   EHTCND44   3   EHTCND45   3
      EHTCND46   3   EHTCND47   3   EHTCND48   3   EHTCND49   3
      EHTCND50   3   EHTCND51   3   EHTCND52   3   EHTCND53   3
      EHTCND54   3   EHTCND55   3   EHTCND56   3   EHTCND57   3
      EHTCND58   3   EHTCND59   3   EHTCND60   3   EHTCND61   3
      EHTCND62   3   EHTCND63   3   EHTCND64   3   EHTCND65   3
      EHTCND66   3   EHTCND67   3   EHTCND68   3   EHTCND69   3
      EHTCND70   3   EHTCND71   3   EHTCND72   3   EHTCND73   3
      EHTCND74   3   EHTCND75   3   EHTCND76   3   EHTCND77   3
      EHTCND78   3   EHTCND79   3   EHTCND80   3   EHTCND81   3
      EHTCND82   3   EHTCND83   3   EHTCND84   3   EHTCND85   3
      EHTCND86   3   EHTCND87   3   EHTCONCT   3   EHT_SPEC $ 75
      EHT_MOST   3   EHTMED00   3   EHTMED01   3   EHTMED02   3
      EHTMED03   3   EHTMED04   3   EHTMED05   3   EHT_TIM1   3
      EHT_TIM2   3   EHT_TIM3   3   EHT_TIM4   3   EHT_TIM5   3
      EHT_ENG    3   EHT_WEL    3   EHT_IMM    3   EHT_NOHP   3
      EHT_EXPS   3   EHT_SUGG   3   EHT_FFC    3   EHTDISC    3
      EHTPRF1    3   EHTPRF2    3   EHTPRF3    3   EHTPRF4    3
      EHTPRF5    3   EHTPRF6    3   EHTPRF7    3   HYP_USEM   3
      HYP_NUM    3   HYP_PAY    4   HYP_TRET   3   HYPCND01   3
      HYPCND02   3   HYPCND03   3   HYPCND04   3   HYPCND05   3
      HYPCND06   3   HYPCND07   3   HYPCND08   3   HYPCND09   3
      HYPCND10   3   HYPCND11   3   HYPCND12   3   HYPCND13   3
      HYPCND14   3   HYPCND15   3   HYPCND16   3   HYPCND17   3
      HYPCND18   3   HYPCND19   3   HYPCND20   3   HYPCND21   3
      HYPCND22   3   HYPCND23   3   HYPCND24   3   HYPCND25   3
      HYPCND26   3   HYPCND27   3   HYPCND28   3   HYPCND29   3
      HYPCND30   3   HYPCND31   3   HYPCND32   3   HYPCND33   3
      HYPCND34   3   HYPCND35   3   HYPCND36   3   HYPCND37   3
      HYPCND38   3   HYPCND39   3   HYPCND40   3   HYPCND41   3
      HYPCND42   3   HYPCND43   3   HYPCND44   3   HYPCND45   3
      HYPCND46   3   HYPCND47   3   HYPCND48   3   HYPCND49   3
      HYPCND50   3   HYPCND51   3   HYPCND52   3   HYPCND53   3
      HYPCND54   3   HYPCND55   3   HYPCND56   3   HYPCND57   3
      HYPCND58   3   HYPCND59   3   HYPCND60   3   HYPCND61   3
      HYPCND62   3   HYPCND63   3   HYPCND64   3   HYPCND65   3
      HYPCND66   3   HYPCND67   3   HYPCND68   3   HYPCND69   3
      HYPCND70   3   HYPCND71   3   HYPCND72   3   HYPCND73   3
      HYPCND74   3   HYPCND75   3   HYPCND76   3   HYPCND77   3
      HYPCND78   3   HYPCND79   3   HYPCND80   3   HYPCND81   3
      HYPCND82   3   HYPCND83   3   HYPCND84   3   HYPCND85   3
      HYPCND86   3   HYPCND87   3   HYPCONCT   3   HYP_SPEC $ 75
      HYP_MOST   3   HYPMED00   3   HYPMED01   3   HYPMED02   3
      HYPMED03   3   HYPMED04   3   HYPMED05   3   HYP_TIM1   3
      HYP_TIM2   3   HYP_TIM3   3   HYP_TIM4   3   HYP_TIM5   3
      HYP_ENG    3   HYP_WEL    3   HYP_IMM    3   HYP_NOHP   3
      HYP_EXPS   3   HYP_SUGG   3   HYP_FFC    3   HYPDISC    3
      HYPPRF1    3   HYPPRF2    3   HYPPRF3    3   HYPPRF4    3
      HYPPRF5    3   HYPPRF6    3   HYPPRF7    3   MAS_USEM   3
      MAS_NUM    3   MAS_PAY    4   MAS_TRET   3   MASCND01   3
      MASCND02   3   MASCND03   3   MASCND04   3   MASCND05   3
      MASCND06   3   MASCND07   3   MASCND08   3   MASCND09   3
      MASCND10   3   MASCND11   3   MASCND12   3   MASCND13   3
      MASCND14   3   MASCND15   3   MASCND16   3   MASCND17   3
      MASCND18   3   MASCND19   3   MASCND20   3   MASCND21   3
      MASCND22   3   MASCND23   3   MASCND24   3   MASCND25   3
      MASCND26   3   MASCND27   3   MASCND28   3   MASCND29   3
      MASCND30   3   MASCND31   3   MASCND32   3   MASCND33   3
      MASCND34   3   MASCND35   3   MASCND36   3   MASCND37   3
      MASCND38   3   MASCND39   3   MASCND40   3   MASCND41   3
      MASCND42   3   MASCND43   3   MASCND44   3   MASCND45   3
      MASCND46   3   MASCND47   3   MASCND48   3   MASCND49   3
      MASCND50   3   MASCND51   3   MASCND52   3   MASCND53   3
      MASCND54   3   MASCND55   3   MASCND56   3   MASCND57   3
      MASCND58   3   MASCND59   3   MASCND60   3   MASCND61   3
      MASCND62   3   MASCND63   3   MASCND64   3   MASCND65   3
      MASCND66   3   MASCND67   3   MASCND68   3   MASCND69   3
      MASCND70   3   MASCND71   3   MASCND72   3   MASCND73   3
      MASCND74   3   MASCND75   3   MASCND76   3   MASCND77   3
      MASCND78   3   MASCND79   3   MASCND80   3   MASCND81   3
      MASCND82   3   MASCND83   3   MASCND84   3   MASCND85   3
      MASCND86   3   MASCND87   3   MASCONCT   3   MAS_SPEC $ 75
      MAS_MOST   3   MASMED00   3   MASMED01   3   MASMED02   3
      MASMED03   3   MASMED04   3   MASMED05   3   MAS_TIM1   3
      MAS_TIM2   3   MAS_TIM3   3   MAS_TIM4   3   MAS_TIM5   3
      MAS_ENG    3   MAS_WEL    3   MAS_IMM    3   MAS_NOHP   3
      MAS_EXPS   3   MAS_SUGG   3   MAS_FFC    3   MASDISC    3
      MASPRF1    3   MASPRF2    3   MASPRF3    3   MASPRF4    3
      MASPRF5    3   MASPRF6    3   MASPRF7    3   NAT_USEM   3
      NAT_NUM    3   NAT_PAY    4   NAT_TRET   3   NATCND01   3
      NATCND02   3   NATCND03   3   NATCND04   3   NATCND05   3
      NATCND06   3   NATCND07   3   NATCND08   3   NATCND09   3
      NATCND10   3   NATCND11   3   NATCND12   3   NATCND13   3
      NATCND14   3   NATCND15   3   NATCND16   3   NATCND17   3
      NATCND18   3   NATCND19   3   NATCND20   3   NATCND21   3
      NATCND22   3   NATCND23   3   NATCND24   3   NATCND25   3
      NATCND26   3   NATCND27   3   NATCND28   3   NATCND29   3
      NATCND30   3   NATCND31   3   NATCND32   3   NATCND33   3
      NATCND34   3   NATCND35   3   NATCND36   3   NATCND37   3
      NATCND38   3   NATCND39   3   NATCND40   3   NATCND41   3
      NATCND42   3   NATCND43   3   NATCND44   3   NATCND45   3
      NATCND46   3   NATCND47   3   NATCND48   3   NATCND49   3
      NATCND50   3   NATCND51   3   NATCND52   3   NATCND53   3
      NATCND54   3   NATCND55   3   NATCND56   3   NATCND57   3
      NATCND58   3   NATCND59   3   NATCND60   3   NATCND61   3
      NATCND62   3   NATCND63   3   NATCND64   3   NATCND65   3
      NATCND66   3   NATCND67   3   NATCND68   3   NATCND69   3
      NATCND70   3   NATCND71   3   NATCND72   3   NATCND73   3
      NATCND74   3   NATCND75   3   NATCND76   3   NATCND77   3
      NATCND78   3   NATCND79   3   NATCND80   3   NATCND81   3
      NATCND82   3   NATCND83   3   NATCND84   3   NATCND85   3
      NATCND86   3   NATCND87   3   NATCONCT   3   NAT_SPEC $ 75
      NAT_MOST   3   NATMED00   3   NATMED01   3   NATMED02   3
      NATMED03   3   NATMED04   3   NATMED05   3   NAT_TIM1   3
      NAT_TIM2   3   NAT_TIM3   3   NAT_TIM4   3   NAT_TIM5   3
      NAT_ENG    3   NAT_WEL    3   NAT_IMM    3   NAT_NOHP   3
      NAT_EXPS   3   NAT_SUGG   3   NAT_FFC    3   NATDISC    3
      NATPRF1    3   NATPRF2    3   NATPRF3    3   NATPRF4    3
      NATPRF5    3   NATPRF6    3   NATPRF7    3   CUR_EVER   3
      ESP_EVER   3   YER_EVER   3   SHA_EVER   3   BOT_EVER   3
      NAH_EVER   3   SBD_EVER   3   TRDNEVER   3   CUR_USEM   3
      ESP_USEM   3   YER_USEM   3   SHA_USEM   3   BOT_USEM   3
      NAH_USEM   3   SBD_USEM   3   TRDUSECT   3   TRD_MOST   3
      TRD_NUM    3   TRD_PAY    4   TRD_TRET   3   TRDCND01   3
      TRDCND02   3   TRDCND03   3   TRDCND04   3   TRDCND05   3
      TRDCND06   3   TRDCND07   3   TRDCND08   3   TRDCND09   3
      TRDCND10   3   TRDCND11   3   TRDCND12   3   TRDCND13   3
      TRDCND14   3   TRDCND15   3   TRDCND16   3   TRDCND17   3
      TRDCND18   3   TRDCND19   3   TRDCND20   3   TRDCND21   3
      TRDCND22   3   TRDCND23   3   TRDCND24   3   TRDCND25   3
      TRDCND26   3   TRDCND27   3   TRDCND28   3   TRDCND29   3
      TRDCND30   3   TRDCND31   3   TRDCND32   3   TRDCND33   3
      TRDCND34   3   TRDCND35   3   TRDCND36   3   TRDCND37   3
      TRDCND38   3   TRDCND39   3   TRDCND40   3   TRDCND41   3
      TRDCND42   3   TRDCND43   3   TRDCND44   3   TRDCND45   3
      TRDCND46   3   TRDCND47   3   TRDCND48   3   TRDCND49   3
      TRDCND50   3   TRDCND51   3   TRDCND52   3   TRDCND53   3
      TRDCND54   3   TRDCND55   3   TRDCND56   3   TRDCND57   3
      TRDCND58   3   TRDCND59   3   TRDCND60   3   TRDCND61   3
      TRDCND62   3   TRDCND63   3   TRDCND64   3   TRDCND65   3
      TRDCND66   3   TRDCND67   3   TRDCND68   3   TRDCND69   3
      TRDCND70   3   TRDCND71   3   TRDCND72   3   TRDCND73   3
      TRDCND74   3   TRDCND75   3   TRDCND76   3   TRDCND77   3
      TRDCND78   3   TRDCND79   3   TRDCND80   3   TRDCND81   3
      TRDCND82   3   TRDCND83   3   TRDCND84   3   TRDCND85   3
      TRDCND86   3   TRDCND87   3   TRDCONCT   3   TRD_SPEC $ 75
      TRD_CONM   3   TRDMED00   3   TRDMED01   3   TRDMED02   3
      TRDMED03   3   TRDMED04   3   TRDMED05   3   TRD_TIM1   3
      TRD_TIM2   3   TRD_TIM3   3   TRD_TIM4   3   TRD_TIM5   3
      TRD_ENG    3   TRD_WEL    3   TRD_IMM    3   TRD_NOHP   3
      TRD_EXPS   3   TRD_SUGG   3   TRD_FFC    3   TRDDISC    3
      TRDPRF1    3   TRDPRF2    3   TRDPRF3    3   TRDPRF4    3
      TRDPRF5    3   TRDPRF6    3   TRDPRF7    3   FELD_EVE   3
      ALEX_EVE   3   PIL_EVE    3   TRAG_EVE   3   FELD_USE   3
      ALEX_USE   3   PIL_USE    3   TRAG_USE   3   MOVUSECT   3
      MOV_MOST   3   MOV_NUM    3   MOV_PAY    4   MOV_TRET   3
      MOVCND01   3   MOVCND02   3   MOVCND03   3   MOVCND04   3
      MOVCND05   3   MOVCND06   3   MOVCND07   3   MOVCND08   3
      MOVCND09   3   MOVCND10   3   MOVCND11   3   MOVCND12   3
      MOVCND13   3   MOVCND14   3   MOVCND15   3   MOVCND16   3
      MOVCND17   3   MOVCND18   3   MOVCND19   3   MOVCND20   3
      MOVCND21   3   MOVCND22   3   MOVCND23   3   MOVCND24   3
      MOVCND25   3   MOVCND26   3   MOVCND27   3   MOVCND28   3
      MOVCND29   3   MOVCND30   3   MOVCND31   3   MOVCND32   3
      MOVCND33   3   MOVCND34   3   MOVCND35   3   MOVCND36   3
      MOVCND37   3   MOVCND38   3   MOVCND39   3   MOVCND40   3
      MOVCND41   3   MOVCND42   3   MOVCND43   3   MOVCND44   3
      MOVCND45   3   MOVCND46   3   MOVCND47   3   MOVCND48   3
      MOVCND49   3   MOVCND50   3   MOVCND51   3   MOVCND52   3
      MOVCND53   3   MOVCND54   3   MOVCND55   3   MOVCND56   3
      MOVCND57   3   MOVCND58   3   MOVCND59   3   MOVCND60   3
      MOVCND61   3   MOVCND62   3   MOVCND63   3   MOVCND64   3
      MOVCND65   3   MOVCND66   3   MOVCND67   3   MOVCND68   3
      MOVCND69   3   MOVCND70   3   MOVCND71   3   MOVCND72   3
      MOVCND73   3   MOVCND74   3   MOVCND75   3   MOVCND76   3
      MOVCND77   3   MOVCND78   3   MOVCND79   3   MOVCND80   3
      MOVCND81   3   MOVCND82   3   MOVCND83   3   MOVCND84   3
      MOVCND85   3   MOVCND86   3   MOVCND87   3   MOVCONCT   3
      MOV_SPEC $ 75  MOV_CONM   3   MOVMED00   3   MOVMED01   3
      MOVMED02   3   MOVMED03   3   MOVMED04   3   MOVMED05   3
      MOV_TIM1   3   MOV_TIM2   3   MOV_TIM3   3   MOV_TIM4   3
      MOV_TIM5   3   MOV_ENG    3   MOV_WEL    3   MOV_IMM    3
      MOV_NOHP   3   MOV_EXPS   3   MOV_SUGG   3   MOV_FFC    3
      MOVDISC    3   MOVPRF1    3   MOVPRF2    3   MOVPRF3    3
      MOVPRF4    3   MOVPRF5    3   MOVPRF6    3   MOVPRF7    3
      AHB_EVER   3   AHB_USEM   3   AHB_MO     3   AHBTAK01   3
      AHBTAK02   3   AHBTAK03   3   AHBTAK04   3   AHBTAK05   3
      AHBTAK06   3   AHBTAK07   3   AHBTAK08   3   AHBTAK09   3
      AHBTAK10   3   AHBTAK11   3   AHBTAK12   3   AHBTAK13   3
      AHBTAK14   3   AHBTAK15   3   AHBTAK16   3   AHBTAK17   3
      AHBTAK18   3   AHBTAK19   3   AHBTAK20   3   AHBTAK21   3
      AHBTAK22   3   AHBTAK23   3   AHBTAK24   3   AHBTAK25   3
      AHBTAK26   3   AHBTAK27   3   AHBTAK28   3   AHBTAK29   3
      AHBTAK30   3   AHBTAK31   3   AHBTAK32   3   AHBTAK33   3
      AHBTAK34   3   AHBTAK35   3   AHBTAK36   3   AHBTAK37   3
      AHBTAK38   3   AHBTAK39   3   AHBTAK40   3   AHBTAK41   3
      AHBTAK42   3   AHBTAK43   3   AHBTAK44   3   AHBTAK45   3
      AHBTAKCT   3   AHB_COMN   3   AHBCM102   3   AHBCM103   3
      AHBCM104   3   AHBCM105   3   AHBCM106   3   AHBCM107   3
      AHBCM108   3   AHBCM109   3   AHBCM110   3   AHBCM111   3
      AHBCM112   3   AHBCM113   3   AHBCM114   3   AHBCM115   3
      AHBCM116   3   AHBCM117   3   AHBCM118   3   AHBCM119   3
      AHBCM120   3   AHBCM121   3   AHBCM122   3   AHBCM123   3
      AHBCM124   3   AHBCM125   3   AHBCM126   3   AHBCM127   3
      AHBCM128   3   AHBCM129   3   AHBCM130   3   AHBCM131   3
      AHBCM132   3   AHBCM133   3   AHBCM134   3   AHBCM135   3
      AHBCM136   3   AHBCM137   3   AHBCM138   3   AHBCM139   3
      AHBCM140   3   AHBCM141   3   AHBCM142   3   AHBCM143   3
      AHBCM144   3   AHBCM145   3   AHBCM146   3   AHBCM202   3
      AHBCM203   3   AHBCM204   3   AHBCM205   3   AHBCM206   3
      AHBCM207   3   AHBCM208   3   AHBCM209   3   AHBCM210   3
      AHBCM211   3   AHBCM212   3   AHBCM213   3   AHBCM214   3
      AHBCM215   3   AHBCM216   3   AHBCM217   3   AHBCM218   3
      AHBCM219   3   AHBCM220   3   AHBCM221   3   AHBCM222   3
      AHBCM223   3   AHBCM224   3   AHBCM225   3   AHBCM226   3
      AHBCM227   3   AHBCM228   3   AHBCM229   3   AHBCM230   3
      AHBCM231   3   AHBCM232   3   AHBCM233   3   AHBCM234   3
      AHBCM235   3   AHBCM236   3   AHBCM237   3   AHBCM238   3
      AHBCM239   3   AHBCM240   3   AHBCM241   3   AHBCM242   3
      AHBCM243   3   AHBCM244   3   AHBCM245   3   AHBCM246   3
      AHBTOP2A   3   AHBTOP2B   3   AHB_R1A    3   AHB_R2A    3
      AHB_R3A    3   AHB_R4A    3   AHB_R5A    3   AHB_R6A    3
      AHB_R7A    3   AHB_R8A    3   AHB_R9A    3   AHB_R10A   3
      AHB_R11A   3   AHB_R12A   3   AHB_R13A   3   AHCTRA01   3
      AHCTRA02   3   AHCTRA03   3   AHCTRA04   3   AHCTRA05   3
      AHCTRA06   3   AHCTRA07   3   AHCTRA08   3   AHCTRA09   3
      AHCTRA10   3   AHCTRA11   3   AHCTRA12   3   AHCTRA13   3
      AHCTRA14   3   AHCTRA15   3   AHCTRA16   3   AHCTRA17   3
      AHCTRA18   3   AHCTRA19   3   AHCTRA20   3   AHCTRA21   3
      AHCTRA22   3   AHCTRA23   3   AHCTRA24   3   AHCTRA25   3
      AHCTRA26   3   AHCTRA27   3   AHCTRA28   3   AHCTRA29   3
      AHCTRA30   3   AHCTRA31   3   AHCTRA32   3   AHCTRA33   3
      AHCTRA34   3   AHCTRA35   3   AHCTRA36   3   AHCTRA37   3
      AHCTRA38   3   AHCTRA39   3   AHCTRA40   3   AHCTRA41   3
      AHCTRA42   3   AHCTRA43   3   AHCTRA44   3   AHCTRA45   3
      AHCTRA46   3   AHCTRA47   3   AHCTRA48   3   AHCTRA49   3
      AHCTRA50   3   AHCTRA51   3   AHCTRA52   3   AHCTRA53   3
      AHCTRA54   3   AHCTRA55   3   AHCTRA56   3   AHCTRA57   3
      AHCTRA58   3   AHCTRA59   3   AHCTRA60   3   AHCTRA61   3
      AHCTRA62   3   AHCTRA63   3   AHCTRA64   3   AHCTRA65   3
      AHCTRA66   3   AHCTRA67   3   AHCTRA68   3   AHCTRA69   3
      AHCTRA70   3   AHCTRA71   3   AHCTRA72   3   AHCTRA73   3
      AHCTRA74   3   AHCTRA75   3   AHCTRA76   3   AHCTRA77   3
      AHCTRA78   3   AHCTRA79   3   AHCTRA80   3   AHCTRA81   3
      AHCTRA82   3   AHCTRA83   3   AHCTRA84   3   AHCTRA85   3
      AHCTRA86   3   AHCTRA87   3   AHBCTACT   3   AHB_SPT1 $ 75
      AHB_CONA   3   AHBMEDA0   3   AHBMEDA1   3   AHBMEDA2   3
      AHBMEDA3   3   AHBMEDA4   3   AHBMEDA5   3   AHB_TM1A   3
      AHB_TM2A   3   AHB_TM3A   3   AHB_TM4A   3   AHB_TM5A   3
      AHCNPA01   3   AHCNPA02   3   AHCNPA03   3   AHCNPA04   3
      AHCNPA05   3   AHCNPA06   3   AHCNPA07   3   AHCNPA08   3
      AHCNPA09   3   AHCNPA10   3   AHCNPA11   3   AHCNPA12   3
      AHCNPA13   3   AHCNPA14   3   AHCNPA15   3   AHCNPA16   3
      AHCNPA17   3   AHCNPA18   3   AHCNPA19   3   AHCNPA20   3
      AHCNPA21   3   AHCNPA22   3   AHCNPA23   3   AHCNPA24   3
      AHCNPA25   3   AHCNPA26   3   AHCNPA27   3   AHCNPA28   3
      AHCNPA29   3   AHCNPA30   3   AHCNPA31   3   AHCNPA32   3
      AHCNPA33   3   AHCNPA34   3   AHCNPA35   3   AHCNPA36   3
      AHCNPA37   3   AHCNPA38   3   AHCNPA39   3   AHCNPA40   3
      AHCNPA41   3   AHCNPA42   3   AHCNPA43   3   AHCNPA44   3
      AHCNPA45   3   AHCNPA46   3   AHCNPA47   3   AHCNPA48   3
      AHCNPA49   3   AHCNPA50   3   AHCNPA51   3   AHCNPA52   3
      AHCNPA53   3   AHCNPA54   3   AHCNPA55   3   AHCNPA56   3
      AHCNPA57   3   AHCNPA58   3   AHCNPA59   3   AHCNPA60   3
      AHCNPA61   3   AHCNPA62   3   AHCNPA63   3   AHCNPA64   3
      AHCNPA65   3   AHCNPA66   3   AHCNPA67   3   AHCNPA68   3
      AHCNPA69   3   AHCNPA70   3   AHCNPA71   3   AHCNPA72   3
      AHCNPA73   3   AHCNPA74   3   AHCNPA75   3   AHCNPA76   3
      AHCNPA77   3   AHCNPA78   3   AHCNPA79   3   AHCNPA80   3
      AHCNPA81   3   AHCNPA82   3   AHCNPA83   3   AHCNPA84   3
      AHCNPA85   3   AHCNPA86   3   AHCNPA87   3   AHBCPACT   3
      AHB_SPP1 $ 75  AHB_CMPA   3   AHB_SAME   3   AHB_R1B    3
      AHB_R2B    3   AHB_R3B    3   AHB_R4B    3   AHB_R5B    3
      AHB_R6B    3   AHB_R7B    3   AHB_R8B    3   AHB_R9B    3
      AHB_R10B   3   AHB_R11B   3   AHB_R12B   3   AHB_R13B   3
      AHCTRB01   3   AHCTRB02   3   AHCTRB03   3   AHCTRB04   3
      AHCTRB05   3   AHCTRB06   3   AHCTRB07   3   AHCTRB08   3
      AHCTRB09   3   AHCTRB10   3   AHCTRB11   3   AHCTRB12   3
      AHCTRB13   3   AHCTRB14   3   AHCTRB15   3   AHCTRB16   3
      AHCTRB17   3   AHCTRB18   3   AHCTRB19   3   AHCTRB20   3
      AHCTRB21   3   AHCTRB22   3   AHCTRB23   3   AHCTRB24   3
      AHCTRB25   3   AHCTRB26   3   AHCTRB27   3   AHCTRB28   3
      AHCTRB29   3   AHCTRB30   3   AHCTRB31   3   AHCTRB32   3
      AHCTRB33   3   AHCTRB34   3   AHCTRB35   3   AHCTRB36   3
      AHCTRB37   3   AHCTRB38   3   AHCTRB39   3   AHCTRB40   3
      AHCTRB41   3   AHCTRB42   3   AHCTRB43   3   AHCTRB44   3
      AHCTRB45   3   AHCTRB46   3   AHCTRB47   3   AHCTRB48   3
      AHCTRB49   3   AHCTRB50   3   AHCTRB51   3   AHCTRB52   3
      AHCTRB53   3   AHCTRB54   3   AHCTRB55   3   AHCTRB56   3
      AHCTRB57   3   AHCTRB58   3   AHCTRB59   3   AHCTRB60   3
      AHCTRB61   3   AHCTRB62   3   AHCTRB63   3   AHCTRB64   3
      AHCTRB65   3   AHCTRB66   3   AHCTRB67   3   AHCTRB68   3
      AHCTRB69   3   AHCTRB70   3   AHCTRB71   3   AHCTRB72   3
      AHCTRB73   3   AHCTRB74   3   AHCTRB75   3   AHCTRB76   3
      AHCTRB77   3   AHCTRB78   3   AHCTRB79   3   AHCTRB80   3
      AHCTRB81   3   AHCTRB82   3   AHCTRB83   3   AHCTRB84   3
      AHCTRB85   3   AHCTRB86   3   AHCTRB87   3   AHBCTBCT   3
      AHB_SPT2 $ 75  AHB_CONB   3   AHBMEDB0   3   AHBMEDB1   3
      AHBMEDB2   3   AHBMEDB3   3   AHBMEDB4   3   AHBMEDB5   3
      AHB_TM1B   3   AHB_TM2B   3   AHB_TM3B   3   AHB_TM4B   3
      AHB_TM5B   3   AHCNPB01   3   AHCNPB02   3   AHCNPB03   3
      AHCNPB04   3   AHCNPB05   3   AHCNPB06   3   AHCNPB07   3
      AHCNPB08   3   AHCNPB09   3   AHCNPB10   3   AHCNPB11   3
      AHCNPB12   3   AHCNPB13   3   AHCNPB14   3   AHCNPB15   3
      AHCNPB16   3   AHCNPB17   3   AHCNPB18   3   AHCNPB19   3
      AHCNPB20   3   AHCNPB21   3   AHCNPB22   3   AHCNPB23   3
      AHCNPB24   3   AHCNPB25   3   AHCNPB26   3   AHCNPB27   3
      AHCNPB28   3   AHCNPB29   3   AHCNPB30   3   AHCNPB31   3
      AHCNPB32   3   AHCNPB33   3   AHCNPB34   3   AHCNPB35   3
      AHCNPB36   3   AHCNPB37   3   AHCNPB38   3   AHCNPB39   3
      AHCNPB40   3   AHCNPB41   3   AHCNPB42   3   AHCNPB43   3
      AHCNPB44   3   AHCNPB45   3   AHCNPB46   3   AHCNPB47   3
      AHCNPB48   3   AHCNPB49   3   AHCNPB50   3   AHCNPB51   3
      AHCNPB52   3   AHCNPB53   3   AHCNPB54   3   AHCNPB55   3
      AHCNPB56   3   AHCNPB57   3   AHCNPB58   3   AHCNPB59   3
      AHCNPB60   3   AHCNPB61   3   AHCNPB62   3   AHCNPB63   3
      AHCNPB64   3   AHCNPB65   3   AHCNPB66   3   AHCNPB67   3
      AHCNPB68   3   AHCNPB69   3   AHCNPB70   3   AHCNPB71   3
      AHCNPB72   3   AHCNPB73   3   AHCNPB74   3   AHCNPB75   3
      AHCNPB76   3   AHCNPB77   3   AHCNPB78   3   AHCNPB79   3
      AHCNPB80   3   AHCNPB81   3   AHCNPB82   3   AHCNPB83   3
      AHCNPB84   3   AHCNPB85   3   AHCNPB86   3   AHCNPB87   3
      AHBCPBCT   3   AHB_SPP2 $ 75  AHB_CMPB   3   AHB_PRAC   3
      AHB_PR12   3   AHB_PRTM   3   AHB_PAY    4   AHBDISC    3
      AHBPRF1    3   AHBPRF2    3   AHBPRF3    3   AHBPRF4    3
      AHBPRF5    3   AHBPRF6    3   AHBPRF7    3   AHBN301    3
      AHBN302    3   AHBN303    3   AHBN304    3   AHBN305    3
      AHBN306    3   AHBN307    3   AHBN308    3   AHBN309    3
      AHBNYR1    3   AHBNYR2    3   AHBNYR3    3   AHBNYR4    3
      AHBNYR5    3   AHBNYR6    3   AHBNYR7    3   AHBNYR8    3
      AHBNYR9    3   AHB_SIDE $ 75  AHB_SMED   3   AHBNEV01   3
      AHBNEV02   3   AHBNEV03   3   AHBNEV04   3   AHBNEV05   3
      AHBNEV06   3   AHBNEV07   3   AHBNEV08   3   AHBNEV09   3
      AHBNEV10   3   AVT_EVER   3   AVT_USEM   3   AVT_MO     3
      AVTTAK01   3   AVTTAK02   3   AVTTAK03   3   AVTTAK04   3
      AVTTAK05   3   AVTTAK06   3   AVTTAK07   3   AVTTAK08   3
      AVTTAK09   3   AVTTAK10   3   AVTTAK11   3   AVTTAK12   3
      AVTTAK13   3   AVTTAK14   3   AVTTAK15   3   AVTTAK16   3
      AVTTAK17   3   AVTTAK18   3   AVTTAK19   3   AVTTAK20   3
      AVTTAKCT   3   AVTTOP2A   3   AVTTOP2B   3   AVT_R1A    3
      AVT_R2A    3   AVT_R3A    3   AVT_R4A    3   AVT_R5A    3
      AVT_R6A    3   AVT_R7A    3   AVT_R8A    3   AVT_R9A    3
      AVT_R10A   3   AVT_R11A   3   AVT_R12A   3   AVT_R13A   3
      AVCTRA01   3   AVCTRA02   3   AVCTRA03   3   AVCTRA04   3
      AVCTRA05   3   AVCTRA06   3   AVCTRA07   3   AVCTRA08   3
      AVCTRA09   3   AVCTRA10   3   AVCTRA11   3   AVCTRA12   3
      AVCTRA13   3   AVCTRA14   3   AVCTRA15   3   AVCTRA16   3
      AVCTRA17   3   AVCTRA18   3   AVCTRA19   3   AVCTRA20   3
      AVCTRA21   3   AVCTRA22   3   AVCTRA23   3   AVCTRA24   3
      AVCTRA25   3   AVCTRA26   3   AVCTRA27   3   AVCTRA28   3
      AVCTRA29   3   AVCTRA30   3   AVCTRA31   3   AVCTRA32   3
      AVCTRA33   3   AVCTRA34   3   AVCTRA35   3   AVCTRA36   3
      AVCTRA37   3   AVCTRA38   3   AVCTRA39   3   AVCTRA40   3
      AVCTRA41   3   AVCTRA42   3   AVCTRA43   3   AVCTRA44   3
      AVCTRA45   3   AVCTRA46   3   AVCTRA47   3   AVCTRA48   3
      AVCTRA49   3   AVCTRA50   3   AVCTRA51   3   AVCTRA52   3
      AVCTRA53   3   AVCTRA54   3   AVCTRA55   3   AVCTRA56   3
      AVCTRA57   3   AVCTRA58   3   AVCTRA59   3   AVCTRA60   3
      AVCTRA61   3   AVCTRA62   3   AVCTRA63   3   AVCTRA64   3
      AVCTRA65   3   AVCTRA66   3   AVCTRA67   3   AVCTRA68   3
      AVCTRA69   3   AVCTRA70   3   AVCTRA71   3   AVCTRA72   3
      AVCTRA73   3   AVCTRA74   3   AVCTRA75   3   AVCTRA76   3
      AVCTRA77   3   AVCTRA78   3   AVCTRA79   3   AVCTRA80   3
      AVCTRA81   3   AVCTRA82   3   AVCTRA83   3   AVCTRA84   3
      AVCTRA85   3   AVCTRA86   3   AVCTRA87   3   AVTCTACT   3
      AVT_SPT1 $ 75  AVT_CONA   3   AVTMEDA0   3   AVTMEDA1   3
      AVTMEDA2   3   AVTMEDA3   3   AVTMEDA4   3   AVTMEDA5   3
      AVT_TM1A   3   AVT_TM2A   3   AVT_TM3A   3   AVT_TM4A   3
      AVT_TM5A   3   AVCNPA01   3   AVCNPA02   3   AVCNPA03   3
      AVCNPA04   3   AVCNPA05   3   AVCNPA06   3   AVCNPA07   3
      AVCNPA08   3   AVCNPA09   3   AVCNPA10   3   AVCNPA11   3
      AVCNPA12   3   AVCNPA13   3   AVCNPA14   3   AVCNPA15   3
      AVCNPA16   3   AVCNPA17   3   AVCNPA18   3   AVCNPA19   3
      AVCNPA20   3   AVCNPA21   3   AVCNPA22   3   AVCNPA23   3
      AVCNPA24   3   AVCNPA25   3   AVCNPA26   3   AVCNPA27   3
      AVCNPA28   3   AVCNPA29   3   AVCNPA30   3   AVCNPA31   3
      AVCNPA32   3   AVCNPA33   3   AVCNPA34   3   AVCNPA35   3
      AVCNPA36   3   AVCNPA37   3   AVCNPA38   3   AVCNPA39   3
      AVCNPA40   3   AVCNPA41   3   AVCNPA42   3   AVCNPA43   3
      AVCNPA44   3   AVCNPA45   3   AVCNPA46   3   AVCNPA47   3
      AVCNPA48   3   AVCNPA49   3   AVCNPA50   3   AVCNPA51   3
      AVCNPA52   3   AVCNPA53   3   AVCNPA54   3   AVCNPA55   3
      AVCNPA56   3   AVCNPA57   3   AVCNPA58   3   AVCNPA59   3
      AVCNPA60   3   AVCNPA61   3   AVCNPA62   3   AVCNPA63   3
      AVCNPA64   3   AVCNPA65   3   AVCNPA66   3   AVCNPA67   3
      AVCNPA68   3   AVCNPA69   3   AVCNPA70   3   AVCNPA71   3
      AVCNPA72   3   AVCNPA73   3   AVCNPA74   3   AVCNPA75   3
      AVCNPA76   3   AVCNPA77   3   AVCNPA78   3   AVCNPA79   3
      AVCNPA80   3   AVCNPA81   3   AVCNPA82   3   AVCNPA83   3
      AVCNPA84   3   AVCNPA85   3   AVCNPA86   3   AVCNPA87   3
      AVTCPACT   3   AVT_SPP1 $ 75  AVT_CMPA   3   AVT_SAME   3
      AVT_R1B    3   AVT_R2B    3   AVT_R3B    3   AVT_R4B    3
      AVT_R5B    3   AVT_R6B    3   AVT_R7B    3   AVT_R8B    3
      AVT_R9B    3   AVT_R10B   3   AVT_R11B   3   AVT_R12B   3
      AVT_R13B   3   AVCTRB01   3   AVCTRB02   3   AVCTRB03   3
      AVCTRB04   3   AVCTRB05   3   AVCTRB06   3   AVCTRB07   3
      AVCTRB08   3   AVCTRB09   3   AVCTRB10   3   AVCTRB11   3
      AVCTRB12   3   AVCTRB13   3   AVCTRB14   3   AVCTRB15   3
      AVCTRB16   3   AVCTRB17   3   AVCTRB18   3   AVCTRB19   3
      AVCTRB20   3   AVCTRB21   3   AVCTRB22   3   AVCTRB23   3
      AVCTRB24   3   AVCTRB25   3   AVCTRB26   3   AVCTRB27   3
      AVCTRB28   3   AVCTRB29   3   AVCTRB30   3   AVCTRB31   3
      AVCTRB32   3   AVCTRB33   3   AVCTRB34   3   AVCTRB35   3
      AVCTRB36   3   AVCTRB37   3   AVCTRB38   3   AVCTRB39   3
      AVCTRB40   3   AVCTRB41   3   AVCTRB42   3   AVCTRB43   3
      AVCTRB44   3   AVCTRB45   3   AVCTRB46   3   AVCTRB47   3
      AVCTRB48   3   AVCTRB49   3   AVCTRB50   3   AVCTRB51   3
      AVCTRB52   3   AVCTRB53   3   AVCTRB54   3   AVCTRB55   3
      AVCTRB56   3   AVCTRB57   3   AVCTRB58   3   AVCTRB59   3
      AVCTRB60   3   AVCTRB61   3   AVCTRB62   3   AVCTRB63   3
      AVCTRB64   3   AVCTRB65   3   AVCTRB66   3   AVCTRB67   3
      AVCTRB68   3   AVCTRB69   3   AVCTRB70   3   AVCTRB71   3
      AVCTRB72   3   AVCTRB73   3   AVCTRB74   3   AVCTRB75   3
      AVCTRB76   3   AVCTRB77   3   AVCTRB78   3   AVCTRB79   3
      AVCTRB80   3   AVCTRB81   3   AVCTRB82   3   AVCTRB83   3
      AVCTRB84   3   AVCTRB85   3   AVCTRB86   3   AVCTRB87   3
      AVTCTBCT   3   AVT_SPT2 $ 75  AVT_CONB   3   AVTMEDB0   3
      AVTMEDB1   3   AVTMEDB2   3   AVTMEDB3   3   AVTMEDB4   3
      AVTMEDB5   3   AVT_TM1B   3   AVT_TM2B   3   AVT_TM3B   3
      AVT_TM4B   3   AVT_TM5B   3   AVCNPB01   3   AVCNPB02   3
      AVCNPB03   3   AVCNPB04   3   AVCNPB05   3   AVCNPB06   3
      AVCNPB07   3   AVCNPB08   3   AVCNPB09   3   AVCNPB10   3
      AVCNPB11   3   AVCNPB12   3   AVCNPB13   3   AVCNPB14   3
      AVCNPB15   3   AVCNPB16   3   AVCNPB17   3   AVCNPB18   3
      AVCNPB19   3   AVCNPB20   3   AVCNPB21   3   AVCNPB22   3
      AVCNPB23   3   AVCNPB24   3   AVCNPB25   3   AVCNPB26   3
      AVCNPB27   3   AVCNPB28   3   AVCNPB29   3   AVCNPB30   3
      AVCNPB31   3   AVCNPB32   3   AVCNPB33   3   AVCNPB34   3
      AVCNPB35   3   AVCNPB36   3   AVCNPB37   3   AVCNPB38   3
      AVCNPB39   3   AVCNPB40   3   AVCNPB41   3   AVCNPB42   3
      AVCNPB43   3   AVCNPB44   3   AVCNPB45   3   AVCNPB46   3
      AVCNPB47   3   AVCNPB48   3   AVCNPB49   3   AVCNPB50   3
      AVCNPB51   3   AVCNPB52   3   AVCNPB53   3   AVCNPB54   3
      AVCNPB55   3   AVCNPB56   3   AVCNPB57   3   AVCNPB58   3
      AVCNPB59   3   AVCNPB60   3   AVCNPB61   3   AVCNPB62   3
      AVCNPB63   3   AVCNPB64   3   AVCNPB65   3   AVCNPB66   3
      AVCNPB67   3   AVCNPB68   3   AVCNPB69   3   AVCNPB70   3
      AVCNPB71   3   AVCNPB72   3   AVCNPB73   3   AVCNPB74   3
      AVCNPB75   3   AVCNPB76   3   AVCNPB77   3   AVCNPB78   3
      AVCNPB79   3   AVCNPB80   3   AVCNPB81   3   AVCNPB82   3
      AVCNPB83   3   AVCNPB84   3   AVCNPB85   3   AVCNPB86   3
      AVCNPB87   3   AVTCPBCT   3   AVT_SPP2 $ 75  AVT_CMPB   3
      AVTDISC    3   AVTPRF1    3   AVTPRF2    3   AVTPRF3    3
      AVTPRF4    3   AVTPRF5    3   AVTPRF6    3   AVTPRF7    3
      AHB_OFTN   4   AHB_OFTT   3   AHB_COST   3   AVT_OFTN   4
      AVT_OFTT   3   AVT_COST   3   HOM_EVER   3   HOM_USEM   3
      HOMNO      4   HOMTP      3   HOM_SPEN   4   HOM_TRET   3
      HOMCND01   3   HOMCND02   3   HOMCND03   3   HOMCND04   3
      HOMCND05   3   HOMCND06   3   HOMCND07   3   HOMCND08   3
      HOMCND09   3   HOMCND10   3   HOMCND11   3   HOMCND12   3
      HOMCND13   3   HOMCND14   3   HOMCND15   3   HOMCND16   3
      HOMCND17   3   HOMCND18   3   HOMCND19   3   HOMCND20   3
      HOMCND21   3   HOMCND22   3   HOMCND23   3   HOMCND24   3
      HOMCND25   3   HOMCND26   3   HOMCND27   3   HOMCND28   3
      HOMCND29   3   HOMCND30   3   HOMCND31   3   HOMCND32   3
      HOMCND33   3   HOMCND34   3   HOMCND35   3   HOMCND36   3
      HOMCND37   3   HOMCND38   3   HOMCND39   3   HOMCND40   3
      HOMCND41   3   HOMCND42   3   HOMCND43   3   HOMCND44   3
      HOMCND45   3   HOMCND46   3   HOMCND47   3   HOMCND48   3
      HOMCND49   3   HOMCND50   3   HOMCND51   3   HOMCND52   3
      HOMCND53   3   HOMCND54   3   HOMCND55   3   HOMCND56   3
      HOMCND57   3   HOMCND58   3   HOMCND59   3   HOMCND60   3
      HOMCND61   3   HOMCND62   3   HOMCND63   3   HOMCND64   3
      HOMCND65   3   HOMCND66   3   HOMCND67   3   HOMCND68   3
      HOMCND69   3   HOMCND70   3   HOMCND71   3   HOMCND72   3
      HOMCND73   3   HOMCND74   3   HOMCND75   3   HOMCND76   3
      HOMCND77   3   HOMCND78   3   HOMCND79   3   HOMCND80   3
      HOMCND81   3   HOMCND82   3   HOMCND83   3   HOMCND84   3
      HOMCND85   3   HOMCND86   3   HOMCND87   3   HOMCONCT   3
      HOM_SPEC $ 75  HOM_MOST   3   HOMMED00   3   HOMMED01   3
      HOMMED02   3   HOMMED03   3   HOMMED04   3   HOMMED05   3
      HOM_TIM1   3   HOM_TIM2   3   HOM_TIM3   3   HOM_TIM4   3
      HOM_TIM5   3   HOM_ENG    3   HOM_WEL    3   HOM_IMM    3
      HOM_NOHP   3   HOM_EXPS   3   HOM_SUGG   3   HOM_FFC    3
      HOM_PRAC   3   HOM_YR     3   HOM_NUM    3   HOM_PAY    4
      HOMDISC    3   HOMPRF1    3   HOMPRF2    3   HOMPRF3    3
      HOMPRF4    3   HOMPRF5    3   HOMPRF6    3   HOMPRF7    3
      DITEVER1   3   DITEVER2   3   DITEVER3   3   DITEVER4   3
      DITEVER5   3   DITEVER6   3   DITEVER7   3   DITUSEM1   3
      DITUSEM2   3   DITUSEM3   3   DITUSEM4   3   DITUSEM5   3
      DITUSEM6   3   DITUSEM7   3   DITUSECT   3   DIT_DMST   3
      DIT_WGHT   3   DIT_TRET   3   DITCND01   3   DITCND02   3
      DITCND03   3   DITCND04   3   DITCND05   3   DITCND06   3
      DITCND07   3   DITCND08   3   DITCND09   3   DITCND10   3
      DITCND11   3   DITCND12   3   DITCND13   3   DITCND14   3
      DITCND15   3   DITCND16   3   DITCND17   3   DITCND18   3
      DITCND19   3   DITCND20   3   DITCND21   3   DITCND22   3
      DITCND23   3   DITCND24   3   DITCND25   3   DITCND26   3
      DITCND27   3   DITCND28   3   DITCND29   3   DITCND30   3
      DITCND31   3   DITCND32   3   DITCND33   3   DITCND34   3
      DITCND35   3   DITCND36   3   DITCND37   3   DITCND38   3
      DITCND39   3   DITCND40   3   DITCND41   3   DITCND42   3
      DITCND43   3   DITCND44   3   DITCND45   3   DITCND46   3
      DITCND47   3   DITCND48   3   DITCND49   3   DITCND50   3
      DITCND51   3   DITCND52   3   DITCND53   3   DITCND54   3
      DITCND55   3   DITCND56   3   DITCND57   3   DITCND58   3
      DITCND59   3   DITCND60   3   DITCND61   3   DITCND62   3
      DITCND63   3   DITCND64   3   DITCND65   3   DITCND66   3
      DITCND67   3   DITCND68   3   DITCND69   3   DITCND70   3
      DITCND71   3   DITCND72   3   DITCND73   3   DITCND74   3
      DITCND75   3   DITCND76   3   DITCND77   3   DITCND78   3
      DITCND79   3   DITCND80   3   DITCND81   3   DITCND82   3
      DITCND83   3   DITCND84   3   DITCND85   3   DITCND86   3
      DITCND87   3   DITCONCT   3   DIT_SPEC $ 75  DIT_MOST   3
      DITMED00   3   DITMED01   3   DITMED02   3   DITMED03   3
      DITMED04   3   DITMED05   3   DIT_TIM1   3   DIT_TIM2   3
      DIT_TIM3   3   DIT_TIM4   3   DIT_TIM5   3   DIT_ENG    3
      DIT_WEL    3   DIT_IMM    3   DIT_NOHP   3   DIT_EXPS   3
      DIT_SUGG   3   DIT_FFC    3   DIT_PRAC   3   DIT_YR     3
      DITTYPE1   3   DITTYPE2   3   DITTYPE3   3   DITTYPE4   3
      DITTYPE5   3   DIT_NUM    3   DIT_PAY    4   DITDISC    3
      DITPRF1    3   DITPRF2    3   DITPRF3    3   DITPRF4    3
      DITPRF5    3   DITPRF6    3   DITPRF7    3   YTQE_YOG   3
      YTQE_TAI   3   YTQE_QIG   3   YTQU_YOG   3   YTQU_TAI   3
      YTQU_QIG   3   YTQUSECT   3   YTQ_MOST   3   YTQ_TRET   3
      YTQCND01   3   YTQCND02   3   YTQCND03   3   YTQCND04   3
      YTQCND05   3   YTQCND06   3   YTQCND07   3   YTQCND08   3
      YTQCND09   3   YTQCND10   3   YTQCND11   3   YTQCND12   3
      YTQCND13   3   YTQCND14   3   YTQCND15   3   YTQCND16   3
      YTQCND17   3   YTQCND18   3   YTQCND19   3   YTQCND20   3
      YTQCND21   3   YTQCND22   3   YTQCND23   3   YTQCND24   3
      YTQCND25   3   YTQCND26   3   YTQCND27   3   YTQCND28   3
      YTQCND29   3   YTQCND30   3   YTQCND31   3   YTQCND32   3
      YTQCND33   3   YTQCND34   3   YTQCND35   3   YTQCND36   3
      YTQCND37   3   YTQCND38   3   YTQCND39   3   YTQCND40   3
      YTQCND41   3   YTQCND42   3   YTQCND43   3   YTQCND44   3
      YTQCND45   3   YTQCND46   3   YTQCND47   3   YTQCND48   3
      YTQCND49   3   YTQCND50   3   YTQCND51   3   YTQCND52   3
      YTQCND53   3   YTQCND54   3   YTQCND55   3   YTQCND56   3
      YTQCND57   3   YTQCND58   3   YTQCND59   3   YTQCND60   3
      YTQCND61   3   YTQCND62   3   YTQCND63   3   YTQCND64   3
      YTQCND65   3   YTQCND66   3   YTQCND67   3   YTQCND68   3
      YTQCND69   3   YTQCND70   3   YTQCND71   3   YTQCND72   3
      YTQCND73   3   YTQCND74   3   YTQCND75   3   YTQCND76   3
      YTQCND77   3   YTQCND78   3   YTQCND79   3   YTQCND80   3
      YTQCND81   3   YTQCND82   3   YTQCND83   3   YTQCND84   3
      YTQCND85   3   YTQCND86   3   YTQCND87   3   YTQCONCT   3
      YTQ_SPEC $ 75  YTQ_CONM   3   YTQMED00   3   YTQMED01   3
      YTQMED02   3   YTQMED03   3   YTQMED04   3   YTQMED05   3
      YTQ_TIM1   3   YTQ_TIM2   3   YTQ_TIM3   3   YTQ_TIM4   3
      YTQ_TIM5   3   YTQ_ENG    3   YTQ_WEL    3   YTQ_IMM    3
      YTQ_NOHP   3   YTQ_EXPS   3   YTQ_SUGG   3   YTQ_FFC    3
      YTQ_CLAS   3   YTQ_CLSO   3   YTQ_PAY    4   YTQDISC    3
      YTQPRF1    3   YTQPRF2    3   YTQPRF3    3   YTQPRF4    3
      YTQPRF5    3   YTQPRF6    3   YTQPRF7    3   YTQNOTU1   3
      YTQNOTU2   3   YTQNOTU3   3   YTQNOTU4   3   YTQNOTU5   3
      YTQNOTU6   3   YTQNOTU7   3   YTQNOTU8   3   YTQNOTU9   3
      YTQ_SDEF $ 75  YTQ_ATT    3   YTQNVU01   3   YTQNVU02   3
      YTQNVU03   3   YTQNVU04   3   YTQNVU05   3   YTQNVU06   3
      YTQNVU07   3   YTQNVU08   3   YTQNVU09   3   YTQNVU10   3
      RELE_MED   3   RELE_GIM   3   RELE_PRO   3   RELE_DBE   3
      RELE_SUP   3   RELE_STR   3   RELU_MED   3   RELU_GIM   3
      RELU_PRO   3   RELU_DBE   3   RELU_SUP   3   RELU_STR   3
      RELUSECT   3   REL_RMST   3   REL_TRET   3   RELCND01   3
      RELCND02   3   RELCND03   3   RELCND04   3   RELCND05   3
      RELCND06   3   RELCND07   3   RELCND08   3   RELCND09   3
      RELCND10   3   RELCND11   3   RELCND12   3   RELCND13   3
      RELCND14   3   RELCND15   3   RELCND16   3   RELCND17   3
      RELCND18   3   RELCND19   3   RELCND20   3   RELCND21   3
      RELCND22   3   RELCND23   3   RELCND24   3   RELCND25   3
      RELCND26   3   RELCND27   3   RELCND28   3   RELCND29   3
      RELCND30   3   RELCND31   3   RELCND32   3   RELCND33   3
      RELCND34   3   RELCND35   3   RELCND36   3   RELCND37   3
      RELCND38   3   RELCND39   3   RELCND40   3   RELCND41   3
      RELCND42   3   RELCND43   3   RELCND44   3   RELCND45   3
      RELCND46   3   RELCND47   3   RELCND48   3   RELCND49   3
      RELCND50   3   RELCND51   3   RELCND52   3   RELCND53   3
      RELCND54   3   RELCND55   3   RELCND56   3   RELCND57   3
      RELCND58   3   RELCND59   3   RELCND60   3   RELCND61   3
      RELCND62   3   RELCND63   3   RELCND64   3   RELCND65   3
      RELCND66   3   RELCND67   3   RELCND68   3   RELCND69   3
      RELCND70   3   RELCND71   3   RELCND72   3   RELCND73   3
      RELCND74   3   RELCND75   3   RELCND76   3   RELCND77   3
      RELCND78   3   RELCND79   3   RELCND80   3   RELCND81   3
      RELCND82   3   RELCND83   3   RELCND84   3   RELCND85   3
      RELCND86   3   RELCND87   3   RELCONCT   3   REL_SPEC $ 75
      REL_MOST   3   RELMED00   3   RELMED01   3   RELMED02   3
      RELMED03   3   RELMED04   3   RELMED05   3   REL_TIM1   3
      REL_TIM2   3   REL_TIM3   3   REL_TIM4   3   REL_TIM5   3
      REL_ENG    3   REL_WEL    3   REL_IMM    3   REL_COP    3
      REL_NOHP   3   REL_EXPS   3   REL_SUGG   3   REL_FFC    3
      REL_PRAC   3   REL_YR     3   REL_PAY    4   REL_BKS    3
      REL_BPAY   4   RELDISC    3   RELPRF1    3   RELPRF2    3
      RELPRF3    3   RELPRF4    3   RELPRF5    3   RELPRF6    3
      RELPRF7    3   RELNOYR1   3   RELNOYR2   3   RELNOYR3   3
      RELNOYR4   3   RELNOYR5   3   RELNOYR6   3   RELNOYR7   3
      RELNOYR8   3   RELNOYR9   3   REL_SDEF $ 75  REL_ATT    3
      RELNOU01   3   RELNOU02   3   RELNOU03   3   RELNOU04   3
      RELNOU05   3   RELNOU06   3   RELNOU07   3   RELNOU08   3
      RELNOU09   3   RELNOU10   3   PRA_SLFE   3   PRA_SLFM   3
      PRA_OTHE   3   PRA_OTHM   3   COMPSTAT   3 ;

   * INPUT ALL VARIABLES;

   INPUT

      /* IDN LOCATIONS */

      RECTYPE  $    1 -   2    SRVY_YR       3 -   6
      HHX      $    7 -  12    FMX      $   13 -  14
      FPX      $   15 -  16    WTFA_SA      17 -  22

      /* UCF LOCATIONS */

      STRAT_P      23 -  25    PSU_P        26 -  27

      /* ALT LOCATIONS */

      ACU_EVER     28 -  28    AYU_EVER     29 -  29
      BIO_EVER     30 -  30    CHE_EVER     31 -  31
      COM_EVER     32 -  32    EHT_EVER     33 -  33
      HYP_EVER     34 -  34    MAS_EVER     35 -  35
      NAT_EVER     36 -  36    ACU_USEM     37 -  37
      ACU_NUM      38 -  38    ACU_PAY      39 -  41
      ACU_TRET     42 -  42    ACUCND01     43 -  43
      ACUCND02     44 -  44    ACUCND03     45 -  45
      ACUCND04     46 -  46    ACUCND05     47 -  47
      ACUCND06     48 -  48    ACUCND07     49 -  49
      ACUCND08     50 -  50    ACUCND09     51 -  51
      ACUCND10     52 -  52    ACUCND11     53 -  53
      ACUCND12     54 -  54    ACUCND13     55 -  55
      ACUCND14     56 -  56    ACUCND15     57 -  57
      ACUCND16     58 -  58    ACUCND17     59 -  59
      ACUCND18     60 -  60    ACUCND19     61 -  61
      ACUCND20     62 -  62    ACUCND21     63 -  63
      ACUCND22     64 -  64    ACUCND23     65 -  65
      ACUCND24     66 -  66    ACUCND25     67 -  67
      ACUCND26     68 -  68    ACUCND27     69 -  69
      ACUCND28     70 -  70    ACUCND29     71 -  71
      ACUCND30     72 -  72    ACUCND31     73 -  73
      ACUCND32     74 -  74    ACUCND33     75 -  75
      ACUCND34     76 -  76    ACUCND35     77 -  77
      ACUCND36     78 -  78    ACUCND37     79 -  79
      ACUCND38     80 -  80    ACUCND39     81 -  81
      ACUCND40     82 -  82    ACUCND41     83 -  83
      ACUCND42     84 -  84    ACUCND43     85 -  85
      ACUCND44     86 -  86    ACUCND45     87 -  87
      ACUCND46     88 -  88    ACUCND47     89 -  89
      ACUCND48     90 -  90    ACUCND49     91 -  91
      ACUCND50     92 -  92    ACUCND51     93 -  93
      ACUCND52     94 -  94    ACUCND53     95 -  95
      ACUCND54     96 -  96    ACUCND55     97 -  97
      ACUCND56     98 -  98    ACUCND57     99 -  99
      ACUCND58    100 - 100    ACUCND59    101 - 101
      ACUCND60    102 - 102    ACUCND61    103 - 103
      ACUCND62    104 - 104    ACUCND63    105 - 105
      ACUCND64    106 - 106    ACUCND65    107 - 107
      ACUCND66    108 - 108    ACUCND67    109 - 109
      ACUCND68    110 - 110    ACUCND69    111 - 111
      ACUCND70    112 - 112    ACUCND71    113 - 113
      ACUCND72    114 - 114    ACUCND73    115 - 115
      ACUCND74    116 - 116    ACUCND75    117 - 117
      ACUCND76    118 - 118    ACUCND77    119 - 119
      ACUCND78    120 - 120    ACUCND79    121 - 121
      ACUCND80    122 - 122    ACUCND81    123 - 123
      ACUCND82    124 - 124    ACUCND83    125 - 125
      ACUCND84    126 - 126    ACUCND85    127 - 127
      ACUCND86    128 - 128    ACUCND87    129 - 129
      ACUCONCT    130 - 131    ACU_SPEC $  132 - 206
      ACU_MOST    207 - 208    ACUMED00    209 - 209
      ACUMED01    210 - 210    ACUMED02    211 - 211
      ACUMED03    212 - 212    ACUMED04    213 - 213
      ACUMED05    214 - 214    ACU_TIM1    215 - 215
      ACU_TIM2    216 - 216    ACU_TIM3    217 - 217
      ACU_TIM4    218 - 218    ACU_TIM5    219 - 219
      ACU_ENG     220 - 220    ACU_WEL     221 - 221
      ACU_IMM     222 - 222    ACU_NOHP    223 - 223
      ACU_EXPS    224 - 224    ACU_SUGG    225 - 225
      ACU_FFC     226 - 226    ACUDISC     227 - 227
      ACUPRF1     228 - 228    ACUPRF2     229 - 229
      ACUPRF3     230 - 230    ACUPRF4     231 - 231
      ACUPRF5     232 - 232    ACUPRF6     233 - 233
      ACUPRF7     234 - 234    ACUMNOT1    235 - 235
      ACUMNOT2    236 - 236    ACUMNOT3    237 - 237
      ACUMNOT4    238 - 238    ACUMNOT5    239 - 239
      ACUMNOT6    240 - 240    ACUMNOT7    241 - 241
      ACUMNOT8    242 - 242    ACUMNOT9    243 - 243
      ACU_SDEF $  244 - 318    ACU_ATT     319 - 319
      ACUNNT01    320 - 320    ACUNNT02    321 - 321
      ACUNNT03    322 - 322    ACUNNT04    323 - 323
      ACUNNT05    324 - 324    ACUNNT06    325 - 325
      ACUNNT07    326 - 326    ACUNNT08    327 - 327
      ACUNNT09    328 - 328    ACUNNT10    329 - 329
      AYU_USEM    330 - 330    AYU_NUM     331 - 331
      AYU_PAY     332 - 334    AYU_TRET    335 - 335
      AYUCND01    336 - 336    AYUCND02    337 - 337
      AYUCND03    338 - 338    AYUCND04    339 - 339
      AYUCND05    340 - 340    AYUCND06    341 - 341
      AYUCND07    342 - 342    AYUCND08    343 - 343
      AYUCND09    344 - 344    AYUCND10    345 - 345
      AYUCND11    346 - 346    AYUCND12    347 - 347
      AYUCND13    348 - 348    AYUCND14    349 - 349
      AYUCND15    350 - 350    AYUCND16    351 - 351
      AYUCND17    352 - 352    AYUCND18    353 - 353
      AYUCND19    354 - 354    AYUCND20    355 - 355
      AYUCND21    356 - 356    AYUCND22    357 - 357
      AYUCND23    358 - 358    AYUCND24    359 - 359
      AYUCND25    360 - 360    AYUCND26    361 - 361
      AYUCND27    362 - 362    AYUCND28    363 - 363
      AYUCND29    364 - 364    AYUCND30    365 - 365
      AYUCND31    366 - 366    AYUCND32    367 - 367
      AYUCND33    368 - 368    AYUCND34    369 - 369
      AYUCND35    370 - 370    AYUCND36    371 - 371
      AYUCND37    372 - 372    AYUCND38    373 - 373
      AYUCND39    374 - 374    AYUCND40    375 - 375
      AYUCND41    376 - 376    AYUCND42    377 - 377
      AYUCND43    378 - 378    AYUCND44    379 - 379
      AYUCND45    380 - 380    AYUCND46    381 - 381
      AYUCND47    382 - 382    AYUCND48    383 - 383
      AYUCND49    384 - 384    AYUCND50    385 - 385
      AYUCND51    386 - 386    AYUCND52    387 - 387
      AYUCND53    388 - 388    AYUCND54    389 - 389
      AYUCND55    390 - 390    AYUCND56    391 - 391
      AYUCND57    392 - 392    AYUCND58    393 - 393
      AYUCND59    394 - 394    AYUCND60    395 - 395
      AYUCND61    396 - 396    AYUCND62    397 - 397
      AYUCND63    398 - 398    AYUCND64    399 - 399
      AYUCND65    400 - 400    AYUCND66    401 - 401
      AYUCND67    402 - 402    AYUCND68    403 - 403
      AYUCND69    404 - 404    AYUCND70    405 - 405
      AYUCND71    406 - 406    AYUCND72    407 - 407
      AYUCND73    408 - 408    AYUCND74    409 - 409
      AYUCND75    410 - 410    AYUCND76    411 - 411
      AYUCND77    412 - 412    AYUCND78    413 - 413
      AYUCND79    414 - 414    AYUCND80    415 - 415
      AYUCND81    416 - 416    AYUCND82    417 - 417
      AYUCND83    418 - 418    AYUCND84    419 - 419
      AYUCND85    420 - 420    AYUCND86    421 - 421
      AYUCND87    422 - 422    AYUCONCT    423 - 424
      AYU_SPEC $  425 - 499    AYU_MOST    500 - 501
      AYUMED00    502 - 502    AYUMED01    503 - 503
      AYUMED02    504 - 504    AYUMED03    505 - 505
      AYUMED04    506 - 506    AYUMED05    507 - 507
      AYU_TIM1    508 - 508    AYU_TIM2    509 - 509
      AYU_TIM3    510 - 510    AYU_TIM4    511 - 511
      AYU_TIM5    512 - 512    AYU_ENG     513 - 513
      AYU_WEL     514 - 514    AYU_IMM     515 - 515
      AYU_NOHP    516 - 516    AYU_EXPS    517 - 517
      AYU_SUGG    518 - 518    AYU_FFC     519 - 519
      AYUDISC     520 - 520    AYUPRF1     521 - 521
      AYUPRF2     522 - 522    AYUPRF3     523 - 523
      AYUPRF4     524 - 524    AYUPRF5     525 - 525
      AYUPRF6     526 - 526    AYUPRF7     527 - 527
      BIO_USEM    528 - 528    BIO_NUM     529 - 529
      BIO_PAY     530 - 532    BIO_TRET    533 - 533
      BIOCND01    534 - 534    BIOCND02    535 - 535
      BIOCND03    536 - 536    BIOCND04    537 - 537
      BIOCND05    538 - 538    BIOCND06    539 - 539
      BIOCND07    540 - 540    BIOCND08    541 - 541
      BIOCND09    542 - 542    BIOCND10    543 - 543
      BIOCND11    544 - 544    BIOCND12    545 - 545
      BIOCND13    546 - 546    BIOCND14    547 - 547
      BIOCND15    548 - 548    BIOCND16    549 - 549
      BIOCND17    550 - 550    BIOCND18    551 - 551
      BIOCND19    552 - 552    BIOCND20    553 - 553
      BIOCND21    554 - 554    BIOCND22    555 - 555
      BIOCND23    556 - 556    BIOCND24    557 - 557
      BIOCND25    558 - 558    BIOCND26    559 - 559
      BIOCND27    560 - 560    BIOCND28    561 - 561
      BIOCND29    562 - 562    BIOCND30    563 - 563
      BIOCND31    564 - 564    BIOCND32    565 - 565
      BIOCND33    566 - 566    BIOCND34    567 - 567
      BIOCND35    568 - 568    BIOCND36    569 - 569
      BIOCND37    570 - 570    BIOCND38    571 - 571
      BIOCND39    572 - 572    BIOCND40    573 - 573
      BIOCND41    574 - 574    BIOCND42    575 - 575
      BIOCND43    576 - 576    BIOCND44    577 - 577
      BIOCND45    578 - 578    BIOCND46    579 - 579
      BIOCND47    580 - 580    BIOCND48    581 - 581
      BIOCND49    582 - 582    BIOCND50    583 - 583
      BIOCND51    584 - 584    BIOCND52    585 - 585
      BIOCND53    586 - 586    BIOCND54    587 - 587
      BIOCND55    588 - 588    BIOCND56    589 - 589
      BIOCND57    590 - 590    BIOCND58    591 - 591
      BIOCND59    592 - 592    BIOCND60    593 - 593
      BIOCND61    594 - 594    BIOCND62    595 - 595
      BIOCND63    596 - 596    BIOCND64    597 - 597
      BIOCND65    598 - 598    BIOCND66    599 - 599
      BIOCND67    600 - 600    BIOCND68    601 - 601
      BIOCND69    602 - 602    BIOCND70    603 - 603
      BIOCND71    604 - 604    BIOCND72    605 - 605
      BIOCND73    606 - 606    BIOCND74    607 - 607
      BIOCND75    608 - 608    BIOCND76    609 - 609
      BIOCND77    610 - 610    BIOCND78    611 - 611
      BIOCND79    612 - 612    BIOCND80    613 - 613
      BIOCND81    614 - 614    BIOCND82    615 - 615
      BIOCND83    616 - 616    BIOCND84    617 - 617
      BIOCND85    618 - 618    BIOCND86    619 - 619
      BIOCND87    620 - 620    BIOCONCT    621 - 622
      BIO_SPEC $  623 - 697    BIO_MOST    698 - 699
      BIOMED00    700 - 700    BIOMED01    701 - 701
      BIOMED02    702 - 702    BIOMED03    703 - 703
      BIOMED04    704 - 704    BIOMED05    705 - 705
      BIO_TIM1    706 - 706    BIO_TIM2    707 - 707
      BIO_TIM3    708 - 708    BIO_TIM4    709 - 709
      BIO_TIM5    710 - 710    BIO_ENG     711 - 711
      BIO_WEL     712 - 712    BIO_IMM     713 - 713
      BIO_NOHP    714 - 714    BIO_EXPS    715 - 715
      BIO_SUGG    716 - 716    BIO_FFC     717 - 717
      BIODISC     718 - 718    BIOPRF1     719 - 719
      BIOPRF2     720 - 720    BIOPRF3     721 - 721
      BIOPRF4     722 - 722    BIOPRF5     723 - 723
      BIOPRF6     724 - 724    BIOPRF7     725 - 725
      CHE_USEM    726 - 726    CHE_NUM     727 - 727
      CHE_PAY     728 - 730    CHE_TRET    731 - 731
      CHECND01    732 - 732    CHECND02    733 - 733
      CHECND03    734 - 734    CHECND04    735 - 735
      CHECND05    736 - 736    CHECND06    737 - 737
      CHECND07    738 - 738    CHECND08    739 - 739
      CHECND09    740 - 740    CHECND10    741 - 741
      CHECND11    742 - 742    CHECND12    743 - 743
      CHECND13    744 - 744    CHECND14    745 - 745
      CHECND15    746 - 746    CHECND16    747 - 747
      CHECND17    748 - 748    CHECND18    749 - 749
      CHECND19    750 - 750    CHECND20    751 - 751
      CHECND21    752 - 752    CHECND22    753 - 753
      CHECND23    754 - 754    CHECND24    755 - 755
      CHECND25    756 - 756    CHECND26    757 - 757
      CHECND27    758 - 758    CHECND28    759 - 759
      CHECND29    760 - 760    CHECND30    761 - 761
      CHECND31    762 - 762    CHECND32    763 - 763
      CHECND33    764 - 764    CHECND34    765 - 765
      CHECND35    766 - 766    CHECND36    767 - 767
      CHECND37    768 - 768    CHECND38    769 - 769
      CHECND39    770 - 770    CHECND40    771 - 771
      CHECND41    772 - 772    CHECND42    773 - 773
      CHECND43    774 - 774    CHECND44    775 - 775
      CHECND45    776 - 776    CHECND46    777 - 777
      CHECND47    778 - 778    CHECND48    779 - 779
      CHECND49    780 - 780    CHECND50    781 - 781
      CHECND51    782 - 782    CHECND52    783 - 783
      CHECND53    784 - 784    CHECND54    785 - 785
      CHECND55    786 - 786    CHECND56    787 - 787
      CHECND57    788 - 788    CHECND58    789 - 789
      CHECND59    790 - 790    CHECND60    791 - 791
      CHECND61    792 - 792    CHECND62    793 - 793
      CHECND63    794 - 794    CHECND64    795 - 795
      CHECND65    796 - 796    CHECND66    797 - 797
      CHECND67    798 - 798    CHECND68    799 - 799
      CHECND69    800 - 800    CHECND70    801 - 801
      CHECND71    802 - 802    CHECND72    803 - 803
      CHECND73    804 - 804    CHECND74    805 - 805
      CHECND75    806 - 806    CHECND76    807 - 807
      CHECND77    808 - 808    CHECND78    809 - 809
      CHECND79    810 - 810    CHECND80    811 - 811
      CHECND81    812 - 812    CHECND82    813 - 813
      CHECND83    814 - 814    CHECND84    815 - 815
      CHECND85    816 - 816    CHECND86    817 - 817
      CHECND87    818 - 818    CHECONCT    819 - 820
      CHE_SPEC $  821 - 895    CHE_MOST    896 - 897
      CHEMED00    898 - 898    CHEMED01    899 - 899
      CHEMED02    900 - 900    CHEMED03    901 - 901
      CHEMED04    902 - 902    CHEMED05    903 - 903
      CHE_TIM1    904 - 904    CHE_TIM2    905 - 905
      CHE_TIM3    906 - 906    CHE_TIM4    907 - 907
      CHE_TIM5    908 - 908    CHE_ENG     909 - 909
      CHE_WEL     910 - 910    CHE_IMM     911 - 911
      CHE_NOHP    912 - 912    CHE_EXPS    913 - 913
      CHE_SUGG    914 - 914    CHE_FFC     915 - 915
      CHEDISC     916 - 916    CHEPRF1     917 - 917
      CHEPRF2     918 - 918    CHEPRF3     919 - 919
      CHEPRF4     920 - 920    CHEPRF5     921 - 921
      CHEPRF6     922 - 922    CHEPRF7     923 - 923
      COM_USEM    924 - 924    COM_NUM     925 - 925
      COM_PAY     926 - 928    COM_TRET    929 - 929
      COMCND01    930 - 930    COMCND02    931 - 931
      COMCND03    932 - 932    COMCND04    933 - 933
      COMCND05    934 - 934    COMCND06    935 - 935
      COMCND07    936 - 936    COMCND08    937 - 937
      COMCND09    938 - 938    COMCND10    939 - 939
      COMCND11    940 - 940    COMCND12    941 - 941
      COMCND13    942 - 942    COMCND14    943 - 943
      COMCND15    944 - 944    COMCND16    945 - 945
      COMCND17    946 - 946    COMCND18    947 - 947
      COMCND19    948 - 948    COMCND20    949 - 949
      COMCND21    950 - 950    COMCND22    951 - 951
      COMCND23    952 - 952    COMCND24    953 - 953
      COMCND25    954 - 954    COMCND26    955 - 955
      COMCND27    956 - 956    COMCND28    957 - 957
      COMCND29    958 - 958    COMCND30    959 - 959
      COMCND31    960 - 960    COMCND32    961 - 961
      COMCND33    962 - 962    COMCND34    963 - 963
      COMCND35    964 - 964    COMCND36    965 - 965
      COMCND37    966 - 966    COMCND38    967 - 967
      COMCND39    968 - 968    COMCND40    969 - 969
      COMCND41    970 - 970    COMCND42    971 - 971
      COMCND43    972 - 972    COMCND44    973 - 973
      COMCND45    974 - 974    COMCND46    975 - 975
      COMCND47    976 - 976    COMCND48    977 - 977
      COMCND49    978 - 978    COMCND50    979 - 979
      COMCND51    980 - 980    COMCND52    981 - 981
      COMCND53    982 - 982    COMCND54    983 - 983
      COMCND55    984 - 984    COMCND56    985 - 985
      COMCND57    986 - 986    COMCND58    987 - 987
      COMCND59    988 - 988    COMCND60    989 - 989
      COMCND61    990 - 990    COMCND62    991 - 991
      COMCND63    992 - 992    COMCND64    993 - 993
      COMCND65    994 - 994    COMCND66    995 - 995
      COMCND67    996 - 996    COMCND68    997 - 997
      COMCND69    998 - 998    COMCND70    999 - 999
      COMCND71   1000 -1000    COMCND72   1001 -1001
      COMCND73   1002 -1002    COMCND74   1003 -1003
      COMCND75   1004 -1004    COMCND76   1005 -1005
      COMCND77   1006 -1006    COMCND78   1007 -1007
      COMCND79   1008 -1008    COMCND80   1009 -1009
      COMCND81   1010 -1010    COMCND82   1011 -1011
      COMCND83   1012 -1012    COMCND84   1013 -1013
      COMCND85   1014 -1014    COMCND86   1015 -1015
      COMCND87   1016 -1016    COMCONCT   1017 -1018
      COM_SPEC $ 1019 -1093    COM_MOST   1094 -1095
      COMMED00   1096 -1096    COMMED01   1097 -1097
      COMMED02   1098 -1098    COMMED03   1099 -1099
      COMMED04   1100 -1100    COMMED05   1101 -1101
      COM_TIM1   1102 -1102    COM_TIM2   1103 -1103
      COM_TIM3   1104 -1104    COM_TIM4   1105 -1105
      COM_TIM5   1106 -1106    COM_ENG    1107 -1107
      COM_WEL    1108 -1108    COM_IMM    1109 -1109
      COM_NOHP   1110 -1110    COM_EXPS   1111 -1111
      COM_SUGG   1112 -1112    COM_FFC    1113 -1113
      COMDISC    1114 -1114    COMPRF1    1115 -1115
      COMPRF2    1116 -1116    COMPRF3    1117 -1117
      COMPRF4    1118 -1118    COMPRF5    1119 -1119
      COMPRF6    1120 -1120    COMPRF7    1121 -1121
      COMMNOT1   1122 -1122    COMMNOT2   1123 -1123
      COMMNOT3   1124 -1124    COMMNOT4   1125 -1125
      COMMNOT5   1126 -1126    COMMNOT6   1127 -1127
      COMMNOT7   1128 -1128    COMMNOT8   1129 -1129
      COMMNOT9   1130 -1130    COM_SDEF $ 1131 -1205
      COM_ATT    1206 -1206    COMNNT01   1207 -1207
      COMNNT02   1208 -1208    COMNNT03   1209 -1209
      COMNNT04   1210 -1210    COMNNT05   1211 -1211
      COMNNT06   1212 -1212    COMNNT07   1213 -1213
      COMNNT08   1214 -1214    COMNNT09   1215 -1215
      COMNNT10   1216 -1216    EHT_USEM   1217 -1217
      EHT_NUM    1218 -1218    EHT_PAY    1219 -1221
      EHT_TRET   1222 -1222    EHTCND01   1223 -1223
      EHTCND02   1224 -1224    EHTCND03   1225 -1225
      EHTCND04   1226 -1226    EHTCND05   1227 -1227
      EHTCND06   1228 -1228    EHTCND07   1229 -1229
      EHTCND08   1230 -1230    EHTCND09   1231 -1231
      EHTCND10   1232 -1232    EHTCND11   1233 -1233
      EHTCND12   1234 -1234    EHTCND13   1235 -1235
      EHTCND14   1236 -1236    EHTCND15   1237 -1237
      EHTCND16   1238 -1238    EHTCND17   1239 -1239
      EHTCND18   1240 -1240    EHTCND19   1241 -1241
      EHTCND20   1242 -1242    EHTCND21   1243 -1243
      EHTCND22   1244 -1244    EHTCND23   1245 -1245
      EHTCND24   1246 -1246    EHTCND25   1247 -1247
      EHTCND26   1248 -1248    EHTCND27   1249 -1249
      EHTCND28   1250 -1250    EHTCND29   1251 -1251
      EHTCND30   1252 -1252    EHTCND31   1253 -1253
      EHTCND32   1254 -1254    EHTCND33   1255 -1255
      EHTCND34   1256 -1256    EHTCND35   1257 -1257
      EHTCND36   1258 -1258    EHTCND37   1259 -1259
      EHTCND38   1260 -1260    EHTCND39   1261 -1261
      EHTCND40   1262 -1262    EHTCND41   1263 -1263
      EHTCND42   1264 -1264    EHTCND43   1265 -1265
      EHTCND44   1266 -1266    EHTCND45   1267 -1267
      EHTCND46   1268 -1268    EHTCND47   1269 -1269
      EHTCND48   1270 -1270    EHTCND49   1271 -1271
      EHTCND50   1272 -1272    EHTCND51   1273 -1273
      EHTCND52   1274 -1274    EHTCND53   1275 -1275
      EHTCND54   1276 -1276    EHTCND55   1277 -1277
      EHTCND56   1278 -1278    EHTCND57   1279 -1279
      EHTCND58   1280 -1280    EHTCND59   1281 -1281
      EHTCND60   1282 -1282    EHTCND61   1283 -1283
      EHTCND62   1284 -1284    EHTCND63   1285 -1285
      EHTCND64   1286 -1286    EHTCND65   1287 -1287
      EHTCND66   1288 -1288    EHTCND67   1289 -1289
      EHTCND68   1290 -1290    EHTCND69   1291 -1291
      EHTCND70   1292 -1292    EHTCND71   1293 -1293
      EHTCND72   1294 -1294    EHTCND73   1295 -1295
      EHTCND74   1296 -1296    EHTCND75   1297 -1297
      EHTCND76   1298 -1298    EHTCND77   1299 -1299
      EHTCND78   1300 -1300    EHTCND79   1301 -1301
      EHTCND80   1302 -1302    EHTCND81   1303 -1303
      EHTCND82   1304 -1304    EHTCND83   1305 -1305
      EHTCND84   1306 -1306    EHTCND85   1307 -1307
      EHTCND86   1308 -1308    EHTCND87   1309 -1309
      EHTCONCT   1310 -1311    EHT_SPEC $ 1312 -1386
      EHT_MOST   1387 -1388    EHTMED00   1389 -1389
      EHTMED01   1390 -1390    EHTMED02   1391 -1391
      EHTMED03   1392 -1392    EHTMED04   1393 -1393
      EHTMED05   1394 -1394    EHT_TIM1   1395 -1395
      EHT_TIM2   1396 -1396    EHT_TIM3   1397 -1397
      EHT_TIM4   1398 -1398    EHT_TIM5   1399 -1399
      EHT_ENG    1400 -1400    EHT_WEL    1401 -1401
      EHT_IMM    1402 -1402    EHT_NOHP   1403 -1403
      EHT_EXPS   1404 -1404    EHT_SUGG   1405 -1405
      EHT_FFC    1406 -1406    EHTDISC    1407 -1407
      EHTPRF1    1408 -1408    EHTPRF2    1409 -1409
      EHTPRF3    1410 -1410    EHTPRF4    1411 -1411
      EHTPRF5    1412 -1412    EHTPRF6    1413 -1413
      EHTPRF7    1414 -1414    HYP_USEM   1415 -1415
      HYP_NUM    1416 -1416    HYP_PAY    1417 -1419
      HYP_TRET   1420 -1420    HYPCND01   1421 -1421
      HYPCND02   1422 -1422    HYPCND03   1423 -1423
      HYPCND04   1424 -1424    HYPCND05   1425 -1425
      HYPCND06   1426 -1426    HYPCND07   1427 -1427
      HYPCND08   1428 -1428    HYPCND09   1429 -1429
      HYPCND10   1430 -1430    HYPCND11   1431 -1431
      HYPCND12   1432 -1432    HYPCND13   1433 -1433
      HYPCND14   1434 -1434    HYPCND15   1435 -1435
      HYPCND16   1436 -1436    HYPCND17   1437 -1437
      HYPCND18   1438 -1438    HYPCND19   1439 -1439
      HYPCND20   1440 -1440    HYPCND21   1441 -1441
      HYPCND22   1442 -1442    HYPCND23   1443 -1443
      HYPCND24   1444 -1444    HYPCND25   1445 -1445
      HYPCND26   1446 -1446    HYPCND27   1447 -1447
      HYPCND28   1448 -1448    HYPCND29   1449 -1449
      HYPCND30   1450 -1450    HYPCND31   1451 -1451
      HYPCND32   1452 -1452    HYPCND33   1453 -1453
      HYPCND34   1454 -1454    HYPCND35   1455 -1455
      HYPCND36   1456 -1456    HYPCND37   1457 -1457
      HYPCND38   1458 -1458    HYPCND39   1459 -1459
      HYPCND40   1460 -1460    HYPCND41   1461 -1461
      HYPCND42   1462 -1462    HYPCND43   1463 -1463
      HYPCND44   1464 -1464    HYPCND45   1465 -1465
      HYPCND46   1466 -1466    HYPCND47   1467 -1467
      HYPCND48   1468 -1468    HYPCND49   1469 -1469
      HYPCND50   1470 -1470    HYPCND51   1471 -1471
      HYPCND52   1472 -1472    HYPCND53   1473 -1473
      HYPCND54   1474 -1474    HYPCND55   1475 -1475
      HYPCND56   1476 -1476    HYPCND57   1477 -1477
      HYPCND58   1478 -1478    HYPCND59   1479 -1479
      HYPCND60   1480 -1480    HYPCND61   1481 -1481
      HYPCND62   1482 -1482    HYPCND63   1483 -1483
      HYPCND64   1484 -1484    HYPCND65   1485 -1485
      HYPCND66   1486 -1486    HYPCND67   1487 -1487
      HYPCND68   1488 -1488    HYPCND69   1489 -1489
      HYPCND70   1490 -1490    HYPCND71   1491 -1491
      HYPCND72   1492 -1492    HYPCND73   1493 -1493
      HYPCND74   1494 -1494    HYPCND75   1495 -1495
      HYPCND76   1496 -1496    HYPCND77   1497 -1497
      HYPCND78   1498 -1498    HYPCND79   1499 -1499
      HYPCND80   1500 -1500    HYPCND81   1501 -1501
      HYPCND82   1502 -1502    HYPCND83   1503 -1503
      HYPCND84   1504 -1504    HYPCND85   1505 -1505
      HYPCND86   1506 -1506    HYPCND87   1507 -1507
      HYPCONCT   1508 -1509    HYP_SPEC $ 1510 -1584
      HYP_MOST   1585 -1586    HYPMED00   1587 -1587
      HYPMED01   1588 -1588    HYPMED02   1589 -1589
      HYPMED03   1590 -1590    HYPMED04   1591 -1591
      HYPMED05   1592 -1592    HYP_TIM1   1593 -1593
      HYP_TIM2   1594 -1594    HYP_TIM3   1595 -1595
      HYP_TIM4   1596 -1596    HYP_TIM5   1597 -1597
      HYP_ENG    1598 -1598    HYP_WEL    1599 -1599
      HYP_IMM    1600 -1600    HYP_NOHP   1601 -1601
      HYP_EXPS   1602 -1602    HYP_SUGG   1603 -1603
      HYP_FFC    1604 -1604    HYPDISC    1605 -1605
      HYPPRF1    1606 -1606    HYPPRF2    1607 -1607
      HYPPRF3    1608 -1608    HYPPRF4    1609 -1609
      HYPPRF5    1610 -1610    HYPPRF6    1611 -1611
      HYPPRF7    1612 -1612    MAS_USEM   1613 -1613
      MAS_NUM    1614 -1614    MAS_PAY    1615 -1617
      MAS_TRET   1618 -1618    MASCND01   1619 -1619
      MASCND02   1620 -1620    MASCND03   1621 -1621
      MASCND04   1622 -1622    MASCND05   1623 -1623
      MASCND06   1624 -1624    MASCND07   1625 -1625
      MASCND08   1626 -1626    MASCND09   1627 -1627
      MASCND10   1628 -1628    MASCND11   1629 -1629
      MASCND12   1630 -1630    MASCND13   1631 -1631
      MASCND14   1632 -1632    MASCND15   1633 -1633
      MASCND16   1634 -1634    MASCND17   1635 -1635
      MASCND18   1636 -1636    MASCND19   1637 -1637
      MASCND20   1638 -1638    MASCND21   1639 -1639
      MASCND22   1640 -1640    MASCND23   1641 -1641
      MASCND24   1642 -1642    MASCND25   1643 -1643
      MASCND26   1644 -1644    MASCND27   1645 -1645
      MASCND28   1646 -1646    MASCND29   1647 -1647
      MASCND30   1648 -1648    MASCND31   1649 -1649
      MASCND32   1650 -1650    MASCND33   1651 -1651
      MASCND34   1652 -1652    MASCND35   1653 -1653
      MASCND36   1654 -1654    MASCND37   1655 -1655
      MASCND38   1656 -1656    MASCND39   1657 -1657
      MASCND40   1658 -1658    MASCND41   1659 -1659
      MASCND42   1660 -1660    MASCND43   1661 -1661
      MASCND44   1662 -1662    MASCND45   1663 -1663
      MASCND46   1664 -1664    MASCND47   1665 -1665
      MASCND48   1666 -1666    MASCND49   1667 -1667
      MASCND50   1668 -1668    MASCND51   1669 -1669
      MASCND52   1670 -1670    MASCND53   1671 -1671
      MASCND54   1672 -1672    MASCND55   1673 -1673
      MASCND56   1674 -1674    MASCND57   1675 -1675
      MASCND58   1676 -1676    MASCND59   1677 -1677
      MASCND60   1678 -1678    MASCND61   1679 -1679
      MASCND62   1680 -1680    MASCND63   1681 -1681
      MASCND64   1682 -1682    MASCND65   1683 -1683
      MASCND66   1684 -1684    MASCND67   1685 -1685
      MASCND68   1686 -1686    MASCND69   1687 -1687
      MASCND70   1688 -1688    MASCND71   1689 -1689
      MASCND72   1690 -1690    MASCND73   1691 -1691
      MASCND74   1692 -1692    MASCND75   1693 -1693
      MASCND76   1694 -1694    MASCND77   1695 -1695
      MASCND78   1696 -1696    MASCND79   1697 -1697
      MASCND80   1698 -1698    MASCND81   1699 -1699
      MASCND82   1700 -1700    MASCND83   1701 -1701
      MASCND84   1702 -1702    MASCND85   1703 -1703
      MASCND86   1704 -1704    MASCND87   1705 -1705
      MASCONCT   1706 -1707    MAS_SPEC $ 1708 -1782
      MAS_MOST   1783 -1784    MASMED00   1785 -1785
      MASMED01   1786 -1786    MASMED02   1787 -1787
      MASMED03   1788 -1788    MASMED04   1789 -1789
      MASMED05   1790 -1790    MAS_TIM1   1791 -1791
      MAS_TIM2   1792 -1792    MAS_TIM3   1793 -1793
      MAS_TIM4   1794 -1794    MAS_TIM5   1795 -1795
      MAS_ENG    1796 -1796    MAS_WEL    1797 -1797
      MAS_IMM    1798 -1798    MAS_NOHP   1799 -1799
      MAS_EXPS   1800 -1800    MAS_SUGG   1801 -1801
      MAS_FFC    1802 -1802    MASDISC    1803 -1803
      MASPRF1    1804 -1804    MASPRF2    1805 -1805
      MASPRF3    1806 -1806    MASPRF4    1807 -1807
      MASPRF5    1808 -1808    MASPRF6    1809 -1809
      MASPRF7    1810 -1810    NAT_USEM   1811 -1811
      NAT_NUM    1812 -1812    NAT_PAY    1813 -1815
      NAT_TRET   1816 -1816    NATCND01   1817 -1817
      NATCND02   1818 -1818    NATCND03   1819 -1819
      NATCND04   1820 -1820    NATCND05   1821 -1821
      NATCND06   1822 -1822    NATCND07   1823 -1823
      NATCND08   1824 -1824    NATCND09   1825 -1825
      NATCND10   1826 -1826    NATCND11   1827 -1827
      NATCND12   1828 -1828    NATCND13   1829 -1829
      NATCND14   1830 -1830    NATCND15   1831 -1831
      NATCND16   1832 -1832    NATCND17   1833 -1833
      NATCND18   1834 -1834    NATCND19   1835 -1835
      NATCND20   1836 -1836    NATCND21   1837 -1837
      NATCND22   1838 -1838    NATCND23   1839 -1839
      NATCND24   1840 -1840    NATCND25   1841 -1841
      NATCND26   1842 -1842    NATCND27   1843 -1843
      NATCND28   1844 -1844    NATCND29   1845 -1845
      NATCND30   1846 -1846    NATCND31   1847 -1847
      NATCND32   1848 -1848    NATCND33   1849 -1849
      NATCND34   1850 -1850    NATCND35   1851 -1851
      NATCND36   1852 -1852    NATCND37   1853 -1853
      NATCND38   1854 -1854    NATCND39   1855 -1855
      NATCND40   1856 -1856    NATCND41   1857 -1857
      NATCND42   1858 -1858    NATCND43   1859 -1859
      NATCND44   1860 -1860    NATCND45   1861 -1861
      NATCND46   1862 -1862    NATCND47   1863 -1863
      NATCND48   1864 -1864    NATCND49   1865 -1865
      NATCND50   1866 -1866    NATCND51   1867 -1867
      NATCND52   1868 -1868    NATCND53   1869 -1869
      NATCND54   1870 -1870    NATCND55   1871 -1871
      NATCND56   1872 -1872    NATCND57   1873 -1873
      NATCND58   1874 -1874    NATCND59   1875 -1875
      NATCND60   1876 -1876    NATCND61   1877 -1877
      NATCND62   1878 -1878    NATCND63   1879 -1879
      NATCND64   1880 -1880    NATCND65   1881 -1881
      NATCND66   1882 -1882    NATCND67   1883 -1883
      NATCND68   1884 -1884    NATCND69   1885 -1885
      NATCND70   1886 -1886    NATCND71   1887 -1887
      NATCND72   1888 -1888    NATCND73   1889 -1889
      NATCND74   1890 -1890    NATCND75   1891 -1891
      NATCND76   1892 -1892    NATCND77   1893 -1893
      NATCND78   1894 -1894    NATCND79   1895 -1895
      NATCND80   1896 -1896    NATCND81   1897 -1897
      NATCND82   1898 -1898    NATCND83   1899 -1899
      NATCND84   1900 -1900    NATCND85   1901 -1901
      NATCND86   1902 -1902    NATCND87   1903 -1903
      NATCONCT   1904 -1905    NAT_SPEC $ 1906 -1980
      NAT_MOST   1981 -1982    NATMED00   1983 -1983
      NATMED01   1984 -1984    NATMED02   1985 -1985
      NATMED03   1986 -1986    NATMED04   1987 -1987
      NATMED05   1988 -1988    NAT_TIM1   1989 -1989
      NAT_TIM2   1990 -1990    NAT_TIM3   1991 -1991
      NAT_TIM4   1992 -1992    NAT_TIM5   1993 -1993
      NAT_ENG    1994 -1994    NAT_WEL    1995 -1995
      NAT_IMM    1996 -1996    NAT_NOHP   1997 -1997
      NAT_EXPS   1998 -1998    NAT_SUGG   1999 -1999
      NAT_FFC    2000 -2000    NATDISC    2001 -2001
      NATPRF1    2002 -2002    NATPRF2    2003 -2003
      NATPRF3    2004 -2004    NATPRF4    2005 -2005
      NATPRF5    2006 -2006    NATPRF6    2007 -2007
      NATPRF7    2008 -2008    CUR_EVER   2009 -2009
      ESP_EVER   2010 -2010    YER_EVER   2011 -2011
      SHA_EVER   2012 -2012    BOT_EVER   2013 -2013
      NAH_EVER   2014 -2014    SBD_EVER   2015 -2015
      TRDNEVER   2016 -2016    CUR_USEM   2017 -2017
      ESP_USEM   2018 -2018    YER_USEM   2019 -2019
      SHA_USEM   2020 -2020    BOT_USEM   2021 -2021
      NAH_USEM   2022 -2022    SBD_USEM   2023 -2023
      TRDUSECT   2024 -2024    TRD_MOST   2025 -2026
      TRD_NUM    2027 -2027    TRD_PAY    2028 -2030
      TRD_TRET   2031 -2031    TRDCND01   2032 -2032
      TRDCND02   2033 -2033    TRDCND03   2034 -2034
      TRDCND04   2035 -2035    TRDCND05   2036 -2036
      TRDCND06   2037 -2037    TRDCND07   2038 -2038
      TRDCND08   2039 -2039    TRDCND09   2040 -2040
      TRDCND10   2041 -2041    TRDCND11   2042 -2042
      TRDCND12   2043 -2043    TRDCND13   2044 -2044
      TRDCND14   2045 -2045    TRDCND15   2046 -2046
      TRDCND16   2047 -2047    TRDCND17   2048 -2048
      TRDCND18   2049 -2049    TRDCND19   2050 -2050
      TRDCND20   2051 -2051    TRDCND21   2052 -2052
      TRDCND22   2053 -2053    TRDCND23   2054 -2054
      TRDCND24   2055 -2055    TRDCND25   2056 -2056
      TRDCND26   2057 -2057    TRDCND27   2058 -2058
      TRDCND28   2059 -2059    TRDCND29   2060 -2060
      TRDCND30   2061 -2061    TRDCND31   2062 -2062
      TRDCND32   2063 -2063    TRDCND33   2064 -2064
      TRDCND34   2065 -2065    TRDCND35   2066 -2066
      TRDCND36   2067 -2067    TRDCND37   2068 -2068
      TRDCND38   2069 -2069    TRDCND39   2070 -2070
      TRDCND40   2071 -2071    TRDCND41   2072 -2072
      TRDCND42   2073 -2073    TRDCND43   2074 -2074
      TRDCND44   2075 -2075    TRDCND45   2076 -2076
      TRDCND46   2077 -2077    TRDCND47   2078 -2078
      TRDCND48   2079 -2079    TRDCND49   2080 -2080
      TRDCND50   2081 -2081    TRDCND51   2082 -2082
      TRDCND52   2083 -2083    TRDCND53   2084 -2084
      TRDCND54   2085 -2085    TRDCND55   2086 -2086
      TRDCND56   2087 -2087    TRDCND57   2088 -2088
      TRDCND58   2089 -2089    TRDCND59   2090 -2090
      TRDCND60   2091 -2091    TRDCND61   2092 -2092
      TRDCND62   2093 -2093    TRDCND63   2094 -2094
      TRDCND64   2095 -2095    TRDCND65   2096 -2096
      TRDCND66   2097 -2097    TRDCND67   2098 -2098
      TRDCND68   2099 -2099    TRDCND69   2100 -2100
      TRDCND70   2101 -2101    TRDCND71   2102 -2102
      TRDCND72   2103 -2103    TRDCND73   2104 -2104
      TRDCND74   2105 -2105    TRDCND75   2106 -2106
      TRDCND76   2107 -2107    TRDCND77   2108 -2108
      TRDCND78   2109 -2109    TRDCND79   2110 -2110
      TRDCND80   2111 -2111    TRDCND81   2112 -2112
      TRDCND82   2113 -2113    TRDCND83   2114 -2114
      TRDCND84   2115 -2115    TRDCND85   2116 -2116
      TRDCND86   2117 -2117    TRDCND87   2118 -2118
      TRDCONCT   2119 -2120    TRD_SPEC $ 2121 -2195
      TRD_CONM   2196 -2197    TRDMED00   2198 -2198
      TRDMED01   2199 -2199    TRDMED02   2200 -2200
      TRDMED03   2201 -2201    TRDMED04   2202 -2202
      TRDMED05   2203 -2203    TRD_TIM1   2204 -2204
      TRD_TIM2   2205 -2205    TRD_TIM3   2206 -2206
      TRD_TIM4   2207 -2207    TRD_TIM5   2208 -2208
      TRD_ENG    2209 -2209    TRD_WEL    2210 -2210
      TRD_IMM    2211 -2211    TRD_NOHP   2212 -2212
      TRD_EXPS   2213 -2213    TRD_SUGG   2214 -2214
      TRD_FFC    2215 -2215    TRDDISC    2216 -2216
      TRDPRF1    2217 -2217    TRDPRF2    2218 -2218
      TRDPRF3    2219 -2219    TRDPRF4    2220 -2220
      TRDPRF5    2221 -2221    TRDPRF6    2222 -2222
      TRDPRF7    2223 -2223    FELD_EVE   2224 -2224
      ALEX_EVE   2225 -2225    PIL_EVE    2226 -2226
      TRAG_EVE   2227 -2227    FELD_USE   2228 -2228
      ALEX_USE   2229 -2229    PIL_USE    2230 -2230
      TRAG_USE   2231 -2231    MOVUSECT   2232 -2232
      MOV_MOST   2233 -2233    MOV_NUM    2234 -2234
      MOV_PAY    2235 -2237    MOV_TRET   2238 -2238
      MOVCND01   2239 -2239    MOVCND02   2240 -2240
      MOVCND03   2241 -2241    MOVCND04   2242 -2242
      MOVCND05   2243 -2243    MOVCND06   2244 -2244
      MOVCND07   2245 -2245    MOVCND08   2246 -2246
      MOVCND09   2247 -2247    MOVCND10   2248 -2248
      MOVCND11   2249 -2249    MOVCND12   2250 -2250
      MOVCND13   2251 -2251    MOVCND14   2252 -2252
      MOVCND15   2253 -2253    MOVCND16   2254 -2254
      MOVCND17   2255 -2255    MOVCND18   2256 -2256
      MOVCND19   2257 -2257    MOVCND20   2258 -2258
      MOVCND21   2259 -2259    MOVCND22   2260 -2260
      MOVCND23   2261 -2261    MOVCND24   2262 -2262
      MOVCND25   2263 -2263    MOVCND26   2264 -2264
      MOVCND27   2265 -2265    MOVCND28   2266 -2266
      MOVCND29   2267 -2267    MOVCND30   2268 -2268
      MOVCND31   2269 -2269    MOVCND32   2270 -2270
      MOVCND33   2271 -2271    MOVCND34   2272 -2272
      MOVCND35   2273 -2273    MOVCND36   2274 -2274
      MOVCND37   2275 -2275    MOVCND38   2276 -2276
      MOVCND39   2277 -2277    MOVCND40   2278 -2278
      MOVCND41   2279 -2279    MOVCND42   2280 -2280
      MOVCND43   2281 -2281    MOVCND44   2282 -2282
      MOVCND45   2283 -2283    MOVCND46   2284 -2284
      MOVCND47   2285 -2285    MOVCND48   2286 -2286
      MOVCND49   2287 -2287    MOVCND50   2288 -2288
      MOVCND51   2289 -2289    MOVCND52   2290 -2290
      MOVCND53   2291 -2291    MOVCND54   2292 -2292
      MOVCND55   2293 -2293    MOVCND56   2294 -2294
      MOVCND57   2295 -2295    MOVCND58   2296 -2296
      MOVCND59   2297 -2297    MOVCND60   2298 -2298
      MOVCND61   2299 -2299    MOVCND62   2300 -2300
      MOVCND63   2301 -2301    MOVCND64   2302 -2302
      MOVCND65   2303 -2303    MOVCND66   2304 -2304
      MOVCND67   2305 -2305    MOVCND68   2306 -2306
      MOVCND69   2307 -2307    MOVCND70   2308 -2308
      MOVCND71   2309 -2309    MOVCND72   2310 -2310
      MOVCND73   2311 -2311    MOVCND74   2312 -2312
      MOVCND75   2313 -2313    MOVCND76   2314 -2314
      MOVCND77   2315 -2315    MOVCND78   2316 -2316
      MOVCND79   2317 -2317    MOVCND80   2318 -2318
      MOVCND81   2319 -2319    MOVCND82   2320 -2320
      MOVCND83   2321 -2321    MOVCND84   2322 -2322
      MOVCND85   2323 -2323    MOVCND86   2324 -2324
      MOVCND87   2325 -2325    MOVCONCT   2326 -2327
      MOV_SPEC $ 2328 -2402    MOV_CONM   2403 -2404
      MOVMED00   2405 -2405    MOVMED01   2406 -2406
      MOVMED02   2407 -2407    MOVMED03   2408 -2408
      MOVMED04   2409 -2409    MOVMED05   2410 -2410
      MOV_TIM1   2411 -2411    MOV_TIM2   2412 -2412
      MOV_TIM3   2413 -2413    MOV_TIM4   2414 -2414
      MOV_TIM5   2415 -2415    MOV_ENG    2416 -2416
      MOV_WEL    2417 -2417    MOV_IMM    2418 -2418
      MOV_NOHP   2419 -2419    MOV_EXPS   2420 -2420
      MOV_SUGG   2421 -2421    MOV_FFC    2422 -2422
      MOVDISC    2423 -2423    MOVPRF1    2424 -2424
      MOVPRF2    2425 -2425    MOVPRF3    2426 -2426
      MOVPRF4    2427 -2427    MOVPRF5    2428 -2428
      MOVPRF6    2429 -2429    MOVPRF7    2430 -2430
      AHB_EVER   2431 -2431    AHB_USEM   2432 -2432
      AHB_MO     2433 -2433    AHBTAK01   2434 -2434
      AHBTAK02   2435 -2435    AHBTAK03   2436 -2436
      AHBTAK04   2437 -2437    AHBTAK05   2438 -2438
      AHBTAK06   2439 -2439    AHBTAK07   2440 -2440
      AHBTAK08   2441 -2441    AHBTAK09   2442 -2442
      AHBTAK10   2443 -2443    AHBTAK11   2444 -2444
      AHBTAK12   2445 -2445    AHBTAK13   2446 -2446
      AHBTAK14   2447 -2447    AHBTAK15   2448 -2448
      AHBTAK16   2449 -2449    AHBTAK17   2450 -2450
      AHBTAK18   2451 -2451    AHBTAK19   2452 -2452
      AHBTAK20   2453 -2453    AHBTAK21   2454 -2454
      AHBTAK22   2455 -2455    AHBTAK23   2456 -2456
      AHBTAK24   2457 -2457    AHBTAK25   2458 -2458
      AHBTAK26   2459 -2459    AHBTAK27   2460 -2460
      AHBTAK28   2461 -2461    AHBTAK29   2462 -2462
      AHBTAK30   2463 -2463    AHBTAK31   2464 -2464
      AHBTAK32   2465 -2465    AHBTAK33   2466 -2466
      AHBTAK34   2467 -2467    AHBTAK35   2468 -2468
      AHBTAK36   2469 -2469    AHBTAK37   2470 -2470
      AHBTAK38   2471 -2471    AHBTAK39   2472 -2472
      AHBTAK40   2473 -2473    AHBTAK41   2474 -2474
      AHBTAK42   2475 -2475    AHBTAK43   2476 -2476
      AHBTAK44   2477 -2477    AHBTAK45   2478 -2478
      AHBTAKCT   2479 -2480    AHB_COMN   2481 -2482
      AHBCM102   2483 -2483    AHBCM103   2484 -2484
      AHBCM104   2485 -2485    AHBCM105   2486 -2486
      AHBCM106   2487 -2487    AHBCM107   2488 -2488
      AHBCM108   2489 -2489    AHBCM109   2490 -2490
      AHBCM110   2491 -2491    AHBCM111   2492 -2492
      AHBCM112   2493 -2493    AHBCM113   2494 -2494
      AHBCM114   2495 -2495    AHBCM115   2496 -2496
      AHBCM116   2497 -2497    AHBCM117   2498 -2498
      AHBCM118   2499 -2499    AHBCM119   2500 -2500
      AHBCM120   2501 -2501    AHBCM121   2502 -2502
      AHBCM122   2503 -2503    AHBCM123   2504 -2504
      AHBCM124   2505 -2505    AHBCM125   2506 -2506
      AHBCM126   2507 -2507    AHBCM127   2508 -2508
      AHBCM128   2509 -2509    AHBCM129   2510 -2510
      AHBCM130   2511 -2511    AHBCM131   2512 -2512
      AHBCM132   2513 -2513    AHBCM133   2514 -2514
      AHBCM134   2515 -2515    AHBCM135   2516 -2516
      AHBCM136   2517 -2517    AHBCM137   2518 -2518
      AHBCM138   2519 -2519    AHBCM139   2520 -2520
      AHBCM140   2521 -2521    AHBCM141   2522 -2522
      AHBCM142   2523 -2523    AHBCM143   2524 -2524
      AHBCM144   2525 -2525    AHBCM145   2526 -2526
      AHBCM146   2527 -2527    AHBCM202   2528 -2528
      AHBCM203   2529 -2529    AHBCM204   2530 -2530
      AHBCM205   2531 -2531    AHBCM206   2532 -2532
      AHBCM207   2533 -2533    AHBCM208   2534 -2534
      AHBCM209   2535 -2535    AHBCM210   2536 -2536
      AHBCM211   2537 -2537    AHBCM212   2538 -2538
      AHBCM213   2539 -2539    AHBCM214   2540 -2540
      AHBCM215   2541 -2541    AHBCM216   2542 -2542
      AHBCM217   2543 -2543    AHBCM218   2544 -2544
      AHBCM219   2545 -2545    AHBCM220   2546 -2546
      AHBCM221   2547 -2547    AHBCM222   2548 -2548
      AHBCM223   2549 -2549    AHBCM224   2550 -2550
      AHBCM225   2551 -2551    AHBCM226   2552 -2552
      AHBCM227   2553 -2553    AHBCM228   2554 -2554
      AHBCM229   2555 -2555    AHBCM230   2556 -2556
      AHBCM231   2557 -2557    AHBCM232   2558 -2558
      AHBCM233   2559 -2559    AHBCM234   2560 -2560
      AHBCM235   2561 -2561    AHBCM236   2562 -2562
      AHBCM237   2563 -2563    AHBCM238   2564 -2564
      AHBCM239   2565 -2565    AHBCM240   2566 -2566
      AHBCM241   2567 -2567    AHBCM242   2568 -2568
      AHBCM243   2569 -2569    AHBCM244   2570 -2570
      AHBCM245   2571 -2571    AHBCM246   2572 -2572
      AHBTOP2A   2573 -2574    AHBTOP2B   2575 -2576
      AHB_R1A    2577 -2577    AHB_R2A    2578 -2578
      AHB_R3A    2579 -2579    AHB_R4A    2580 -2580
      AHB_R5A    2581 -2581    AHB_R6A    2582 -2582
      AHB_R7A    2583 -2583    AHB_R8A    2584 -2584
      AHB_R9A    2585 -2585    AHB_R10A   2586 -2586
      AHB_R11A   2587 -2587    AHB_R12A   2588 -2588
      AHB_R13A   2589 -2589    AHCTRA01   2590 -2590
      AHCTRA02   2591 -2591    AHCTRA03   2592 -2592
      AHCTRA04   2593 -2593    AHCTRA05   2594 -2594
      AHCTRA06   2595 -2595    AHCTRA07   2596 -2596
      AHCTRA08   2597 -2597    AHCTRA09   2598 -2598
      AHCTRA10   2599 -2599    AHCTRA11   2600 -2600
      AHCTRA12   2601 -2601    AHCTRA13   2602 -2602
      AHCTRA14   2603 -2603    AHCTRA15   2604 -2604
      AHCTRA16   2605 -2605    AHCTRA17   2606 -2606
      AHCTRA18   2607 -2607    AHCTRA19   2608 -2608
      AHCTRA20   2609 -2609    AHCTRA21   2610 -2610
      AHCTRA22   2611 -2611    AHCTRA23   2612 -2612
      AHCTRA24   2613 -2613    AHCTRA25   2614 -2614
      AHCTRA26   2615 -2615    AHCTRA27   2616 -2616
      AHCTRA28   2617 -2617    AHCTRA29   2618 -2618
      AHCTRA30   2619 -2619    AHCTRA31   2620 -2620
      AHCTRA32   2621 -2621    AHCTRA33   2622 -2622
      AHCTRA34   2623 -2623    AHCTRA35   2624 -2624
      AHCTRA36   2625 -2625    AHCTRA37   2626 -2626
      AHCTRA38   2627 -2627    AHCTRA39   2628 -2628
      AHCTRA40   2629 -2629    AHCTRA41   2630 -2630
      AHCTRA42   2631 -2631    AHCTRA43   2632 -2632
      AHCTRA44   2633 -2633    AHCTRA45   2634 -2634
      AHCTRA46   2635 -2635    AHCTRA47   2636 -2636
      AHCTRA48   2637 -2637    AHCTRA49   2638 -2638
      AHCTRA50   2639 -2639    AHCTRA51   2640 -2640
      AHCTRA52   2641 -2641    AHCTRA53   2642 -2642
      AHCTRA54   2643 -2643    AHCTRA55   2644 -2644
      AHCTRA56   2645 -2645    AHCTRA57   2646 -2646
      AHCTRA58   2647 -2647    AHCTRA59   2648 -2648
      AHCTRA60   2649 -2649    AHCTRA61   2650 -2650
      AHCTRA62   2651 -2651    AHCTRA63   2652 -2652
      AHCTRA64   2653 -2653    AHCTRA65   2654 -2654
      AHCTRA66   2655 -2655    AHCTRA67   2656 -2656
      AHCTRA68   2657 -2657    AHCTRA69   2658 -2658
      AHCTRA70   2659 -2659    AHCTRA71   2660 -2660
      AHCTRA72   2661 -2661    AHCTRA73   2662 -2662
      AHCTRA74   2663 -2663    AHCTRA75   2664 -2664
      AHCTRA76   2665 -2665    AHCTRA77   2666 -2666
      AHCTRA78   2667 -2667    AHCTRA79   2668 -2668
      AHCTRA80   2669 -2669    AHCTRA81   2670 -2670
      AHCTRA82   2671 -2671    AHCTRA83   2672 -2672
      AHCTRA84   2673 -2673    AHCTRA85   2674 -2674
      AHCTRA86   2675 -2675    AHCTRA87   2676 -2676
      AHBCTACT   2677 -2678    AHB_SPT1 $ 2679 -2753
      AHB_CONA   2754 -2755    AHBMEDA0   2756 -2756
      AHBMEDA1   2757 -2757    AHBMEDA2   2758 -2758
      AHBMEDA3   2759 -2759    AHBMEDA4   2760 -2760
      AHBMEDA5   2761 -2761    AHB_TM1A   2762 -2762
      AHB_TM2A   2763 -2763    AHB_TM3A   2764 -2764
      AHB_TM4A   2765 -2765    AHB_TM5A   2766 -2766
      AHCNPA01   2767 -2767    AHCNPA02   2768 -2768
      AHCNPA03   2769 -2769    AHCNPA04   2770 -2770
      AHCNPA05   2771 -2771    AHCNPA06   2772 -2772
      AHCNPA07   2773 -2773    AHCNPA08   2774 -2774
      AHCNPA09   2775 -2775    AHCNPA10   2776 -2776
      AHCNPA11   2777 -2777    AHCNPA12   2778 -2778
      AHCNPA13   2779 -2779    AHCNPA14   2780 -2780
      AHCNPA15   2781 -2781    AHCNPA16   2782 -2782
      AHCNPA17   2783 -2783    AHCNPA18   2784 -2784
      AHCNPA19   2785 -2785    AHCNPA20   2786 -2786
      AHCNPA21   2787 -2787    AHCNPA22   2788 -2788
      AHCNPA23   2789 -2789    AHCNPA24   2790 -2790
      AHCNPA25   2791 -2791    AHCNPA26   2792 -2792
      AHCNPA27   2793 -2793    AHCNPA28   2794 -2794
      AHCNPA29   2795 -2795    AHCNPA30   2796 -2796
      AHCNPA31   2797 -2797    AHCNPA32   2798 -2798
      AHCNPA33   2799 -2799    AHCNPA34   2800 -2800
      AHCNPA35   2801 -2801    AHCNPA36   2802 -2802
      AHCNPA37   2803 -2803    AHCNPA38   2804 -2804
      AHCNPA39   2805 -2805    AHCNPA40   2806 -2806
      AHCNPA41   2807 -2807    AHCNPA42   2808 -2808
      AHCNPA43   2809 -2809    AHCNPA44   2810 -2810
      AHCNPA45   2811 -2811    AHCNPA46   2812 -2812
      AHCNPA47   2813 -2813    AHCNPA48   2814 -2814
      AHCNPA49   2815 -2815    AHCNPA50   2816 -2816
      AHCNPA51   2817 -2817    AHCNPA52   2818 -2818
      AHCNPA53   2819 -2819    AHCNPA54   2820 -2820
      AHCNPA55   2821 -2821    AHCNPA56   2822 -2822
      AHCNPA57   2823 -2823    AHCNPA58   2824 -2824
      AHCNPA59   2825 -2825    AHCNPA60   2826 -2826
      AHCNPA61   2827 -2827    AHCNPA62   2828 -2828
      AHCNPA63   2829 -2829    AHCNPA64   2830 -2830
      AHCNPA65   2831 -2831    AHCNPA66   2832 -2832
      AHCNPA67   2833 -2833    AHCNPA68   2834 -2834
      AHCNPA69   2835 -2835    AHCNPA70   2836 -2836
      AHCNPA71   2837 -2837    AHCNPA72   2838 -2838
      AHCNPA73   2839 -2839    AHCNPA74   2840 -2840
      AHCNPA75   2841 -2841    AHCNPA76   2842 -2842
      AHCNPA77   2843 -2843    AHCNPA78   2844 -2844
      AHCNPA79   2845 -2845    AHCNPA80   2846 -2846
      AHCNPA81   2847 -2847    AHCNPA82   2848 -2848
      AHCNPA83   2849 -2849    AHCNPA84   2850 -2850
      AHCNPA85   2851 -2851    AHCNPA86   2852 -2852
      AHCNPA87   2853 -2853    AHBCPACT   2854 -2855
      AHB_SPP1 $ 2856 -2930    AHB_CMPA   2931 -2932
      AHB_SAME   2933 -2933    AHB_R1B    2934 -2934
      AHB_R2B    2935 -2935    AHB_R3B    2936 -2936
      AHB_R4B    2937 -2937    AHB_R5B    2938 -2938
      AHB_R6B    2939 -2939    AHB_R7B    2940 -2940
      AHB_R8B    2941 -2941    AHB_R9B    2942 -2942
      AHB_R10B   2943 -2943    AHB_R11B   2944 -2944
      AHB_R12B   2945 -2945    AHB_R13B   2946 -2946
      AHCTRB01   2947 -2947    AHCTRB02   2948 -2948
      AHCTRB03   2949 -2949    AHCTRB04   2950 -2950
      AHCTRB05   2951 -2951    AHCTRB06   2952 -2952
      AHCTRB07   2953 -2953    AHCTRB08   2954 -2954
      AHCTRB09   2955 -2955    AHCTRB10   2956 -2956
      AHCTRB11   2957 -2957    AHCTRB12   2958 -2958
      AHCTRB13   2959 -2959    AHCTRB14   2960 -2960
      AHCTRB15   2961 -2961    AHCTRB16   2962 -2962
      AHCTRB17   2963 -2963    AHCTRB18   2964 -2964
      AHCTRB19   2965 -2965    AHCTRB20   2966 -2966
      AHCTRB21   2967 -2967    AHCTRB22   2968 -2968
      AHCTRB23   2969 -2969    AHCTRB24   2970 -2970
      AHCTRB25   2971 -2971    AHCTRB26   2972 -2972
      AHCTRB27   2973 -2973    AHCTRB28   2974 -2974
      AHCTRB29   2975 -2975    AHCTRB30   2976 -2976
      AHCTRB31   2977 -2977    AHCTRB32   2978 -2978
      AHCTRB33   2979 -2979    AHCTRB34   2980 -2980
      AHCTRB35   2981 -2981    AHCTRB36   2982 -2982
      AHCTRB37   2983 -2983    AHCTRB38   2984 -2984
      AHCTRB39   2985 -2985    AHCTRB40   2986 -2986
      AHCTRB41   2987 -2987    AHCTRB42   2988 -2988
      AHCTRB43   2989 -2989    AHCTRB44   2990 -2990
      AHCTRB45   2991 -2991    AHCTRB46   2992 -2992
      AHCTRB47   2993 -2993    AHCTRB48   2994 -2994
      AHCTRB49   2995 -2995    AHCTRB50   2996 -2996
      AHCTRB51   2997 -2997    AHCTRB52   2998 -2998
      AHCTRB53   2999 -2999    AHCTRB54   3000 -3000
      AHCTRB55   3001 -3001    AHCTRB56   3002 -3002
      AHCTRB57   3003 -3003    AHCTRB58   3004 -3004
      AHCTRB59   3005 -3005    AHCTRB60   3006 -3006
      AHCTRB61   3007 -3007    AHCTRB62   3008 -3008
      AHCTRB63   3009 -3009    AHCTRB64   3010 -3010
      AHCTRB65   3011 -3011    AHCTRB66   3012 -3012
      AHCTRB67   3013 -3013    AHCTRB68   3014 -3014
      AHCTRB69   3015 -3015    AHCTRB70   3016 -3016
      AHCTRB71   3017 -3017    AHCTRB72   3018 -3018
      AHCTRB73   3019 -3019    AHCTRB74   3020 -3020
      AHCTRB75   3021 -3021    AHCTRB76   3022 -3022
      AHCTRB77   3023 -3023    AHCTRB78   3024 -3024
      AHCTRB79   3025 -3025    AHCTRB80   3026 -3026
      AHCTRB81   3027 -3027    AHCTRB82   3028 -3028
      AHCTRB83   3029 -3029    AHCTRB84   3030 -3030
      AHCTRB85   3031 -3031    AHCTRB86   3032 -3032
      AHCTRB87   3033 -3033    AHBCTBCT   3034 -3035
      AHB_SPT2 $ 3036 -3110    AHB_CONB   3111 -3112
      AHBMEDB0   3113 -3113    AHBMEDB1   3114 -3114
      AHBMEDB2   3115 -3115    AHBMEDB3   3116 -3116
      AHBMEDB4   3117 -3117    AHBMEDB5   3118 -3118
      AHB_TM1B   3119 -3119    AHB_TM2B   3120 -3120
      AHB_TM3B   3121 -3121    AHB_TM4B   3122 -3122
      AHB_TM5B   3123 -3123    AHCNPB01   3124 -3124
      AHCNPB02   3125 -3125    AHCNPB03   3126 -3126
      AHCNPB04   3127 -3127    AHCNPB05   3128 -3128
      AHCNPB06   3129 -3129    AHCNPB07   3130 -3130
      AHCNPB08   3131 -3131    AHCNPB09   3132 -3132
      AHCNPB10   3133 -3133    AHCNPB11   3134 -3134
      AHCNPB12   3135 -3135    AHCNPB13   3136 -3136
      AHCNPB14   3137 -3137    AHCNPB15   3138 -3138
      AHCNPB16   3139 -3139    AHCNPB17   3140 -3140
      AHCNPB18   3141 -3141    AHCNPB19   3142 -3142
      AHCNPB20   3143 -3143    AHCNPB21   3144 -3144
      AHCNPB22   3145 -3145    AHCNPB23   3146 -3146
      AHCNPB24   3147 -3147    AHCNPB25   3148 -3148
      AHCNPB26   3149 -3149    AHCNPB27   3150 -3150
      AHCNPB28   3151 -3151    AHCNPB29   3152 -3152
      AHCNPB30   3153 -3153    AHCNPB31   3154 -3154
      AHCNPB32   3155 -3155    AHCNPB33   3156 -3156
      AHCNPB34   3157 -3157    AHCNPB35   3158 -3158
      AHCNPB36   3159 -3159    AHCNPB37   3160 -3160
      AHCNPB38   3161 -3161    AHCNPB39   3162 -3162
      AHCNPB40   3163 -3163    AHCNPB41   3164 -3164
      AHCNPB42   3165 -3165    AHCNPB43   3166 -3166
      AHCNPB44   3167 -3167    AHCNPB45   3168 -3168
      AHCNPB46   3169 -3169    AHCNPB47   3170 -3170
      AHCNPB48   3171 -3171    AHCNPB49   3172 -3172
      AHCNPB50   3173 -3173    AHCNPB51   3174 -3174
      AHCNPB52   3175 -3175    AHCNPB53   3176 -3176
      AHCNPB54   3177 -3177    AHCNPB55   3178 -3178
      AHCNPB56   3179 -3179    AHCNPB57   3180 -3180
      AHCNPB58   3181 -3181    AHCNPB59   3182 -3182
      AHCNPB60   3183 -3183    AHCNPB61   3184 -3184
      AHCNPB62   3185 -3185    AHCNPB63   3186 -3186
      AHCNPB64   3187 -3187    AHCNPB65   3188 -3188
      AHCNPB66   3189 -3189    AHCNPB67   3190 -3190
      AHCNPB68   3191 -3191    AHCNPB69   3192 -3192
      AHCNPB70   3193 -3193    AHCNPB71   3194 -3194
      AHCNPB72   3195 -3195    AHCNPB73   3196 -3196
      AHCNPB74   3197 -3197    AHCNPB75   3198 -3198
      AHCNPB76   3199 -3199    AHCNPB77   3200 -3200
      AHCNPB78   3201 -3201    AHCNPB79   3202 -3202
      AHCNPB80   3203 -3203    AHCNPB81   3204 -3204
      AHCNPB82   3205 -3205    AHCNPB83   3206 -3206
      AHCNPB84   3207 -3207    AHCNPB85   3208 -3208
      AHCNPB86   3209 -3209    AHCNPB87   3210 -3210
      AHBCPBCT   3211 -3212    AHB_SPP2 $ 3213 -3287
      AHB_CMPB   3288 -3289    AHB_PRAC   3290 -3290
      AHB_PR12   3291 -3291    AHB_PRTM   3292 -3292
      AHB_PAY    3293 -3295    AHBDISC    3296 -3296
      AHBPRF1    3297 -3297    AHBPRF2    3298 -3298
      AHBPRF3    3299 -3299    AHBPRF4    3300 -3300
      AHBPRF5    3301 -3301    AHBPRF6    3302 -3302
      AHBPRF7    3303 -3303    AHBN301    3304 -3304
      AHBN302    3305 -3305    AHBN303    3306 -3306
      AHBN304    3307 -3307    AHBN305    3308 -3308
      AHBN306    3309 -3309    AHBN307    3310 -3310
      AHBN308    3311 -3311    AHBN309    3312 -3312
      AHBNYR1    3313 -3313    AHBNYR2    3314 -3314
      AHBNYR3    3315 -3315    AHBNYR4    3316 -3316
      AHBNYR5    3317 -3317    AHBNYR6    3318 -3318
      AHBNYR7    3319 -3319    AHBNYR8    3320 -3320
      AHBNYR9    3321 -3321    AHB_SIDE $ 3322 -3396
      AHB_SMED   3397 -3397    AHBNEV01   3398 -3398
      AHBNEV02   3399 -3399    AHBNEV03   3400 -3400
      AHBNEV04   3401 -3401    AHBNEV05   3402 -3402
      AHBNEV06   3403 -3403    AHBNEV07   3404 -3404
      AHBNEV08   3405 -3405    AHBNEV09   3406 -3406
      AHBNEV10   3407 -3407    AVT_EVER   3408 -3408
      AVT_USEM   3409 -3409    AVT_MO     3410 -3410
      AVTTAK01   3411 -3411    AVTTAK02   3412 -3412
      AVTTAK03   3413 -3413    AVTTAK04   3414 -3414
      AVTTAK05   3415 -3415    AVTTAK06   3416 -3416
      AVTTAK07   3417 -3417    AVTTAK08   3418 -3418
      AVTTAK09   3419 -3419    AVTTAK10   3420 -3420
      AVTTAK11   3421 -3421    AVTTAK12   3422 -3422
      AVTTAK13   3423 -3423    AVTTAK14   3424 -3424
      AVTTAK15   3425 -3425    AVTTAK16   3426 -3426
      AVTTAK17   3427 -3427    AVTTAK18   3428 -3428
      AVTTAK19   3429 -3429    AVTTAK20   3430 -3430
      AVTTAKCT   3431 -3432    AVTTOP2A   3433 -3434
      AVTTOP2B   3435 -3436    AVT_R1A    3437 -3437
      AVT_R2A    3438 -3438    AVT_R3A    3439 -3439
      AVT_R4A    3440 -3440    AVT_R5A    3441 -3441
      AVT_R6A    3442 -3442    AVT_R7A    3443 -3443
      AVT_R8A    3444 -3444    AVT_R9A    3445 -3445
      AVT_R10A   3446 -3446    AVT_R11A   3447 -3447
      AVT_R12A   3448 -3448    AVT_R13A   3449 -3449
      AVCTRA01   3450 -3450    AVCTRA02   3451 -3451
      AVCTRA03   3452 -3452    AVCTRA04   3453 -3453
      AVCTRA05   3454 -3454    AVCTRA06   3455 -3455
      AVCTRA07   3456 -3456    AVCTRA08   3457 -3457
      AVCTRA09   3458 -3458    AVCTRA10   3459 -3459
      AVCTRA11   3460 -3460    AVCTRA12   3461 -3461
      AVCTRA13   3462 -3462    AVCTRA14   3463 -3463
      AVCTRA15   3464 -3464    AVCTRA16   3465 -3465
      AVCTRA17   3466 -3466    AVCTRA18   3467 -3467
      AVCTRA19   3468 -3468    AVCTRA20   3469 -3469
      AVCTRA21   3470 -3470    AVCTRA22   3471 -3471
      AVCTRA23   3472 -3472    AVCTRA24   3473 -3473
      AVCTRA25   3474 -3474    AVCTRA26   3475 -3475
      AVCTRA27   3476 -3476    AVCTRA28   3477 -3477
      AVCTRA29   3478 -3478    AVCTRA30   3479 -3479
      AVCTRA31   3480 -3480    AVCTRA32   3481 -3481
      AVCTRA33   3482 -3482    AVCTRA34   3483 -3483
      AVCTRA35   3484 -3484    AVCTRA36   3485 -3485
      AVCTRA37   3486 -3486    AVCTRA38   3487 -3487
      AVCTRA39   3488 -3488    AVCTRA40   3489 -3489
      AVCTRA41   3490 -3490    AVCTRA42   3491 -3491
      AVCTRA43   3492 -3492    AVCTRA44   3493 -3493
      AVCTRA45   3494 -3494    AVCTRA46   3495 -3495
      AVCTRA47   3496 -3496    AVCTRA48   3497 -3497
      AVCTRA49   3498 -3498    AVCTRA50   3499 -3499
      AVCTRA51   3500 -3500    AVCTRA52   3501 -3501
      AVCTRA53   3502 -3502    AVCTRA54   3503 -3503
      AVCTRA55   3504 -3504    AVCTRA56   3505 -3505
      AVCTRA57   3506 -3506    AVCTRA58   3507 -3507
      AVCTRA59   3508 -3508    AVCTRA60   3509 -3509
      AVCTRA61   3510 -3510    AVCTRA62   3511 -3511
      AVCTRA63   3512 -3512    AVCTRA64   3513 -3513
      AVCTRA65   3514 -3514    AVCTRA66   3515 -3515
      AVCTRA67   3516 -3516    AVCTRA68   3517 -3517
      AVCTRA69   3518 -3518    AVCTRA70   3519 -3519
      AVCTRA71   3520 -3520    AVCTRA72   3521 -3521
      AVCTRA73   3522 -3522    AVCTRA74   3523 -3523
      AVCTRA75   3524 -3524    AVCTRA76   3525 -3525
      AVCTRA77   3526 -3526    AVCTRA78   3527 -3527
      AVCTRA79   3528 -3528    AVCTRA80   3529 -3529
      AVCTRA81   3530 -3530    AVCTRA82   3531 -3531
      AVCTRA83   3532 -3532    AVCTRA84   3533 -3533
      AVCTRA85   3534 -3534    AVCTRA86   3535 -3535
      AVCTRA87   3536 -3536    AVTCTACT   3537 -3538
      AVT_SPT1 $ 3539 -3613    AVT_CONA   3614 -3615
      AVTMEDA0   3616 -3616    AVTMEDA1   3617 -3617
      AVTMEDA2   3618 -3618    AVTMEDA3   3619 -3619
      AVTMEDA4   3620 -3620    AVTMEDA5   3621 -3621
      AVT_TM1A   3622 -3622    AVT_TM2A   3623 -3623
      AVT_TM3A   3624 -3624    AVT_TM4A   3625 -3625
      AVT_TM5A   3626 -3626    AVCNPA01   3627 -3627
      AVCNPA02   3628 -3628    AVCNPA03   3629 -3629
      AVCNPA04   3630 -3630    AVCNPA05   3631 -3631
      AVCNPA06   3632 -3632    AVCNPA07   3633 -3633
      AVCNPA08   3634 -3634    AVCNPA09   3635 -3635
      AVCNPA10   3636 -3636    AVCNPA11   3637 -3637
      AVCNPA12   3638 -3638    AVCNPA13   3639 -3639
      AVCNPA14   3640 -3640    AVCNPA15   3641 -3641
      AVCNPA16   3642 -3642    AVCNPA17   3643 -3643
      AVCNPA18   3644 -3644    AVCNPA19   3645 -3645
      AVCNPA20   3646 -3646    AVCNPA21   3647 -3647
      AVCNPA22   3648 -3648    AVCNPA23   3649 -3649
      AVCNPA24   3650 -3650    AVCNPA25   3651 -3651
      AVCNPA26   3652 -3652    AVCNPA27   3653 -3653
      AVCNPA28   3654 -3654    AVCNPA29   3655 -3655
      AVCNPA30   3656 -3656    AVCNPA31   3657 -3657
      AVCNPA32   3658 -3658    AVCNPA33   3659 -3659
      AVCNPA34   3660 -3660    AVCNPA35   3661 -3661
      AVCNPA36   3662 -3662    AVCNPA37   3663 -3663
      AVCNPA38   3664 -3664    AVCNPA39   3665 -3665
      AVCNPA40   3666 -3666    AVCNPA41   3667 -3667
      AVCNPA42   3668 -3668    AVCNPA43   3669 -3669
      AVCNPA44   3670 -3670    AVCNPA45   3671 -3671
      AVCNPA46   3672 -3672    AVCNPA47   3673 -3673
      AVCNPA48   3674 -3674    AVCNPA49   3675 -3675
      AVCNPA50   3676 -3676    AVCNPA51   3677 -3677
      AVCNPA52   3678 -3678    AVCNPA53   3679 -3679
      AVCNPA54   3680 -3680    AVCNPA55   3681 -3681
      AVCNPA56   3682 -3682    AVCNPA57   3683 -3683
      AVCNPA58   3684 -3684    AVCNPA59   3685 -3685
      AVCNPA60   3686 -3686    AVCNPA61   3687 -3687
      AVCNPA62   3688 -3688    AVCNPA63   3689 -3689
      AVCNPA64   3690 -3690    AVCNPA65   3691 -3691
      AVCNPA66   3692 -3692    AVCNPA67   3693 -3693
      AVCNPA68   3694 -3694    AVCNPA69   3695 -3695
      AVCNPA70   3696 -3696    AVCNPA71   3697 -3697
      AVCNPA72   3698 -3698    AVCNPA73   3699 -3699
      AVCNPA74   3700 -3700    AVCNPA75   3701 -3701
      AVCNPA76   3702 -3702    AVCNPA77   3703 -3703
      AVCNPA78   3704 -3704    AVCNPA79   3705 -3705
      AVCNPA80   3706 -3706    AVCNPA81   3707 -3707
      AVCNPA82   3708 -3708    AVCNPA83   3709 -3709
      AVCNPA84   3710 -3710    AVCNPA85   3711 -3711
      AVCNPA86   3712 -3712    AVCNPA87   3713 -3713
      AVTCPACT   3714 -3715    AVT_SPP1 $ 3716 -3790
      AVT_CMPA   3791 -3792    AVT_SAME   3793 -3793
      AVT_R1B    3794 -3794    AVT_R2B    3795 -3795
      AVT_R3B    3796 -3796    AVT_R4B    3797 -3797
      AVT_R5B    3798 -3798    AVT_R6B    3799 -3799
      AVT_R7B    3800 -3800    AVT_R8B    3801 -3801
      AVT_R9B    3802 -3802    AVT_R10B   3803 -3803
      AVT_R11B   3804 -3804    AVT_R12B   3805 -3805
      AVT_R13B   3806 -3806    AVCTRB01   3807 -3807
      AVCTRB02   3808 -3808    AVCTRB03   3809 -3809
      AVCTRB04   3810 -3810    AVCTRB05   3811 -3811
      AVCTRB06   3812 -3812    AVCTRB07   3813 -3813
      AVCTRB08   3814 -3814    AVCTRB09   3815 -3815
      AVCTRB10   3816 -3816    AVCTRB11   3817 -3817
      AVCTRB12   3818 -3818    AVCTRB13   3819 -3819
      AVCTRB14   3820 -3820    AVCTRB15   3821 -3821
      AVCTRB16   3822 -3822    AVCTRB17   3823 -3823
      AVCTRB18   3824 -3824    AVCTRB19   3825 -3825
      AVCTRB20   3826 -3826    AVCTRB21   3827 -3827
      AVCTRB22   3828 -3828    AVCTRB23   3829 -3829
      AVCTRB24   3830 -3830    AVCTRB25   3831 -3831
      AVCTRB26   3832 -3832    AVCTRB27   3833 -3833
      AVCTRB28   3834 -3834    AVCTRB29   3835 -3835
      AVCTRB30   3836 -3836    AVCTRB31   3837 -3837
      AVCTRB32   3838 -3838    AVCTRB33   3839 -3839
      AVCTRB34   3840 -3840    AVCTRB35   3841 -3841
      AVCTRB36   3842 -3842    AVCTRB37   3843 -3843
      AVCTRB38   3844 -3844    AVCTRB39   3845 -3845
      AVCTRB40   3846 -3846    AVCTRB41   3847 -3847
      AVCTRB42   3848 -3848    AVCTRB43   3849 -3849
      AVCTRB44   3850 -3850    AVCTRB45   3851 -3851
      AVCTRB46   3852 -3852    AVCTRB47   3853 -3853
      AVCTRB48   3854 -3854    AVCTRB49   3855 -3855
      AVCTRB50   3856 -3856    AVCTRB51   3857 -3857
      AVCTRB52   3858 -3858    AVCTRB53   3859 -3859
      AVCTRB54   3860 -3860    AVCTRB55   3861 -3861
      AVCTRB56   3862 -3862    AVCTRB57   3863 -3863
      AVCTRB58   3864 -3864    AVCTRB59   3865 -3865
      AVCTRB60   3866 -3866    AVCTRB61   3867 -3867
      AVCTRB62   3868 -3868    AVCTRB63   3869 -3869
      AVCTRB64   3870 -3870    AVCTRB65   3871 -3871
      AVCTRB66   3872 -3872    AVCTRB67   3873 -3873
      AVCTRB68   3874 -3874    AVCTRB69   3875 -3875
      AVCTRB70   3876 -3876    AVCTRB71   3877 -3877
      AVCTRB72   3878 -3878    AVCTRB73   3879 -3879
      AVCTRB74   3880 -3880    AVCTRB75   3881 -3881
      AVCTRB76   3882 -3882    AVCTRB77   3883 -3883
      AVCTRB78   3884 -3884    AVCTRB79   3885 -3885
      AVCTRB80   3886 -3886    AVCTRB81   3887 -3887
      AVCTRB82   3888 -3888    AVCTRB83   3889 -3889
      AVCTRB84   3890 -3890    AVCTRB85   3891 -3891
      AVCTRB86   3892 -3892    AVCTRB87   3893 -3893
      AVTCTBCT   3894 -3895    AVT_SPT2 $ 3896 -3970
      AVT_CONB   3971 -3972    AVTMEDB0   3973 -3973
      AVTMEDB1   3974 -3974    AVTMEDB2   3975 -3975
      AVTMEDB3   3976 -3976    AVTMEDB4   3977 -3977
      AVTMEDB5   3978 -3978    AVT_TM1B   3979 -3979
      AVT_TM2B   3980 -3980    AVT_TM3B   3981 -3981
      AVT_TM4B   3982 -3982    AVT_TM5B   3983 -3983
      AVCNPB01   3984 -3984    AVCNPB02   3985 -3985
      AVCNPB03   3986 -3986    AVCNPB04   3987 -3987
      AVCNPB05   3988 -3988    AVCNPB06   3989 -3989
      AVCNPB07   3990 -3990    AVCNPB08   3991 -3991
      AVCNPB09   3992 -3992    AVCNPB10   3993 -3993
      AVCNPB11   3994 -3994    AVCNPB12   3995 -3995
      AVCNPB13   3996 -3996    AVCNPB14   3997 -3997
      AVCNPB15   3998 -3998    AVCNPB16   3999 -3999
      AVCNPB17   4000 -4000    AVCNPB18   4001 -4001
      AVCNPB19   4002 -4002    AVCNPB20   4003 -4003
      AVCNPB21   4004 -4004    AVCNPB22   4005 -4005
      AVCNPB23   4006 -4006    AVCNPB24   4007 -4007
      AVCNPB25   4008 -4008    AVCNPB26   4009 -4009
      AVCNPB27   4010 -4010    AVCNPB28   4011 -4011
      AVCNPB29   4012 -4012    AVCNPB30   4013 -4013
      AVCNPB31   4014 -4014    AVCNPB32   4015 -4015
      AVCNPB33   4016 -4016    AVCNPB34   4017 -4017
      AVCNPB35   4018 -4018    AVCNPB36   4019 -4019
      AVCNPB37   4020 -4020    AVCNPB38   4021 -4021
      AVCNPB39   4022 -4022    AVCNPB40   4023 -4023
      AVCNPB41   4024 -4024    AVCNPB42   4025 -4025
      AVCNPB43   4026 -4026    AVCNPB44   4027 -4027
      AVCNPB45   4028 -4028    AVCNPB46   4029 -4029
      AVCNPB47   4030 -4030    AVCNPB48   4031 -4031
      AVCNPB49   4032 -4032    AVCNPB50   4033 -4033
      AVCNPB51   4034 -4034    AVCNPB52   4035 -4035
      AVCNPB53   4036 -4036    AVCNPB54   4037 -4037
      AVCNPB55   4038 -4038    AVCNPB56   4039 -4039
      AVCNPB57   4040 -4040    AVCNPB58   4041 -4041
      AVCNPB59   4042 -4042    AVCNPB60   4043 -4043
      AVCNPB61   4044 -4044    AVCNPB62   4045 -4045
      AVCNPB63   4046 -4046    AVCNPB64   4047 -4047
      AVCNPB65   4048 -4048    AVCNPB66   4049 -4049
      AVCNPB67   4050 -4050    AVCNPB68   4051 -4051
      AVCNPB69   4052 -4052    AVCNPB70   4053 -4053
      AVCNPB71   4054 -4054    AVCNPB72   4055 -4055
      AVCNPB73   4056 -4056    AVCNPB74   4057 -4057
      AVCNPB75   4058 -4058    AVCNPB76   4059 -4059
      AVCNPB77   4060 -4060    AVCNPB78   4061 -4061
      AVCNPB79   4062 -4062    AVCNPB80   4063 -4063
      AVCNPB81   4064 -4064    AVCNPB82   4065 -4065
      AVCNPB83   4066 -4066    AVCNPB84   4067 -4067
      AVCNPB85   4068 -4068    AVCNPB86   4069 -4069
      AVCNPB87   4070 -4070    AVTCPBCT   4071 -4072
      AVT_SPP2 $ 4073 -4147    AVT_CMPB   4148 -4149
      AVTDISC    4150 -4150    AVTPRF1    4151 -4151
      AVTPRF2    4152 -4152    AVTPRF3    4153 -4153
      AVTPRF4    4154 -4154    AVTPRF5    4155 -4155
      AVTPRF6    4156 -4156    AVTPRF7    4157 -4157
      AHB_OFTN   4158 -4160    AHB_OFTT   4161 -4161
      AHB_COST   4162 -4162    AVT_OFTN   4163 -4165
      AVT_OFTT   4166 -4166    AVT_COST   4167 -4167
      HOM_EVER   4168 -4168    HOM_USEM   4169 -4169
      HOMNO      4170 -4172    HOMTP      4173 -4173
      HOM_SPEN   4174 -4176    HOM_TRET   4177 -4177
      HOMCND01   4178 -4178    HOMCND02   4179 -4179
      HOMCND03   4180 -4180    HOMCND04   4181 -4181
      HOMCND05   4182 -4182    HOMCND06   4183 -4183
      HOMCND07   4184 -4184    HOMCND08   4185 -4185
      HOMCND09   4186 -4186    HOMCND10   4187 -4187
      HOMCND11   4188 -4188    HOMCND12   4189 -4189
      HOMCND13   4190 -4190    HOMCND14   4191 -4191
      HOMCND15   4192 -4192    HOMCND16   4193 -4193
      HOMCND17   4194 -4194    HOMCND18   4195 -4195
      HOMCND19   4196 -4196    HOMCND20   4197 -4197
      HOMCND21   4198 -4198    HOMCND22   4199 -4199
      HOMCND23   4200 -4200    HOMCND24   4201 -4201
      HOMCND25   4202 -4202    HOMCND26   4203 -4203
      HOMCND27   4204 -4204    HOMCND28   4205 -4205
      HOMCND29   4206 -4206    HOMCND30   4207 -4207
      HOMCND31   4208 -4208    HOMCND32   4209 -4209
      HOMCND33   4210 -4210    HOMCND34   4211 -4211
      HOMCND35   4212 -4212    HOMCND36   4213 -4213
      HOMCND37   4214 -4214    HOMCND38   4215 -4215
      HOMCND39   4216 -4216    HOMCND40   4217 -4217
      HOMCND41   4218 -4218    HOMCND42   4219 -4219
      HOMCND43   4220 -4220    HOMCND44   4221 -4221
      HOMCND45   4222 -4222    HOMCND46   4223 -4223
      HOMCND47   4224 -4224    HOMCND48   4225 -4225
      HOMCND49   4226 -4226    HOMCND50   4227 -4227
      HOMCND51   4228 -4228    HOMCND52   4229 -4229
      HOMCND53   4230 -4230    HOMCND54   4231 -4231
      HOMCND55   4232 -4232    HOMCND56   4233 -4233
      HOMCND57   4234 -4234    HOMCND58   4235 -4235
      HOMCND59   4236 -4236    HOMCND60   4237 -4237
      HOMCND61   4238 -4238    HOMCND62   4239 -4239
      HOMCND63   4240 -4240    HOMCND64   4241 -4241
      HOMCND65   4242 -4242    HOMCND66   4243 -4243
      HOMCND67   4244 -4244    HOMCND68   4245 -4245
      HOMCND69   4246 -4246    HOMCND70   4247 -4247
      HOMCND71   4248 -4248    HOMCND72   4249 -4249
      HOMCND73   4250 -4250    HOMCND74   4251 -4251
      HOMCND75   4252 -4252    HOMCND76   4253 -4253
      HOMCND77   4254 -4254    HOMCND78   4255 -4255
      HOMCND79   4256 -4256    HOMCND80   4257 -4257
      HOMCND81   4258 -4258    HOMCND82   4259 -4259
      HOMCND83   4260 -4260    HOMCND84   4261 -4261
      HOMCND85   4262 -4262    HOMCND86   4263 -4263
      HOMCND87   4264 -4264    HOMCONCT   4265 -4266
      HOM_SPEC $ 4267 -4341    HOM_MOST   4342 -4343
      HOMMED00   4344 -4344    HOMMED01   4345 -4345
      HOMMED02   4346 -4346    HOMMED03   4347 -4347
      HOMMED04   4348 -4348    HOMMED05   4349 -4349
      HOM_TIM1   4350 -4350    HOM_TIM2   4351 -4351
      HOM_TIM3   4352 -4352    HOM_TIM4   4353 -4353
      HOM_TIM5   4354 -4354    HOM_ENG    4355 -4355
      HOM_WEL    4356 -4356    HOM_IMM    4357 -4357
      HOM_NOHP   4358 -4358    HOM_EXPS   4359 -4359
      HOM_SUGG   4360 -4360    HOM_FFC    4361 -4361
      HOM_PRAC   4362 -4362    HOM_YR     4363 -4363
      HOM_NUM    4364 -4364    HOM_PAY    4365 -4367
      HOMDISC    4368 -4368    HOMPRF1    4369 -4369
      HOMPRF2    4370 -4370    HOMPRF3    4371 -4371
      HOMPRF4    4372 -4372    HOMPRF5    4373 -4373
      HOMPRF6    4374 -4374    HOMPRF7    4375 -4375
      DITEVER1   4376 -4376    DITEVER2   4377 -4377
      DITEVER3   4378 -4378    DITEVER4   4379 -4379
      DITEVER5   4380 -4380    DITEVER6   4381 -4381
      DITEVER7   4382 -4382    DITUSEM1   4383 -4383
      DITUSEM2   4384 -4384    DITUSEM3   4385 -4385
      DITUSEM4   4386 -4386    DITUSEM5   4387 -4387
      DITUSEM6   4388 -4388    DITUSEM7   4389 -4389
      DITUSECT   4390 -4390    DIT_DMST   4391 -4392
      DIT_WGHT   4393 -4393    DIT_TRET   4394 -4394
      DITCND01   4395 -4395    DITCND02   4396 -4396
      DITCND03   4397 -4397    DITCND04   4398 -4398
      DITCND05   4399 -4399    DITCND06   4400 -4400
      DITCND07   4401 -4401    DITCND08   4402 -4402
      DITCND09   4403 -4403    DITCND10   4404 -4404
      DITCND11   4405 -4405    DITCND12   4406 -4406
      DITCND13   4407 -4407    DITCND14   4408 -4408
      DITCND15   4409 -4409    DITCND16   4410 -4410
      DITCND17   4411 -4411    DITCND18   4412 -4412
      DITCND19   4413 -4413    DITCND20   4414 -4414
      DITCND21   4415 -4415    DITCND22   4416 -4416
      DITCND23   4417 -4417    DITCND24   4418 -4418
      DITCND25   4419 -4419    DITCND26   4420 -4420
      DITCND27   4421 -4421    DITCND28   4422 -4422
      DITCND29   4423 -4423    DITCND30   4424 -4424
      DITCND31   4425 -4425    DITCND32   4426 -4426
      DITCND33   4427 -4427    DITCND34   4428 -4428
      DITCND35   4429 -4429    DITCND36   4430 -4430
      DITCND37   4431 -4431    DITCND38   4432 -4432
      DITCND39   4433 -4433    DITCND40   4434 -4434
      DITCND41   4435 -4435    DITCND42   4436 -4436
      DITCND43   4437 -4437    DITCND44   4438 -4438
      DITCND45   4439 -4439    DITCND46   4440 -4440
      DITCND47   4441 -4441    DITCND48   4442 -4442
      DITCND49   4443 -4443    DITCND50   4444 -4444
      DITCND51   4445 -4445    DITCND52   4446 -4446
      DITCND53   4447 -4447    DITCND54   4448 -4448
      DITCND55   4449 -4449    DITCND56   4450 -4450
      DITCND57   4451 -4451    DITCND58   4452 -4452
      DITCND59   4453 -4453    DITCND60   4454 -4454
      DITCND61   4455 -4455    DITCND62   4456 -4456
      DITCND63   4457 -4457    DITCND64   4458 -4458
      DITCND65   4459 -4459    DITCND66   4460 -4460
      DITCND67   4461 -4461    DITCND68   4462 -4462
      DITCND69   4463 -4463    DITCND70   4464 -4464
      DITCND71   4465 -4465    DITCND72   4466 -4466
      DITCND73   4467 -4467    DITCND74   4468 -4468
      DITCND75   4469 -4469    DITCND76   4470 -4470
      DITCND77   4471 -4471    DITCND78   4472 -4472
      DITCND79   4473 -4473    DITCND80   4474 -4474
      DITCND81   4475 -4475    DITCND82   4476 -4476
      DITCND83   4477 -4477    DITCND84   4478 -4478
      DITCND85   4479 -4479    DITCND86   4480 -4480
      DITCND87   4481 -4481    DITCONCT   4482 -4483
      DIT_SPEC $ 4484 -4558    DIT_MOST   4559 -4560
      DITMED00   4561 -4561    DITMED01   4562 -4562
      DITMED02   4563 -4563    DITMED03   4564 -4564
      DITMED04   4565 -4565    DITMED05   4566 -4566
      DIT_TIM1   4567 -4567    DIT_TIM2   4568 -4568
      DIT_TIM3   4569 -4569    DIT_TIM4   4570 -4570
      DIT_TIM5   4571 -4571    DIT_ENG    4572 -4572
      DIT_WEL    4573 -4573    DIT_IMM    4574 -4574
      DIT_NOHP   4575 -4575    DIT_EXPS   4576 -4576
      DIT_SUGG   4577 -4577    DIT_FFC    4578 -4578
      DIT_PRAC   4579 -4579    DIT_YR     4580 -4580
      DITTYPE1   4581 -4581    DITTYPE2   4582 -4582
      DITTYPE3   4583 -4583    DITTYPE4   4584 -4584
      DITTYPE5   4585 -4585    DIT_NUM    4586 -4586
      DIT_PAY    4587 -4589    DITDISC    4590 -4590
      DITPRF1    4591 -4591    DITPRF2    4592 -4592
      DITPRF3    4593 -4593    DITPRF4    4594 -4594
      DITPRF5    4595 -4595    DITPRF6    4596 -4596
      DITPRF7    4597 -4597    YTQE_YOG   4598 -4598
      YTQE_TAI   4599 -4599    YTQE_QIG   4600 -4600
      YTQU_YOG   4601 -4601    YTQU_TAI   4602 -4602
      YTQU_QIG   4603 -4603    YTQUSECT   4604 -4604
      YTQ_MOST   4605 -4605    YTQ_TRET   4606 -4606
      YTQCND01   4607 -4607    YTQCND02   4608 -4608
      YTQCND03   4609 -4609    YTQCND04   4610 -4610
      YTQCND05   4611 -4611    YTQCND06   4612 -4612
      YTQCND07   4613 -4613    YTQCND08   4614 -4614
      YTQCND09   4615 -4615    YTQCND10   4616 -4616
      YTQCND11   4617 -4617    YTQCND12   4618 -4618
      YTQCND13   4619 -4619    YTQCND14   4620 -4620
      YTQCND15   4621 -4621    YTQCND16   4622 -4622
      YTQCND17   4623 -4623    YTQCND18   4624 -4624
      YTQCND19   4625 -4625    YTQCND20   4626 -4626
      YTQCND21   4627 -4627    YTQCND22   4628 -4628
      YTQCND23   4629 -4629    YTQCND24   4630 -4630
      YTQCND25   4631 -4631    YTQCND26   4632 -4632
      YTQCND27   4633 -4633    YTQCND28   4634 -4634
      YTQCND29   4635 -4635    YTQCND30   4636 -4636
      YTQCND31   4637 -4637    YTQCND32   4638 -4638
      YTQCND33   4639 -4639    YTQCND34   4640 -4640
      YTQCND35   4641 -4641    YTQCND36   4642 -4642
      YTQCND37   4643 -4643    YTQCND38   4644 -4644
      YTQCND39   4645 -4645    YTQCND40   4646 -4646
      YTQCND41   4647 -4647    YTQCND42   4648 -4648
      YTQCND43   4649 -4649    YTQCND44   4650 -4650
      YTQCND45   4651 -4651    YTQCND46   4652 -4652
      YTQCND47   4653 -4653    YTQCND48   4654 -4654
      YTQCND49   4655 -4655    YTQCND50   4656 -4656
      YTQCND51   4657 -4657    YTQCND52   4658 -4658
      YTQCND53   4659 -4659    YTQCND54   4660 -4660
      YTQCND55   4661 -4661    YTQCND56   4662 -4662
      YTQCND57   4663 -4663    YTQCND58   4664 -4664
      YTQCND59   4665 -4665    YTQCND60   4666 -4666
      YTQCND61   4667 -4667    YTQCND62   4668 -4668
      YTQCND63   4669 -4669    YTQCND64   4670 -4670
      YTQCND65   4671 -4671    YTQCND66   4672 -4672
      YTQCND67   4673 -4673    YTQCND68   4674 -4674
      YTQCND69   4675 -4675    YTQCND70   4676 -4676
      YTQCND71   4677 -4677    YTQCND72   4678 -4678
      YTQCND73   4679 -4679    YTQCND74   4680 -4680
      YTQCND75   4681 -4681    YTQCND76   4682 -4682
      YTQCND77   4683 -4683    YTQCND78   4684 -4684
      YTQCND79   4685 -4685    YTQCND80   4686 -4686
      YTQCND81   4687 -4687    YTQCND82   4688 -4688
      YTQCND83   4689 -4689    YTQCND84   4690 -4690
      YTQCND85   4691 -4691    YTQCND86   4692 -4692
      YTQCND87   4693 -4693    YTQCONCT   4694 -4695
      YTQ_SPEC $ 4696 -4770    YTQ_CONM   4771 -4772
      YTQMED00   4773 -4773    YTQMED01   4774 -4774
      YTQMED02   4775 -4775    YTQMED03   4776 -4776
      YTQMED04   4777 -4777    YTQMED05   4778 -4778
      YTQ_TIM1   4779 -4779    YTQ_TIM2   4780 -4780
      YTQ_TIM3   4781 -4781    YTQ_TIM4   4782 -4782
      YTQ_TIM5   4783 -4783    YTQ_ENG    4784 -4784
      YTQ_WEL    4785 -4785    YTQ_IMM    4786 -4786
      YTQ_NOHP   4787 -4787    YTQ_EXPS   4788 -4788
      YTQ_SUGG   4789 -4789    YTQ_FFC    4790 -4790
      YTQ_CLAS   4791 -4791    YTQ_CLSO   4792 -4793
      YTQ_PAY    4794 -4796    YTQDISC    4797 -4797
      YTQPRF1    4798 -4798    YTQPRF2    4799 -4799
      YTQPRF3    4800 -4800    YTQPRF4    4801 -4801
      YTQPRF5    4802 -4802    YTQPRF6    4803 -4803
      YTQPRF7    4804 -4804    YTQNOTU1   4805 -4805
      YTQNOTU2   4806 -4806    YTQNOTU3   4807 -4807
      YTQNOTU4   4808 -4808    YTQNOTU5   4809 -4809
      YTQNOTU6   4810 -4810    YTQNOTU7   4811 -4811
      YTQNOTU8   4812 -4812    YTQNOTU9   4813 -4813
      YTQ_SDEF $ 4814 -4888    YTQ_ATT    4889 -4889
      YTQNVU01   4890 -4890    YTQNVU02   4891 -4891
      YTQNVU03   4892 -4892    YTQNVU04   4893 -4893
      YTQNVU05   4894 -4894    YTQNVU06   4895 -4895
      YTQNVU07   4896 -4896    YTQNVU08   4897 -4897
      YTQNVU09   4898 -4898    YTQNVU10   4899 -4899
      RELE_MED   4900 -4900    RELE_GIM   4901 -4901
      RELE_PRO   4902 -4902    RELE_DBE   4903 -4903
      RELE_SUP   4904 -4904    RELE_STR   4905 -4905
      RELU_MED   4906 -4906    RELU_GIM   4907 -4907
      RELU_PRO   4908 -4908    RELU_DBE   4909 -4909
      RELU_SUP   4910 -4910    RELU_STR   4911 -4911
      RELUSECT   4912 -4912    REL_RMST   4913 -4913
      REL_TRET   4914 -4914    RELCND01   4915 -4915
      RELCND02   4916 -4916    RELCND03   4917 -4917
      RELCND04   4918 -4918    RELCND05   4919 -4919
      RELCND06   4920 -4920    RELCND07   4921 -4921
      RELCND08   4922 -4922    RELCND09   4923 -4923
      RELCND10   4924 -4924    RELCND11   4925 -4925
      RELCND12   4926 -4926    RELCND13   4927 -4927
      RELCND14   4928 -4928    RELCND15   4929 -4929
      RELCND16   4930 -4930    RELCND17   4931 -4931
      RELCND18   4932 -4932    RELCND19   4933 -4933
      RELCND20   4934 -4934    RELCND21   4935 -4935
      RELCND22   4936 -4936    RELCND23   4937 -4937
      RELCND24   4938 -4938    RELCND25   4939 -4939
      RELCND26   4940 -4940    RELCND27   4941 -4941
      RELCND28   4942 -4942    RELCND29   4943 -4943
      RELCND30   4944 -4944    RELCND31   4945 -4945
      RELCND32   4946 -4946    RELCND33   4947 -4947
      RELCND34   4948 -4948    RELCND35   4949 -4949
      RELCND36   4950 -4950    RELCND37   4951 -4951
      RELCND38   4952 -4952    RELCND39   4953 -4953
      RELCND40   4954 -4954    RELCND41   4955 -4955
      RELCND42   4956 -4956    RELCND43   4957 -4957
      RELCND44   4958 -4958    RELCND45   4959 -4959
      RELCND46   4960 -4960    RELCND47   4961 -4961
      RELCND48   4962 -4962    RELCND49   4963 -4963
      RELCND50   4964 -4964    RELCND51   4965 -4965
      RELCND52   4966 -4966    RELCND53   4967 -4967
      RELCND54   4968 -4968    RELCND55   4969 -4969
      RELCND56   4970 -4970    RELCND57   4971 -4971
      RELCND58   4972 -4972    RELCND59   4973 -4973
      RELCND60   4974 -4974    RELCND61   4975 -4975
      RELCND62   4976 -4976    RELCND63   4977 -4977
      RELCND64   4978 -4978    RELCND65   4979 -4979
      RELCND66   4980 -4980    RELCND67   4981 -4981
      RELCND68   4982 -4982    RELCND69   4983 -4983
      RELCND70   4984 -4984    RELCND71   4985 -4985
      RELCND72   4986 -4986    RELCND73   4987 -4987
      RELCND74   4988 -4988    RELCND75   4989 -4989
      RELCND76   4990 -4990    RELCND77   4991 -4991
      RELCND78   4992 -4992    RELCND79   4993 -4993
      RELCND80   4994 -4994    RELCND81   4995 -4995
      RELCND82   4996 -4996    RELCND83   4997 -4997
      RELCND84   4998 -4998    RELCND85   4999 -4999
      RELCND86   5000 -5000    RELCND87   5001 -5001
      RELCONCT   5002 -5003    REL_SPEC $ 5004 -5078
      REL_MOST   5079 -5080    RELMED00   5081 -5081
      RELMED01   5082 -5082    RELMED02   5083 -5083
      RELMED03   5084 -5084    RELMED04   5085 -5085
      RELMED05   5086 -5086    REL_TIM1   5087 -5087
      REL_TIM2   5088 -5088    REL_TIM3   5089 -5089
      REL_TIM4   5090 -5090    REL_TIM5   5091 -5091
      REL_ENG    5092 -5092    REL_WEL    5093 -5093
      REL_IMM    5094 -5094    REL_COP    5095 -5095
      REL_NOHP   5096 -5096    REL_EXPS   5097 -5097
      REL_SUGG   5098 -5098    REL_FFC    5099 -5099
      REL_PRAC   5100 -5100    REL_YR     5101 -5101
      REL_PAY    5102 -5104    REL_BKS    5105 -5105
      REL_BPAY   5106 -5108    RELDISC    5109 -5109
      RELPRF1    5110 -5110    RELPRF2    5111 -5111
      RELPRF3    5112 -5112    RELPRF4    5113 -5113
      RELPRF5    5114 -5114    RELPRF6    5115 -5115
      RELPRF7    5116 -5116    RELNOYR1   5117 -5117
      RELNOYR2   5118 -5118    RELNOYR3   5119 -5119
      RELNOYR4   5120 -5120    RELNOYR5   5121 -5121
      RELNOYR6   5122 -5122    RELNOYR7   5123 -5123
      RELNOYR8   5124 -5124    RELNOYR9   5125 -5125
      REL_SDEF $ 5126 -5200    REL_ATT    5201 -5201
      RELNOU01   5202 -5202    RELNOU02   5203 -5203
      RELNOU03   5204 -5204    RELNOU04   5205 -5205
      RELNOU05   5206 -5206    RELNOU06   5207 -5207
      RELNOU07   5208 -5208    RELNOU08   5209 -5209
      RELNOU09   5210 -5210    RELNOU10   5211 -5211
      PRA_SLFE   5212 -5212    PRA_SLFM   5213 -5213
      PRA_OTHE   5214 -5214    PRA_OTHM   5215 -5215
      COMPSTAT   5216 -5216;

   * DEFINE VARIABLE LABELS;

   LABEL

      /* IDN LABELS */

      RECTYPE $  ="File type identifier"
      SRVY_YR    ="Year of National Health Interview Survey"
      HHX        ="HH identifier"
      FMX        ="Family Serial Number"
      FPX        ="Person Number (in family)"
      WTFA_SA    ="Weight - Final Annual"

      /* UCF LABELS */

      STRAT_P    ="Pseudo-stratum for public use file variance estimation"
      PSU_P      ="Pseudo-PSU for public use file variance estimation"

      /* ALT LABELS */

      ACU_EVER   ="Ever saw a provider for acupuncture"
      AYU_EVER   ="Ever saw a provider for ayurveda"
      BIO_EVER   ="Ever saw a provider for biofeedback"
      CHE_EVER   ="Ever saw a provider for chelation therapy"
      COM_EVER   =
"Ever saw a provider for chiropractic or osteopathic manipulation"
      EHT_EVER   ="Ever saw a provider for energy healing therapy"
      HYP_EVER   ="Ever saw a provider for hypnosis"
      MAS_EVER   ="Ever saw a provider for massage"
      NAT_EVER   ="Ever saw a provider for naturopathy"
      ACU_USEM   ="Saw practitioner for acupuncture, past 12 months"
      ACU_NUM    ="Number of times saw practitioner for acupuncture"
      ACU_PAY    ="Amount paid per visit to practitioner for acupuncture"
      ACU_TRET   ="Used acupuncture for a specific health problem or condition"
      ACUCND01   ="Used acupuncture for acid reflux or heartburn"
      ACUCND02   ="Used acupuncture for angina"
      ACUCND03   ="Used acupuncture for anxiety"
      ACUCND04   ="Used acupuncture for asthma"
      ACUCND05   ="Used acupuncture for arthritis"
      ACUCND06   ="Used acupuncture for Attention Deficit Disorder/Hyperactivity
"
      ACUCND07   ="Used acupuncture for autism"
      ACUCND08   ="Used acupuncture for benign tumors, cysts"
      ACUCND09   ="Used acupuncture for bipolar disorder"
      ACUCND10   ="Used acupuncture for birth defect"
      ACUCND11   ="Used acupuncture for cancer"
      ACUCND12   ="Used acupuncture for cholesterol"
      ACUCND13   ="Used acupuncture for chronic bronchitis"
      ACUCND14   =
"Used acupuncture for circulation problems (other than in the legs)"
      ACUCND15   =
"Used acupuncture for constipation severe enough to require medication"
      ACUCND16   ="Used acupuncture for coronary heart disease"
      ACUCND17   ="Used acupuncture for dementia, including Alzheimer's Disease"
      ACUCND18   ="Used acupuncture for dental pain"
      ACUCND19   ="Used acupuncture for depression"
      ACUCND20   ="Used acupuncture for diabetes"
      ACUCND21   ="Used acupuncture for emphysema"
      ACUCND22   ="Used acupuncture for excessive sleepiness during the day"
      ACUCND23   ="Used acupuncture for excessive use of alcohol or tobacco"
      ACUCND24   ="Used acupuncture for fibromyalgia"
      ACUCND25   ="Used acupuncture for fracture, bone/joint injury"
      ACUCND26   ="Used acupuncture for gout"
      ACUCND27   ="Used acupuncture for gum disease"
      ACUCND28   ="Used acupuncture for gynecologic problem"
      ACUCND29   ="Used acupuncture for hay fever"
      ACUCND30   ="Used acupuncture for hearing problem"
      ACUCND31   ="Used acupuncture for heart attack"
      ACUCND32   ="Used acupuncture for other heart condition or disease"
      ACUCND33   ="Used acupuncture for hernia"
      ACUCND34   ="Used acupuncture for hypertension"
      ACUCND35   ="Used acupuncture for inflammatory bowel disease"
      ACUCND36   ="Used acupuncture for influenza or pneumonia"
      ACUCND37   ="Used acupuncture for insomnia or trouble sleeping"
      ACUCND38   ="Used acupuncture for irritable bowel"
      ACUCND39   ="Used acupuncture for jaw pain"
      ACUCND40   =
"Used acupuncture for joint pain or stiffness/other joint condition"
      ACUCND41   =
"Used acupuncture for knee problems (not arthritis, not joint injury)"
      ACUCND42   ="Used acupuncture for liver problem"
      ACUCND43   =
"Used acupuncture for lung/breathing problem (not already listed)"
      ACUCND44   ="Used acupuncture for lupus"
      ACUCND45   ="Used acupuncture for mania or psychosis"
      ACUCND46   =
"Used acupuncture for memory loss or loss of other cognitive function"
      ACUCND47   ="Used acupuncture for menopause"
      ACUCND48   ="Used acupuncture for menstrual problems"
      ACUCND49   ="Used acupuncture for mental retardation"
      ACUCND50   =
"Used acupuncture for missing limbs (fingers, toes or digits), amputee"
      ACUCND51   ="Used acupuncture for osteoporosis, tendinitis"
      ACUCND52   ="Used acupuncture for other developmental problem"
      ACUCND53   ="Used acupuncture for other injury"
      ACUCND54   =
"Used acupuncture for other nerve damage, including carpal tunnel syndrome"
      ACUCND55   ="Used acupuncture for phobia or fears"
      ACUCND56   =
"Used acupuncture for polio (myelitis), paralysis, para/quadriplegia"
      ACUCND57   ="Used acupuncture for poor circulation in legs"
      ACUCND58   ="Used acupuncture for prostate trouble or impotence"
      ACUCND59   ="Used acupuncture for regular headaches"
      ACUCND60   ="Used acupuncture for rheumatoid arthritis"
      ACUCND61   ="Used acupuncture for schizophrenia"
      ACUCND62   ="Used acupuncture for seizures"
      ACUCND63   ="Used acupuncture for senility"
      ACUCND64   ="Used acupuncture for sinusitis"
      ACUCND65   ="Used acupuncture for skin problems"
      ACUCND66   ="Used acupuncture for sprain or strain"
      ACUCND67   ="Used acupuncture for stroke"
      ACUCND68   =
"Used acupuncture for substance abuse, other than alcohol or tobacco"
      ACUCND69   ="Used acupuncture for other (specify)"
      ACUCND70   ="Used acupuncture for other (specify)"
      ACUCND71   ="Used acupuncture for ulcer"
      ACUCND72   ="Used acupuncture for urinary problem"
      ACUCND73   ="Used acupuncture for varicose veins, hemorrhoids"
      ACUCND74   ="Used acupuncture for vision problem"
      ACUCND75   ="Used acupuncture for weak or failing kidneys"
      ACUCND76   ="Used acupuncture for weight problem"
      ACUCND77   ="Used acupuncture for back pain or problem"
      ACUCND78   ="Used acupuncture for head or chest cold"
      ACUCND79   ="Used acupuncture for neck pain or problem"
      ACUCND80   ="Used acupuncture for severe headache or migraine"
      ACUCND81   ="Used acupuncture for stomach or intestinal illness"
      ACUCND82   ="Used acupuncture for other (specify)"
      ACUCND83   ="Used acupuncture for anemia and other blood disorders"
      ACUCND84   ="Used acupuncture for other allergies"
      ACUCND85   =
"Used acupuncture for other infectious diseases and problems of the immune syste
m"
      ACUCND86   ="Used acupuncture for other musculoskeletal"
      ACUCND87   ="Used acupuncture for stress"
      ACUCONCT   ="Condition count for acupuncture"
      ACU_SPEC   ="Used acupuncture for other (specify)"
      ACU_MOST   ="Condition for which acupuncture was used the most"
      ACUMED00   =
"Received no conventional medical treatment for condition for which acupuncture 
was used the most"
      ACUMED01   =
"Received prescription medications for condition for which acupuncture was used 
the most"
      ACUMED02   =
"Received over-the-counter medications for condition for which acupuncture was u
sed the most"
      ACUMED03   =
"Received surgery for condition for which acupuncture was used the most"
      ACUMED04   =
"Received physical therapy for condition for which acupuncture was used the most
"
      ACUMED05   =
"Received mental health counseling for condition for which acupuncture was used 
the most"
      ACU_TIM1   =
"Time received prescription medications for condition for which acupuncture was 
used the most"
      ACU_TIM2   =
"Time received over-the-counter medications for condition for which acupuncture 
was used the most"
      ACU_TIM3   =
"Time received surgery for condition for which acupuncture was used the most"
      ACU_TIM4   =
"Time received physical therapy for condition for which acupuncture was used the
 most"
      ACU_TIM5   =
"Time received mental health counseling for condition for which acupuncture was 
used the most"
      ACU_ENG    ="Used acupuncture to improve or enhance energy"
      ACU_WEL    =
"Used acupuncture for general wellness or general disease prevention"
      ACU_IMM    ="Used acupuncture to improve or enhance immune function"
      ACU_NOHP   ="Used acupuncture because medical treatments did not help"
      ACU_EXPS   =
"Used acupuncture because medical treatments were too expensive"
      ACU_SUGG   =
"Used acupuncture because it was recommended by a health care provider"
      ACU_FFC    =
"Used acupuncture because it was recommended by family, friends, or co-workers"
      ACUDISC    =
"Let conventional medical professional know about use of acupuncture"
      ACUPRF1    =
"Let medical doctor (including specialists) know about use of acupuncture"
      ACUPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of acupuncture
"
      ACUPRF3    =
"Let nurse practitioner/physician assistant know about use of acupuncture"
      ACUPRF4    ="Let psychiatrist know about use of acupuncture"
      ACUPRF5    =
"Let dentist (including specialists) know about use of acupuncture"
      ACUPRF6    ="Let psychologist/social worker know about use of acupuncture"
      ACUPRF7    ="Let pharmacist know about use of acupuncture"
      ACUMNOT1   =
"Did not use acupuncture during the past 12 months because I never thought about
 it"
      ACUMNOT2   =
"Did not use acupuncture during the past 12 months for no reason"
      ACUMNOT3   =
"Did not use acupuncture during the past 12 months because I didn't need it in t
he last 12 months"
      ACUMNOT4   =
"Did not use acupuncture during the past 12 months because it didn't work for me
 before"
      ACUMNOT5   =
"Did not use acupuncture during the past 12 months because it costs too much"
      ACUMNOT6   =
"Did not use acupuncture during the past 12 months because I had side effects la
st time"
      ACUMNOT7   =
"Did not use acupuncture during the past 12 months because a health care provide
r told me not to use it"
      ACUMNOT8   =
"Did not use acupuncture during the past 12 months because medical science has n
ot shown that it works"
      ACUMNOT9   =
"Did not use acupuncture during the past 12 months for some other reason"
      ACU_SDEF   ="Kinds of side effects from acupuncture"
      ACU_ATT    ="Side effects from acupuncture required medical attention"
      ACUNNT01   =
"Never used acupuncture because I never heard of it/don't know much about it"
      ACUNNT02   ="Never used acupuncture because I never thought about it"
      ACUNNT03   ="Never used acupuncture for no reason"
      ACUNNT04   ="Never used acupuncture because I don't need it"
      ACUNNT05   =
"Never used acupuncture because I don't believe in it/it doesn't work"
      ACUNNT06   ="Never used acupuncture because it costs too much"
      ACUNNT07   ="Never used acupuncture because it is not safe to use"
      ACUNNT08   =
"Never used acupuncture because a health care provider told me not to use it"
      ACUNNT09   =
"Never used acupuncture because medical science has not shown that it works"
      ACUNNT10   ="Never used acupuncture for some other reason"
      AYU_USEM   ="Saw practitioner for ayurveda, past 12 months"
      AYU_NUM    ="Number of times saw practitioner for ayurveda"
      AYU_PAY    ="Amount paid per visit to practitioner for ayurveda"
      AYU_TRET   ="Used ayurveda for a specific health problem or condition"
      AYUCND01   ="Used ayurveda for acid reflux or heartburn"
      AYUCND02   ="Used ayurveda for angina"
      AYUCND03   ="Used ayurveda for anxiety"
      AYUCND04   ="Used ayurveda for asthma"
      AYUCND05   ="Used ayurveda for arthritis"
      AYUCND06   ="Used ayurveda for Attention Deficit Disorder/Hyperactivity"
      AYUCND07   ="Used ayurveda for autism"
      AYUCND08   ="Used ayurveda for benign tumors, cysts"
      AYUCND09   ="Used ayurveda for bipolar disorder"
      AYUCND10   ="Used ayurveda for birth defect"
      AYUCND11   ="Used ayurveda for cancer"
      AYUCND12   ="Used ayurveda for cholesterol"
      AYUCND13   ="Used ayurveda for chronic bronchitis"
      AYUCND14   =
"Used ayurveda for circulation problems (other than in the legs)"
      AYUCND15   =
"Used ayurveda for constipation severe enough to require medication"
      AYUCND16   ="Used ayurveda for coronary heart disease"
      AYUCND17   ="Used ayurveda for dementia, including Alzheimer's Disease"
      AYUCND18   ="Used ayurveda for dental pain"
      AYUCND19   ="Used ayurveda for depression"
      AYUCND20   ="Used ayurveda for diabetes"
      AYUCND21   ="Used ayurveda for emphysema"
      AYUCND22   ="Used ayurveda for excessive sleepiness during the day"
      AYUCND23   ="Used ayurveda for excessive use of alcohol or tobacco"
      AYUCND24   ="Used ayurveda for fibromyalgia"
      AYUCND25   ="Used ayurveda for fracture, bone/joint injury"
      AYUCND26   ="Used ayurveda for gout"
      AYUCND27   ="Used ayurveda for gum disease"
      AYUCND28   ="Used ayurveda for gynecologic problem"
      AYUCND29   ="Used ayurveda for hay fever"
      AYUCND30   ="Used ayurveda for hearing problem"
      AYUCND31   ="Used ayurveda for heart attack"
      AYUCND32   ="Used ayurveda for other heart condition or disease"
      AYUCND33   ="Used ayurveda for hernia"
      AYUCND34   ="Used ayurveda for hypertension"
      AYUCND35   ="Used ayurveda for inflammatory bowel disease"
      AYUCND36   ="Used ayurveda for influenza or pneumonia"
      AYUCND37   ="Used ayurveda for insomnia or trouble sleeping"
      AYUCND38   ="Used ayurveda for irritable bowel"
      AYUCND39   ="Used ayurveda for jaw pain"
      AYUCND40   =
"Used ayurveda for joint pain or stiffness/other joint condition"
      AYUCND41   =
"Used ayurveda for knee problems (not arthritis, not joint injury)"
      AYUCND42   ="Used ayurveda for liver problem"
      AYUCND43   ="Used ayurveda for lung/breathing problem (not already listed)
"
      AYUCND44   ="Used ayurveda for lupus"
      AYUCND45   ="Used ayurveda for mania or psychosis"
      AYUCND46   =
"Used ayurveda for memory loss or loss of other cognitive function"
      AYUCND47   ="Used ayurveda for menopause"
      AYUCND48   ="Used ayurveda for menstrual problems"
      AYUCND49   ="Used ayurveda for mental retardation"
      AYUCND50   =
"Used ayurveda for missing limbs (fingers, toes or digits), amputee"
      AYUCND51   ="Used ayurveda for osteoporosis, tendinitis"
      AYUCND52   ="Used ayurveda for other developmental problem"
      AYUCND53   ="Used ayurveda for other injury"
      AYUCND54   =
"Used ayurveda for other nerve damage, including carpal tunnel syndrome"
      AYUCND55   ="Used ayurveda for phobia or fears"
      AYUCND56   =
"Used ayurveda for polio (myelitis), paralysis, para/quadriplegia"
      AYUCND57   ="Used ayurveda for poor circulation in legs"
      AYUCND58   ="Used ayurveda for prostate trouble or impotence"
      AYUCND59   ="Used ayurveda for regular headaches"
      AYUCND60   ="Used ayurveda for rheumatoid arthritis"
      AYUCND61   ="Used ayurveda for schizophrenia"
      AYUCND62   ="Used ayurveda for seizures"
      AYUCND63   ="Used ayurveda for senility"
      AYUCND64   ="Used ayurveda for sinusitis"
      AYUCND65   ="Used ayurveda for skin problems"
      AYUCND66   ="Used ayurveda for sprain or strain"
      AYUCND67   ="Used ayurveda for stroke"
      AYUCND68   =
"Used ayurveda for substance abuse, other than alcohol or tobacco"
      AYUCND69   ="Used ayurveda for other (specify)"
      AYUCND70   ="Used ayurveda for other (specify)"
      AYUCND71   ="Used ayurveda for ulcer"
      AYUCND72   ="Used ayurveda for urinary problem"
      AYUCND73   ="Used ayurveda for varicose veins, hemorrhoids"
      AYUCND74   ="Used ayurveda for vision problem"
      AYUCND75   ="Used ayurveda for weak or failing kidneys"
      AYUCND76   ="Used ayurveda for weight problem"
      AYUCND77   ="Used ayurveda for back pain or problem"
      AYUCND78   ="Used ayurveda for head or chest cold"
      AYUCND79   ="Used ayurveda for neck pain or problem"
      AYUCND80   ="Used ayurveda for severe headache or migraine"
      AYUCND81   ="Used ayurveda for stomach or intestinal illness"
      AYUCND82   ="Used ayurveda for other (specify)"
      AYUCND83   ="Used ayurveda for anemia and other blood disorders"
      AYUCND84   ="Used ayurveda for other allergies"
      AYUCND85   =
"Used ayurveda for other infectious diseases and problems of the immune system"
      AYUCND86   ="Used ayurveda for other musculoskeletal"
      AYUCND87   ="Used ayurveda for stress"
      AYUCONCT   ="Condition count for ayurveda"
      AYU_SPEC   ="Used ayurveda for other (specify)"
      AYU_MOST   ="Condition for which ayurveda was used the most"
      AYUMED00   =
"Received no conventional medical treatment for condition for which ayurveda was
 used the most"
      AYUMED01   =
"Received prescription medications for condition for which ayurveda was used the
 most"
      AYUMED02   =
"Received over-the-counter medications for condition for which ayurveda was used
 the most"
      AYUMED03   =
"Received surgery for condition for which ayurveda was used the most"
      AYUMED04   =
"Received physical therapy for condition for which ayurveda was used the most"
      AYUMED05   =
"Received mental health counseling for condition for which ayurveda was used the
 most"
      AYU_TIM1   =
"Time received prescription medications for condition for which ayurveda was use
d the most"
      AYU_TIM2   =
"Time received over-the-counter medications for condition for which ayurveda was
 used the most"
      AYU_TIM3   =
"Time received surgery for condition for which ayurveda was used the most"
      AYU_TIM4   =
"Time received physical therapy for condition for which ayurveda was used the mo
st"
      AYU_TIM5   =
"Time received mental health counseling for condition for which ayurveda was use
d the most"
      AYU_ENG    ="Used ayurveda to improve or enhance energy"
      AYU_WEL    =
"Used ayurveda for general wellness or general disease prevention"
      AYU_IMM    ="Used ayurveda to improve or inhance immune function"
      AYU_NOHP   ="Used ayurveda because medical treatments did not help"
      AYU_EXPS   ="Used ayurveda because medical treatments were too expensive"
      AYU_SUGG   =
"Used ayurveda because it was recommended by a health care provider"
      AYU_FFC    =
"Used ayurveda because it was recommended by family, friends, or co-workers"
      AYUDISC    =
"Let conventional medical professional know about use of ayurveda"
      AYUPRF1    =
"Let medical doctor (including specialists) know about use of ayurveda"
      AYUPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of ayurveda"
      AYUPRF3    =
"Let nurse practitioner/physician assistant know about use of ayurveda"
      AYUPRF4    ="Let psychiatrist know about use of ayurveda"
      AYUPRF5    =
"Let dentist (including specialists) know about use of ayurveda"
      AYUPRF6    ="Let psychologist/social worker know about use of ayurveda"
      AYUPRF7    ="Let pharmacist know about use of ayurveda"
      BIO_USEM   ="Saw practitioner for biofeedback, past 12 months"
      BIO_NUM    ="Number of times saw practitioner for biofeedback"
      BIO_PAY    ="Amount paid per visit to practitioner for biofeedback"
      BIO_TRET   ="Used biofeedback for a specific health problem or condition"
      BIOCND01   ="Used biofeedback for acid reflux or heartburn"
      BIOCND02   ="Used biofeedback for angina"
      BIOCND03   ="Used biofeedback for anxiety"
      BIOCND04   ="Used biofeedback for asthma"
      BIOCND05   ="Used biofeedback for arthritis"
      BIOCND06   ="Used biofeedback for Attention Deficit Disorder/Hyperactivity
"
      BIOCND07   ="Used biofeedback for autism"
      BIOCND08   ="Used biofeedback for benign tumors, cysts"
      BIOCND09   ="Used biofeedback for bipolar disorder"
      BIOCND10   ="Used biofeedback for birth defect"
      BIOCND11   ="Used biofeedback for cancer"
      BIOCND12   ="Used biofeedback for cholesterol"
      BIOCND13   ="Used biofeedback for chronic bronchitis"
      BIOCND14   =
"Used biofeedback for circulation problems (other than in the legs)"
      BIOCND15   =
"Used biofeedback for constipation severe enough to require medication"
      BIOCND16   ="Used biofeedback for coronary heart disease"
      BIOCND17   ="Used biofeedback for dementia, including Alzheimer's Disease"
      BIOCND18   ="Used biofeedback for dental pain"
      BIOCND19   ="Used biofeedback for depression"
      BIOCND20   ="Used biofeedback for diabetes"
      BIOCND21   ="Used biofeedback for emphysema"
      BIOCND22   ="Used biofeedback for excessive sleepiness during the day"
      BIOCND23   ="Used biofeedback for excessive use of alcohol or tobacco"
      BIOCND24   ="Used biofeedback for fibromyalgia"
      BIOCND25   ="Used biofeedback for fracture, bone/joint injury"
      BIOCND26   ="Used biofeedback for gout"
      BIOCND27   ="Used biofeedback for gum disease"
      BIOCND28   ="Used biofeedback for gynecologic problem"
      BIOCND29   ="Used biofeedback for hay fever"
      BIOCND30   ="Used biofeedback for hearing problem"
      BIOCND31   ="Used biofeedback for heart attack"
      BIOCND32   ="Used biofeedback for other heart condition or disease"
      BIOCND33   ="Used biofeedback for hernia"
      BIOCND34   ="Used biofeedback for hypertension"
      BIOCND35   ="Used biofeedback for inflammatory bowel disease"
      BIOCND36   ="Used biofeedback for influenza or pneumonia"
      BIOCND37   ="Used biofeedback for insomnia or trouble sleeping"
      BIOCND38   ="Used biofeedback for irritable bowel"
      BIOCND39   ="Used biofeedback for jaw pain"
      BIOCND40   =
"Used biofeedback for joint pain or stiffness/other joint condition"
      BIOCND41   =
"Used biofeedback for knee problems (not arthritis, not joint injury)"
      BIOCND42   ="Used biofeedback for liver problem"
      BIOCND43   =
"Used biofeedback for lung/breathing problem (not already listed)"
      BIOCND44   ="Used biofeedback for lupus"
      BIOCND45   ="Used biofeedback for mania or psychosis"
      BIOCND46   =
"Used biofeedback for memory loss or loss of other cognitive function"
      BIOCND47   ="Used biofeedback for menopause"
      BIOCND48   ="Used biofeedback for menstrual problems"
      BIOCND49   ="Used biofeedback for mental retardation"
      BIOCND50   =
"Used biofeedback for missing limbs (fingers, toes or digits), amputee"
      BIOCND51   ="Used biofeedback for osteoporosis, tendinitis"
      BIOCND52   ="Used biofeedback for other developmental problem"
      BIOCND53   ="Used biofeedback for other injury"
      BIOCND54   =
"Used biofeedback for other nerve damage, including carpal tunnel syndrome"
      BIOCND55   ="Used biofeedback for phobia or fears"
      BIOCND56   =
"Used biofeedback for polio (myelitis), paralysis, para/quadriplegia"
      BIOCND57   ="Used biofeedback for poor circulation in legs"
      BIOCND58   ="Used biofeedback for prostate trouble or impotence"
      BIOCND59   ="Used biofeedback for regular headaches"
      BIOCND60   ="Used biofeedback for rheumatoid arthritis"
      BIOCND61   ="Used biofeedback for schizophrenia"
      BIOCND62   ="Used biofeedback for seizures"
      BIOCND63   ="Used biofeedback for senility"
      BIOCND64   ="Used biofeedback for sinusitis"
      BIOCND65   ="Used biofeedback for skin problems"
      BIOCND66   ="Used biofeedback for sprain or strain"
      BIOCND67   ="Used biofeedback for stroke"
      BIOCND68   =
"Used biofeedback for substance abuse, other than alcohol or tobacco"
      BIOCND69   ="Used biofeedback for other (specify)"
      BIOCND70   ="Used biofeedback for other (specify)"
      BIOCND71   ="Used biofeedback for ulcer"
      BIOCND72   ="Used biofeedback for urinary problem"
      BIOCND73   ="Used biofeedback for varicose veins, hemorrhoids"
      BIOCND74   ="Used biofeedback for vision problem"
      BIOCND75   ="Used biofeedback for weak or failing kidneys"
      BIOCND76   ="Used biofeedback for weight problem"
      BIOCND77   ="Used biofeedback for back pain or problem"
      BIOCND78   ="Used biofeedback for head or chest cold"
      BIOCND79   ="Used biofeedback for neck pain or problem"
      BIOCND80   ="Used biofeedback for severe headache or migraine"
      BIOCND81   ="Used biofeedback for stomach or intestinal illness"
      BIOCND82   ="Used biofeedback for other (specify)"
      BIOCND83   ="Used biofeedback for anemia and other blood disorders"
      BIOCND84   ="Used biofeedback for other allergies"
      BIOCND85   =
"Used biofeedback for other infectious diseases and problems of the immune syste
m"
      BIOCND86   ="Used biofeedback for other musculoskeletal"
      BIOCND87   ="Used biofeedback for stress"
      BIOCONCT   ="Condition count for biofeedback"
      BIO_SPEC   ="Used biofeedback for other (specify)"
      BIO_MOST   ="Condition for which biofeedback was used the most"
      BIOMED00   =
"Received no conventional medical treatment for condition for which biofeedback 
was used the most"
      BIOMED01   =
"Received prescription medications for condition for which biofeedback was used 
the most"
      BIOMED02   =
"Received over-the-counter medications for condition for which biofeedback was u
sed the most"
      BIOMED03   =
"Received surgery for condition for which biofeedback was used the most"
      BIOMED04   =
"Received physical therapy for condition for which biofeedback was used the most
"
      BIOMED05   =
"Received mental health counseling for condition for which biofeedback was used 
the most"
      BIO_TIM1   =
"Time received prescription medications for condition for which biofeedback was 
used the most"
      BIO_TIM2   =
"Time received over-the-counter medications for condition for which biofeedback 
was used the most"
      BIO_TIM3   =
"Time received surgery for condition for which biofeedback was used the most"
      BIO_TIM4   =
"Time received physical therapy for condition for which biofeedback was used the
 most"
      BIO_TIM5   =
"Time received mental health counseling for condition for which biofeedback was 
used the most"
      BIO_ENG    ="Used biofeedback to improve or enhance energy"
      BIO_WEL    =
"Used biofeedback for general wellness or general disease prevention"
      BIO_IMM    ="Used biofeedback to improve or enhance immune function"
      BIO_NOHP   ="Used biofeedback because medical treatments did not help"
      BIO_EXPS   =
"Used biofeedback because medical treatments were too expensive"
      BIO_SUGG   =
"Used biofeedback because it was recommended by a health care provider"
      BIO_FFC    =
"Used biofeedback because it was recommended by family, friends, or co-workers"
      BIODISC    =
"Let conventional medical professional know about use of biofeedback"
      BIOPRF1    =
"Let medical doctor (including specialists) know about use of biofeedback"
      BIOPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of biofeedback
"
      BIOPRF3    =
"Let nurse practitioner/physician assistant know about use of biofeedback"
      BIOPRF4    ="Let psychiatrist know about use of biofeedback"
      BIOPRF5    =
"Let dentist (including specialists) know about use of biofeedback"
      BIOPRF6    ="Let psychologist/social worker know about use of biofeedback"
      BIOPRF7    ="Let pharmacist know about use of biofeedback"
      CHE_USEM   ="Saw practitioner for chelation therapy, past 12 months"
      CHE_NUM    ="Number of times saw practitioner for chelation therapy"
      CHE_PAY    ="Amount paid per visit to practitioner for chelation therapy"
      CHE_TRET   =
"Used chelation therapy for a specific health problem or condition"
      CHECND01   ="Used chelation therapy for acid reflux or heartburn"
      CHECND02   ="Used chelation therapy for angina"
      CHECND03   ="Used chelation therapy for anxiety"
      CHECND04   ="Used chelation therapy for asthma"
      CHECND05   ="Used chelation therapy for arthritis"
      CHECND06   =
"Used chelation therapy for Attention Deficit Disorder/Hyperactivity"
      CHECND07   ="Used chelation therapy for autism"
      CHECND08   ="Used chelation therapy for benign tumors, cysts"
      CHECND09   ="Used chelation therapy for bipolar disorder"
      CHECND10   ="Used chelation therapy for birth defect"
      CHECND11   ="Used chelation therapy for cancer"
      CHECND12   ="Used chelation therapy for cholesterol"
      CHECND13   ="Used chelation therapy for chronic bronchitis"
      CHECND14   =
"Used chelation therapy for circulation problems (other than in the legs)"
      CHECND15   =
"Used chelation therapy for constipation severe enough to require medication"
      CHECND16   ="Used chelation therapy for coronary heart disease"
      CHECND17   =
"Used chelation therapy for dementia, including Alzheimer's Disease"
      CHECND18   ="Used chelation therapy for dental pain"
      CHECND19   ="Used chelation therapy for depression"
      CHECND20   ="Used chelation therapy for diabetes"
      CHECND21   ="Used chelation therapy for emphysema"
      CHECND22   =
"Used chelation therapy for excessive sleepiness during the day"
      CHECND23   =
"Used chelation therapy for excessive use of alcohol or tobacco"
      CHECND24   ="Used chelation therapy for fibromyalgia"
      CHECND25   ="Used chelation therapy for fracture, bone/joint injury"
      CHECND26   ="Used chelation therapy for gout"
      CHECND27   ="Used chelation therapy for gum disease"
      CHECND28   ="Used chelation therapy for gynecologic problem"
      CHECND29   ="Used chelation therapy for hay fever"
      CHECND30   ="Used chelation therapy for hearing problem"
      CHECND31   ="Used chelation therapy for heart attack"
      CHECND32   ="Used chelation therapy for other heart condition or disease"
      CHECND33   ="Used chelation therapy for hernia"
      CHECND34   ="Used chelation therapy for hypertension"
      CHECND35   ="Used chelation therapy for inflammatory bowel disease"
      CHECND36   ="Used chelation therapy for influenza or pneumonia"
      CHECND37   ="Used chelation therapy for insomnia or trouble sleeping"
      CHECND38   ="Used chelation therapy for irritable bowel"
      CHECND39   ="Used chelation therapy for jaw pain"
      CHECND40   =
"Used chelation therapy for joint pain or stiffness/other joint condition"
      CHECND41   =
"Used chelation therapy for knee problems (not arthritis, not joint injury)"
      CHECND42   ="Used chelation therapy for liver problem"
      CHECND43   =
"Used chelation therapy for lung/breathing problem (not already listed)"
      CHECND44   ="Used chelation therapy for lupus"
      CHECND45   ="Used chelation therapy for mania or psychosis"
      CHECND46   =
"Used chelation therapy for memory loss or loss of other cognitive function"
      CHECND47   ="Used chelation therapy for menopause"
      CHECND48   ="Used chelation therapy for menstrual problems"
      CHECND49   ="Used chelation therapy for mental retardation"
      CHECND50   =
"Used chelation therapy for missing limbs (fingers, toes or digits), amputee"
      CHECND51   ="Used chelation therapy for osteoporosis, tendinitis"
      CHECND52   ="Used chelation therapy for other developmental problem"
      CHECND53   ="Used chelation therapy for other injury"
      CHECND54   =
"Used chelation therapy for other nerve damage, including carpal tunnel syndrome
"
      CHECND55   ="Used chelation therapy for phobia or fears"
      CHECND56   =
"Used chelation therapy for polio (myelitis), paralysis, para/quadriplegia"
      CHECND57   ="Used chelation therapy for poor circulation in legs"
      CHECND58   ="Used chelation therapy for prostate trouble or impotence"
      CHECND59   ="Used chelation therapy for regular headaches"
      CHECND60   ="Used chelation therapy for rheumatoid arthritis"
      CHECND61   ="Used chelation therapy for schizophrenia"
      CHECND62   ="Used chelation therapy for seizures"
      CHECND63   ="Used chelation therapy for senility"
      CHECND64   ="Used chelation therapy for sinusitis"
      CHECND65   ="Used chelation therapy for skin problems"
      CHECND66   ="Used chelation therapy for sprain or strain"
      CHECND67   ="Used chelation therapy for stroke"
      CHECND68   =
"Used chelation therapy for substance abuse, other than alcohol or tobacco"
      CHECND69   ="Used chelation therapy for other (specify)"
      CHECND70   ="Used chelation therapy for other (specify)"
      CHECND71   ="Used chelation therapy for ulcer"
      CHECND72   ="Used chelation therapy for urinary problem"
      CHECND73   ="Used chelation therapy for varicose veins, hemorrhoids"
      CHECND74   ="Used chelation therapy for vision problem"
      CHECND75   ="Used chelation therapy for weak or failing kidneys"
      CHECND76   ="Used chelation therapy for weight problem"
      CHECND77   ="Used chelation therapy for back pain or problem"
      CHECND78   ="Used chelation therapy for head or chest cold"
      CHECND79   ="Used chelation therapy for neck pain or problem"
      CHECND80   ="Used chelation therapy for severe headache or migraine"
      CHECND81   ="Used chelation therapy for stomach or intestinal illness"
      CHECND82   ="Used chelation therapy for other (specify)"
      CHECND83   ="Used chelation therapy for anemia and other blood disorders"
      CHECND84   ="Used chelation therapy for other allergies"
      CHECND85   =
"Used chelation therapy for other infectious diseases and problems of the immune
 system"
      CHECND86   ="Used chelation therapy for other musculoskeletal"
      CHECND87   ="Used chelation therapy for stress"
      CHECONCT   ="Condition count for chelation therapy"
      CHE_SPEC   ="Used chelation therapy for other (specify)"
      CHE_MOST   ="Condition for which chelation therapy was used the most"
      CHEMED00   =
"Received no conventional medical treatment for condition for which chelation th
erapy was used the most"
      CHEMED01   =
"Received prescription medications for condition for which chelation therapy was
 used the most"
      CHEMED02   =
"Received over-the-counter medications for condition for which chelation therapy
 was used the most"
      CHEMED03   =
"Received surgery for condition for which chelation therapy was used the most"
      CHEMED04   =
"Received physical therapy for condition for which chelation therapy was used th
e most"
      CHEMED05   =
"Received mental health counseling for condition for which chelation therapy was
 used the most"
      CHE_TIM1   =
"Time received prescription medications for condition for which chelation therap
y was used the most"
      CHE_TIM2   =
"Time received over-the-counter medications for condition for which chelation th
erapy was used the most"
      CHE_TIM3   =
"Time received surgery for condition for which chelation therapy was used the mo
st"
      CHE_TIM4   =
"Time received physical therapy for condition for which chelation therapy was us
ed the most"
      CHE_TIM5   =
"Tiime received mental health counseling for condition for which chelation thera
py was used the most"
      CHE_ENG    ="Used chelation therapy to improve or enhance energy"
      CHE_WEL    =
"Used chelation therapy for general wellness or general disease prevention"
      CHE_IMM    ="Used chelation therapy to improve or inhance immune function"
      CHE_NOHP   =
"Used chelation therapy because medical treatments did not help"
      CHE_EXPS   =
"Used chelation therapy because medical treatments were too expensive"
      CHE_SUGG   =
"Used chelation therapy because it was recommended by a health care provider"
      CHE_FFC    =
"Used chelation therapy because it was recommended by family, friends, or co-wor
kers"
      CHEDISC    =
"Let conventional medical professional know about use of chelation therapy"
      CHEPRF1    =
"Let medical doctor (including specialists) know about use of chelation therapy"
      CHEPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of chelation therapy"
      CHEPRF3    =
"Let nurse practitioner/physician assistant know about use of chelation therapy"
      CHEPRF4    ="Let psychiatrist know about use of chelation therapy"
      CHEPRF5    =
"Let dentist (including specialists) know about use of chelation therapy"
      CHEPRF6    =
"Let psychologist/social worker know about use of chelation therapy"
      CHEPRF7    ="Let pharmacist know about use of chelation therapy"
      COM_USEM   =
"Saw practitioner for chiropractic or osteopathic manipulation, past 12 months"
      COM_NUM    =
"Number of times saw practitioner for chiropractic or osteopathic manipulation"
      COM_PAY    =
"Amount paid per visit to practitioner for chiropractic or osteopathic manipulat
ion"
      COM_TRET   =
"Used chiropractic or osteopathic manipulation for a specific health problem or 
condition"
      COMCND01   =
"Used chiropractic or osteopathic manipulation for acid reflux or heartburn"
      COMCND02   ="Used chiropractic or osteopathic manipulation for angina"
      COMCND03   ="Used chiropractic or osteopathic manipulation for anxiety"
      COMCND04   ="Used chiropractic or osteopathic manipulation for asthma"
      COMCND05   ="Used chiropractic or osteopathic manipulation for arthritis"
      COMCND06   =
"Used chiropractic or osteopathic manipulation for Attention Deficit Disorder/Hy
peractivity"
      COMCND07   ="Used chiropractic or osteopathic manipulation for autism"
      COMCND08   =
"Used chiropractic or osteopathic manipulation for benign tumors, cysts"
      COMCND09   =
"Used chiropractic or osteopathic manipulation for bipolar disorder"
      COMCND10   =
"Used chiropractic or osteopathic manipulation for birth defect"
      COMCND11   ="Used chiropractic or osteopathic manipulation for cancer"
      COMCND12   ="Used chiropractic or osteopathic manipulation for cholesterol
"
      COMCND13   =
"Used chiropractic or osteopathic manipulation for chronic bronchitis"
      COMCND14   =
"Used chiropractic or osteopathic manipulation for circulation problems (other t
han in the legs)"
      COMCND15   =
"Used chiropractic or osteopathic manipulation for constipation severe enough to
 require medication"
      COMCND16   =
"Used chiropractic or osteopathic manipulation for coronary heart disease"
      COMCND17   =
"Used chiropractic or osteopathic manipulation for dementia, including Alzheimer
's Disease"
      COMCND18   ="Used chiropractic or osteopathic manipulation for dental pain
"
      COMCND19   ="Used chiropractic or osteopathic manipulation for depression"
      COMCND20   ="Used chiropractic or osteopathic manipulation for diabetes"
      COMCND21   ="Used chiropractic or osteopathic manipulation for emphysema"
      COMCND22   =
"Used chiropractic or osteopathic manipulation for excessive sleepiness during t
he day"
      COMCND23   =
"Used chiropractic or osteopathic manipulation for excessive use of alcohol or t
obacco"
      COMCND24   =
"Used chiropractic or osteopathic manipulation for fibromyalgia"
      COMCND25   =
"Used chiropractic or osteopathic manipulation for fracture, bone/joint injury"
      COMCND26   ="Used chiropractic or osteopathic manipulation for gout"
      COMCND27   ="Used chiropractic or osteopathic manipulation for gum disease
"
      COMCND28   =
"Used chiropractic or osteopathic manipulation for gynecologic problem"
      COMCND29   ="Used chiropractic or osteopathic manipulation for hay fever"
      COMCND30   =
"Used chiropractic or osteopathic manipulation for hearing problem"
      COMCND31   =
"Used chiropractic or osteopathic manipulation for heart attack"
      COMCND32   =
"Used chiropractic or osteopathic manipulation for other heart condition or dise
ase"
      COMCND33   =
"Used chiropractic or osteopathic manipulation for other hernia"
      COMCND34   =
"Used chiropractic or osteopathic manipulation for other hypertension"
      COMCND35   =
"Used chiropractic or osteopathic manipulation for other inflammatory bowel dise
ase"
      COMCND36   =
"Used chiropractic or osteopathic manipulation for other influenza or pneumonia"
      COMCND37   =
"Used chiropractic or osteopathic manipulation for other insomnia or trouble sle
eping"
      COMCND38   =
"Used chiropractic or osteopathic manipulation for other irritable bowel"
      COMCND39   =
"Used chiropractic or osteopathic manipulation for other jaw pain"
      COMCND40   =
"Used chiropractic or osteopathic manipulation for other joint pain or stiffness
/other joint condition"
      COMCND41   =
"Used chiropractic or osteopathic manipulation for knee problems (not arthritis,
 not joint injury)"
      COMCND42   =
"Used chiropractic or osteopathic manipulation for liver problem"
      COMCND43   =
"Used chiropractic or osteopathic manipulation for lung/breathing problem (not a
lready listed)"
      COMCND44   ="Used chiropractic or osteopathic manipulation for lupus"
      COMCND45   =
"Used chiropractic or osteopathic manipulation for mania or psychosis"
      COMCND46   =
"Used chiropractic or osteopathic manipulation for memory loss or loss of other 
cognitive function"
      COMCND47   ="Used chiropractic or osteopathic manipulation for menopause"
      COMCND48   =
"Used chiropractic or osteopathic manipulation for menstrual problems"
      COMCND49   =
"Used chiropractic or osteopathic manipulation for mental retardation"
      COMCND50   =
"Used chiropractic or osteopathic manipulation for missing limbs (fingers, toes 
or digits), amputee"
      COMCND51   =
"Used chiropractic or osteopathic manipulation for osteoporosis, tendinitis"
      COMCND52   =
"Used chiropractic or osteopathic manipulation for other developmental problem"
      COMCND53   =
"Used chiropractic or osteopathic manipulation for other injury"
      COMCND54   =
"Used chiropractic or osteopathic manipulation for other nerve damage, including
 carpal tunnel syndrome"
      COMCND55   =
"Used chiropractic or osteopathic manipulation for phobia or fears"
      COMCND56   =
"Used chiropractic or osteopathic manipulation for polio (myelitis), paralysis, 
para/quadriplegia"
      COMCND57   =
"Used chiropractic or osteopathic manipulation for poor ciculation in legs"
      COMCND58   =
"Used chiropractic or osteopathic manipulation for prostate trouble or impotence
"
      COMCND59   =
"Used chiropractic or osteopathic manipulation for regular headaches"
      COMCND60   =
"Used chiropractic or osteopathic manipulation for rheumatoid arthritis"
      COMCND61   =
"Used chiropractic or osteopathic manipulation for schizophrenia"
      COMCND62   ="Used chiropractic or osteopathic manipulation for seizures"
      COMCND63   ="Used chiropractic or osteopathic manipulation for senility"
      COMCND64   ="Used chiropractic or osteopathic manipulation for sinusitis"
      COMCND65   =
"Used chiropractic or osteopathic manipulation for skin problems"
      COMCND66   =
"Used chiropractic or osteopathic manipulation for sprain or strain"
      COMCND67   ="Used chiropractic or osteopathic manipulation for stroke"
      COMCND68   =
"Used chiropractic or osteopathic manipulation for substance abuse, other than a
lcohol or tobacco"
      COMCND69   =
"Used chiropractic or osteopathic manipulation for other (specify)"
      COMCND70   =
"Used chiropractic or osteopathic manipulation for other (specify)"
      COMCND71   ="Used chiropractic or osteopathic manipulation for ulcer"
      COMCND72   =
"Used chiropractic or osteopathic manipulation for urinary problem"
      COMCND73   =
"Used chiropractic or osteopathic manipulation for varicose veins, hemorrhoids"
      COMCND74   =
"Used chiropractic or osteopathic manipulation for vision problem"
      COMCND75   =
"Used chiropractic or osteopathic manipulation for weak or failing kidneys"
      COMCND76   =
"Used chiropractic or osteopathic manipulation for weight problem"
      COMCND77   =
"Used chiropractic or osteopathic manipulation for back pain or problem"
      COMCND78   =
"Used chiropractic or osteopathic manipulation for head or chest cold"
      COMCND79   =
"Used chiropractic or osteopathic manipulation for neck pain or problem"
      COMCND80   =
"Used chiropractic or osteopathic manipulation for severe headache or migraine"
      COMCND81   =
"Used chiropractic or osteopathic manipulation for stomach or intestinal illness
"
      COMCND82   =
"Used chiropractic or osteopathic manipulation for other (specify)"
      COMCND83   =
"Used chiropractic or osteopathic manipulation for anemia and other blood disord
ers"
      COMCND84   =
"Used chiropractic or osteopathic manipulation for other allergies"
      COMCND85   =
"Used chiropractic or osteopathic manipulation for other infectious diseases and
 problems of the immune system"
      COMCND86   =
"Used chiropractic or osteopathic manipulation for other musculoskeletal"
      COMCND87   ="Used chiropractic or osteopathic manipulation for stress"
      COMCONCT   ="Condition count for chiropractic or osteopathic manipulation"
      COM_SPEC   =
"Used chiropractic or osteopathic manipulation for other (specify)"
      COM_MOST   =
"Condition for which chiropractic or osteopathic manipulation was used the most"
      COMMED00   =
"Received no conventional medical treatment for condition for which chiropractic
 or osteopathic manipulation was used the most"
      COMMED01   =
"Received prescription medications for condition for which chiropractic or osteo
pathic manipulation was used the most"
      COMMED02   =
"Received over-the-counter medications for condition for which chiropractic or o
steopathic manipulation was used the most"
      COMMED03   =
"Received surgery for condition for which chiropractic or osteopathic manipulati
on was used the most"
      COMMED04   =
"Received physical therapy for condition for which chiropractic or osteopathic m
anipulation was used the most"
      COMMED05   =
"Received mental health counseling for condition for which chiropractic or osteo
pathic manipulation was used the most"
      COM_TIM1   =
"Time received prescription medications for condition for which chiropractic or 
osteopathic manipulation was used the most"
      COM_TIM2   =
"Time received over-the-counter medications for condition for which chiropractic
 or osteopathic manipulation was used the most"
      COM_TIM3   =
"Time received surgery for condition for which chiropractic or osteopathic manip
ulation was used the most"
      COM_TIM4   =
"Time received physical therapy for condition for which chiropractic or osteopat
hic manipulation was used the most"
      COM_TIM5   =
"Time received mental health counseling for condition for which chiropractic or 
osteopathic manipulation was used the most"
      COM_ENG    =
"Used chiropractic or osteopathic manipulation to improve or enhance energy"
      COM_WEL    =
"Used chiropractic or osteopathic manipulation for general wellness or general d
isease prevention"
      COM_IMM    =
"Used chiropractic or osteopathic manipulation to improve or enhance immune func
tion"
      COM_NOHP   =
"Used chiropractic or osteopathic manipulation because medical treatments did no
t help"
      COM_EXPS   =
"Used chiropractic or osteopathic manipulation because medical treatments were t
oo expensive"
      COM_SUGG   =
"Used chiropractic or osteopathic manipulation because it was recommended by a h
ealth care provider"
      COM_FFC    =
"Used chiropractic or osteopathic manipulation because it was recommended by fam
ily, friends, or co-workers"
      COMDISC    =
"Let conventional medical professional know about use of chiropractic or osteopa
thic manipulation"
      COMPRF1    =
"Let medical doctor (including specialists) know about use of chiropractic or os
teopathic manipulation"
      COMPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of chiropractic or osteopathic m
anipulation"
      COMPRF3    =
"Let nurse practitioner/physician assistant know about use of chiropractic or os
teopathic manipulation"
      COMPRF4    =
"Let psychiatrist know about use of chiropractic or osteopathic manipulation"
      COMPRF5    =
"Let dentist (including specialists) know about use of chiropractic or osteopath
ic manipulation"
      COMPRF6    =
"Let psychologist/social worker know about use of chiropractic or osteopathic ma
nipulation"
      COMPRF7    =
"Let pharmacist know about use of chiropractic or osteopathic manipulation"
      COMMNOT1   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
because I never thought about it"
      COMMNOT2   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
for no reason"
      COMMNOT3   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
because I didn't need it in the last 12 months"
      COMMNOT4   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
because it didn't work for me before"
      COMMNOT5   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
because it costs too much"
      COMMNOT6   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
because I had side effects last time"
      COMMNOT7   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
because a health care provider told me not to use it"
      COMMNOT8   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
because medical science has not shown that it works"
      COMMNOT9   =
"Did not use chiropractic or osteopathic manipulation during the past 12 months 
for some other reason"
      COM_SDEF   =
"Kinds of side effects from chiropractic or osteopathic manipulation"
      COM_ATT    =
"Side effects from chiropractic or osteopathic manipulation required medical att
ention"
      COMNNT01   =
"Never used chiropractic or osteopathic manipulation because I never heard of it
/don't know much about it"
      COMNNT02   =
"Never used chiropractic or osteopathic manipulation because I never thought abo
ut it"
      COMNNT03   =
"Never used chiropractic or osteopathic manipulation for no reason"
      COMNNT04   =
"Never used chiropractic or osteopathic manipulation because I don't need it"
      COMNNT05   =
"Never used chiropractic or osteopathic manipulation because I don't believe in 
it/doesn't work"
      COMNNT06   =
"Never used chiropractic or osteopathic manipulation because it costs too much"
      COMNNT07   =
"Never used chiropractic or osteopathic manipulation because it is not safe to u
se"
      COMNNT08   =
"Never used chiropractic or osteopathic manipulation because a health care provi
der told me not to use it"
      COMNNT09   =
"Never used chiropractic or osteopathic manipulation because medical science has
 not shown that it works"
      COMNNT10   =
"Never used chiropractic or osteopathic manipulation for some other reason"
      EHT_USEM   ="Saw practitioner for energy healing therapy, past 12 months"
      EHT_NUM    ="Number of times saw practitioner for energy healing therapy"
      EHT_PAY    =
"Amount paid per visit to practitioner for energy healing therapy"
      EHT_TRET   =
"Used energy healing therapy for a specific health problem or condition"
      EHTCND01   ="Used energy healing therapy for acid reflux or heartburn"
      EHTCND02   ="Used energy healing therapy for angina"
      EHTCND03   ="Used energy healing therapy for anxiety"
      EHTCND04   ="Used energy healing therapy for asthma"
      EHTCND05   ="Used energy healing therapy for arthritis"
      EHTCND06   =
"Used energy healing therapy for Attention Deficit Disorder/Hyperactivity"
      EHTCND07   ="Used energy healing therapy for autism"
      EHTCND08   ="Used energy healing therapy for benign tumors, cysts"
      EHTCND09   ="Used energy healing therapy for bipolar disorder"
      EHTCND10   ="Used energy healing therapy for birth defect"
      EHTCND11   ="Used energy healing therapy for cancer"
      EHTCND12   ="Used energy healing therapy for cholesterol"
      EHTCND13   ="Used energy healing therapy for chronic bronchitis"
      EHTCND14   =
"Used energy healing therapy for circulation problems (other than in the legs)"
      EHTCND15   =
"Used energy healing therapy for constipation severe enough to require medicatio
n"
      EHTCND16   ="Used energy healing therapy for coronary heart disease"
      EHTCND17   =
"Used energy healing therapy for dementia, including Alzheimer's Disease"
      EHTCND18   ="Used energy healing therapy for dental pain"
      EHTCND19   ="Used energy healing therapy for depression"
      EHTCND20   ="Used energy healing therapy for diabetes"
      EHTCND21   ="Used energy healing therapy for emphysema"
      EHTCND22   =
"Used energy healing therapy for excessive sleepiness during the day"
      EHTCND23   =
"Used energy healing therapy for excessive use of alcohol or tobacco"
      EHTCND24   ="Used energy healing therapy for fibromyalgia"
      EHTCND25   ="Used energy healing therapy for fracture, bone/joint injury"
      EHTCND26   ="Used energy healing therapy for gout"
      EHTCND27   ="Used energy healing therapy for gum disease"
      EHTCND28   ="Used energy healing therapy for gynecologic problem"
      EHTCND29   ="Used energy healing therapy for hay fever"
      EHTCND30   ="Used energy healing therapy for hearing problem"
      EHTCND31   ="Used energy healing therapy for heart attack"
      EHTCND32   =
"Used energy healing therapy for other heart condition or disease"
      EHTCND33   ="Used energy healing therapy for hernia"
      EHTCND34   ="Used energy healing therapy for hypertension"
      EHTCND35   ="Used energy healing therapy for inflammatory bowel disease"
      EHTCND36   ="Used energy healing therapy for influenza or pneumonia"
      EHTCND37   ="Used energy healing therapy for insomnia or trouble sleeping"
      EHTCND38   ="Used energy healing therapy for irritable bowel"
      EHTCND39   ="Used energy healing therapy for jaw pain"
      EHTCND40   =
"Used energy healing therapy for joint pain or stiffness/other joint condition"
      EHTCND41   =
"Used energy healing therapy for knee problems (not arthritis, not joint injury)
"
      EHTCND42   ="Used energy healing therapy for liver problem"
      EHTCND43   =
"Used energy healing therapy for lung/breathing problem (not already listed)"
      EHTCND44   ="Used energy healing therapy for lupus"
      EHTCND45   ="Used energy healing therapy for mania or psychosis"
      EHTCND46   =
"Used energy healing therapy for memory loss or loss of other cognitive function
"
      EHTCND47   ="Used energy healing therapy for menopause"
      EHTCND48   ="Used energy healing therapy for menstrual problems"
      EHTCND49   ="Used energy healing therapy for mental retardation"
      EHTCND50   =
"Used energy healing therapy for missing limbs (fingers, toes or digits), ampute
e"
      EHTCND51   ="Used energy healing therapy for osteoporosis, tendinitis"
      EHTCND52   ="Used energy healing therapy for other developmental problem"
      EHTCND53   ="Used energy healing therapy for other injury"
      EHTCND54   =
"Used energy healing therapy for other nerve damage, including carpal tunnel syn
drome"
      EHTCND55   ="Used energy healing therapy for phobia or fears"
      EHTCND56   =
"Used energy healing therapy for polio (myelitis), paralysis, para/quadriplegia"
      EHTCND57   ="Used energy healing therapy for poor circulation in legs"
      EHTCND58   ="Used energy healing therapy for prostate trouble or impotence
"
      EHTCND59   ="Used energy healing therapy for regular headaches"
      EHTCND60   ="Used energy healing therapy for rheumatoid arthritis"
      EHTCND61   ="Used energy healing therapy for schizophrenia"
      EHTCND62   ="Used energy healing therapy for seizures"
      EHTCND63   ="Used energy healing therapy for senility"
      EHTCND64   ="Used energy healing therapy for sinusitis"
      EHTCND65   ="Used energy healing therapy for skin problems"
      EHTCND66   ="Used energy healing therapy for sprain or strain"
      EHTCND67   ="Used energy healing therapy for stroke"
      EHTCND68   =
"Used energy healing therapy for substance abuse, other than alcohol or tobacco"
      EHTCND69   ="Used energy healing therapy for other (specify)"
      EHTCND70   ="Used energy healing therapy for other (specify)"
      EHTCND71   ="Used energy healing therapy for ulcer"
      EHTCND72   ="Used energy healing therapy for urinary problem"
      EHTCND73   ="Used energy healing therapy for varicose veins, hemorrhoids"
      EHTCND74   ="Used energy healing therapy for vision problem"
      EHTCND75   ="Used energy healing therapy for weak or failing kidneys"
      EHTCND76   ="Used energy healing therapy for weight problem"
      EHTCND77   ="Used energy healing therapy for back pain or problem"
      EHTCND78   ="Used energy healing therapy for head or chest cold"
      EHTCND79   ="Used energy healing therapy for neck pain or problem"
      EHTCND80   ="Used energy healing therapy for severe headache or migraine"
      EHTCND81   ="Used energy healing therapy for stomach or intestinal illness
"
      EHTCND82   ="Used energy healing therapy for other (specify)"
      EHTCND83   =
"Used energy healing therapy for anemia and other blood disorders"
      EHTCND84   ="Used energy healing therapy for other allergies"
      EHTCND85   =
"Used energy healing therapy for other infectious diseases and problems of the i
mmune system"
      EHTCND86   ="Used energy healing therapy for other musculoskeletal"
      EHTCND87   ="Used energy healing therapy for stress"
      EHTCONCT   ="Condition count for energy healing therapy"
      EHT_SPEC   ="Used energy healing therapy for other (specify)"
      EHT_MOST   ="Condition for which energy healing therapy was used the most"
      EHTMED00   =
"Received no conventional medical treatment for condition for which energy heali
ng therapy was used the most"
      EHTMED01   =
"Received prescription medications for condition for which energy healing therap
y was used the most"
      EHTMED02   =
"Received over-the-counter medications for condition for which energy healing th
erapy was used the most"
      EHTMED03   =
"Received surgery for condition for which energy healing therapy was used the mo
st"
      EHTMED04   =
"Received physical therapy for condition for which energy healing therapy was us
ed the most"
      EHTMED05   =
"Received mental health counseling for condition for which energy healing therap
y was used the most"
      EHT_TIM1   =
"Time received prescription medications for condition for which energy healing t
herapy was used the most"
      EHT_TIM2   =
"Time received over-the-counter medications for condition for which energy heali
ng therapy was used the most"
      EHT_TIM3   =
"Time received surgery for condition for which energy healing therapy was used t
he most"
      EHT_TIM4   =
"Time received physical therapy for condition for which energy healing therapy w
as used the most"
      EHT_TIM5   =
"Time received mental health counseling for condition for which energy healing t
herapy was used the most"
      EHT_ENG    ="Used energy healing therapy to improve or enhance energy"
      EHT_WEL    =
"Used energy healing therapy for general wellness or general disease prevention"
      EHT_IMM    =
"Used energy healing therapy to improve or enhance immune function"
      EHT_NOHP   =
"Used energy healing therapy because medical treatments did not help"
      EHT_EXPS   =
"Used energy healing therapy because medical treatments were too expensive"
      EHT_SUGG   =
"Used energy healing therapy because it was recommended by a health care provide
r"
      EHT_FFC    =
"Used energy healing therapy because it was recommended by family, friends, or c
o-workers"
      EHTDISC    =
"Let conventional medical professional know about use of energy healing therapy"
      EHTPRF1    =
"Let medical doctor (including specialists) know about use of energy healing the
rapy"
      EHTPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of energy healing therapy"
      EHTPRF3    =
"Let nurse practitioner/physician assistant know about use of energy healing the
rapy"
      EHTPRF4    ="Let psychiatrist know about use of energy healing therapy"
      EHTPRF5    =
"Let dentist (including specialists) know about use of energy healing therapy"
      EHTPRF6    =
"Let psychologist/social worker know about use of energy healing therapy"
      EHTPRF7    ="Let pharmacist know about use of energy healing therapy"
      HYP_USEM   ="Saw practitioner for hypnosis, past 12 months"
      HYP_NUM    ="Number of times saw practitioner for hypnosis"
      HYP_PAY    ="Amount paid per visit to practitioner for hypnosis"
      HYP_TRET   ="Used hypnosis for a specific health problem or condition"
      HYPCND01   ="Used hypnosis for acid reflux or heartburn"
      HYPCND02   ="Used hypnosis for angina"
      HYPCND03   ="Used hypnosis for anxiety"
      HYPCND04   ="Used hypnosis for asthma"
      HYPCND05   ="Used hypnosis for arthritis"
      HYPCND06   ="Used hypnosis for Attention Deficit Disorder/Hyperactivity"
      HYPCND07   ="Used hypnosis for autism"
      HYPCND08   ="Used hypnosis for benign tumors, cysts"
      HYPCND09   ="Used hypnosis for bipolar disorder"
      HYPCND10   ="Used hypnosis for birth defect"
      HYPCND11   ="Used hypnosis for cancer"
      HYPCND12   ="Used hypnosis for cholesterol"
      HYPCND13   ="Used hypnosis for chronic bronchitis"
      HYPCND14   =
"Used hypnosis for circulation problems (other than in the legs)"
      HYPCND15   =
"Used hypnosis for constipation severe enough to require medication"
      HYPCND16   ="Used hypnosis for coronary heart disease"
      HYPCND17   ="Used hypnosis for dementia, including Alzheimer's Disease"
      HYPCND18   ="Used hypnosis for dental pain"
      HYPCND19   ="Used hypnosis for depression"
      HYPCND20   ="Used hypnosis for diabetes"
      HYPCND21   ="Used hypnosis for emphysema"
      HYPCND22   ="Used hypnosis for excessive sleepiness during the day"
      HYPCND23   ="Used hypnosis for excessive use of alcohol or tobacco"
      HYPCND24   ="Used hypnosis for fibromyalgia"
      HYPCND25   ="Used hypnosis for fracture, bone/joint injury"
      HYPCND26   ="Used hypnosis for gout"
      HYPCND27   ="Used hypnosis for gum disease"
      HYPCND28   ="Used hypnosis for gynecologic problem"
      HYPCND29   ="Used hypnosis for hay fever"
      HYPCND30   ="Used hypnosis for hearing problem"
      HYPCND31   ="Used hypnosis for heart attack"
      HYPCND32   ="Used hypnosis for other heart condition or disease"
      HYPCND33   ="Used hypnosis for hernia"
      HYPCND34   ="Used hypnosis for hypertension"
      HYPCND35   ="Used hypnosis for inflammatory bowel disease"
      HYPCND36   ="Used hypnosis for influenza or pneumonia"
      HYPCND37   ="Used hypnosis for insomnia or trouble sleeping"
      HYPCND38   ="Used hypnosis for irritable bowel"
      HYPCND39   ="Used hypnosis for jaw pain"
      HYPCND40   =
"Used hypnosis for joint pain or stiffness/other joint condition"
      HYPCND41   =
"Used hypnosis for knee problems (not arthritis, not joint injury)"
      HYPCND42   ="Used hypnosis for liver problem"
      HYPCND43   ="Used hypnosis for lung/breathing problem (not already listed)
"
      HYPCND44   ="Used hypnosis for lupus"
      HYPCND45   ="Used hypnosis for mania or psychosis"
      HYPCND46   =
"Used hypnosis for memory loss or loss of other cognitive function"
      HYPCND47   ="Used hypnosis for menopause"
      HYPCND48   ="Used hypnosis for menstrual problems"
      HYPCND49   ="Used hypnosis for mental retardation"
      HYPCND50   =
"Used hypnosis for missing limbs (fingers, toes, or digits), amputee"
      HYPCND51   ="Used hypnosis for osteoporosis, tendinitis"
      HYPCND52   ="Used hypnosis for other developmental problem"
      HYPCND53   ="Used hypnosis for other injury"
      HYPCND54   =
"Used hypnosis for other nerve damage, including carpal tunnel syndrome"
      HYPCND55   ="Used hypnosis for phobia or fears"
      HYPCND56   =
"Used hypnosis for polio (myelitis), paralysis, para/quadriplegia"
      HYPCND57   ="Used hypnosis for poor circulation in legs"
      HYPCND58   ="Used hypnosis for prostate trouble or impotence"
      HYPCND59   ="Used hypnosis for regular headaches"
      HYPCND60   ="Used hypnosis for rheumatoid arthritis"
      HYPCND61   ="Used hypnosis for schizophrenia"
      HYPCND62   ="Used hypnosis for seizures"
      HYPCND63   ="Used hypnosis for senility"
      HYPCND64   ="Used hypnosis for sinusitis"
      HYPCND65   ="Used hypnosis for skin problems"
      HYPCND66   ="Used hypnosis for sprain or strain"
      HYPCND67   ="Used hypnosis for stroke"
      HYPCND68   =
"Used hypnosis for substance abuse, other than alcohol or tobacco"
      HYPCND69   ="Used hypnosis for other (specify)"
      HYPCND70   ="Used hypnosis for other (specify)"
      HYPCND71   ="Used hypnosis for ulcer"
      HYPCND72   ="Used hypnosis for urinary problem"
      HYPCND73   ="Used hypnosis for varicose veins, hemorrhoids"
      HYPCND74   ="Used hypnosis for vision problem"
      HYPCND75   ="Used hypnosis for weak or failing kidneys"
      HYPCND76   ="Used hypnosis for weight problem"
      HYPCND77   ="Used hypnosis for back pain or problem"
      HYPCND78   ="Used hypnosis for head or chest cold"
      HYPCND79   ="Used hypnosis for neck pain or problem"
      HYPCND80   ="Used hypnosis for severe headache or migraine"
      HYPCND81   ="Used hypnosis for stomach or intestinal illness"
      HYPCND82   ="Used hypnosis for other (specify)"
      HYPCND83   ="Used hypnosis for anemia and other blood disorders"
      HYPCND84   ="Used hypnosis for other allergies"
      HYPCND85   =
"Used hypnosis for other infectious diseases and problems of the immune system"
      HYPCND86   ="Used hypnosis for other musculoskeletal"
      HYPCND87   ="Used hypnosis for stress"
      HYPCONCT   ="Condition count for hypnosis"
      HYP_SPEC   ="Used hypnosis for other (specify)"
      HYP_MOST   ="Condition for which hypnosis was used the most"
      HYPMED00   =
"Received no conventional medical treatment for condition for which hypnosis was
 used the most"
      HYPMED01   =
"Received prescription medications for condition for which hypnosis was used the
 most"
      HYPMED02   =
"Received over-the-counter medications for condition for which hypnosis was used
 the most"
      HYPMED03   =
"Received surgery for condition for which hypnosis was used the most"
      HYPMED04   =
"Received physical therapy for condition for which hypnosis was used the most"
      HYPMED05   =
"Received mental health counseling for condition for which hypnosis was used the
 most"
      HYP_TIM1   =
"Time received prescription medications for condition for which hypnosis was use
d the most"
      HYP_TIM2   =
"Time received over-the-counter medications for condition for which hypnosis was
 used the most"
      HYP_TIM3   =
"Time received surgery for condition for which hypnosis was used the most"
      HYP_TIM4   =
"Time received physical therapy for condition for which hypnosis was used the mo
st"
      HYP_TIM5   =
"Time received mental health counseling for condition for which hypnosis was use
d the most"
      HYP_ENG    ="Used hypnosis to improve or enhance energy"
      HYP_WEL    =
"Used hypnosis for general wellness or general disease prevention"
      HYP_IMM    ="Used hypnosis to improve or enhance immune function"
      HYP_NOHP   ="Used hypnosis because medical treatments did not help"
      HYP_EXPS   ="Used hypnosis because medical treatments were too expensive"
      HYP_SUGG   =
"Used hypnosis because it was recommended by a health care provider"
      HYP_FFC    =
"Used hypnosis because it was recommended by family, friends, or co-workers"
      HYPDISC    =
"Let conventional medical professional know about use of hypnosis"
      HYPPRF1    =
"Let medical doctor (including specialists) know about use of hypnosis"
      HYPPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of hypnosis"
      HYPPRF3    =
"Let nurse practitioner/physician assistant know about use of hypnosis"
      HYPPRF4    ="Let psychiatrist know about use of hypnosis"
      HYPPRF5    =
"Let dentist (including specialists) know about use of hypnosis"
      HYPPRF6    ="Let psychologist/social worker know about use of hypnosis"
      HYPPRF7    ="Let pharmacist know about use of hypnosis"
      MAS_USEM   ="Saw practitioner for massage, past 12 months"
      MAS_NUM    ="Number of times saw practitioner for massage"
      MAS_PAY    ="Amount paid per visit to practitioner for massage"
      MAS_TRET   ="Used massage for a specific helath problem or condition"
      MASCND01   ="Used massage for acid reflux or heartburn"
      MASCND02   ="Used massage for angina"
      MASCND03   ="Used massage for anxiety"
      MASCND04   ="Used massage for asthma"
      MASCND05   ="Used massage for arthritis"
      MASCND06   ="Used massage for Attention Deficit Disorder/Hyperactivity"
      MASCND07   ="Used massage for autism"
      MASCND08   ="Used massage for benign tumors, cysts"
      MASCND09   ="Used massage for bipolar disorder"
      MASCND10   ="Used massage for birth defect"
      MASCND11   ="Used massage for cancer"
      MASCND12   ="Used massage for cholesterol"
      MASCND13   ="Used massage for chronic bronchitis"
      MASCND14   =
"Used massage for circulation problems (other than in the legs)"
      MASCND15   =
"Used massage for constipation severe enough to require medication"
      MASCND16   ="Used massage for coronary heart disease"
      MASCND17   ="Used massage for dementia, including Alzheimer's Disease"
      MASCND18   ="Used massage for dental pain"
      MASCND19   ="Used massage for depression"
      MASCND20   ="Used massage for diabetes"
      MASCND21   ="Used massage for emphysema"
      MASCND22   ="Used massage for excessive sleepiness during the day"
      MASCND23   ="Used massage for excessive use of alcohol or tobacco"
      MASCND24   ="Used massage for fibromyalgia"
      MASCND25   ="Used massage for fracture, bone/joint injury"
      MASCND26   ="Used massage for gout"
      MASCND27   ="Used massage for gum disease"
      MASCND28   ="Used massage for gynecologic problem"
      MASCND29   ="Used massage for hay fever"
      MASCND30   ="Used massage for hearing problem"
      MASCND31   ="Used massage for heart attack"
      MASCND32   ="Used massage for other heart condition or disease"
      MASCND33   ="Used massage for hernia"
      MASCND34   ="Used massage for hypertension"
      MASCND35   ="Used massage for inflammatory bowel disease"
      MASCND36   ="Used massage for influenza or pneumonia"
      MASCND37   ="Used massage for insomnia or trouble sleeping"
      MASCND38   ="Used massage for irritable bowel"
      MASCND39   ="Used massage for jaw pain"
      MASCND40   =
"Used massage for joint pain or stiffness/other joint condition"
      MASCND41   =
"Used massage for knee problems (not arthritis, not joint injury)"
      MASCND42   ="Used massage for liver problem"
      MASCND43   ="Used massage for lung/breathing problem (not already listed)"
      MASCND44   ="Used massage for lupus"
      MASCND45   ="Used massage for mania or psychosis"
      MASCND46   =
"Used massage for memory loss or loss of other cognitive function"
      MASCND47   ="Used massage for menopause"
      MASCND48   ="Used massage for menstrual problems"
      MASCND49   ="Used massage for mental retardation"
      MASCND50   =
"Used massage for missing limbs (fingers, toes or digits), amputee"
      MASCND51   ="Used massage for osteoporosis, tendinitis"
      MASCND52   ="Used massage for other developmental problem"
      MASCND53   ="Used massage for other injury"
      MASCND54   =
"Used massage for other nerve damage, including carpal tunnel syndrome"
      MASCND55   ="Used massage for phobia or fears"
      MASCND56   =
"Used massage for polio (myelitis), paralysis, para/quadriplegia"
      MASCND57   ="Used massage for poor circulation in legs"
      MASCND58   ="Used massage for prostate trouble or impotence"
      MASCND59   ="Used massage for regular headaches"
      MASCND60   ="Used massage for rheumatoid arthritis"
      MASCND61   ="Used massage for schizophrenia"
      MASCND62   ="Used massage for seizures"
      MASCND63   ="Used massage for senility"
      MASCND64   ="Used massage for sinusitis"
      MASCND65   ="Used massage for skin problems"
      MASCND66   ="Used massage for sprain or strain"
      MASCND67   ="Used massage for stroke"
      MASCND68   =
"Used massage for substance abuse, other than alcohol or tobacco"
      MASCND69   ="Used massage for other (specify)"
      MASCND70   ="Used massage for other (specify)"
      MASCND71   ="Used massage for ulcer"
      MASCND72   ="Used massage for urinary problem"
      MASCND73   ="Used massage for varicose veins, hemorrhoids"
      MASCND74   ="Used massage for vision problem"
      MASCND75   ="Used massage for weak or failing kidneys"
      MASCND76   ="Used massage for weight problem"
      MASCND77   ="Used massage for back pain or problem"
      MASCND78   ="Used massage for head or chest cold"
      MASCND79   ="Used massage for neck pain or problem"
      MASCND80   ="Used massage for severe headache or migraine"
      MASCND81   ="Used massage for stomach or intestinal illness"
      MASCND82   ="Used massage for other (specify)"
      MASCND83   ="Used massage for anemia and other blood disorders"
      MASCND84   ="Used massage for other allergies"
      MASCND85   =
"Used massage for other infectious diseases and problems of the immune system"
      MASCND86   ="Used massage for other musculoskeletal"
      MASCND87   ="Used massage for stress"
      MASCONCT   ="Condition count for massage"
      MAS_SPEC   ="Used massage for other (specify)"
      MAS_MOST   ="Condition for which massage was used the most"
      MASMED00   =
"Received no conventional medical treatment for condition for which massage was 
used the most"
      MASMED01   =
"Received prescription medications for condition for which massage was used the 
most"
      MASMED02   =
"Received over-the-counter medications for condition for which massage was used 
the most"
      MASMED03   =
"Received surgery for condition for which massage was used the most"
      MASMED04   =
"Received physical therapy for condition for which massage was used the most"
      MASMED05   =
"Received mental health counseling for condition for which massage was used the 
most"
      MAS_TIM1   =
"Time received prescription medications for condition for which massage was used
 the most"
      MAS_TIM2   =
"Time received over-the-counter medications for condition for which massage was 
used the most"
      MAS_TIM3   =
"Time received surgery for condition for which massage was used the most"
      MAS_TIM4   =
"Time received physical therapy for condition for which massage was used the mos
t"
      MAS_TIM5   =
"Time received mental health counseling for condition for which massage was used
 the most"
      MAS_ENG    ="Used massage to improve or enhance energy"
      MAS_WEL    =
"Used massage for general wellness or general disease prevention"
      MAS_IMM    ="Used massage to improve or enhance immune function"
      MAS_NOHP   ="Used massage because medical treatments did not help"
      MAS_EXPS   ="Used massage because medical treatments were too expensive"
      MAS_SUGG   =
"Used massage because it was recommended by a health care provider"
      MAS_FFC    =
"Used massage because it was recommended by family, friends, or co-workers"
      MASDISC    =
"Let conventional medical professional know about use of massage"
      MASPRF1    =
"Let medical doctor (including specialists) know about use of massage"
      MASPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of massage"
      MASPRF3    =
"Let nurse practitioner/physician assistant know about use of massage"
      MASPRF4    ="Let psychiatrist know about use of massage"
      MASPRF5    ="Let dentist (including specialists) know about use of massage
"
      MASPRF6    ="Let psychologist/social worker know about use of massage"
      MASPRF7    ="Let pharmacist know about use of massage"
      NAT_USEM   ="Saw practitioner for naturopathy, past 12 months"
      NAT_NUM    ="Number of times saw practitioner for naturopathy"
      NAT_PAY    ="Amount paid per visit to practitioner for naturopathy"
      NAT_TRET   ="Used naturopathy for a specific health problem or condition"
      NATCND01   ="Used naturopathy for acid reflux or heartburn"
      NATCND02   ="Used naturopathy for angina"
      NATCND03   ="Used naturopathy for anxiety"
      NATCND04   ="Used naturopathy for asthma"
      NATCND05   ="Used naturopathy for arthritis"
      NATCND06   ="Used naturopathy for Attention Deficit Disorder/Hyperactivity
"
      NATCND07   ="Used naturopathy for autism"
      NATCND08   ="Used naturopathy for benign tumors, cysts"
      NATCND09   ="Used naturopathy for bipolar disorder"
      NATCND10   ="Used naturopathy for birth defect"
      NATCND11   ="Used naturopathy for cancer"
      NATCND12   ="Used naturopathy for cholesterol"
      NATCND13   ="Used naturopathy for chronic bronchitis"
      NATCND14   =
"Used naturopathy for circulation problems (other than in the legs)"
      NATCND15   =
"Used naturopathy for constipation severe enough to require medication"
      NATCND16   ="Used naturopathy for coronary heart disease"
      NATCND17   ="Used naturopathy for dementia, including Alzheimer's Disease"
      NATCND18   ="Used naturopathy for dental pain"
      NATCND19   ="Used naturopathy for depression"
      NATCND20   ="Used naturopathy for diabetes"
      NATCND21   ="Used naturopathy for emphysema"
      NATCND22   ="Used naturopathy for excessive sleepiness during the day"
      NATCND23   ="Used naturopathy for excessive use of alcohol or tobacco"
      NATCND24   ="Used naturopathy for fibromyalgia"
      NATCND25   ="Used naturopathy for fracture, bone/joint injury"
      NATCND26   ="Used naturopathy for gout"
      NATCND27   ="Used naturopathy for gum disease"
      NATCND28   ="Used naturopathy for gynecologic problem"
      NATCND29   ="Used naturopathy for hay fever"
      NATCND30   ="Used naturopathy for hearing problem"
      NATCND31   ="Used naturopathy for heart attack"
      NATCND32   ="Used naturopathy for other heart condition or disease"
      NATCND33   ="Used naturopathy for hernia"
      NATCND34   ="Used naturopathy for hypertension"
      NATCND35   ="Used naturopathy for inflammatory bowel disease"
      NATCND36   ="Used naturopathy for influenza or pneumonia"
      NATCND37   ="Used naturopathy for insomnia or trouble sleeping"
      NATCND38   ="Used naturopathy for irritable bowel"
      NATCND39   ="Used naturopathy for jaw pain"
      NATCND40   =
"Used naturopathy for joint pain or stiffness/other joint condition"
      NATCND41   =
"Used naturopathy for knee problems (not arthritis, not joint injury)"
      NATCND42   ="Used naturopathy for liver problem"
      NATCND43   =
"Used naturopathy for lung/breathing problem (not already listed)"
      NATCND44   ="Used naturopathy for lupus"
      NATCND45   ="Used naturopathy for mania or psychosis"
      NATCND46   =
"Used naturopathy for memory loss or loss of other cognitive function"
      NATCND47   ="Used naturopathy for menopause"
      NATCND48   ="Used naturopathy for menstrual problems"
      NATCND49   ="Used naturopathy for mental retardation"
      NATCND50   =
"Used naturopathy for missing limbs (fingers, toes or digits), amputee"
      NATCND51   ="Used naturopathy for osteoporosis, tendinitis"
      NATCND52   ="Used naturopathy for other developmental problem"
      NATCND53   ="Used naturopathy for other injury"
      NATCND54   =
"Used naturopathy for other nerve damage, including carpal tunnel syndrome"
      NATCND55   ="Used naturopathy for phobia or fears"
      NATCND56   =
"Used naturopathy for polio (myelitis), paralysis, para/quadriplegia"
      NATCND57   ="Used naturopathy for poor circulation in legs"
      NATCND58   ="Used naturopathy for prostate trouble or impotence"
      NATCND59   ="Used naturopathy for regular headaches"
      NATCND60   ="Used naturopathy for rheumatoid arthritis"
      NATCND61   ="Used naturopathy for schizophrenia"
      NATCND62   ="Used naturopathy for seizures"
      NATCND63   ="Used naturopathy for senility"
      NATCND64   ="Used naturopathy for sinusitis"
      NATCND65   ="Used naturopathy for skin problems"
      NATCND66   ="Used naturopathy for sprain or strain"
      NATCND67   ="Used naturopathy for stroke"
      NATCND68   =
"Used naturopathy for substance abuse, other than alcohol or tobacco"
      NATCND69   ="Used naturopathy for other (specify)"
      NATCND70   ="Used naturopathy for other (specify)"
      NATCND71   ="Used naturopathy for ulcer"
      NATCND72   ="Used naturopathy for urinary problem"
      NATCND73   ="Used naturopathy for varicose veins, hemorrhoids"
      NATCND74   ="Used naturopathy for vision problem"
      NATCND75   ="Used naturopathy for weak or failing kidneys"
      NATCND76   ="Used naturopathy for weight problem"
      NATCND77   ="Used naturopathy for back pain or problem"
      NATCND78   ="Used naturopathy for head or chest cold"
      NATCND79   ="Used naturopathy for neck pain or problem"
      NATCND80   ="Used naturopathy for severe headache or migraine"
      NATCND81   ="Used naturopathy for stomach or intestinal illness"
      NATCND82   ="Used naturopathy for other (specify)"
      NATCND83   ="Used naturopathy for anemia and other blood disorders"
      NATCND84   ="Used naturopathy for other allergies"
      NATCND85   =
"Used naturopathy for other infectious diseases and problems of the immune syste
m"
      NATCND86   ="Used naturopathy for other musculoskeletal"
      NATCND87   ="Used naturopathy for stress"
      NATCONCT   ="Condition count for naturopathy"
      NAT_SPEC   ="Used naturopathy for other (specify)"
      NAT_MOST   ="Condition for which naturopathy was used the most"
      NATMED00   =
"Received no conventional medical treatment for condition for which naturopathy 
was used the most"
      NATMED01   =
"Received prescription medications for condition for which naturopathy was used 
the most"
      NATMED02   =
"Received over-the-counter medications for condition for which naturopathy was u
sed the most"
      NATMED03   =
"Received surgery for condition for which naturopathy was used the most"
      NATMED04   =
"Received physical therapy for condition for which naturopathy was used the most
"
      NATMED05   =
"Received mental health counseling for condition for which naturopathy was used 
the most"
      NAT_TIM1   =
"Time received prescription medications for condition for which naturopathy was 
used the most"
      NAT_TIM2   =
"Time received over-the-counter medications for condition for which naturopathy 
was used the most"
      NAT_TIM3   =
"Time received surgery for condition for which naturopathy was used the most"
      NAT_TIM4   =
"Time received physical therapy for condition for which naturopathy was used the
 most"
      NAT_TIM5   =
"Time received mental health counseling for condition for which naturopathy was 
used the most"
      NAT_ENG    ="Used naturopathy to improve or enhance energy"
      NAT_WEL    =
"Used naturopathy for general wellness or general disease prevention"
      NAT_IMM    ="Used naturopathy to improve or enhance immune function"
      NAT_NOHP   ="Used naturopathy because medical treatments did not help"
      NAT_EXPS   =
"Used naturopathy because medical treatments were too expensive"
      NAT_SUGG   =
"Used naturopathy because it was recommended by a health care provider"
      NAT_FFC    =
"Used naturopathy because it was recommended by family, friends, or co-workers"
      NATDISC    =
"Let conventional medical professional know about use of naturopathy"
      NATPRF1    =
"Let medical doctor (including specialists) know about use of naturopathy"
      NATPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of naturopathy
"
      NATPRF3    =
"Let nurse practitioner/physician assistant know about use of naturopathy"
      NATPRF4    ="Let psychiatrist know about use of naturopathy"
      NATPRF5    =
"Let dentist (including specialists) know about use of naturopathy"
      NATPRF6    ="Let psychologist/social worker know about use of naturopathy"
      NATPRF7    ="Let pharmacist know about use of naturopathy"
      CUR_EVER   ="Ever saw a Curandero"
      ESP_EVER   ="Ever saw an Espiritista"
      YER_EVER   ="Ever saw a Hierbero or Yerbera"
      SHA_EVER   ="Ever saw a Shaman"
      BOT_EVER   ="Ever saw a Botanica"
      NAH_EVER   ="Ever saw a Native American Healer/Medicine Man"
      SBD_EVER   ="Ever saw a Sobador"
      TRDNEVER   ="Never saw a traditional healer"
      CUR_USEM   ="Saw a Curandero, past 12 months"
      ESP_USEM   ="Saw an Espiritista, past 12 months"
      YER_USEM   ="Saw a Hierbero or Yerbera, past 12 months"
      SHA_USEM   ="Saw a Shaman, past 12 months"
      BOT_USEM   ="Saw a Botanica, past 12 months"
      NAH_USEM   ="Saw a Native American Healer or Medicine Man, past 12 months"
      SBD_USEM   ="Saw a Sobador, past 12 months"
      TRDUSECT   ="Number of traditional healers used"
      TRD_MOST   ="Traditional healer seen the most"
      TRD_NUM    ="Number of times saw a traditional healer"
      TRD_PAY    ="Amount paid per visit for traditional healer"
      TRD_TRET   =
"Saw a traditional healer for a specific health problem or condition"
      TRDCND01   ="Saw a traditional healer for acid reflux or heartburn"
      TRDCND02   ="Saw a traditional healer for angina"
      TRDCND03   ="Saw a traditional healer for anxiety"
      TRDCND04   ="Saw a traditional healer for asthma"
      TRDCND05   ="Saw a traditional healer for arthritis"
      TRDCND06   =
"Saw a traditional healer for Attention Deficit Disorder/Hyperactivity"
      TRDCND07   ="Saw a traditional healer for autism"
      TRDCND08   ="Saw a traditional healer for benign tumors, cysts"
      TRDCND09   ="Saw a traditional healer for bipolar disorder"
      TRDCND10   ="Saw a traditional healer for birth defect"
      TRDCND11   ="Saw a traditional healer for cancer"
      TRDCND12   ="Saw a traditional healer for cholesterol"
      TRDCND13   ="Saw a traditional healer for chronic bronchitis"
      TRDCND14   =
"Saw a traditional healer for circulation problems (other than in the legs)"
      TRDCND15   =
"Saw a traditional healer for constipation severe enough to require medication"
      TRDCND16   ="Saw a traditional healer for coronary heart disease"
      TRDCND17   =
"Saw a traditional healer for dementia, including Alzheimer's Disease"
      TRDCND18   ="Saw a traditional healer for dental pain"
      TRDCND19   ="Saw a traditional healer for depression"
      TRDCND20   ="Saw a traditional healer for diabetes"
      TRDCND21   ="Saw a traditional healer for emphysema"
      TRDCND22   =
"Saw a traditional healer for excessive sleepiness during the day"
      TRDCND23   =
"Saw a traditional healer for excessive use of alcohol or tobacco"
      TRDCND24   ="Saw a traditional healer for fibromyalgia"
      TRDCND25   ="Saw a traditional healer for fracture, bone/joint injury"
      TRDCND26   ="Saw a traditional healer for gout"
      TRDCND27   ="Saw a traditional healer for gum disease"
      TRDCND28   ="Saw a traditional healer for gynecologic problem"
      TRDCND29   ="Saw a traditional healer for hay fever"
      TRDCND30   ="Saw a traditional healer for hearing problem"
      TRDCND31   ="Saw a traditional healer for heart attack"
      TRDCND32   ="Saw a traditional healer for other heart condition or disease
"
      TRDCND33   ="Saw a traditional healer for hernia"
      TRDCND34   ="Saw a traditional healer for hypertension"
      TRDCND35   ="Saw a traditional healer for inflammatory bowel disease"
      TRDCND36   ="Saw a traditional healer for influenza or pneumonia"
      TRDCND37   ="Saw a traditional healer for insomnia or trouble sleeping"
      TRDCND38   ="Saw a traditional healer for irritable bowel"
      TRDCND39   ="Saw a traditional healer for jaw pain"
      TRDCND40   =
"Saw a traditional healer for joint pain or stiffness/other joint condition"
      TRDCND41   =
"Saw a traditional healer for knee problems (not arthritis, not joint injury)"
      TRDCND42   ="Saw a traditional healer for liver problem"
      TRDCND43   =
"Saw a traditional healer for lung/breathing problem (not already listed)"
      TRDCND44   ="Saw a traditional healer for lupus"
      TRDCND45   ="Saw a traditional healer for mania or psychosis"
      TRDCND46   =
"Saw a traditional healer for memory loss or loss of other cognitive function"
      TRDCND47   ="Saw a traditional healer for menopause"
      TRDCND48   ="Saw a traditional healer for menstrual problems"
      TRDCND49   ="Saw a traditional healer for mental retardation"
      TRDCND50   =
"Saw a traditional healer for missing limbs (fingers, toes or digits), amputee"
      TRDCND51   ="Saw a traditional healer for osteoporosis, tendinitis"
      TRDCND52   ="Saw a traditional healer for other developmental problem"
      TRDCND53   ="Saw a traditional healer for other injury"
      TRDCND54   =
"Saw a traditional healer for other nerve damage, including carpal tunnel syndro
me"
      TRDCND55   ="Saw a traditional healer for phobia or fears"
      TRDCND56   =
"Saw a traditional healer for polio (myelitis), paralysis, para/quadriplegia"
      TRDCND57   ="Saw a traditional healer for poor circulation in legs"
      TRDCND58   ="Saw a traditional healer for prostate trouble or impotence"
      TRDCND59   ="Saw a traditional healer for regular headaches"
      TRDCND60   ="Saw a traditional healer for rheumatoid arthritis"
      TRDCND61   ="Saw a traditional healer for schizophrenia"
      TRDCND62   ="Saw a traditional healer for seizures"
      TRDCND63   ="Saw a traditional healer for senility"
      TRDCND64   ="Saw a traditional healer for sinusitis"
      TRDCND65   ="Saw a traditional healer for skin problems"
      TRDCND66   ="Saw a traditional healer for sprain or strain"
      TRDCND67   ="Saw a traditional healer for stroke"
      TRDCND68   =
"Saw a traditional healer for substance abuse, other than alcohol or tobacco"
      TRDCND69   ="Saw a traditional healer for other (specify)"
      TRDCND70   ="Saw a traditional healer for other (specify)"
      TRDCND71   ="Saw a traditional healer for ulcer"
      TRDCND72   ="Saw a traditional healer for urinary problem"
      TRDCND73   ="Saw a traditional healer for varicose veins, hemorrhoids"
      TRDCND74   ="Saw a traditional healer for vision problem"
      TRDCND75   ="Saw a traditional healer for weak or failing kidneys"
      TRDCND76   ="Saw a traditional healer for weight problem"
      TRDCND77   ="Saw a traditional healer for back pain or problem"
      TRDCND78   ="Saw a traditional healer for head or chest cold"
      TRDCND79   ="Saw a traditional healer for neck pain or problem"
      TRDCND80   ="Saw a traditional healer for severe headache or migraine"
      TRDCND81   ="Saw a traditional healer for stomach or intestinal illness"
      TRDCND82   ="Saw a traditional healer for other (specify)"
      TRDCND83   ="Saw a traditional healer for anemia and other blood disorders
"
      TRDCND84   ="Saw a traditional healer for other allergies"
      TRDCND85   =
"Saw a traditional healer for other infectious diseases and problems of the immu
ne system"
      TRDCND86   ="Saw a traditional healer for other musculoskeletal"
      TRDCND87   ="Saw a traditional healer for stress"
      TRDCONCT   ="Condition count for traditional healers"
      TRD_SPEC   ="Saw a traditional healer for other (specify)"
      TRD_CONM   ="Condition for which a traditional healer was seen the most"
      TRDMED00   =
"Received no conventional medical treatment for condition for which a traditiona
l healer was seen the most"
      TRDMED01   =
"Received prescription medications for condition for which a traditional healer 
was seen the most"
      TRDMED02   =
"Received over-the-counter medications for condition for which a traditional hea
ler was seen the most"
      TRDMED03   =
"Received surgery for condition for which a traditional healer was seen the most
"
      TRDMED04   =
"Received physical therapy for condition for which a traditional healer was seen
 the most"
      TRDMED05   =
"Received mental health counseling for condition for which a traditional healer 
was seen the most"
      TRD_TIM1   =
"Time received prescription medications for condition for which a traditional he
aler was seen the most"
      TRD_TIM2   =
"Time received over-the-counter medications for condition for which a traditiona
l healer was seen the most"
      TRD_TIM3   =
"Time received surgery for condition for which a traditional healer was seen the
 most"
      TRD_TIM4   =
"Time received physical therapy for condition for which a traditional healer was
 seen the most"
      TRD_TIM5   =
"Time received mental health counseling for condition for which a traditional he
aler was seen the most"
      TRD_ENG    ="Saw a traditional healer to improve or enhance energy"
      TRD_WEL    =
"Saw a traditional healer for general wellness or general disease prevention"
      TRD_IMM    =
"Saw a traditional healer to improve or enhance immune function"
      TRD_NOHP   =
"Saw a traditional healer because medical treatments did not help"
      TRD_EXPS   =
"Saw a traditional healer because medical treatments were too expensive"
      TRD_SUGG   =
"Saw a traditional healer because it was recommended by a health care provider"
      TRD_FFC    =
"Saw a traditional healer because it was recommended by family, friends, or co-w
orkers"
      TRDDISC    =
"Let conventional medical professional know about use of traditional healer"
      TRDPRF1    =
"Let medical doctor (including specialists) know about use of traditional healer
"
      TRDPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of traditional healer"
      TRDPRF3    =
"Let nurse practitioner/physician assistant know about use of traditional healer
"
      TRDPRF4    ="Let psychiatrist know about use of traditional healer"
      TRDPRF5    =
"Let dentist (including specialists) know about use of traditional healer"
      TRDPRF6    =
"Let psychologist/social worker know about use of traditional healer"
      TRDPRF7    ="Let pharmacist know about use of traditional healer"
      FELD_EVE   ="Ever saw a practitioner for Feldenkreis"
      ALEX_EVE   ="Ever saw a practitioner for Alexander Technique"
      PIL_EVE    ="Ever saw a practitioner for Pilates"
      TRAG_EVE   =
"Ever saw a  practitioner for Trager Psychophysical Integration"
      FELD_USE   ="Saw a practitioner for Feldenkreis, past 12 months"
      ALEX_USE   ="Saw a practitioner for Alexander Technique, past 12 months"
      PIL_USE    ="Saw a practitioner for Pilates, past 12 months"
      TRAG_USE   =
"Saw a practitioner for Trager Psychophysical Intergration, past 12 months"
      MOVUSECT   ="Number of movement techniques used"
      MOV_MOST   ="Movement technique saw practitioner for the most"
      MOV_NUM    =
"Number of times saw a practitioner or teacher for movement technique"
      MOV_PAY    =
"Amount paid per visit to practitioner or teacher for movement technique"
      MOV_TRET   =
"Used a movement technique for a specific health problem or condition"
      MOVCND01   ="Used a movement technique for acid reflux or heartburn"
      MOVCND02   ="Used a movement technique for angina"
      MOVCND03   ="Used a movement technique for anxiety"
      MOVCND04   ="Used a movement technique for asthma"
      MOVCND05   ="Used a movement technique for arthritis"
      MOVCND06   =
"Used a movement technique for Attention Deficit Disorder/Hyperactivity"
      MOVCND07   ="Used a movement technique for autism"
      MOVCND08   ="Used a movement technique for benign tumors, cysts"
      MOVCND09   ="Used a movement technique] for bipolar disorder"
      MOVCND10   ="Used a movement technique for birth defect"
      MOVCND11   ="Used a movement technique for cancer"
      MOVCND12   ="Used a movement technique for cholesterol"
      MOVCND13   ="Used a movement technique for chronic bronchitis"
      MOVCND14   =
"Used a movement technique for circulation problems (other than in the legs)"
      MOVCND15   =
"Used a movement technique for constipation severe enough to require medication"
      MOVCND16   ="Used a movement technique for coronary heart disease"
      MOVCND17   =
"Used a movement technique for dementia, including Alzheimer’s Disease"
      MOVCND18   ="Used a movement technique for dental pain"
      MOVCND19   ="Used a movement technique for depression"
      MOVCND20   ="Used a movement technique for diabetes"
      MOVCND21   ="Used a movement technique for emphysema"
      MOVCND22   =
"Used a movement technique for excessive sleepiness during the day"
      MOVCND23   =
"Used a movement technique for excessive use of alcohol or tobacco"
      MOVCND24   ="Used a movement technique for fibromyalgia"
      MOVCND25   ="Used a movement technique for fracture, bone/joint injury"
      MOVCND26   ="Used a movement technique for gout"
      MOVCND27   ="Used a movement technique for gum disease"
      MOVCND28   ="Used a movement technique for gynecologic problem"
      MOVCND29   ="Used a movement technique for hay fever"
      MOVCND30   ="Used a movement technique for hearing problem"
      MOVCND31   ="Used a movement technique for heart attack"
      MOVCND32   =
"Used a movement technique for other heart condition or disease"
      MOVCND33   ="Used a movement technique for hernia"
      MOVCND34   ="Used a movement technique for hypertension"
      MOVCND35   ="Used a movement technique for inflammatory bowel disease"
      MOVCND36   ="Used a movement technique for influenza or pneumonia"
      MOVCND37   ="Used a movement technique for insomnia or trouble sleeping"
      MOVCND38   ="Used a movement technique for irritable bowel"
      MOVCND39   ="Used a movement technique for jaw pain"
      MOVCND40   =
"Used a movement technique for joint pain or stiffness/other joint condition"
      MOVCND41   =
"Used a movement technique for knee problems (not arthritis, not joint injury)"
      MOVCND42   ="Used a movement technique for liver problem"
      MOVCND43   =
"Used a movement technique for lung/breathing problem (not already listed)"
      MOVCND44   ="Used a movement technique for lupus"
      MOVCND45   ="Used a movement technique for mania or psychosis"
      MOVCND46   =
"Used a movement technique for memory loss or loss of other cognitive function"
      MOVCND47   ="Used a movement technique for menopause"
      MOVCND48   ="Used a movement technique for menstrual problems"
      MOVCND49   ="Used a movement technique for mental retardation"
      MOVCND50   =
"Used a movement technique for missing limbs (fingers, toes or digits), amputee"
      MOVCND51   ="Used a movement technique for osteoporosis, tendinitis"
      MOVCND52   ="Used a movement technique for other developmental problem"
      MOVCND53   ="Used a movement technique for other injury"
      MOVCND54   =
"Used a movement technique for other nerve damage, including carpal tunnel syndr
ome"
      MOVCND55   ="Used a movement technique for phobia or fears"
      MOVCND56   =
"Used a movement technique for polio (myelitis), paralysis, para/quadriplegia"
      MOVCND57   ="Used a movement technique for poor circulation in legs"
      MOVCND58   ="Used a movement technique for prostate trouble or impotence"
      MOVCND59   ="Used a movement technique for regular headaches"
      MOVCND60   ="Used a movement technique for rheumatoid arthritis"
      MOVCND61   ="Used a movement technique for schizophrenia"
      MOVCND62   ="Used a movement technique for seizures"
      MOVCND63   ="Used a movement technique for senility"
      MOVCND64   ="Used a movement technique for sinusitis"
      MOVCND65   ="Used a movement technique for skin problems"
      MOVCND66   ="Used a movement technique for sprain or strain"
      MOVCND67   ="Used a movement technique for stroke"
      MOVCND68   =
"Used a movement technique for substance abuse, other than alcohol or tobacco"
      MOVCND69   ="Used a movement technique for other (specify)"
      MOVCND70   ="Used a movement technique for other (specify)"
      MOVCND71   ="Used a movement technique for ulcer"
      MOVCND72   ="Used a movement technique for urinary problem"
      MOVCND73   ="Used a movement technique for varicose veins, hemorrhoids"
      MOVCND74   ="Used a movement technique for vision problem"
      MOVCND75   ="Used a movement technique for weak or failing kidneys"
      MOVCND76   ="Used a movement technique for weight problem"
      MOVCND77   ="Used a movement technique for back pain or problem"
      MOVCND78   ="Used a movement technique for head or chest cold"
      MOVCND79   ="Used a movement technique for neck pain or problem"
      MOVCND80   ="Used a movement technique for severe headache or migraine"
      MOVCND81   ="Used a movement technique for stomach or intestinal illness"
      MOVCND82   ="Used a movement technique for other (specify)"
      MOVCND83   =
"Used a movement technique for anemia and other blood disorders"
      MOVCND84   ="Used a movement technique for other allergies"
      MOVCND85   =
"Used a movement technique for other infectious diseases and problems of the imm
une system"
      MOVCND86   ="Used a movement technique for other musculoskeletal"
      MOVCND87   ="Used a movement technique for stress"
      MOVCONCT   ="Condition count for movement techniques"
      MOV_SPEC   ="Used a movement technique for other (specify)"
      MOV_CONM   ="Condition for which a movement technique was used the most"
      MOVMED00   =
"Received no conventional medical treatment for condition for which a movement t
echnique was used the most"
      MOVMED01   =
"Received prescription medications for condition for which a movement technique 
was used the most"
      MOVMED02   =
"Received over-the-counter medications for condition for which a movement techni
que was used the most"
      MOVMED03   =
"Received surgery for condition for which a movement technique was used the most
"
      MOVMED04   =
"Received physical therapy for condition for which a movement technique was used
 the most"
      MOVMED05   =
"Received mental health counseling for condition for which a movement technique 
was used the most"
      MOV_TIM1   =
"Time received prescription medications for condition for which a movement techn
ique was used the most"
      MOV_TIM2   =
"Time received over-the-counter medications for condition for which a movement t
echnique was used the most"
      MOV_TIM3   =
"Time received surgery for condition for which a movement technique was used the
 most"
      MOV_TIM4   =
"Time received physical therapy for condition for which a movement technique was
 used the most"
      MOV_TIM5   =
"Time received mental health counseling for condition for which a movement techn
ique was used the most"
      MOV_ENG    ="Used a movement technique to improve or enhance energy"
      MOV_WEL    =
"Used a movement technique for general wellness or general disease prevention"
      MOV_IMM    =
"Used a movement technique to improve or enhance immune function"
      MOV_NOHP   =
"Used a movement technique because medical treatments did not help"
      MOV_EXPS   =
"Used a movement technique because medical treatments were too expensive"
      MOV_SUGG   =
"Used a movement technique because it was recommended by a health care provider"
      MOV_FFC    =
"Used a movement technique because it was recommended by family, friends, or co-
workers"
      MOVDISC    =
"Let conventional medical professional know about use of movement technique"
      MOVPRF1    =
"Let medical doctor (including specialists) know about use of movement technique
"
      MOVPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of movement technique"
      MOVPRF3    =
"Let nurse practitioner/physician assistant know about use of movement technique
"
      MOVPRF4    ="Let psychiatrist know about use of movement technique"
      MOVPRF5    =
"Let dentist (including specialists) know about use of movement technique"
      MOVPRF6    =
"Let psychologist/social worker know about use of movement technique"
      MOVPRF7    ="Let pharmacist know about use of movement technique"
      AHB_EVER   ="Ever taken any herbal supplements"
      AHB_USEM   ="Taken herbal supplements, past 12 months"
      AHB_MO     ="Taken herbal supplements, past 30 days"
      AHBTAK01   ="Took combination herb pill"
      AHBTAK02   ="Took androstenedione"
      AHBTAK03   ="Took black cohosh"
      AHBTAK04   ="Took carnitine"
      AHBTAK05   ="Took chasteberry"
      AHBTAK06   ="Took chondroitin"
      AHBTAK07   ="Took coenzyme Q-10"
      AHBTAK08   ="Took comfrey"
      AHBTAK09   ="Took conjugated linolenic acid (CLA)"
      AHBTAK10   ="Took cranberry (pills, gelcaps)"
      AHBTAK11   ="Took creatine"
      AHBTAK12   ="Took DHEA"
      AHBTAK13   ="Took echinacea"
      AHBTAK14   ="Took ephedra"
      AHBTAK15   ="Took evening primrose"
      AHBTAK16   ="Took feverfew"
      AHBTAK17   ="Took fiber or psyllium (pills or powder)"
      AHBTAK18   ="Took fish oil/omega 3/DHA"
      AHBTAK19   ="Took flaxseed oil or pills"
      AHBTAK20   ="Took garlic supplements (pills, gelcaps)"
      AHBTAK21   ="Took ginger pills/gelcaps"
      AHBTAK22   ="Took ginkgo biloba"
      AHBTAK23   ="Took ginseng"
      AHBTAK24   ="Took glucosamine"
      AHBTAK25   ="Took goldenseal"
      AHBTAK26   ="Took guarana"
      AHBTAK27   ="Took grape seed extract"
      AHBTAK28   ="Took green tea pills (not brewed tea)"
      AHBTAK29   ="Took EGCG (pills)"
      AHBTAK30   ="Took hawthorn"
      AHBTAK31   ="Took horny goat weed"
      AHBTAK32   ="Took kava kava"
      AHBTAK33   ="Took lecithin"
      AHBTAK34   ="Took lutein"
      AHBTAK35   ="Took lycopene"
      AHBTAK36   ="Took melatonin"
      AHBTAK37   ="Took MSM (methylsulfonylmethane)"
      AHBTAK38   ="Took milk thistle"
      AHBTAK39   ="Took prebiotics or probiotics"
      AHBTAK40   ="Took SAM-e"
      AHBTAK41   ="Took saw palmetto"
      AHBTAK42   ="Took senna"
      AHBTAK43   ="Took soy supplements/isofavones"
      AHBTAK44   ="Took St. John's Wort"
      AHBTAK45   ="Took valerian"
      AHBTAKCT   ="Number of herbal supplements taken"
      AHB_COMN   ="Number of combination herb pills taken"
      AHBCM102   =
"Herbs included in the first combination herb pill - Androstenedione"
      AHBCM103   =
"Herbs included in the first combination herb pill - Black cohosh"
      AHBCM104   ="Herbs included in the first combination herb pill - Carnitine
"
      AHBCM105   =
"Herbs included in the first combination herb pill - Chasteberry"
      AHBCM106   =
"Herbs included in the first combination herb pill - Chondroitin"
      AHBCM107   =
"Herbs included in the first combination herb pill - Coenzyme Q-10"
      AHBCM108   ="Herbs included in the first combination herb pill - Comfrey"
      AHBCM109   =
"Herbs included in the first combination herb pill - Conjugated Linolenic Acid (
CLA)"
      AHBCM110   =
"Herbs included in the first combination herb pill - Cranberry (pills, gelcaps)"
      AHBCM111   ="Herbs included in the first combination herb pill - Creatine"
      AHBCM112   ="Herbs included in the first combination herb pill - DHEA"
      AHBCM113   ="Herbs included in the first combination herb pill - Echinacea
"
      AHBCM114   ="Herbs included in the first combination herb pill - Ephedra"
      AHBCM115   =
"Herbs included in the first combination herb pill - Evening primrose"
      AHBCM116   ="Herbs included in the first combination herb pill - Feverfew"
      AHBCM117   =
"Herbs included in the first combination herb pill - Fiber or Psyllium (pills or
 powder)"
      AHBCM118   =
"Herbs included in the first combination herb pill - Fish oil/Omega 3/DHA fatty 
acid supplements"
      AHBCM119   =
"Herbs included in the first combination herb pill - Flaxseed Oil or Pills"
      AHBCM120   =
"Herbs included in the first combination herb pill - Garlic supplements (pills, 
gelcaps)"
      AHBCM121   =
"Herbs included in the first combination herb pill - Ginger pills/gelcaps"
      AHBCM122   =
"Herbs included in the first combination herb pill - Ginkgo biloba"
      AHBCM123   ="Herbs included in the first combination herb pill - Ginseng"
      AHBCM124   =
"Herbs included in the first combination herb pill - Glucosamine"
      AHBCM125   =
"Herbs included in the first combination herb pill - Goldenseal"
      AHBCM126   ="Herbs included in the first combination herb pill - Guarana"
      AHBCM127   =
"Herbs included in the first combination herb pill - Grape Seed Extract"
      AHBCM128   =
"Herbs included in the first combination herb pill - Green tea pills (not brewed
 tea)"
      AHBCM129   =
"Herbs included in the first combination herb pill - EGCG (pills)"
      AHBCM130   ="Herbs included in the first combination herb pill - Hawthorn"
      AHBCM131   =
"Herbs included in the first combination herb pill - Horny Goat Weed"
      AHBCM132   ="Herbs included in the first combination herb pill - Kava kava
"
      AHBCM133   ="Herbs included in the first combination herb pill - Lecithin"
      AHBCM134   ="Herbs included in the first combination herb pill - Lutein"
      AHBCM135   ="Herbs included in the first combination herb pill - Lycopene"
      AHBCM136   ="Herbs included in the first combination herb pill - Melatonin
"
      AHBCM137   =
"Herbs included in the first combination herb pill - MSM (Methylsulfonylmethane)
"
      AHBCM138   =
"Herbs included in the first combination herb pill - Milk thistle"
      AHBCM139   =
"Herbs included in the first combination herb pill - Prebiotics or Probiotics"
      AHBCM140   ="Herbs included in the first combination herb pill - SAM-e"
      AHBCM141   =
"Herbs included in the first combination herb pill - Saw palmetto"
      AHBCM142   ="Herbs included in the first combination herb pill - Senna"
      AHBCM143   =
"Herbs included in the first combination herb pill - Soy supplements/isofavones"
      AHBCM144   =
"Herbs included in the first combination herb pill - St. John's Wort"
      AHBCM145   ="Herbs included in the first combination herb pill - Valerian"
      AHBCM146   ="Herbs included in the first combination herb pill - Other"
      AHBCM202   =
"Herbs included in the second combination herb pill - Androstenedione"
      AHBCM203   =
"Herbs included in the second combination herb pill - Black cohosh"
      AHBCM204   =
"Herbs included in the second combination herb pill - Carnitine"
      AHBCM205   =
"Herbs included in the second combination herb pill - Chasteberry"
      AHBCM206   =
"Herbs included in the second combination herb pill - Chondroitin"
      AHBCM207   =
"Herbs included in the second combination herb pill - Coenzyme Q-10"
      AHBCM208   ="Herbs included in the second combination herb pill - Comfrey"
      AHBCM209   =
"Herbs included in the second combination herb pill - Conjugated Linolenic Acid 
(CLA)"
      AHBCM210   =
"Herbs included in the second combination herb pill - Cranberry (pills, gelcaps)
"
      AHBCM211   ="Herbs included in the second combination herb pill - Creatine
"
      AHBCM212   ="Herbs included in the second combination herb pill - DHEA"
      AHBCM213   =
"Herbs included in the second combination herb pill - Echinacea"
      AHBCM214   ="Herbs included in the second combination herb pill - Ephedra"
      AHBCM215   =
"Herbs included in the second combination herb pill - Evening primrose"
      AHBCM216   ="Herbs included in the second combination herb pill - Feverfew
"
      AHBCM217   =
"Herbs included in the second combination herb pill - Fiber or Psyllium (pills o
r powder)"
      AHBCM218   =
"Herbs included in the second combination herb pill - Fish oil/Omega 3/DHA fatty
 acid supplements"
      AHBCM219   =
"Herbs included in the second combination herb pill - Flaxseed Oil or Pills"
      AHBCM220   =
"Herbs included in the second combination herb pill - Garlic supplements (pills,
 gelcaps)"
      AHBCM221   =
"Herbs included in the second combination herb pill - Ginger pills/gelcaps"
      AHBCM222   =
"Herbs included in the second combination herb pill - Ginkgo biloba"
      AHBCM223   ="Herbs included in the second combination herb pill - Ginseng"
      AHBCM224   =
"Herbs included in the second combination herb pill - Glucosamine"
      AHBCM225   =
"Herbs included in the second combination herb pill - Goldenseal"
      AHBCM226   ="Herbs included in the second combination herb pill - Guarana"
      AHBCM227   =
"Herbs included in the second combination herb pill - Grape Seed Extract"
      AHBCM228   =
"Herbs included in the second combination herb pill - Green tea pills (not brewe
d tea)"
      AHBCM229   =
"Herbs included in the second combination herb pill - EGCG (pills)"
      AHBCM230   ="Herbs included in the second combination herb pill - Hawthorn
"
      AHBCM231   =
"Herbs included in the second combination herb pill - Horny Goat Weed"
      AHBCM232   =
"Herbs included in the second combination herb pill - Kava kava"
      AHBCM233   ="Herbs included in the second combination herb pill - Lecithin
"
      AHBCM234   ="Herbs included in the second combination herb pill - Lutein"
      AHBCM235   ="Herbs included in the second combination herb pill - Lycopene
"
      AHBCM236   =
"Herbs included in the second combination herb pill - Melatonin"
      AHBCM237   =
"Herbs included in the second combination herb pill - MSM (Methylsulfonylmethane
)"
      AHBCM238   =
"Herbs included in the second combination herb pill - Milk thistle"
      AHBCM239   =
"Herbs included in the second combination herb pill - Prebiotics or Probiotics"
      AHBCM240   ="Herbs included in the second combination herb pill - SAM-e"
      AHBCM241   =
"Herbs included in the second combination herb pill - Saw palmetto"
      AHBCM242   ="Herbs included in the second combination herb pill - Senna"
      AHBCM243   =
"Herbs included in the second combination herb pill - Soy supplements/isofavones
"
      AHBCM244   =
"Herbs included in the second combination herb pill - St. John's Wort"
      AHBCM245   ="Herbs included in the second combination herb pill - Valerian
"
      AHBCM246   ="Herbs included in the second combination herb pill - Other"
      AHBTOP2A   ="First herbal supplement taken most"
      AHBTOP2B   ="Second herbal supplement taken most"
      AHB_R1A    ="Took first herbal supplement for general health or wellness"
      AHB_R2A    =
"Took first herbal supplement because prescription or over-the-counter drugs are
 too expensive"
      AHB_R3A    =
"Took first herbal supplement to treat or cure a specific disease or health prob
lem"
      AHB_R4A    =
"Took first herbal supplement to prevent a specific disease or health problem"
      AHB_R5A    ="Took first herbal supplement to improve physical performance"
      AHB_R6A    ="Took first herbal supplement to improve sports performance"
      AHB_R7A    =
"Took first herbal supplement to improve immune system function"
      AHB_R8A    ="Took first herbal supplement to improve sexual performance"
      AHB_R9A    =
"Took first herbal supplement to improve mental ability or memory"
      AHB_R10A   =
"Took first herbal supplement because medical treatments did not help"
      AHB_R11A   =
"Took first herbal supplement because medical treatments were too expensive"
      AHB_R12A   =
"Took first herbal supplement because it was recommended by a care health provid
er"
      AHB_R13A   =
"Took first herbal supplement because it was recommended by family, friends, or 
co-workers"
      AHCTRA01   =
"Took first herbal supplement to treat or cure acid reflux or heartburn"
      AHCTRA02   ="Took first herbal supplement to treat or cure angina"
      AHCTRA03   ="Took first herbal supplement to treat or cure anxiety"
      AHCTRA04   ="Took first herbal supplement to treat or cure asthma"
      AHCTRA05   ="Took first herbal supplement to treat or cure athritis"
      AHCTRA06   =
"Took first herbal supplement to treat or cure Attention Deficit Disorder/Hypera
ctivity"
      AHCTRA07   ="Took first herbal supplement to treat or cure autism"
      AHCTRA08   =
"Took first herbal supplement to treat or cure benign tumors, cysts"
      AHCTRA09   =
"Took first herbal supplement to treat or cure bipolar disorder"
      AHCTRA10   ="Took first herbal supplement to treat or cure birth defect"
      AHCTRA11   ="Took first herbal supplement to treat or cure cancer"
      AHCTRA12   ="Took first herbal supplement to treat or cure cholesterol"
      AHCTRA13   =
"Took first herbal supplement to treat or cure chronic bronchitis"
      AHCTRA14   =
"Took first herbal supplement to treat or cure circulation problems (other than 
in the legs)"
      AHCTRA15   =
"Took first herbal supplement to treat or cure constipation severe enough to req
uire medication"
      AHCTRA16   =
"Took first herbal supplement to treat or cure coronary heart disease"
      AHCTRA17   =
"Took first herbal supplement to treat or cure dementia, including Alzheimer's D
isease"
      AHCTRA18   ="Took first herbal supplement to treat or cure dental pain"
      AHCTRA19   ="Took first herbal supplement to treat or cure depression"
      AHCTRA20   ="Took first herbal supplement to treat or cure diabetes"
      AHCTRA21   ="Took first herbal supplement to treat or cure emphysema"
      AHCTRA22   =
"Took first herbal supplement to treat or cure excessive sleepiness during the d
ay"
      AHCTRA23   =
"Took first herbal supplement to treat or cure excessive use of alcohol or tobac
co"
      AHCTRA24   ="Took first herbal supplement to treat or cure fibromyalgia"
      AHCTRA25   =
"Took first herbal supplement to treat or cure fracture, bone/joint injury"
      AHCTRA26   ="Took first herbal supplement to treat or cure gout"
      AHCTRA27   ="Took first herbal supplement to treat or cure gum disease"
      AHCTRA28   =
"Took first herbal supplement to treat or cure gynecologic problem"
      AHCTRA29   ="Took first herbal supplement to treat or cure hay fever"
      AHCTRA30   ="Took first herbal supplement to treat or cure hearing problem
"
      AHCTRA31   ="Took first herbal supplement to treat or cure heart attack"
      AHCTRA32   =
"Took first herbal supplement to treat or cure other heart condition or disease"
      AHCTRA33   ="Took first herbal supplement to treat or cure hernia"
      AHCTRA34   ="Took first herbal supplement to treat or cure hypertention"
      AHCTRA35   =
"Took first herbal supplement to treat or cure inflammatory bowel disease"
      AHCTRA36   =
"Took first herbal supplement to treat or cure influenza or pneumonia"
      AHCTRA37   =
"Took first herbal supplement to treat or cure insomnia or trouble sleeping"
      AHCTRA38   ="Took first herbal supplement to treat or cure irritable bowel
"
      AHCTRA39   ="Took first herbal supplement to treat or cure jaw pain"
      AHCTRA40   =
"Took first herbal supplement to treat or cure joint pain or stiffness/other joi
nt condition"
      AHCTRA41   =
"Took first herbal supplement to treat or cure knee problems (not arthritis/not 
joint injury)"
      AHCTRA42   ="Took first herbal supplement to treat or cure liver problem"
      AHCTRA43   =
"Took first herbal supplement to treat or cure lung/breathing problem (not alrea
dy listed)"
      AHCTRA44   ="Took first herbal supplement to treat or cure lupus"
      AHCTRA45   =
"Took first herbal supplement to treat or cure mania or psychosis"
      AHCTRA46   =
"Took first herbal supplement to treat or cure memory loss or loss of other cogn
itive function"
      AHCTRA47   ="Took first herbal supplement to treat or cure menopause"
      AHCTRA48   =
"Took first herbal supplement to treat or cure menstrual problems"
      AHCTRA49   =
"Took first herbal supplement to treat or cure mental retardation"
      AHCTRA50   =
"Took first herbal supplement to treat or cure missing limbs (fingers, toes, or 
digits), amputee"
      AHCTRA51   =
"Took first herbal supplement to treat or cure osteoporosis, tendinitis"
      AHCTRA52   =
"Took first herbal supplement to treat or cure other developmental problem"
      AHCTRA53   ="Took first herbal supplement to treat or cure other injury"
      AHCTRA54   =
"Took first herbal supplement to treat or cure other nerve damage, including car
pal tunnel syndrome"
      AHCTRA55   ="Took first herbal supplement to treat or cure phobia or fears
"
      AHCTRA56   =
"Took first herbal supplement to treat or cure polio (myelitis), paralysis, para
/quadraplegia"
      AHCTRA57   =
"Took first herbal supplement to treat or cure poor circulation in legs"
      AHCTRA58   =
"Took first herbal supplement to treat or cure prostate trouble or impotence"
      AHCTRA59   =
"Took first herbal supplement to treat or cure regular headaches"
      AHCTRA60   =
"Took first herbal supplement to treat or cure rheumatoid arthritis"
      AHCTRA61   ="Took first herbal supplement to treat or cure schizophrenia"
      AHCTRA62   ="Took first herbal supplement to treat or cure seizures"
      AHCTRA63   ="Took first herbal supplement to treat or cure senility"
      AHCTRA64   ="Took first herbal supplement to treat or cure sinusitis"
      AHCTRA65   ="Took first herbal supplement to treat or cure skin problems"
      AHCTRA66   =
"Took first herbal supplement to treat or cure sprain or strain"
      AHCTRA67   ="Took first herbal supplement to treat or cure stroke"
      AHCTRA68   =
"Took first herbal supplement to treat or cure substance abuse, other than alcoh
ol or tobacco"
      AHCTRA69   ="Took first herbal supplement to treat or cure other (specify)
"
      AHCTRA70   ="Took first herbal supplement to treat or cure other (specify)
"
      AHCTRA71   ="Took first herbal supplement to treat or cure ulcer"
      AHCTRA72   ="Took first herbal supplement to treat or cure urinary problem
"
      AHCTRA73   =
"Took first herbal supplement to treat or cure varicose veins, hemorrhoids"
      AHCTRA74   ="Took first herbal supplement to treat or cure vision problem"
      AHCTRA75   =
"Took first herbal supplement to treat or cure weak or failing kidneys"
      AHCTRA76   ="Took first herbal supplement to treat or cure weight problem"
      AHCTRA77   =
"Took first herbal supplement to treat or cure back pain or problem"
      AHCTRA78   =
"Took first herbal supplement to treat or cure head or chest cold"
      AHCTRA79   =
"Took first herbal supplement to treat or cure neck pain or problem"
      AHCTRA80   =
"Took first herbal supplement to treat or cure severe headache or migraine"
      AHCTRA81   =
"Took first herbal supplement to treat or cure stomach or intestinal illness"
      AHCTRA82   ="Took first herbal supplement to treat or cure other (specify)
"
      AHCTRA83   =
"Took first herbal supplement to treat or cure anemia and other blood disorders"
      AHCTRA84   ="Took first herbal supplement to treat or cure other allergies
"
      AHCTRA85   =
"Took first herbal supplement to treat or cure other infectious diseases and pro
blems of the immune system"
      AHCTRA86   =
"Took first herbal supplement to treat or cure other musculoskeletal"
      AHCTRA87   ="Took first herbal supplement to treat or cure stress"
      AHBCTACT   =
"Condition count for first herbal supplement used to treat a condition"
      AHB_SPT1   ="Took first herbal supplement to treat or cure other (specify)
"
      AHB_CONA   =
"Condition for which the first herbal supplement was taken to treat or cure the 
most"
      AHBMEDA0   =
"Received no conventional medical treatment for condition for which the first he
rbal supplement was used to treat or cure the most"
      AHBMEDA1   =
"Received prescription medications for condition for which the first herbal supp
lement was used to treat or cure the most"
      AHBMEDA2   =
"Received over-the-counter medications for condition for which the first herbal 
supplement was used to treat or cure the most"
      AHBMEDA3   =
"Received surgery for condition for which the first herbal supplement was used t
o treat or cure the most"
      AHBMEDA4   =
"Received physical therapy for condition for which the first herbal supplement w
as used to treat or cure the most"
      AHBMEDA5   =
"Received mental health counseling for condition for which the first herbal supp
lement was used to treat or cure the most"
      AHB_TM1A   =
"Time received prescription medications for the condition they used the first he
rbal supplement to treat or cure the most"
      AHB_TM2A   =
"Time received over-the-counter medications for the condition they used the firs
t herbal supplement to treat or cure the most"
      AHB_TM3A   =
"Time received surgery for the condition they used the first herbal supplement t
o treat or cure the most"
      AHB_TM4A   =
"Time received physical therapy for the condition they used the first herbal sup
plement to treat or cure the most"
      AHB_TM5A   =
"Time received mental health counseling for the condition they used the first he
rbal supplement to treat or cure the most"
      AHCNPA01   =
"Took first herbal supplement to prevent acid reflux or heartburn"
      AHCNPA02   ="Took first herbal supplement to prevent angina"
      AHCNPA03   ="Took first herbal supplement to prevent anxiety"
      AHCNPA04   ="Took first herbal supplement to prevent asthma"
      AHCNPA05   ="Took first herbal supplement to prevent athritis"
      AHCNPA06   =
"Took first herbal supplement to prevent Attention Deficit Disorder/Hyperactivit
y"
      AHCNPA07   ="Took first herbal supplement to prevent autism"
      AHCNPA08   ="Took first herbal supplement to prevent benign tumors, cysts"
      AHCNPA09   ="Took first herbal supplement to prevent bipolar disorder"
      AHCNPA10   ="Took first herbal supplement to prevent birth defect"
      AHCNPA11   ="Took first herbal supplement to prevent cancer"
      AHCNPA12   ="Took first herbal supplement to prevent cholesterol"
      AHCNPA13   ="Took first herbal supplement to prevent chronic bronchitis"
      AHCNPA14   =
"Took first herbal supplement to prevent circulation problems (other than in the
 legs)"
      AHCNPA15   =
"Took first herbal supplement to prevent constipation severe enough to require m
edication"
      AHCNPA16   =
"Took first herbal supplement to prevent coronary heart disease"
      AHCNPA17   =
"Took first herbal supplement to prevent dementia, including Alzheimer's disease
"
      AHCNPA18   ="Took first herbal supplement to prevent dental pain"
      AHCNPA19   ="Took first herbal supplement to prevent depression"
      AHCNPA20   ="Took first herbal supplement to prevent diabetes"
      AHCNPA21   ="Took first herbal supplement to prevent emphysema"
      AHCNPA22   =
"Took first herbal supplement to prevent excessive sleepiness during the day"
      AHCNPA23   =
"Took first herbal supplement to prevent excessive use of alcohol or tobacco"
      AHCNPA24   ="Took first herbal supplement to prevent fibromyalgia"
      AHCNPA25   =
"Took first herbal supplement to prevent fracture, bone/joint injury"
      AHCNPA26   ="Took first herbal supplement to prevent gout"
      AHCNPA27   ="Took first herbal supplement to prevent gum disease"
      AHCNPA28   ="Took first herbal supplement to prevent gynecologic problem"
      AHCNPA29   ="Took first herbal supplement to prevent hay fever"
      AHCNPA30   ="Took first herbal supplement to prevent hearing problem"
      AHCNPA31   ="Took first herbal supplement to prevent heart attack"
      AHCNPA32   =
"Took first herbal supplement to prevent other heart condition or disease"
      AHCNPA33   ="Took first herbal supplement to prevent hernia"
      AHCNPA34   ="Took first herbal supplement to prevent hypertension"
      AHCNPA35   =
"Took first herbal supplement to prevent inflammatory bowel disease"
      AHCNPA36   =
"Took first herbal supplement to prevent influenza or pneumonia"
      AHCNPA37   =
"Took first herbal supplement to prevent insomnia or trouble sleeping"
      AHCNPA38   ="Took first herbal supplement to prevent irritable bowel"
      AHCNPA39   ="Took first herbal supplement to prevent jaw pain"
      AHCNPA40   =
"Took first herbal supplement to prevent joint pain or stiffness/other joint con
dition"
      AHCNPA41   =
"Took first herbal supplement to prevent knee problems (not arthritis/not joint 
injury)"
      AHCNPA42   ="Took first herbal supplement to prevent liver problem"
      AHCNPA43   =
"Took first herbal supplement to prevent lung/breathing problem (not already lis
ted)"
      AHCNPA44   ="Took first herbal supplement to prevent lupus"
      AHCNPA45   ="Took first herbal supplement to prevent mania or psychosis"
      AHCNPA46   =
"Took first herbal supplement to prevent memory loss or loss of other cognitive 
function"
      AHCNPA47   ="Took first herbal supplement to prevent menopause"
      AHCNPA48   ="Took first herbal supplement to prevent menstrual problems"
      AHCNPA49   ="Took first herbal supplement to prevent mental retardation"
      AHCNPA50   =
"Took first herbal supplement to prevent missing limbs (fingers, toes, or digits
), amputee"
      AHCNPA51   =
"Took first herbal supplement to prevent osteoporosis, tendinitis"
      AHCNPA52   =
"Took first herbal supplement to prevent other developmental problem"
      AHCNPA53   ="Took first herbal supplement to prevent other injury"
      AHCNPA54   =
"Took first herbal supplement to prevent other nerve damage, including carpal tu
nnel syndrome"
      AHCNPA55   ="Took first herbal supplement to prevent phobia or fears"
      AHCNPA56   =
"Took first herbal supplement to prevent polio (myelitis), paralysis, para/quadr
aplegia"
      AHCNPA57   =
"Took first herbal supplement to prevent poor circulation in legs"
      AHCNPA58   =
"Took first herbal supplement to prevent prostate trouble or impotence"
      AHCNPA59   ="Took first herbal supplement to prevent regular headaches"
      AHCNPA60   ="Took first herbal supplement to prevent rheumatoid arthritis"
      AHCNPA61   ="Took first herbal supplementn to prevent schizophrenia"
      AHCNPA62   ="Took first herbal supplement to prevent seizures"
      AHCNPA63   ="Took first herbal supplement to prevent senility"
      AHCNPA64   ="Took first herbal supplement to prevent sinusitis"
      AHCNPA65   ="Took first herbal supplement to prevent skin problems"
      AHCNPA66   ="Took first herbal supplement to prevent sprain or strain"
      AHCNPA67   ="Took first herbal supplement to prevent stroke"
      AHCNPA68   =
"Took first herbal supplement to prevent substance abuse, other than alcohol or 
tobacco"
      AHCNPA69   ="Took first herbal supplement to prevent other (specify)"
      AHCNPA70   ="Took first herbal supplement to prevent other (specify)"
      AHCNPA71   ="Took first herbal supplement to prevent ulcer"
      AHCNPA72   ="Took first herbal supplement to prevent urinary problem"
      AHCNPA73   =
"Took first herbal supplement to prevent varicose veins, hemorrhoids"
      AHCNPA74   ="Took first herbal supplement to prevent vision problem"
      AHCNPA75   =
"Took first herbal supplement to prevent weak or failing kidneys"
      AHCNPA76   ="Took first herbal supplement to prevent weight problem"
      AHCNPA77   ="Took first herbal supplement to prevent back pain or problem"
      AHCNPA78   ="Took first herbal supplement to prevent head or chest cold"
      AHCNPA79   ="Took first herbal supplement to prevent neck pain or problem"
      AHCNPA80   =
"Took first herbal supplement to prevent severe headache or migraine"
      AHCNPA81   =
"Took first herbal supplement to prevent stomach or intestinal illness"
      AHCNPA82   ="Took first herbal supplement to prevent other (specify)"
      AHCNPA83   =
"Took first herbal supplement to prevent anemia and other blood disorders"
      AHCNPA84   ="Took first herbal supplement to prevent other allergies"
      AHCNPA85   =
"Took first herbal supplement to prevent other infectious diseases and problems 
of the immune system"
      AHCNPA86   ="Took first herbal supplement to prevent other musculoskeletal
"
      AHCNPA87   ="Took first herbal supplement to prevent stress"
      AHBCPACT   =
"Condition count for first herbal supplement used to prevent a condition"
      AHB_SPP1   ="Took first herbal supplement to prevent other (specify)"
      AHB_CMPA   =
"Condition for which first herbal supplement was taken to prevent the most"
      AHB_SAME   =
"Took second herbal supplement for same reasons as first herbal supplement"
      AHB_R1B    ="Took second herbal supplement for general health or wellness"
      AHB_R2B    =
"Took second herbal supplement because prescription or over-the-counter drugs ar
e too expensive"
      AHB_R3B    =
"Took second herbal supplement to treat or cure a specific disease or health pro
blem"
      AHB_R4B    =
"Took second herbal supplement to prevent a specific disease or health problem"
      AHB_R5B    ="Took second herbal supplement to improve physical performance
"
      AHB_R6B    ="Took second herbal supplement to improve sports performance"
      AHB_R7B    =
"Took second herbal supplement to improve immune system function"
      AHB_R8B    ="Took second herbal supplement to improve sexual performance"
      AHB_R9B    =
"Took second herbal supplement to improve mental ability or memory"
      AHB_R10B   =
"Took second herbal supplement because medical treaments did not help"
      AHB_R11B   =
"Took second herbal supplement because medical treatments were too expensive"
      AHB_R12B   =
"Took second herbal supplement because it was recommended by a health care provi
der"
      AHB_R13B   =
"Took second herbal supplement because it was recommended by family, friends, or
 co-workers"
      AHCTRB01   =
"Took second herbal supplement to treat or cure acid reflux or heartburn"
      AHCTRB02   ="Took second herbal supplement to treat or cure angina"
      AHCTRB03   ="Took second herbal supplement to treat or cure anxiety"
      AHCTRB04   ="Took second herbal supplement to treat or cure asthma"
      AHCTRB05   ="Took second herbal supplement to treat or cure athritis"
      AHCTRB06   =
"Took second herbal supplement to treat or cure Attention Deficit Disorder/Hyper
activity"
      AHCTRB07   ="Took second herbal supplement to treat or cure autism"
      AHCTRB08   =
"Took second herbal supplement to treat or cure benign tumors, cysts"
      AHCTRB09   =
"Took second herbal supplement to treat or cure bipolar disorder"
      AHCTRB10   ="Took second herbal supplement to treat or cure birth defect"
      AHCTRB11   ="Took second herbal supplement to treat or cure cancer"
      AHCTRB12   ="Took second herbal supplement to treat or cure cholesterol"
      AHCTRB13   =
"Took second herbal supplement to treat or cure chronic bronchitis"
      AHCTRB14   =
"Took second herbal supplement to treat or cure circulation problems (other than
 in the legs)"
      AHCTRB15   =
"Took second herbal supplement to treat or cure constipation severe enough to re
quire medication"
      AHCTRB16   =
"Took second herbal supplement to treat or cure coronary heart disease"
      AHCTRB17   =
"Took second herbal supplement to treat or cure dementia, including Alzheimer's 
disease"
      AHCTRB18   ="Took second herbal supplement to treat or cure dental pain"
      AHCTRB19   ="Took second herbal supplement to treat or cure depression"
      AHCTRB20   ="Took second herbal supplement to treat or cure diabetes"
      AHCTRB21   ="Took second herbal supplement to treat or cure emphysema"
      AHCTRB22   =
"Took second herbal supplement to treat or cure excessive sleepiness during the 
day"
      AHCTRB23   =
"Took second herbal supplement to treat or cure excessive use of alcohol or toba
cco"
      AHCTRB24   ="Took second herbal supplement to treat or cure fibromyalgia"
      AHCTRB25   =
"Took second herbal supplement to treat or cure fracture, bone/joint injury"
      AHCTRB26   ="Took second herbal supplement to treat or cure gout"
      AHCTRB27   ="Took second herbal supplement to treat or cure gum disease"
      AHCTRB28   =
"Took second herbal supplement to treat or cure gynecologic problem"
      AHCTRB29   ="Took second herbal supplement to treat or cure hay fever"
      AHCTRB30   =
"Took second herbal supplement to treat or cure hearing problem"
      AHCTRB31   ="Took second herbal supplement to treat or cure heart attack"
      AHCTRB32   =
"Took second herbal supplement to treat or cure other heart condition or disease
"
      AHCTRB33   ="Took second herbal supplement to treat or cure hernia"
      AHCTRB34   ="Took second herbal supplement to treat or cure hypertension"
      AHCTRB35   =
"Took second herbal supplement to treat or cure inflammatory bowel disease"
      AHCTRB36   =
"Took second herbal supplement to treat or cure influenza or pneumonia"
      AHCTRB37   =
"Took second herbal supplement to treat or cure insomnia or trouble sleeping"
      AHCTRB38   =
"Took second herbal supplement to treat or cure irritable bowel"
      AHCTRB39   ="Took second herbal supplement to treat or cure jaw pain"
      AHCTRB40   =
"Took second herbal supplement to treat or cure joint pain or stiffness/other jo
int condition"
      AHCTRB41   =
"Took second herbal supplement to treat or cure knee problems (not arthritis/not
 joint injury)"
      AHCTRB42   ="Took second herbal supplement to treat or cure liver problem"
      AHCTRB43   =
"Took second herbal supplement to treat or cure lung/breathing problem (not alre
ady listed)"
      AHCTRB44   ="Took second herbal supplement to treat or cure lupus"
      AHCTRB45   =
"Took second herbal supplement to treat or cure mania or psychosis"
      AHCTRB46   =
"Took second herbal supplement to treat or cure memory loss or loss of other cog
nitive function"
      AHCTRB47   ="Took second herbal supplement to treat or cure menopause"
      AHCTRB48   =
"Took second herbal supplement to treat or cure menstrual problems"
      AHCTRB49   =
"Took second herbal supplement to treat or cure mental retardation"
      AHCTRB50   =
"Took second herbal supplement to treat or cure missing limbs (fingers, toes, or
 digits), amputee"
      AHCTRB51   =
"Took second herbal supplement to treat or cure osteoporosis, tendinitis"
      AHCTRB52   =
"Took second herbal supplement to treat or cure other developmental problem"
      AHCTRB53   ="Took second herbal supplement to treat or cure other injury"
      AHCTRB54   =
"Took second herbal supplement to treat or cure other nerve damage, including ca
rpal tunnel syndrome"
      AHCTRB55   =
"Took second herbal supplement to treat or cure phobia or fears"
      AHCTRB56   =
"Took second herbal supplement to treat or cure polio (myelitis), paralysis, par
a/quadraplegia"
      AHCTRB57   =
"Took second herbal supplement to treat or cure poor circulation in legs"
      AHCTRB58   =
"Took second herbal supplement to treat or cure prostate trouble or impotence"
      AHCTRB59   =
"Took second herbal supplement to treat or cure regular headaches"
      AHCTRB60   =
"Took second herbal supplement to treat or cure rheumatoid arthritis"
      AHCTRB61   ="Took second herbal supplement to treat or cure schizophrenia"
      AHCTRB62   ="Took second herbal supplement to treat or cure seizures"
      AHCTRB63   ="Took second herbal supplement to treat or cure senility"
      AHCTRB64   ="Took second herbal supplement to treat or cure sinusitis"
      AHCTRB65   ="Took second herbal supplement to treat or cure skin problems"
      AHCTRB66   =
"Took second herbal supplement to treat or cure sprain or strain"
      AHCTRB67   ="Took second herbal supplement to treat or cure stroke"
      AHCTRB68   =
"Took second herbal supplement to treat or cure substance abuse, other than alco
hol or tobacco"
      AHCTRB69   =
"Took second herbal supplement to treat or cure other (specify)"
      AHCTRB70   =
"Took second herbal supplement to treat or cure other (specify)"
      AHCTRB71   ="Took second herbal supplement to treat or cure ulcer"
      AHCTRB72   =
"Took second herbal supplement to treat or cure urinary problem"
      AHCTRB73   =
"Took second herbal supplement to treat or cure varicose veins, hemorrhoids"
      AHCTRB74   ="Took second herbal supplement to treat or cure vision problem
"
      AHCTRB75   =
"Took second herbal supplement to treat or cure weak or failing kidneys"
      AHCTRB76   ="Took second herbal supplement to treat or cure weight problem
"
      AHCTRB77   =
"Took second herbal supplement to treat or cure back pain or problem"
      AHCTRB78   =
"Took second herbal supplement to treat or cure head or chest cold"
      AHCTRB79   =
"Took second herbal supplement to treat or cure neck pain or problem"
      AHCTRB80   =
"Took second herbal supplement to treat or cure severe headache or migraine"
      AHCTRB81   =
"Took second herbal supplement to treat or cure stomach or intestinal illness"
      AHCTRB82   =
"Took second herbal supplement to treat or cure other (specify)"
      AHCTRB83   =
"Took second herbal supplement to treat or cure anemia and other blood disorders
"
      AHCTRB84   =
"Took second herbal supplement to treat or cure other allergies"
      AHCTRB85   =
"Took second herbal supplement to treat or cure other infectious diseases and pr
oblems of the immune system"
      AHCTRB86   =
"Took second herbal supplement to treat or cure other musculoskeletal"
      AHCTRB87   ="Took second herbal supplement to treat or cure stress"
      AHBCTBCT   =
"Condition count for second herbal supplement used to treat a condition"
      AHB_SPT2   =
"Took second herbal supplement to treat or cure other (specify)"
      AHB_CONB   =
"Condition for which the second herbal supplement was taken to treat or cure the
 most"
      AHBMEDB0   =
"Received no conventional medical treatment for condition for which the second h
erbal supplement was used to treat or cure the most"
      AHBMEDB1   =
"Received prescription medications for condition for which the second herbal sup
plement was used to treat or cure the most"
      AHBMEDB2   =
"Received over-the-counter medications for condition for which the second herbal
 supplement was used to treat or cure the most"
      AHBMEDB3   =
"Received surgery for condition for which the second herbal supplement was used 
to treat or cure the most"
      AHBMEDB4   =
"Received physical therapy for condition for which the second herbal supplement 
was used to treat or cure the most"
      AHBMEDB5   =
"Received mental health counseling for condition for which the second herbal sup
plement was used to treat or cure the most"
      AHB_TM1B   =
"Time received prescription medications for the condition they used the second h
erbal supplement to treat or cure the most"
      AHB_TM2B   =
"Time received over-the-counter medications for the condition they used the seco
nd herbal supplement to treat or cure the most"
      AHB_TM3B   =
"Time received surgery for the condition they used the second herbal supplement 
to treat or cure the most"
      AHB_TM4B   =
"Time received physical therapy for the condition they used the second herbal su
pplement to treat or cure the most"
      AHB_TM5B   =
"Time received mental health counseling for the condition they used the second h
erbal supplement to treat or cure the most"
      AHCNPB01   =
"Took second herbal supplement to prevent acid reflux or heartburn"
      AHCNPB02   ="Took second herbal supplement to prevent angina"
      AHCNPB03   ="Took second herbal supplement to prevent anxiety"
      AHCNPB04   ="Took second herbal supplement to prevent asthma"
      AHCNPB05   ="Took second herbal supplement to prevent athritis"
      AHCNPB06   =
"Took second herbal supplement to prevent Attention Deficit Disorder/Hyperactivi
ty"
      AHCNPB07   ="Took second herbal supplement to prevent autism"
      AHCNPB08   ="Took second herbal supplement to prevent benign tumors, cysts
"
      AHCNPB09   ="Took second herbal supplement to prevent bipolar disorder"
      AHCNPB10   ="Took second herbal supplement to prevent birth defect"
      AHCNPB11   ="Took second herbal supplement to prevent cancer"
      AHCNPB12   ="Took second herbal supplement to prevent cholesterol"
      AHCNPB13   ="Took second herbal supplement to prevent chronic bronchitis"
      AHCNPB14   =
"Took second herbal supplement to prevent circulation problems (other than in th
e legs)"
      AHCNPB15   =
"Took second herbal supplement to prevent constipation severe enough to require 
medication"
      AHCNPB16   =
"Took second herbal supplement to prevent coronary heart disease"
      AHCNPB17   =
"Took second herbal supplement to prevent dementia, including Alzheimer's diseas
e"
      AHCNPB18   ="Took second herbal supplement to prevent dental pain"
      AHCNPB19   ="Took second herbal supplement to prevent depression"
      AHCNPB20   ="Took second herbal supplement to prevent diabetes"
      AHCNPB21   ="Took second herbal supplement to prevent emphysema"
      AHCNPB22   =
"Took second herbal supplement to prevent excessive sleepiness during the day"
      AHCNPB23   =
"Took second herbal supplement to prevent excessive use of alcohol or tobacco"
      AHCNPB24   ="Took second herbal supplement to prevent fibromyalgia"
      AHCNPB25   =
"Took second herbal supplement to prevent fracture, bone/joint injury"
      AHCNPB26   ="Took second herbal supplement to prevent gout"
      AHCNPB27   ="Took second herbal supplement to prevent gum disease"
      AHCNPB28   ="Took second herbal supplement to prevent gynecologic problem"
      AHCNPB29   ="Took second herbal supplement to prevent hay fever"
      AHCNPB30   ="Took second herbal supplement to prevent hearing problem"
      AHCNPB31   ="Took second herbal supplement to prevent heart attack"
      AHCNPB32   =
"Took second herbal supplement to prevent other heart condition or disease"
      AHCNPB33   ="Took second herbal supplement to prevent hernia"
      AHCNPB34   ="Took second herbal supplement to prevent hypertention"
      AHCNPB35   =
"Took second herbal supplement to prevent inflammatory bowel disease"
      AHCNPB36   =
"Took second herbal supplement to prevent influenza or pneumonia"
      AHCNPB37   =
"Took second herbal supplement to prevent insomnia or trouble sleeping"
      AHCNPB38   ="Took second herbal supplement to prevent irritable bowel"
      AHCNPB39   ="Took second herbal supplement to prevent jaw pain"
      AHCNPB40   =
"Took second herbal supplement to prevent joint pain or stiffness/other joint co
ndition"
      AHCNPB41   =
"Took second herbal supplement to prevent knee problems (not arthritis/not joint
 injury)"
      AHCNPB42   ="Took second herbal supplement to prevent liver problem"
      AHCNPB43   =
"Took second herbal supplement to prevent lung/breathing problem (not already li
sted)"
      AHCNPB44   ="Took second herbal supplement to prevent lupus"
      AHCNPB45   ="Took second herbal supplement to prevent mania or psychosis"
      AHCNPB46   =
"Took second herbal supplement to prevent memory loss or loss of other cognitive
 function"
      AHCNPB47   ="Took second herbal supplement to prevent menopause"
      AHCNPB48   ="Took second herbal supplement to prevent menstrual problems"
      AHCNPB49   ="Took second herbal supplement to prevent mental retardation"
      AHCNPB50   =
"Took second herbal supplement to prevent missing limbs (fingers, toes, or digit
s), amputee"
      AHCNPB51   =
"Took second herbal supplement to prevent osteoporosis, tendinitis"
      AHCNPB52   =
"Took second herbal supplement to prevent other developmental problem"
      AHCNPB53   ="Took second herbal supplement to prevent other injury"
      AHCNPB54   =
"Took second herbal supplement to prevent other nerve damage, including carpal t
unnel syndrome"
      AHCNPB55   ="Took second herbal supplement to prevent phobia or fears"
      AHCNPB56   =
"Took second herbal supplement to prevent polio (myelitis), paralysis, para/quad
raplegia"
      AHCNPB57   =
"Took second herbal supplement to prevent poor circulation in legs"
      AHCNPB58   =
"Took second herbal supplement to prevent prostate trouble or impotence"
      AHCNPB59   ="Took second herbal supplement to prevent regular headaches"
      AHCNPB60   ="Took second herbal supplement to prevent rheumatoid arthritis
"
      AHCNPB61   ="Took second herbal supplement to prevent schizophrenia"
      AHCNPB62   ="Took second herbal supplement to prevent seizures"
      AHCNPB63   ="Took second herbal supplement to prevent senility"
      AHCNPB64   ="Took second herbal supplement to prevent sinusitis"
      AHCNPB65   ="Took second herbal supplement to prevent skin problems"
      AHCNPB66   ="Took second herbal supplement to prevent sprain or strain"
      AHCNPB67   ="Took second herbal supplement to prevent stroke"
      AHCNPB68   =
"Took second herbal supplement to prevent substance abuse, other than alcohol or
 tobacco"
      AHCNPB69   ="Took second herbal supplement to prevent other (specify)"
      AHCNPB70   ="Took second herbal supplement to prevent other (specify)"
      AHCNPB71   ="Took second herbal supplement to prevent ulcer"
      AHCNPB72   ="Took second herbal supplement to prevent urinary problem"
      AHCNPB73   =
"Took second herbal supplement to prevent varicose veins, hemorrhoids"
      AHCNPB74   ="Took second herbal supplement to prevent vision problem"
      AHCNPB75   =
"Took second herbal supplement to prevent weak or failing kidneys"
      AHCNPB76   ="Took second herbal supplement to prevent weight problem"
      AHCNPB77   ="Took second herbal supplement to prevent back pain or problem
"
      AHCNPB78   ="Took second herbal supplement to prevent head or chest cold"
      AHCNPB79   ="Took second herbal supplement to prevent neck pain or problem
"
      AHCNPB80   =
"Took second herbal supplement to prevent severe headache or migraine"
      AHCNPB81   =
"Took second herbal supplement to prevent stomach or intestinal illness"
      AHCNPB82   ="Took second herbal supplement to prevent other (specify)"
      AHCNPB83   =
"Took second herbal supplement to prevent anemia and other blood disorders"
      AHCNPB84   ="Took second herbal supplement to prevent other allergies"
      AHCNPB85   =
"Took second herbal supplement to prevent other infectious diseases and problems
 of the immune system"
      AHCNPB86   =
"Took second herbal supplement to prevent other musculoskeletal"
      AHCNPB87   ="Took second herbal supplement to prevent stress"
      AHBCPBCT   =
"Condition count for second herbal supplement used to prevent a condition"
      AHB_SPP2   ="Took second herbal supplement to prevent other (specify)"
      AHB_CMPB   =
"Condition for which second herbal supplement was taken to prevent the most"
      AHB_PRAC   ="Ever saw a practitioner for herbal medicines"
      AHB_PR12   ="Saw practitioner for herbal medicines, past 12 months"
      AHB_PRTM   ="Number of times saw practitioner for herbal medicines"
      AHB_PAY    ="Amount paid per visit to practitioner for herbal medicines"
      AHBDISC    ="Let conventional medical professional know about use of herbs
"
      AHBPRF1    =
"Let medical doctor (including specialists) know about use of herbs"
      AHBPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of herbs"
      AHBPRF3    =
"Let nurse practitioner/physician assistant know about use of herbs"
      AHBPRF4    ="Let psychiatrist know about use of herbs"
      AHBPRF5    ="Let dentist (including specialists) know about use of herbs"
      AHBPRF6    ="Let psychologist/social worker know about use of herbs"
      AHBPRF7    ="Let pharmacist know about use of herbs"
      AHBN301    =
"Did not use natural herbs during in the past 30 days because I never thought ab
out it"
      AHBN302    =
"Did not use natural herbs during in the past 30 days for no reason"
      AHBN303    =
"Did not use natural herbs during in the past 30 days because I didn't need it i
n the past 30 days"
      AHBN304    =
"Did not use natural herbs during in the past 30 days because it didn't work for
 me before"
      AHBN305    =
"Did not use natural herbs during in the past 30 days because it costs too much"
      AHBN306    =
"Did not use natural herbs during in the past 30 days because I had side effects
 last time"
      AHBN307    =
"Did not use natural herbs during in the past 30 days because a health care prov
ider told me not to use it"
      AHBN308    =
"Did not use natural herbs during in the past 30 days because medical science no
t shown that it works"
      AHBN309    =
"Did not use natural herbs during in the past 30 days for some other reason"
      AHBNYR1    =
"Did not use natural herbs during the past 12 months because I never thought abo
ut it"
      AHBNYR2    =
"Did not use natural herbs during the past 12 months for no reason"
      AHBNYR3    =
"Did not use natural herbs during the past 12 months because I didn't need it in
 the past 12 months"
      AHBNYR4    =
"Did not use natural herbs during the past 12 months because it didn't work for 
me before"
      AHBNYR5    =
"Did not use natural herbs during the past 12 months because it costs too much"
      AHBNYR6    =
"Did not use natural herbs during the past 12 months because I had side effects 
last time"
      AHBNYR7    =
"Did not use natural herbs during the past 12 months because a health care provi
der told me not to use it"
      AHBNYR8    =
"Did not use natural herbs during the past 12 months because medical science not
 shown that it works"
      AHBNYR9    =
"Did not use natural herbs during the past 12 months for some other reason"
      AHB_SIDE   ="Kinds of side effects from natural herbs"
      AHB_SMED   ="Side effects from natural herbs required medical attention"
      AHBNEV01   =
"Never used natural herbs because I never heard of it/don't know much about it"
      AHBNEV02   ="Never used natural herbs because I never thought about it"
      AHBNEV03   ="Never used natural herbs for no reason"
      AHBNEV04   ="Never used natural herbs because I don't need it"
      AHBNEV05   =
"Never used natural herbs because I don't believe in it/it doesn't work"
      AHBNEV06   ="Never used natural herbs because it costs too much"
      AHBNEV07   ="Never used natural herbs because it is not safe to use"
      AHBNEV08   =
"Never used natural herbs because a health care provider told me not to use it"
      AHBNEV09   =
"Never used natural herbs because medical science not shown that it works"
      AHBNEV10   ="Never used natural herbs for some other reason"
      AVT_EVER   ="Ever taken vitamins or minerals"
      AVT_USEM   ="Took vitamins or minerals, past 12 months"
      AVT_MO     ="Took vitamins or minerals, past 30 days"
      AVTTAK01   ="Took multivitamin and/or mineral combination"
      AVTTAK02   ="Took calcium"
      AVTTAK03   ="Took chromium"
      AVTTAK04   ="Took coral calcium"
      AVTTAK05   ="Took folic acid/folate"
      AVTTAK06   ="Took iron"
      AVTTAK07   ="Took magnesium"
      AVTTAK08   ="Took niacin"
      AVTTAK09   ="Took potassium"
      AVTTAK10   ="Took selenium"
      AVTTAK11   ="Took vitamin A"
      AVTTAK12   ="Took vitamin B complex"
      AVTTAK13   ="Took vitamin B6"
      AVTTAK14   ="Took vitamin B12"
      AVTTAK15   ="Took vitamin C"
      AVTTAK16   ="Took vitamin D"
      AVTTAK17   ="Took vitamin E"
      AVTTAK18   ="Took vitamin K"
      AVTTAK19   ="Took zinc"
      AVTTAK20   ="Took a vitamin packet"
      AVTTAKCT   ="Number of vitamins and/or minerals taken"
      AVTTOP2A   ="First vitamin supplement taken most often"
      AVTTOP2B   ="Second vitamin supplement taken most often"
      AVT_R1A    ="Took first vitamin supplement for general health or wellness"
      AVT_R2A    =
"Took first vitamin supplement because prescription or over-the-counter drugs ar
e too expensive"
      AVT_R3A    =
"Took first vitamin supplement to treat or cure a specific disease or health pro
blem"
      AVT_R4A    =
"Took first vitamin supplement to prevent a specific disease or health problem"
      AVT_R5A    ="Took first vitamin supplement to improve physical performance
"
      AVT_R6A    ="Took first vitamin supplement to improve sports performance"
      AVT_R7A    =
"Took first vitamin supplement to improve immune system function"
      AVT_R8A    ="Took first vitamin supplement to improve sexual performance"
      AVT_R9A    =
"Took first vitamin supplement to improve mental ability or memory"
      AVT_R10A   =
"Took first vitamin supplement because medical treaments did not help"
      AVT_R11A   =
"Took first vitamin supplement because medical treatments were too expensive"
      AVT_R12A   =
"Took first vitamin supplement because it was recommended by a health care provi
der"
      AVT_R13A   =
"Took first vitamin supplement because it was recommended by family, friends, or
 co-workers"
      AVCTRA01   =
"Took first vitamin supplement to treat or cure acid reflux or heartburn"
      AVCTRA02   ="Took first vitamin supplement to treat or cure angina"
      AVCTRA03   ="Took first vitamin supplement to treat or cure anxiety"
      AVCTRA04   ="Took first vitamin supplement to treat or cure asthma"
      AVCTRA05   ="Took first vitamin supplement to treat or cure athritis"
      AVCTRA06   =
"Took first vitamin supplement to treat or cure Attention Deficit Disorder/Hyper
activity"
      AVCTRA07   ="Took first vitamin supplement to treat or cure autism"
      AVCTRA08   =
"Took first vitamin supplement to treat or cure benign tumors, cysts"
      AVCTRA09   =
"Took first vitamin supplement to treat or cure bipolar disorder"
      AVCTRA10   ="Took first vitamin supplement to treat or cure birth defect"
      AVCTRA11   ="Took first vitamin supplement to treat or cure cancer"
      AVCTRA12   ="Took first vitamin supplement to treat or cure cholesterol"
      AVCTRA13   =
"Took first vitamin supplement to treat or cure chronic bronchitis"
      AVCTRA14   =
"Took first vitamin supplement to treat or cure circulation problems (other than
 in the legs)"
      AVCTRA15   =
"Took first vitamin supplement to treat or cure constipation severe enough to re
quire medication"
      AVCTRA16   =
"Took first vitamin supplement to treat or cure coronary heart disease"
      AVCTRA17   =
"Took first vitamin supplement to treat or cure dementia, including Alzheimer's 
disease"
      AVCTRA18   ="Took first vitamin supplement to treat or cure dental pain"
      AVCTRA19   ="Took first vitamin supplement to treat or cure depression"
      AVCTRA20   ="Took first vitamin supplement to treat or cure diabetes"
      AVCTRA21   ="Took first vitamin supplement to treat or cure emphysema"
      AVCTRA22   =
"Took first vitamin supplement to treat or cure excessive sleepiness during the 
day"
      AVCTRA23   =
"Took first vitamin supplement to treat or cure excessive use of alcohol or toba
cco"
      AVCTRA24   ="Took first vitamin supplement to treat or cure fibromyalgia"
      AVCTRA25   =
"Took first vitamin supplement to treat or cure fracture, bone/joint injury"
      AVCTRA26   ="Took first vitamin supplement to treat or cure gout"
      AVCTRA27   ="Took first vitamin supplement to treat or cure gum disease"
      AVCTRA28   =
"Took first vitamin supplement to treat or cure gynecologic problem"
      AVCTRA29   ="Took first vitamin supplement to treat or cure hay fever"
      AVCTRA30   =
"Took first vitamin supplement to treat or cure hearing problem"
      AVCTRA31   ="Took first vitamin supplement to treat or cure heart attack"
      AVCTRA32   =
"Took first vitamin supplement to treat or cure other heart condition or disease
"
      AVCTRA33   ="Took first vitamin supplement to treat or cure hernia"
      AVCTRA34   ="Took first vitamin supplement to treat or cure hypertention"
      AVCTRA35   =
"Took first vitamin supplement to treat or cure inflammatory bowel disease"
      AVCTRA36   =
"Took first vitamin supplement to treat or cure influenza or pneumonia"
      AVCTRA37   =
"Took first vitamin supplement to treat or cure insomnia or trouble sleeping"
      AVCTRA38   =
"Took first vitamin supplement to treat or cure irritable bowel"
      AVCTRA39   ="Took first vitamin supplement to treat or cure jaw pain"
      AVCTRA40   =
"Took first vitamin supplement to treat or cure joint pain or stiffness/other jo
int condition"
      AVCTRA41   =
"Took first vitamin supplement to treat or cure knee problems (not arthritis/not
 joint injury)"
      AVCTRA42   ="Took first vitamin supplement to treat or cure liver problem"
      AVCTRA43   =
"Took first vitamin supplement to treat or cure lung/breathing problem (not alre
ady listed)"
      AVCTRA44   ="Took first vitamin supplement to treat or cure lupus"
      AVCTRA45   =
"Took first vitamin supplement to treat or cure mania or psychosis"
      AVCTRA46   =
"Took first vitamin supplement to treat or cure memory loss or loss of other cog
nitive function"
      AVCTRA47   ="Took first vitamin supplement to treat or cure menopause"
      AVCTRA48   =
"Took first vitamin supplement to treat or cure menstrual problems"
      AVCTRA49   =
"Took first vitamin supplement to treat or cure mental retardation"
      AVCTRA50   =
"Took first vitamin supplement to treat or cure missing limbs (fingers, toes, or
 digits), amputee"
      AVCTRA51   =
"Took first vitamin supplement to treat or cure osteoporosis, tendinitis"
      AVCTRA52   =
"Took first vitamin supplement to treat or cure other developmental problem"
      AVCTRA53   ="Took first vitamin supplement to treat or cure other injury"
      AVCTRA54   =
"Took first vitamin supplement to treat or cure other nerve damage, including ca
rpal tunnel syndrome"
      AVCTRA55   =
"Took first vitamin supplement to treat or cure phobia or fears"
      AVCTRA56   =
"Took first vitamin supplement to treat or cure polio (myelitis), paralysis, par
a/quadraplegia"
      AVCTRA57   =
"Took first vitamin supplement to treat or cure poor circulation in legs"
      AVCTRA58   =
"Took first vitamin supplement to treat or cure prostate trouble or impotence"
      AVCTRA59   =
"Took first vitamin supplement to treat or cure regular headaches"
      AVCTRA60   =
"Took first vitamin supplement to treat or cure rheumatoid arthritis"
      AVCTRA61   ="Took first vitamin supplement to treat or cure schizophrenia"
      AVCTRA62   ="Took first vitamin supplement to treat or cure seizures"
      AVCTRA63   ="Took first vitamin supplement to treat or cure senility"
      AVCTRA64   ="Took first vitamin supplement to treat or cure sinusitis"
      AVCTRA65   ="Took first vitamin supplement to treat or cure skin problems"
      AVCTRA66   =
"Took first vitamin supplement to treat or cure sprain or strain"
      AVCTRA67   ="Took first vitamin supplement to treat or cure stroke"
      AVCTRA68   =
"Took first vitamin supplement to treat or cure substance abuse, other than alco
hol or tobacco"
      AVCTRA69   =
"Took first vitamin supplement to treat or cure other (specify)"
      AVCTRA70   =
"Took first vitamin supplement to treat or cure other (specify)"
      AVCTRA71   ="Took first vitamin supplement to treat or cure ulcer"
      AVCTRA72   =
"Took first vitamin supplement to treat or cure urinary problem"
      AVCTRA73   =
"Took first vitamin supplement to treat or cure varicose veins, hemorrhoids"
      AVCTRA74   ="Took first vitamin supplement to treat or cure vision problem
"
      AVCTRA75   =
"Took first vitamin supplement to treat or cure weak or failing kidneys"
      AVCTRA76   ="Took first vitamin supplement to treat or cure weight problem
"
      AVCTRA77   =
"Took first vitamin supplement to treat or cure back pain or problem"
      AVCTRA78   =
"Took first vitamin supplement to treat or cure head or chest cold"
      AVCTRA79   =
"Took first vitamin supplement to treat or cure neck pain or problem"
      AVCTRA80   =
"Took first vitamin supplement to treat or cure severe headache or migraine"
      AVCTRA81   =
"Took first vitamin supplement to treat or cure stomach or intestinal illness"
      AVCTRA82   =
"Took first vitamin supplement to treat or cure other (specify)"
      AVCTRA83   =
"Took first vitamin supplement to treat or cure anemia and other blood disorders
"
      AVCTRA84   =
"Took first vitamin supplement to treat or cure other allergies"
      AVCTRA85   =
"Took first vitamin supplement to treat or cure other infectious diseases and pr
oblems of the immune system"
      AVCTRA86   =
"Took first vitamin supplement to treat or cure other musculoskeletal"
      AVCTRA87   ="Took first vitamin supplement to treat or cure stress"
      AVTCTACT   =
"Condition count for first vitamin or mineral used to treat a condition"
      AVT_SPT1   =
"Took first vitamin supplement to treat or cure other (specify)"
      AVT_CONA   =
"Condition for which the first vitamin supplement was taken to treat or cure the
 most"
      AVTMEDA0   =
"Received no conventional medical treatment for condition for which the first vi
tamin supplement was used to treat or cure the most"
      AVTMEDA1   =
"Received prescription medications for condition for which the first vitamin sup
plement was used to treat or cure the most"
      AVTMEDA2   =
"Received over-the-counter medications for condition for which the first vitamin
 supplement was used to treat or cure the most"
      AVTMEDA3   =
"Received surgery for condition for which the first vitamin supplement was used 
to treat or cure the most"
      AVTMEDA4   =
"Received physical therapy for condition for which the first vitamin supplement 
was used to treat or cure the most"
      AVTMEDA5   =
"Received mental health counseling for condition for which the first vitamin sup
plement was used to treat or cure the most"
      AVT_TM1A   =
"Time received prescription medications for the condition they used the first vi
tamin supplement to treat or cure the most"
      AVT_TM2A   =
"Time received over-the-counter medications for the condition they used the firs
t vitamin supplement to treat or cure the most"
      AVT_TM3A   =
"Time received surgery for the condition they used the first vitamin supplement 
to treat or cure the most"
      AVT_TM4A   =
"Time received physical therapy for the condition they used the first vitamin su
pplement to treat or cure the most"
      AVT_TM5A   =
"Time received mental health counseling for the condition they used the first vi
tamin supplement to treat or cure the most"
      AVCNPA01   =
"Took first vitamin supplement to prevent acid reflux or heartburn"
      AVCNPA02   ="Took first vitamin supplement to prevent angina"
      AVCNPA03   ="Took first vitamin supplement to prevent anxiety"
      AVCNPA04   ="Took first vitamin supplement to prevent asthma"
      AVCNPA05   ="Took first vitamin supplement to prevent athritis"
      AVCNPA06   =
"Took first vitamin supplement to prevent Attention Deficit Disorder/Hyperactivi
ty"
      AVCNPA07   ="Took first vitamin supplement to prevent autism"
      AVCNPA08   ="Took first vitamin supplement to prevent benign tumors, cysts
"
      AVCNPA09   ="Took first vitamin supplement to prevent bipolar disorder"
      AVCNPA10   ="Took first vitamin supplement to prevent birth defect"
      AVCNPA11   ="Took first vitamin supplement to prevent cancer"
      AVCNPA12   ="Took first vitamin supplement to prevent cholesterol"
      AVCNPA13   ="Took first vitamin supplement to prevent chronic bronchitis"
      AVCNPA14   =
"Took first vitamin supplement to prevent circulation problems (other than in th
e legs)"
      AVCNPA15   =
"Took first vitamin supplement to prevent constipation severe enough to require 
medication"
      AVCNPA16   =
"Took first vitamin supplement to prevent coronary heart disease"
      AVCNPA17   =
"Took first vitamin supplement to prevent dementia, including Alzheimer's diseas
e"
      AVCNPA18   ="Took first vitamin supplement to prevent dental pain"
      AVCNPA19   ="Took first vitamin supplement to prevent depression"
      AVCNPA20   ="Took first vitamin supplement to prevent diabetes"
      AVCNPA21   ="Took first vitamin supplement to prevent emphysema"
      AVCNPA22   =
"Took first vitamin supplement to prevent excessive sleepiness during the day"
      AVCNPA23   =
"Took first vitamin supplement to prevent excessive use of alcohol or tobacco"
      AVCNPA24   ="Took first vitamin supplement to prevent fibromyalgia"
      AVCNPA25   =
"Took first vitamin supplement to prevent fracture, bone/joint injury"
      AVCNPA26   ="Took first vitamin supplement to prevent gout"
      AVCNPA27   ="Took first vitamin supplement to prevent gum disease"
      AVCNPA28   ="Took first vitamin supplement to prevent gynecologic problem"
      AVCNPA29   ="Took first vitamin supplement to prevent hay fever"
      AVCNPA30   ="Took first vitamin supplement to prevent hearing problem"
      AVCNPA31   ="Took first vitamin supplement to prevent heart attack"
      AVCNPA32   =
"Took first vitamin supplement to prevent other heart condition or disease"
      AVCNPA33   ="Took first vitamin supplement to prevent hernia"
      AVCNPA34   ="Took first vitamin supplement to prevent hypertention"
      AVCNPA35   =
"Took first vitamin supplement to prevent inflammatory bowel disease"
      AVCNPA36   =
"Took first vitamin supplement to prevent influenza or pneumonia"
      AVCNPA37   =
"Took first vitamin supplement to prevent insomnia or trouble sleeping"
      AVCNPA38   ="Took first vitamin supplement to prevent irritable bowel"
      AVCNPA39   ="Took first vitamin supplement to prevent jaw pain"
      AVCNPA40   =
"Took first vitamin supplement to prevent joint pain or stiffness/other joint co
ndition"
      AVCNPA41   =
"Took first vitamin supplement to prevent knee problems (not arthritis/not joint
 injury)"
      AVCNPA42   ="Took first vitamin supplement to prevent liver problem"
      AVCNPA43   =
"Took first vitamin supplement to prevent lung/breathing problem (not already li
sted)"
      AVCNPA44   ="Took first vitamin supplement to prevent lupus"
      AVCNPA45   ="Took first vitamin supplement to prevent mania or psychosis"
      AVCNPA46   =
"Took first vitamin supplement to prevent memory loss or loss of other cognitive
 function"
      AVCNPA47   ="Took first vitamin supplement to prevent menopause"
      AVCNPA48   ="Took first vitamin supplement to prevent menstrual problems"
      AVCNPA49   ="Took first vitamin supplement to prevent mental retardation"
      AVCNPA50   =
"Took first vitamin supplement to prevent missing limbs (fingers, toes, or digit
s), amputee"
      AVCNPA51   =
"Took first vitamin supplement to prevent osteoporosis, tendinitis"
      AVCNPA52   =
"Took first vitamin supplement to prevent other developmental problem"
      AVCNPA53   ="Took first vitamin supplement to prevent other injury"
      AVCNPA54   =
"Took first vitamin supplement to prevent other nerve damage, including carpal t
unnel syndrome"
      AVCNPA55   ="Took first vitamin supplement to prevent phobia or fears"
      AVCNPA56   =
"Took first vitamin supplement to prevent polio (myelitis), paralysis, para/quad
raplegia"
      AVCNPA57   =
"Took first vitamin supplement to prevent poor circulation in legs"
      AVCNPA58   =
"Took first vitamin supplement to prevent prostate trouble or impotence"
      AVCNPA59   ="Took first vitamin supplement to prevent regular headaches"
      AVCNPA60   ="Took first vitamin supplement to prevent rheumatoid arthritis
"
      AVCNPA61   ="Took first vitamin supplement to prevent schizophrenia"
      AVCNPA62   ="Took first vitamin supplement to prevent seizures"
      AVCNPA63   ="Took first vitamin supplement to prevent senility"
      AVCNPA64   ="Took first vitamin supplement to prevent sinusitis"
      AVCNPA65   ="Took first vitamin supplement to prevent skin problems"
      AVCNPA66   ="Took first vitamin supplement to prevent sprain or strain"
      AVCNPA67   ="Took first vitamin supplement to prevent stroke"
      AVCNPA68   =
"Took first vitamin supplement to prevent substance abuse, other than alcohol or
 tobacco"
      AVCNPA69   ="Took first vitamin supplement to prevent other (specify)"
      AVCNPA70   ="Took first vitamin supplement to prevent other (specify)"
      AVCNPA71   ="Took first vitamin supplement to prevent ulcer"
      AVCNPA72   ="Took first vitamin supplement to prevent urinary problem"
      AVCNPA73   =
"Took first vitamin supplement to prevent varicose veins, hemorrhoids"
      AVCNPA74   ="Took first vitamin supplement to prevent vision problem"
      AVCNPA75   =
"Took first vitamin supplement to prevent weak or failing kidneys"
      AVCNPA76   ="Took first vitamin supplement to prevent weight problem"
      AVCNPA77   ="Took first vitamin supplement to prevent back pain or problem
"
      AVCNPA78   ="Took first vitamin supplement to prevent head or chest cold"
      AVCNPA79   ="Took first vitamin supplement to prevent neck pain or problem
"
      AVCNPA80   =
"Took first vitamin supplement to prevent severe headache or migraine"
      AVCNPA81   =
"Took first vitamin supplement to prevent stomach or intestinal illness"
      AVCNPA82   ="Took first vitamin supplement to prevent other (specify)"
      AVCNPA83   =
"Took first vitamin supplement to prevent anemia and other blood disorders"
      AVCNPA84   ="Took first vitamin supplement to prevent other allergies"
      AVCNPA85   =
"Took first vitamin supplement to prevent other infectious diseases and problems
 of the immune system"
      AVCNPA86   =
"Took first vitamin supplement to prevent other musculoskeletal"
      AVCNPA87   ="Took first vitamin supplement to prevent stress"
      AVTCPACT   =
"Condition count for first vitamin or mineral used to prevent a condition"
      AVT_SPP1   ="Took first vitamin supplement to prevent other (specify)"
      AVT_CMPA   =
"Condition for which first vitamin supplement was taken to prevent the most"
      AVT_SAME   =
"Took second vitamin supplement for same reasons as first vitamin supplement"
      AVT_R1B    ="Took second vitamin supplement for general health or wellness
"
      AVT_R2B    =
"Took second vitamin supplement because prescription and over-the-counter drugs 
are too expensive"
      AVT_R3B    =
"Took second vitamin supplement to treat or cure a specific disease or health pr
oblem"
      AVT_R4B    =
"Took second vitamin supplement to prevent a specific disease or health problem"
      AVT_R5B    =
"Took second vitamin supplement to improve physical performance"
      AVT_R6B    ="Took second vitamin supplement to improve sports performance"
      AVT_R7B    =
"Took second vitamin supplement to improve immune system function"
      AVT_R8B    ="Took second vitamin supplement to improve sexual performance"
      AVT_R9B    =
"Took second vitamin supplement to improve mental ability or memory"
      AVT_R10B   =
"Took second vitamin supplement because medical treaments did not help"
      AVT_R11B   =
"Took second vitamin supplement because medical treatments were too expensive"
      AVT_R12B   =
"Took second vitamin supplement because it was recommended by health care provid
er"
      AVT_R13B   =
"Took second vitamin supplement because it was recommended by family, friends, o
r co-workers"
      AVCTRB01   =
"Took second vitamin supplement to treat or cure acid reflux or heartburn"
      AVCTRB02   ="Took second vitamin supplement to treat or cure angina"
      AVCTRB03   ="Took second vitamin supplement to treat or cure anxiety"
      AVCTRB04   ="Took second vitamin supplement to treat or cure asthma"
      AVCTRB05   ="Took second vitamin supplement to treat or cure athritis"
      AVCTRB06   =
"Took second vitamin supplement to treat or cure Attention Deficit Disorder/Hype
ractivity"
      AVCTRB07   ="Took second vitamin supplement to treat or cure autism"
      AVCTRB08   =
"Took second vitamin supplement to treat or cure benign tumors, cysts"
      AVCTRB09   =
"Took second vitamin supplement to treat or cure bipolar disorder"
      AVCTRB10   ="Took second vitamin supplement to treat or cure birth defect"
      AVCTRB11   ="Took second vitamin supplement to treat or cure cancer"
      AVCTRB12   ="Took second vitamin supplement to treat or cure cholesterol"
      AVCTRB13   =
"Took second vitamin supplement to treat or cure chronic bronchitis"
      AVCTRB14   =
"Took second vitamin supplement to treat or cure circulation problems (other tha
n in the legs)"
      AVCTRB15   =
"Took second vitamin supplement to treat or cure constipation severe enough to r
equire medication"
      AVCTRB16   =
"Took second vitamin supplement to treat or cure coronary heart disease"
      AVCTRB17   =
"Took second vitamin supplement to treat or cure dementia, including Alzheimer's
 disease"
      AVCTRB18   ="Took second vitamin supplement to treat or cure dental pain"
      AVCTRB19   ="Took second vitamin supplement to treat or cure depression"
      AVCTRB20   ="Took second vitamin supplement to treat or cure diabetes"
      AVCTRB21   ="Took second vitamin supplement to treat or cure emphysema"
      AVCTRB22   =
"Took second vitamin supplement to treat or cure excessive sleepiness during the
 day"
      AVCTRB23   =
"Took second vitamin supplement to treat or cure excessive use of alcohol or tob
acco"
      AVCTRB24   ="Took second vitamin supplement to treat or cure fibromyalgia"
      AVCTRB25   =
"Took second vitamin supplement to treat or cure fracture, bone/joint injury"
      AVCTRB26   ="Took second vitamin supplement to treat or cure gout"
      AVCTRB27   ="Took second vitamin supplement to treat or cure gum disease"
      AVCTRB28   =
"Took second vitamin supplement to treat or cure gynecologic problem"
      AVCTRB29   ="Took second vitamin supplement to treat or cure hay fever"
      AVCTRB30   =
"Took second vitamin supplement to treat or cure hearing problem"
      AVCTRB31   ="Took second vitamin supplement to treat or cure heart attack"
      AVCTRB32   =
"Took second vitamin supplement to treat or cure other heart condition or diseas
e"
      AVCTRB33   ="Took second vitamin supplement to treat or cure hernia"
      AVCTRB34   ="Took second vitamin supplement to treat or cure hypertention"
      AVCTRB35   =
"Took second vitamin supplement to treat or cure inflammatory bowel disease"
      AVCTRB36   =
"Took second vitamin supplement to treat or cure influenza or pneumonia"
      AVCTRB37   =
"Took second vitamin supplement to treat or cure insomnia or trouble sleeping"
      AVCTRB38   =
"Took second vitamin supplement to treat or cure irritable bowel"
      AVCTRB39   ="Took second vitamin supplement to treat or cure jaw pain"
      AVCTRB40   =
"Took second vitamin supplement to treat or cure joint pain or stiffness/other j
oint condition"
      AVCTRB41   =
"Took second vitamin supplement to treat or cure knee problems (not arthritis/no
t joint injury)"
      AVCTRB42   ="Took second vitamin supplement to treat or cure liver problem
"
      AVCTRB43   =
"Took second vitamin supplement to treat or cure lung/breathing problem (not alr
eady listed)"
      AVCTRB44   ="Took second vitamin supplement to treat or cure lupus"
      AVCTRB45   =
"Took second vitamin supplement to treat or cure mania or psychosis"
      AVCTRB46   =
"Took second vitamin supplement to treat or cure memory loss or loss of other co
gnitive function"
      AVCTRB47   ="Took second vitamin supplement to treat or cure menopause"
      AVCTRB48   =
"Took second vitamin supplement to treat or cure menstrual problems"
      AVCTRB49   =
"Took second vitamin supplement to treat or cure mental retardation"
      AVCTRB50   =
"Took second vitamin supplement to treat or cure missing limbs (fingers, toes, o
r digits), amputee"
      AVCTRB51   =
"Took second vitamin supplement to treat or cure osteoporosis, tendinitis"
      AVCTRB52   =
"Took second vitamin supplement to treat or cure other developmental problem"
      AVCTRB53   ="Took second vitamin supplement to treat or cure other injury"
      AVCTRB54   =
"Took second vitamin supplement to treat or cure other nerve damage, including c
arpal tunnel syndrome"
      AVCTRB55   =
"Took second vitamin supplement to treat or cure phobia or fears"
      AVCTRB56   =
"Took second vitamin supplement to treat or cure polio (myelitis), paralysis, pa
ra/quadraplegia"
      AVCTRB57   =
"Took second vitamin supplement to treat or cure poor circulation in legs"
      AVCTRB58   =
"Took second vitamin supplement to treat or cure prostate trouble or impotence"
      AVCTRB59   =
"Took second vitamin supplement to treat or cure regular headaches"
      AVCTRB60   =
"Took second vitamin supplement to treat or cure rheumatoid arthritis"
      AVCTRB61   ="Took second vitamin supplement to treat or cure schizophrenia
"
      AVCTRB62   ="Took second vitamin supplement to treat or cure seizures"
      AVCTRB63   ="Took second vitamin supplement to treat or cure senility"
      AVCTRB64   ="Took second vitamin supplement to treat or cure sinusitis"
      AVCTRB65   ="Took second vitamin supplement to treat or cure skin problems
"
      AVCTRB66   =
"Took second vitamin supplement to treat or cure sprain or strain"
      AVCTRB67   ="Took second vitamin supplement to treat or cure stroke"
      AVCTRB68   =
"Took second vitamin supplement to treat or cure substance abuse, other than alc
ohol or tobacco"
      AVCTRB69   =
"Took second vitamin supplement to treat or cure other (specify)"
      AVCTRB70   =
"Took second vitamin supplement to treat or cure other (specify)"
      AVCTRB71   ="Took second vitamin supplement to treat or cure ulcer"
      AVCTRB72   =
"Took second vitamin supplement to treat or cure urinary problem"
      AVCTRB73   =
"Took second vitamin supplement to treat or cure varicose veins, hemorrhoids"
      AVCTRB74   =
"Took second vitamin supplement to treat or cure vision problem"
      AVCTRB75   =
"Took second vitamin supplement to treat or cure weak or failing kidneys"
      AVCTRB76   =
"Took second vitamin supplement to treat or cure weight problem"
      AVCTRB77   =
"Took second vitamin supplement to treat or cure back pain or problem"
      AVCTRB78   =
"Took second vitamin supplement to treat or cure head or chest cold"
      AVCTRB79   =
"Took second vitamin supplement to treat or cure neck pain or problem"
      AVCTRB80   =
"Took second vitamin supplement to treat or cure severe headache or migraine"
      AVCTRB81   =
"Took second vitamin supplement to treat or cure stomach or intestinal illness"
      AVCTRB82   =
"Took second vitamin supplement to treat or cure other (specify)"
      AVCTRB83   =
"Took second vitamin supplement to treat or cure anemia and other blood disorder
s"
      AVCTRB84   =
"Took second vitamin supplement to treat or cure other allergies"
      AVCTRB85   =
"Took second vitamin supplement to treat or cure other infectious diseases and p
roblems of the immune system"
      AVCTRB86   =
"Took second vitamin supplement to treat or cure other musculoskeletal"
      AVCTRB87   ="Took second vitamin supplement to treat or cure stress"
      AVTCTBCT   =
"Condition count for second vitamin or mineral used to treat a condition"
      AVT_SPT2   =
"Took second vitamin supplement to treat or cure other (specify)"
      AVT_CONB   =
"Condition for which the second vitamin supplement was taken to treat or cure th
e most"
      AVTMEDB0   =
"Received no conventional medical treatment for condition for which the second v
itamin supplement was used to treat or cure the most"
      AVTMEDB1   =
"Received prescription medications for condition for which the second vitamin su
pplement was used to treat or cure the most"
      AVTMEDB2   =
"Received over-the-counter medications for condition for which the second vitami
n supplement was used to treat or cure the most"
      AVTMEDB3   =
"Received surgery for condition for which the second vitamin supplement was used
 to treat or cure the most"
      AVTMEDB4   =
"Received physical therapy for condition for which the second vitamin supplement
 was used to treat or cure the most"
      AVTMEDB5   =
"Received mental health counseling for condition for which the second vitamin su
pplement was used to treat or cure the most"
      AVT_TM1B   =
"Time received prescription medications for the condition they used the first vi
tamin supplement to treat or cure the most"
      AVT_TM2B   =
"Time received over-the-counter medications for the condition they used the firs
t vitamin supplement to treat or cure the most"
      AVT_TM3B   =
"Time received surgery for the condition they used the first vitamin supplement 
to treat or cure the most"
      AVT_TM4B   =
"Time received physical therapy for the condition they used the first vitamin su
pplement to treat or cure the most"
      AVT_TM5B   =
"Time received mental health counseling for the condition they used the first vi
tamin supplement to treat or cure the most"
      AVCNPB01   =
"Took second vitamin supplement to prevent acid reflux or heartburn"
      AVCNPB02   ="Took second vitamin supplement to prevent angina"
      AVCNPB03   ="Took second vitamin supplement to prevent anxiety"
      AVCNPB04   ="Took second vitamin supplement to prevent asthma"
      AVCNPB05   ="Took second vitamin supplement to prevent arthritis"
      AVCNPB06   =
"Took second vitamin supplement to prevent Attention Deficit Disorder/Hyperactiv
ity"
      AVCNPB07   ="Took second vitamin supplement to prevent autism"
      AVCNPB08   =
"Took second vitamin supplement to prevent benign tumors, cysts"
      AVCNPB09   ="Took second vitamin supplement to prevent bipolar disorder"
      AVCNPB10   ="Took second vitamin supplement to prevent birth defect"
      AVCNPB11   ="Took second vitamin supplement to prevent cancer"
      AVCNPB12   ="Took second vitamin supplement to prevent cholesterol"
      AVCNPB13   ="Took second vitamin supplement to prevent chronic bronchitis"
      AVCNPB14   =
"Took second vitamin supplement to prevent circulation problems (other than in t
he legs)"
      AVCNPB15   =
"Took second vitamin supplement to prevent constipation severe enough to require
 medication"
      AVCNPB16   =
"Took second vitamin supplement to prevent coronary heart disease"
      AVCNPB17   =
"Took second vitamin supplement to prevent dementia, including Alzheimer's disea
se"
      AVCNPB18   ="Took second vitamin supplement to prevent dental pain"
      AVCNPB19   ="Took second vitamin supplement to prevent depression"
      AVCNPB20   ="Took second vitamin supplement to prevent diabetes"
      AVCNPB21   ="Took second vitamin supplement to prevent emphysema"
      AVCNPB22   =
"Took second vitamin supplement to prevent excessive sleepiness during the day"
      AVCNPB23   =
"Took second vitamin supplement to prevent excessive use of alcohol or tobacco"
      AVCNPB24   ="Took second vitamin supplement to prevent fibromyalgia"
      AVCNPB25   =
"Took second vitamin supplement to prevent fracture, bone/joint injury"
      AVCNPB26   ="Took second vitamin supplement to prevent gout"
      AVCNPB27   ="Took second vitamin supplement to prevent gum disease"
      AVCNPB28   ="Took second vitamin supplement to prevent gynecologic problem
"
      AVCNPB29   ="Took second vitamin supplement to prevent hay fever"
      AVCNPB30   ="Took second vitamin supplement to prevent hearing problem"
      AVCNPB31   ="Took second vitamin supplement to prevent heart attack"
      AVCNPB32   =
"Took second vitamin supplement to prevent other heart condition or disease"
      AVCNPB33   ="Took second vitamin supplement to prevent hernia"
      AVCNPB34   ="Took second vitamin supplement to prevent hypertention"
      AVCNPB35   =
"Took second vitamin supplement to prevent inflammatory bowel disease"
      AVCNPB36   =
"Took second vitamin supplement to prevent influenza or pneumonia"
      AVCNPB37   =
"Took second vitamin supplement to prevent insomnia or trouble sleeping"
      AVCNPB38   ="Took second vitamin supplement to prevent irritable bowel"
      AVCNPB39   ="Took second vitamin supplement to prevent jaw pain"
      AVCNPB40   =
"Took second vitamin supplement to prevent joint pain or stiffness/other joint c
ondition"
      AVCNPB41   =
"Took second vitamin supplement to prevent knee problems (not arthritis/not join
t injury)"
      AVCNPB42   ="Took second vitamin supplement to prevent liver problem"
      AVCNPB43   =
"Took second vitamin supplement to prevent lung/breathing problem (not already l
isted)"
      AVCNPB44   ="Took second vitamin supplement to prevent lupus"
      AVCNPB45   ="Took second vitamin supplement to prevent mania or psychosis"
      AVCNPB46   =
"Took second vitamin supplement to prevent memory loss or loss of other cognitiv
e function"
      AVCNPB47   ="Took second vitamin supplement to prevent menopause"
      AVCNPB48   ="Took second vitamin supplement to prevent menstrual problems"
      AVCNPB49   ="Took second vitamin supplement to prevent mental retardation"
      AVCNPB50   =
"Took second vitamin supplement to prevent missing limbs (fingers, toes, or digi
ts), amputee"
      AVCNPB51   =
"Took second vitamin supplement to prevent osteoporosis, tendinitis"
      AVCNPB52   =
"Took second vitamin supplement to prevent other developmental problem"
      AVCNPB53   ="Took second vitamin supplement to prevent other injury"
      AVCNPB54   =
"Took second vitamin supplement to prevent other nerve damage, including carpal 
tunnel syndrome"
      AVCNPB55   ="Took second vitamin supplement to prevent phobia or fears"
      AVCNPB56   =
"Took second vitamin supplement to prevent polio (myelitis), paralysis, para/qua
draplegia"
      AVCNPB57   =
"Took second vitamin supplement to prevent poor circulation in legs"
      AVCNPB58   =
"Took second vitamin supplement to prevent prostate trouble or impotence"
      AVCNPB59   ="Took second vitamin supplement to prevent regular headaches"
      AVCNPB60   =
"Took second vitamin supplement to prevent rheumatoid arthritis"
      AVCNPB61   ="Took second vitamin supplement to prevent schizophrenia"
      AVCNPB62   ="Took second vitamin supplement to prevent seizures"
      AVCNPB63   ="Took second vitamin supplement to prevent senility"
      AVCNPB64   ="Took second vitamin supplement to prevent sinusitis"
      AVCNPB65   ="Took second vitamin supplement to prevent skin problems"
      AVCNPB66   ="Took second vitamin supplement to prevent sprain or strain"
      AVCNPB67   ="Took second vitamin supplement to prevent stroke"
      AVCNPB68   =
"Took second vitamin supplement to prevent substance abuse, other than alcohol o
r tobacco"
      AVCNPB69   ="Took second vitamin supplement to prevent other (specify)"
      AVCNPB70   ="Took second vitamin supplement to prevent other (specify)"
      AVCNPB71   ="Took second vitamin supplement to prevent ulcer"
      AVCNPB72   ="Took second vitamin supplement to prevent urinary problem"
      AVCNPB73   =
"Took second vitamin supplement to prevent varicose veins, hemorrhoids"
      AVCNPB74   ="Took second vitamin supplement to prevent vision problem"
      AVCNPB75   =
"Took second vitamin supplement to prevent weak or failing kidneys"
      AVCNPB76   ="Took second vitamin supplement to prevent weight problem"
      AVCNPB77   =
"Took second vitamin supplement to prevent back pain or problem"
      AVCNPB78   ="Took second vitamin supplement to prevent head or chest cold"
      AVCNPB79   =
"Took second vitamin supplement to prevent neck pain or problem"
      AVCNPB80   =
"Took second vitamin supplement to prevent severe headache or migraine"
      AVCNPB81   =
"Took second vitamin supplement to prevent stomach or intestinal illness"
      AVCNPB82   ="Took second vitamin supplement to prevent other (specify)"
      AVCNPB83   =
"Took second vitamin supplement to prevent anemia and other blood disorders"
      AVCNPB84   ="Took second vitamin supplement to prevent other allergies"
      AVCNPB85   =
"Took second vitamin supplement to prevent other infectious diseases and problem
s of the immune system"
      AVCNPB86   =
"Took second vitamin supplement to prevent other musculoskeletal"
      AVCNPB87   ="Took second vitamin supplement to prevent stress"
      AVTCPBCT   =
"Condition count for second vitamin or mineral used to prevent a condition"
      AVT_SPP2   ="Took second vitamin supplement to prevent other (specify)"
      AVT_CMPB   =
"Condition for which second vitamin supplement was taken to prevent the most"
      AVTDISC    =
"Let conventional medical professional know about use of vitamins"
      AVTPRF1    =
"Let medical doctor (including specialists) know about use of vitamins"
      AVTPRF2    ="Let Doctor of Osteopathy (D.O.) know about use of vitamins"
      AVTPRF3    =
"Let nurse practitioner/physician assistant know about use of vitamins"
      AVTPRF4    ="Let psychiatrist know about use of vitamins"
      AVTPRF5    =
"Let dentist (including specialists) know about use of vitamins"
      AVTPRF6    ="Let psychologist/social worker know about use of vitamins"
      AVTPRF7    ="Let pharmacist know about use of vitamins"
      AHB_OFTN   ="How often herbal supplements are purchased: Number"
      AHB_OFTT   ="How often herbal supplements are purchased: Time period"
      AHB_COST   ="Amount spent last time herbal supplements were purchased"
      AVT_OFTN   ="How often vitamins or minerals are purchased: Number"
      AVT_OFTT   ="How often vitamins or minerals are purchased: Time period"
      AVT_COST   =
"Amount spent the last time vitamins or minerals were purchased"
      HOM_EVER   ="Ever used homeopathic treatment"
      HOM_USEM   ="Used homeopathic treatment, past 12 months"
      HOMNO      ="How often homeopathic medicine is purchased: Number"
      HOMTP      ="How often homeopathic medicine is purchased: Time period"
      HOM_SPEN   ="Amount spent the last time homeopathic medicine was purchased
"
      HOM_TRET   =
"Used homeopathic treatment for a specific health problem or condition"
      HOMCND01   ="Used homeopathic treatment for acid reflux or heartburn"
      HOMCND02   ="Used homeopathic treatment for angina"
      HOMCND03   ="Used homeopathic treatment for anxiety"
      HOMCND04   ="Used homeopathic treatment for asthma"
      HOMCND05   ="Used homeopathic treatment for arthritis"
      HOMCND06   =
"Used homeopathic treatment for Attention Deficit Disorder/Hyperactivity"
      HOMCND07   ="Used homeopathic treatment for autism"
      HOMCND08   ="Used homeopathic treatment for benign tumors, cysts"
      HOMCND09   ="Used homeopathic treatment for bipolar disorder"
      HOMCND10   ="Used homeopathic treatment for birth defect"
      HOMCND11   ="Used homeopathic treatment for cancer"
      HOMCND12   ="Used homeopathic treatment for cholesterol"
      HOMCND13   ="Used homeopathic treatment for chronic bronchitis"
      HOMCND14   =
"Used homeopathic treatment for circulation problems (other than in the legs)"
      HOMCND15   =
"Used homeopathic treatment for constipation severe enough to require medication
"
      HOMCND16   ="Used homeopathic treatment for coronary heart disease"
      HOMCND17   =
"Used homeopathic treatment for dementia, including Alzheimer's Disease"
      HOMCND18   ="Used homeopathic treatment for dental pain"
      HOMCND19   ="Used homeopathic treatment for depression"
      HOMCND20   ="Used homeopathic treatment for diabetes"
      HOMCND21   ="Used homeopathic treatment for emphysema"
      HOMCND22   =
"Used homeopathic treatment for excessive sleepiness during the day"
      HOMCND23   =
"Used homeopathic treatment for excessive use of alcohol or tobacco"
      HOMCND24   ="Used homeopathic treatment for fibromyalgia"
      HOMCND25   ="Used homeopathic treatment for fracture, bone/joint injury"
      HOMCND26   ="Used homeopathic treatment for gout"
      HOMCND27   ="Used homeopathic treatment for gum disease"
      HOMCND28   ="Used homeopathic treatment for gynecologic problem"
      HOMCND29   ="Used homeopathic treatment for hay fever"
      HOMCND30   ="Used homeopathic treatment for hearing problem"
      HOMCND31   ="Used homeopathic treatment for heart attack"
      HOMCND32   =
"Used homeopathic treatment for other heart condition or disease"
      HOMCND33   ="Used homeopathic treatment for hernia"
      HOMCND34   ="Used homeopathic treatment for hypertension"
      HOMCND35   ="Used homeopathic treatment for inflammatory bowel disease"
      HOMCND36   ="Used homeopathic treatment for influenza or pneumonia"
      HOMCND37   ="Used homeopathic treatment for insomnia or trouble sleeping"
      HOMCND38   ="Used homeopathic treatment for irritable bowel"
      HOMCND39   ="Used homeopathic treatment for jaw pain"
      HOMCND40   =
"Used homeopathic treatment for joint pain or stiffness/other joint condition"
      HOMCND41   =
"Used homeopathic treatment for knee problems (not arthritis, not joint injury)"
      HOMCND42   ="Used homeopathic treatment for liver problem"
      HOMCND43   =
"Used homeopathic treatment for lung/breathing problem (not already listed)"
      HOMCND44   ="Used homeopathic treatment for lupus"
      HOMCND45   ="Used homeopathic treatment for mania or psychosis"
      HOMCND46   =
"Used homeopathic treatment for memory loss or loss of other cognitive function"
      HOMCND47   ="Used homeopathic treatment for menopause"
      HOMCND48   ="Used homeopathic treatment for menstrual problems"
      HOMCND49   ="Used homeopathic treatment for mental retardation"
      HOMCND50   =
"Used homeopathic treatment for missing limbs (fingers, toes or digits), amputee
"
      HOMCND51   ="Used homeopathic treatment for osteoporosis, tendinitis"
      HOMCND52   ="Used homeopathic treatment for other developmental problem"
      HOMCND53   ="Used homeopathic treatment for other injury"
      HOMCND54   =
"Used homeopathic treatment for other nerve damage, including carpal tunnel synd
rome"
      HOMCND55   ="Used homeopathic treatment for phobia or fears"
      HOMCND56   =
"Used homeopathic treatment for polio (myelitis), paralysis, para/quadriplegia"
      HOMCND57   ="Used homeopathic treatment for poor circulation in legs"
      HOMCND58   ="Used homeopathic treatment for prostate trouble or impotence"
      HOMCND59   ="Used homeopathic treatment for regular headaches"
      HOMCND60   ="Used homeopathic treatment for rheumatoid arthritis"
      HOMCND61   ="Used homeopathic treatment for schizophrenia"
      HOMCND62   ="Used homeopathic treatment for seizures"
      HOMCND63   ="Used homeopathic treatment for senility"
      HOMCND64   ="Used homeopathic treatment for sinusitis"
      HOMCND65   ="Used homeopathic treatment for skin problems"
      HOMCND66   ="Used homeopathic treatment for sprain or strain"
      HOMCND67   ="Used homeopathic treatment for stroke"
      HOMCND68   =
"Used homeopathic treatment for substance abuse, other than alcohol or tobacco"
      HOMCND69   ="Used homeopathic treatment for other (specify)"
      HOMCND70   ="Used homeopathic treatment for other (specify)"
      HOMCND71   ="Used homeopathic treatment for ulcer"
      HOMCND72   ="Used homeopathic treatment for urinary problem"
      HOMCND73   ="Used homeopathic treatment for varicose veins, hemorrhoids"
      HOMCND74   ="Used homeopathic treatment for vision problem"
      HOMCND75   ="Used homeopathic treatment for weak or failing kidneys"
      HOMCND76   ="Used homeopathic treatment for weight problem"
      HOMCND77   ="Used homeopathic treatment for back pain or problem"
      HOMCND78   ="Used homeopathic treatment for head or chest cold"
      HOMCND79   ="Used homeopathic treatment for neck pain or problem"
      HOMCND80   ="Used homeopathic treatment for severe headache or migraine"
      HOMCND81   ="Used homeopathic treatment for stomach or intestinal illness"
      HOMCND82   ="Used homeopathic treatment for other (specify)"
      HOMCND83   =
"Used homeopathic treatment for anemia and other blood disorders"
      HOMCND84   ="Used homeopathic treatment for other allergies"
      HOMCND85   =
"Used homeopathic treatment for other infectious diseases and problems of the im
mune system"
      HOMCND86   ="Used homeopathic treatment for other musculoskeletal"
      HOMCND87   ="Used homeopathic treatment for stress"
      HOMCONCT   ="Condition count for homeopathic treatment"
      HOM_SPEC   ="Used homeopathic treatment for other (specify)"
      HOM_MOST   ="Condition for which homeopathic treatment was used the most"
      HOMMED00   =
"Received no conventional medical treatment for condition for which homeopathic 
treatment was used the most"
      HOMMED01   =
"Received prescription medications for condition for which homeopathic treatment
 was used the most"
      HOMMED02   =
"Received over-the-counter medications for condition for which homeopathic treat
ment was used the most"
      HOMMED03   =
"Received surgery for condition for which homeopathic treatment was used the mos
t"
      HOMMED04   =
"Received physical therapy for condition for which homeopathic treatment was use
d the most"
      HOMMED05   =
"Received mental health counseling for condition for which homeopathic treatment
 was used the most"
      HOM_TIM1   =
"Time received prescription medications for condition for which homeopathic trea
tment was used the most"
      HOM_TIM2   =
"Time received over-the-counter medications for condition for which homeopathic 
treatment was used the most"
      HOM_TIM3   =
"Time received surgery for condition for which homeopathic treatment was used th
e most"
      HOM_TIM4   =
"Time received physical therapy for condition for which homeopathic treatment wa
s used the most"
      HOM_TIM5   =
"Time received mental health counseling for condition for which homeopathic trea
tment was used the most"
      HOM_ENG    ="Used homeopathic treatment to improve or enhance energy"
      HOM_WEL    =
"Used homeopathic treatment for general wellness or general disease prevention"
      HOM_IMM    =
"Used homeopathic treatment to improve or enhance immune function"
      HOM_NOHP   =
"Used homeopathic treatment because medical treatments did not help"
      HOM_EXPS   =
"Used homeopathic treatment because medical treatments were too expensive"
      HOM_SUGG   =
"Used homeopathic treatment because it was recommended by a health care provider
"
      HOM_FFC    =
"Used homeopathic treatment because it was recommended by family, friends, or co
-workers"
      HOM_PRAC   ="Ever saw a practitioner for homeopathic treatment"
      HOM_YR     ="Saw practitioner for homeopathic treatment, past 12 months"
      HOM_NUM    ="Number of times saw practitioner for homeopathic treatment"
      HOM_PAY    =
"Amount paid per visit to practitioner for homeopathic treatment"
      HOMDISC    =
"Let conventional medical professional know about use of homeopathic treatment"
      HOMPRF1    =
"Let medical doctor (including specialists) know about use of homeopathic treatm
ent"
      HOMPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of homeopathic treatment"
      HOMPRF3    =
"Let nurse practitioner/physician assistant know about use of homeopathic treatm
ent"
      HOMPRF4    ="Let psychiatrist know about use of homeopathic treatment"
      HOMPRF5    =
"Let dentist (including specialists) know about use of homeopathic treatment"
      HOMPRF6    =
"Let psychologist/social worker know about use of homeopathic treatment"
      HOMPRF7    ="Let pharmacist know about use of homeopathic treatment"
      DITEVER1   ="Ever used a vegetarian diet"
      DITEVER2   ="Ever used a macrobiotic diet"
      DITEVER3   ="Ever used the Atkins diet"
      DITEVER4   ="Ever used the Pritikin diet"
      DITEVER5   ="Ever used the Ornish diet"
      DITEVER6   ="Ever used the Zone diet"
      DITEVER7   ="Ever used the South Beach diet"
      DITUSEM1   ="Used a vegetarian diet, past 12 months"
      DITUSEM2   ="Used a macrobiotic diet, past 12 months"
      DITUSEM3   ="Used the Atkins diet, past 12 months"
      DITUSEM4   ="Used the Pritikin diet, past 12 months"
      DITUSEM5   ="Used the Ornish diet, past 12 months"
      DITUSEM6   ="Used the Zone diet, past 12 months"
      DITUSEM7   ="Used the South Beach diet, past 12 months"
      DITUSECT   ="Number of special diets used"
      DIT_DMST   ="Special diet used the most"
      DIT_WGHT   ="Used special diet for weight control or weight loss"
      DIT_TRET   =
"Used a special diet to treat a specific health problem or condition"
      DITCND01   ="Used a special diet for acid reflux or heartburn"
      DITCND02   ="Used a special diet for angina"
      DITCND03   ="Used a special diet for anxiety"
      DITCND04   ="Used a special diet for asthma"
      DITCND05   ="Used a special diet for arthritis"
      DITCND06   =
"Used a special diet for Attention Deficit Disorder/Hyperactivity"
      DITCND07   ="Used a special diet for autism"
      DITCND08   ="Used a special diet for benign tumors, cysts"
      DITCND09   ="Used a special diet for bipolar disorder"
      DITCND10   ="Used a special diet for birth defect"
      DITCND11   ="Used a special diet for cancer"
      DITCND12   ="Used a special diet for cholesterol"
      DITCND13   ="Used a special diet for chronic bronchitis"
      DITCND14   =
"Used a special diet for circulation problems (other than in the legs)"
      DITCND15   =
"Used a special diet for constipation severe enough to require medication"
      DITCND16   ="Used a special diet for coronary heart disease"
      DITCND17   =
"Used a special diet for dementia, including Alzheimer's Disease"
      DITCND18   ="Used a special diet for dental pain"
      DITCND19   ="Used a special diet for depression"
      DITCND20   ="Used a special diet for diabetes"
      DITCND21   ="Used a special diet for emphysema"
      DITCND22   ="Used a special diet for excessive sleepiness during the day"
      DITCND23   ="Used a special diet for excessive use of alcohol or tobacco"
      DITCND24   ="Used a special diet for fibromyalgia"
      DITCND25   ="Used a special diet for fracture, bone/joint injury"
      DITCND26   ="Used a special diet for gout"
      DITCND27   ="Used a special diet for gum disease"
      DITCND28   ="Used a special diet for gynecologic problem"
      DITCND29   ="Used a special diet for hay fever"
      DITCND30   ="Used a special diet for hearing problem"
      DITCND31   ="Used a special diet for heart attack"
      DITCND32   ="Used a special diet for other heart condition or disease"
      DITCND33   ="Used a special diet for hernia"
      DITCND34   ="Used a special diet for hypertension"
      DITCND35   ="Used a special diet for inflammatory bowel disease"
      DITCND36   ="Used a special diet for influenza or pnemonia"
      DITCND37   ="Used a special diet for insomnia or trouble sleeping"
      DITCND38   ="Used a special diet for irritable bowel"
      DITCND39   ="Used a special diet for jaw pain"
      DITCND40   =
"Used a special diet for joint pain or stiffnes/other joint condition"
      DITCND41   =
"Used a special diet for knee problems (not arthritis, not joint injury)"
      DITCND42   ="Used a special diet for liver problem"
      DITCND43   =
"Used a special diet for lung/breathing problem (not already listed)"
      DITCND44   ="Used a special diet for lupus"
      DITCND45   ="Used a special diet for mania or psychosis"
      DITCND46   =
"Used a special diet for memory loss or loss of other cognitive function"
      DITCND47   ="Used a special diet for menopause"
      DITCND48   ="Used a special diet for menstrual problems"
      DITCND49   ="Used a special diet for mental retardation"
      DITCND50   =
"Used a special diet for missing limbs (fingers, toes or digits), amputee"
      DITCND51   ="Used a special diet for osteoporosis, tendinitis"
      DITCND52   ="Used a special diet for other developmental problems"
      DITCND53   ="Used a special diet for other injury"
      DITCND54   =
"Used a special diet for other nerve damage, including carpal tunnel syndrome"
      DITCND55   ="Used a special diet for phobia or fears"
      DITCND56   =
"Used a special diet for polio (myelitis), paralysis, para/quadriplegia"
      DITCND57   ="Used a special diet for poor circulation in legs"
      DITCND58   ="Used a special diet for prostate trouble or impotence"
      DITCND59   ="Used a special diet for regular headaches"
      DITCND60   ="Used a special diet for rheumatoid arthritis"
      DITCND61   ="Used a special diet for schizophrenia"
      DITCND62   ="Used a special diet for seizures"
      DITCND63   ="Used a special diet for senility"
      DITCND64   ="Used a special diet for sinusitis"
      DITCND65   ="Used a special diet for skin problems"
      DITCND66   ="Used a special diet for sprain or strain"
      DITCND67   ="Used a special diet for stroke"
      DITCND68   =
"Used a special diet for substance abuse, other than alcohol or tobacco"
      DITCND69   ="Used a special diet for other (specify)"
      DITCND70   ="Used a special diet for other (specify)"
      DITCND71   ="Used a special diet for ulcer"
      DITCND72   ="Used a special diet for urinary problem"
      DITCND73   ="Used a special diet for varicose veins, hemorrhoids"
      DITCND74   ="Used a special diet for vision problem"
      DITCND75   ="Used a special diet for weak or failing kidneys"
      DITCND76   ="Used a special diet for weight problem"
      DITCND77   ="Used a special diet for back pain or problem"
      DITCND78   ="Used a special diet for head or chest cold"
      DITCND79   ="Used a special diet for neck painn or problem"
      DITCND80   ="Used a special diet for severe headache or migraine"
      DITCND81   ="Used a special diet for stomach or intestinal illness"
      DITCND82   ="Used a special diet for other (specify)"
      DITCND83   ="Used a special diet for anemia and other blood disorders"
      DITCND84   ="Used a special diet for other allergies"
      DITCND85   =
"Used a special diet for other infectious diseases and problems of the immune sy
stem"
      DITCND86   ="Used a special diet for other musculoskeletal"
      DITCND87   ="Used a special diet for stress"
      DITCONCT   ="Condition count for special diets"
      DIT_SPEC   ="Used special diet for other (specify)"
      DIT_MOST   ="Condition for which a special diet was used the most"
      DITMED00   =
"Received no conventional medical treatment for condition for which a special di
et was used the most"
      DITMED01   =
"Received prescription medications for condition for which a special diet was us
ed the most"
      DITMED02   =
"Received over-the-counter medications for condition for which a special diet wa
s used the most"
      DITMED03   =
"Received surgery for condition for which a special diet was used the most"
      DITMED04   =
"Received physical therapy for condition for which a special diet was used the m
ost"
      DITMED05   =
"Received mental health counseling for condition for which a special diet was us
ed the most"
      DIT_TIM1   =
"Time received prescription medications for condition for which a special diet w
as used the most"
      DIT_TIM2   =
"Time received over-the-counter medications for condition for which a special di
et was used the most"
      DIT_TIM3   =
"Time received surgery for condition for which a special diet was used the most"
      DIT_TIM4   =
"Time received physical therapy for condition for which a special diet was used 
the most"
      DIT_TIM5   =
"Time received mental health counseling for condition for which a special diet w
as used the most"
      DIT_ENG    ="Used a special diet to improve or enhance energy"
      DIT_WEL    =
"Used a special diet for general wellness or general disease prevention"
      DIT_IMM    ="Used a special diet to improve or enhance immune function"
      DIT_NOHP   ="Used a special diet because medical treatments did not help"
      DIT_EXPS   =
"Used a special diet because medical treatments were too expensive"
      DIT_SUGG   =
"Used a special diet because it was recommended by a health care provider"
      DIT_FFC    =
"Used a special diet because it was recommended by family, friends, or co-worker
s"
      DIT_PRAC   ="Ever saw a practitioner for a special diet"
      DIT_YR     ="Saw a practitioner for a special diet, past 12 months"
      DITTYPE1   ="Saw a medical doctor for a special diet"
      DITTYPE2   ="Saw a nurse for a special diet"
      DITTYPE3   ="Saw a dietician/nutritionist for a special diet"
      DITTYPE4   =
"Saw an alternative provider (Acupuncturist, etc.) for a special diet"
      DITTYPE5   ="Saw other type of practitioner for a special diet"
      DIT_NUM    ="Number of times saw practitioner for a special diet"
      DIT_PAY    ="Amount paid per visit to practitioner for a special diet"
      DITDISC    =
"Let conventional medical professional know about use of special diet"
      DITPRF1    =
"Let medical doctor (including specialists) know about use of special diet"
      DITPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of special diet"
      DITPRF3    =
"Let nurse practitioner/physician assistant know about use of special diet"
      DITPRF4    ="Let psychiatrist know about use of special diet"
      DITPRF5    =
"Let dentist (including specialists) know about use of special diet"
      DITPRF6    ="Let psychologist/social worker know about use of special diet
"
      DITPRF7    ="Let pharmacist know about use of special diet"
      YTQE_YOG   ="Ever practiced yoga"
      YTQE_TAI   ="Ever practiced tai chi"
      YTQE_QIG   ="Ever practiced qi gong"
      YTQU_YOG   ="Practiced yoga, past 12 months"
      YTQU_TAI   ="Practiced tai chi, past 12 months"
      YTQU_QIG   ="Practiced qi gong, past 12 months"
      YTQUSECT   ="Number of practices (yoga, tai chi, and qi gong) used"
      YTQ_MOST   ="Practice used the most"
      YTQ_TRET   =
"Practiced yoga, tai chi, or qi gong for a specific health problem or condition"
      YTQCND01   =
"Practiced yoga, tai chi, or qi gong for acid reflux or heartburn"
      YTQCND02   ="Practiced yoga, tai chi, or qi gong for angina"
      YTQCND03   ="Practiced yoga, tai chi, or qi gong for anxiety"
      YTQCND04   ="Practiced yoga, tai chi, or qi gong for asthma"
      YTQCND05   ="Practiced yoga, tai chi, or qi gong for arthritis"
      YTQCND06   =
"Practiced yoga, tai chi, or qi gong for Attention Deficit Disorder/Hyperactivit
y"
      YTQCND07   ="Practiced yoga, tai chi, or qi gong for autism"
      YTQCND08   ="Practiced yoga, tai chi, or qi gong for benign tumors, cysts"
      YTQCND09   ="Practiced yoga, tai chi, or qi gong for bipolar disorder"
      YTQCND10   ="Practiced yoga, tai chi, or qi gong for birth defect"
      YTQCND11   ="Practiced yoga, tai chi, or qi gong for cancer"
      YTQCND12   ="Practiced yoga, tai chi, or qi gong for cholesterol"
      YTQCND13   ="Practiced yoga, tai chi, or qi gong for chronic bronchitis"
      YTQCND14   =
"Practiced yoga, tai chi, or qi gong for circulation problems (other than in the
 legs)"
      YTQCND15   =
"Practiced yoga, tai chi, or qi gong for constipation severe enough to require m
edication"
      YTQCND16   =
"Practiced yoga, tai chi, or qi gong for coronary heart disease"
      YTQCND17   =
"Practiced yoga, tai chi, or qi gong for dementia, including Alzheimer's Disease
"
      YTQCND18   ="Practiced yoga, tai chi, or qi gong for dental pain"
      YTQCND19   ="Practiced yoga, tai chi, or qi gong for depression"
      YTQCND20   ="Practiced yoga, tai chi, or qi gong for diabetes"
      YTQCND21   ="Practiced yoga, tai chi, or qi gong for emphysema"
      YTQCND22   =
"Practiced yoga, tai chi, or qi gong for excessive sleepiness during the day"
      YTQCND23   =
"Practiced yoga, tai chi, or qi gong for excessive use of alcohol or tobacco"
      YTQCND24   ="Practiced yoga, tai chi, or qi gong for fibromyalgia"
      YTQCND25   =
"Practiced yoga, tai chi, or qi gong for fracture, bone/joint injury"
      YTQCND26   ="Practiced yoga, tai chi, or qi gong for gout"
      YTQCND27   ="Practiced yoga, tai chi, or qi gong for gum disease"
      YTQCND28   ="Practiced yoga, tai chi, or qi gong for gynecologic problem"
      YTQCND29   ="Practiced yoga, tai chi, or qi gong for hay fever"
      YTQCND30   ="Practiced yoga, tai chi, or qi gong for hearing problem"
      YTQCND31   ="Practiced yoga, tai chi, or qi gong for heart attack"
      YTQCND32   =
"Practiced yoga, tai chi, or qi gong for other heart condition or disease"
      YTQCND33   ="Practiced yoga, tai chi, or qi gong for hernia"
      YTQCND34   ="Practiced yoga, tai chi, or qi gong for hypertension"
      YTQCND35   =
"Practiced yoga, tai chi, or qi gong for inflammatory bowel disease"
      YTQCND36   =
"Practiced yoga, tai chi, or qi gong for influenza or pneumonia"
      YTQCND37   =
"Practiced yoga, tai chi, or qi gong for insomnia or trouble sleeping"
      YTQCND38   ="Practiced yoga, tai chi, or qi gong for irritable bowel"
      YTQCND39   ="Practiced yoga, tai chi, or qi gong for jaw pain"
      YTQCND40   =
"Practiced yoga, tai chi, or qi gong for joint pain or stiffness/other joint con
dition"
      YTQCND41   =
"Practiced yoga, tai chi, or qi gong for knee problems (not arthritis, not joint
 injury)"
      YTQCND42   ="Practiced yoga, tai chi, or qi gong for liver problem"
      YTQCND43   =
"Practiced yoga, tai chi, or qi gong for lung/breathing problem (not already lis
ted)"
      YTQCND44   ="Practiced yoga, tai chi, or qi gong for lupus"
      YTQCND45   ="Practiced yoga, tai chi, or qi gong for mania or psychosis"
      YTQCND46   =
"Practiced yoga, tai chi, or qi gong for memory loss or loss of other cognitive 
function"
      YTQCND47   ="Practiced yoga, tai chi, or qi gong for menopause"
      YTQCND48   ="Practiced yoga, tai chi, or qi gong for menstrual problems"
      YTQCND49   ="Practiced yoga, tai chi, or qi gong for mental retardation"
      YTQCND50   =
"Practiced yoga, tai chi, or qi gong for missing limbs (fingers, toes or digits)
, amputee"
      YTQCND51   =
"Practiced yoga, tai chi, or qi gong for osteoporosis, tendinitis"
      YTQCND52   =
"Practiced yoga, tai chi, or qi gong for other developmental problem"
      YTQCND53   ="Practiced yoga, tai chi, or qi gong for other injury"
      YTQCND54   =
"Practiced yoga, tai chi, or qi gong for other nerve damage, including carpal tu
nnel syndrome"
      YTQCND55   ="Practiced yoga, tai chi, or qi gong for phobia or fears"
      YTQCND56   =
"Practiced yoga, tai chi, or qi gong for polio (myelitis), paralysis, para/quadr
iplegia"
      YTQCND57   =
"Practiced yoga, tai chi, or qi gong for poor circulation in legs"
      YTQCND58   =
"Practiced yoga, tai chi, or qi gong for prostate trouble or impotence"
      YTQCND59   ="Practiced yoga, tai chi, or qi gong for regular headaches"
      YTQCND60   ="Practiced yoga, tai chi, or qi gong for rheumatoid arthritis"
      YTQCND61   ="Practiced yoga, tai chi, or qi gong for schizophrenia"
      YTQCND62   ="Practiced yoga, tai chi, or qi gong for seizures"
      YTQCND63   ="Practiced yoga, tai chi, or qi gong for senility"
      YTQCND64   ="Practiced yoga, tai chi, or qi gong for sinusitis"
      YTQCND65   ="Practiced yoga, tai chi, or qi gong for skin problems"
      YTQCND66   ="Practiced yoga, tai chi, or qi gong for sprain or strain"
      YTQCND67   ="Practiced yoga, tai chi, or qi gong for stroke"
      YTQCND68   =
"Practiced yoga, tai chi, or qi gong for substance abuse, other than alcohol or 
tobacco"
      YTQCND69   ="Practiced yoga, tai chi, or qi gong for other (specify)"
      YTQCND70   ="Practiced yoga, tai chi, or qi gong for other (specify)"
      YTQCND71   ="Practiced yoga, tai chi, or qi gong for ulcer"
      YTQCND72   ="Practiced yoga, tai chi, or qi gong for urinary problem"
      YTQCND73   =
"Practiced yoga, tai chi, or qi gong for varicose veins, hemorrhoids"
      YTQCND74   ="Practiced yoga, tai chi, or qi gong for vision problem"
      YTQCND75   =
"Practiced yoga, tai chi, or qi gong for weak or failing kidneys"
      YTQCND76   ="Practiced yoga, tai chi, or qi gong for weight problem"
      YTQCND77   ="Practiced yoga, tai chi, or qi gong for back pain or problem"
      YTQCND78   ="Practiced yoga, tai chi, or qi gong for head or chest cold"
      YTQCND79   ="Practiced yoga, tai chi, or qi gong for neck pain or problem"
      YTQCND80   =
"Practiced yoga, tai chi, or qi gong for severe headache or migraine"
      YTQCND81   =
"Practiced yoga, tai chi, or qi gong for stomach or intestinal illness"
      YTQCND82   ="Practiced yoga, tai chi, or qi gong for other (specify)"
      YTQCND83   =
"Practiced yoga, tai chi, or qi gong for anemia and other blood disorders"
      YTQCND84   ="Practiced yoga, tai chi, or qi gong for other allergies"
      YTQCND85   =
"Practiced yoga, tai chi, or qi gong for other infectious diseases and problems 
of the immune system"
      YTQCND86   ="Practiced yoga, tai chi, or qi gong for other musculoskeletal
"
      YTQCND87   ="Practiced yoga, tai chi, or qi gong for stress"
      YTQCONCT   ="Condition count for yoga, tai chi, and qi gong"
      YTQ_SPEC   ="Practiced yoga, tai chi, or qi gong for other (specify)"
      YTQ_CONM   =
"Condition for which yoga, tai chi, or qi gong was used the most"
      YTQMED00   =
"Received no conventional medical treatment for condition for which yoga, tai ch
i, or qi gong was used the most"
      YTQMED01   =
"Received prescription medications for condition for which yoga, tai chi, or qi 
gong was used the most"
      YTQMED02   =
"Received over-the-counter medications for condition for which yoga, tai chi, or
 qi gong was used the most"
      YTQMED03   =
"Received surgery for condition for which yoga, tai chi, or qi gong was used the
 most"
      YTQMED04   =
"Received physical therapy for condition for which yoga, tai chi, or qi gong was
 used the most"
      YTQMED05   =
"Received mental health counseling for condition for which yoga, tai chi, or qi 
gong was used the most"
      YTQ_TIM1   =
"Time received prescription medications for condition for which yoga, tai chi, o
r qi gong was practiced the most"
      YTQ_TIM2   =
"Time received over-the-counter medications for condition for which yoga, tai ch
i, or qi gong was practiced the most"
      YTQ_TIM3   =
"Time received surgery for condition for which yoga, tai chi, or qi gong was pra
cticed the most"
      YTQ_TIM4   =
"Time received physical therapy for condition for which yoga, tai chi, or qi gon
g was practiced the most"
      YTQ_TIM5   =
"Time received mental health counseling for condition for which yoga, tai chi, o
r qi gong was practiced the most"
      YTQ_ENG    =
"Practiced yoga, tai chi, or qi gong to improve or enhance energy"
      YTQ_WEL    =
"Practiced yoga, tai chi, or qi gong for general wellness or general disease pre
vention"
      YTQ_IMM    =
"Practiced yoga, tai chi, or qi gong to improve or enhance immune function"
      YTQ_NOHP   =
"Practiced yoga, tai chi, or qi gong because medical treatments did not help"
      YTQ_EXPS   =
"Practiced yoga, tai chi, or qi gong because medical treatments were too expensi
ve"
      YTQ_SUGG   =
"Practiced yoga, tai chi, or qi gong because it was recommended by a health care
 provider"
      YTQ_FFC    =
"Practiced yoga, tai chi, or qi gong because it was recommended by family, frien
ds, or co-workers"
      YTQ_CLAS   =
"Took class or received formal training for yoga, tai chi, or qi gong, past 12 m
onths"
      YTQ_CLSO   =
"Number of times took a class or had  formal training for yoga, tai chi, or qi g
ong"
      YTQ_PAY    =
"Amount paid for each class or formal training for yoga, tai chi, or qi gong"
      YTQDISC    =
"Let conventional medical professional know about practice of yoga, tai chi, or 
qi gong"
      YTQPRF1    =
"Let medical doctor (including specialists) know about use of yoga, tai chi, or 
qi gong"
      YTQPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of yoga, tai chi, or qi gong"
      YTQPRF3    =
"Let nurse practitioner/physician assistant know about use of yoga, tai chi, or 
qi gong"
      YTQPRF4    ="Let psychiatrist know about use of yoga, tai chi, or qi gong"
      YTQPRF5    =
"Let dentist (including specialists) know about use of yoga, tai chi, or qi gong
"
      YTQPRF6    =
"Let psychologist/social worker know about use of yoga, tai chi, or qi gong"
      YTQPRF7    ="Let pharmacist know about use of yoga, tai chi, or qi gong"
      YTQNOTU1   =
"Did not practice yoga during the past 12 months because I never thought about i
t"
      YTQNOTU2   ="Did not practice yoga during the past 12 months for no reason
"
      YTQNOTU3   =
"Did not practice yoga during the past 12 months because I didn't need it in the
 last 12 months"
      YTQNOTU4   =
"Did not practice yoga during the past 12 months because it didn't work for me b
efore"
      YTQNOTU5   =
"Did not practice yoga during the past 12 months because it costs too much"
      YTQNOTU6   =
"Did not practice yoga during the past 12 months because I had side effects last
 time"
      YTQNOTU7   =
"Did not practice yoga during the past 12 months because a health care provider 
told me not to use it"
      YTQNOTU8   =
"Did not practice yoga during the past 12 months because medical science has not
 shown that it works"
      YTQNOTU9   =
"Did not practice yoga during the past 12 months for some other reason"
      YTQ_SDEF   ="Kinds of side effects from practicing yoga"
      YTQ_ATT    ="Side effects from practicing yoga required medical attention"
      YTQNVU01   =
"Never practiced yoga because I never heard of it/don't know much about it"
      YTQNVU02   ="Never practiced yoga because I never thought about it"
      YTQNVU03   ="Never practiced yoga for no reason"
      YTQNVU04   ="Never practiced yoga because I don't need it"
      YTQNVU05   =
"Never practiced yoga because I don't believe in it/it doesn't work"
      YTQNVU06   ="Never practiced yoga because it costs too much"
      YTQNVU07   ="Never practiced yoga because it is not safe to use"
      YTQNVU08   =
"Never practiced yoga because a health care provider told me not to use it"
      YTQNVU09   =
"Never practiced yoga because medical science has not shown that it works"
      YTQNVU10   ="Never practiced yoga for some other reason"
      RELE_MED   ="Ever used meditation"
      RELE_GIM   ="Ever used guided imagery"
      RELE_PRO   ="Ever used progressive relaxation"
      RELE_DBE   ="Ever used deep breathing exercises"
      RELE_SUP   ="Ever used support group meeting"
      RELE_STR   ="Ever used stress management class"
      RELU_MED   ="Used meditation, past 12 months"
      RELU_GIM   ="Used guided imagery, past 12 months"
      RELU_PRO   ="Used progressive relaxation, past 12 months"
      RELU_DBE   ="Used deep breathing exercises, past 12 months"
      RELU_SUP   ="Used support group meeting, past 12 months"
      RELU_STR   ="Used stress management class, past 12 months"
      RELUSECT   ="Number of relaxation techniques used"
      REL_RMST   ="Relaxation technique used the most"
      REL_TRET   =
"Used relaxation technique for a specific health problem or condition"
      RELCND01   ="Used relaxation technique for acid reflux or heartburn"
      RELCND02   ="Used relaxation technique for angina"
      RELCND03   ="Used relaxation technique for anxiety"
      RELCND04   ="Used relaxation technique for asthma"
      RELCND05   ="Used relaxation technique for arthritis"
      RELCND06   =
"Used relaxation technique for Attention Deficit Disorder/Hyperactivity"
      RELCND07   ="Used relaxation technique for autism"
      RELCND08   ="Used relaxation technique for benign tumors, cysts"
      RELCND09   ="Used relaxation technique for bipolar disorder"
      RELCND10   ="Used relaxation technique for birth defect"
      RELCND11   ="Used relaxation technique for cancer"
      RELCND12   ="Used relaxation technique for cholesterol"
      RELCND13   ="Used relaxation technique for chronic bronchitis"
      RELCND14   =
"Used relaxation technique for circulation problems (other than in the legs)"
      RELCND15   =
"Used relaxation technique for constipation severe enough to require medication"
      RELCND16   ="Used relaxation technique for coronary heart disease"
      RELCND17   =
"Used relaxation technique for dementia, including Alzheimer’s Disease"
      RELCND18   ="Used relaxation technique for dental pain"
      RELCND19   ="Used relaxation technique for depression"
      RELCND20   ="Used relaxation technique for diabetes"
      RELCND21   ="Used relaxation technique for emphysema"
      RELCND22   =
"Used relaxation technique for excessive sleepiness during the day"
      RELCND23   =
"Used relaxation technique for excessive use of alcohol or tobacco"
      RELCND24   ="Used relaxation technique for fibromyalgia"
      RELCND25   ="Used relaxation technique for fracture, bone/joint injury"
      RELCND26   ="Used relaxation technique for gout"
      RELCND27   ="Used relaxation technique for gum disease"
      RELCND28   ="Used relaxation technique for gynecologic problem"
      RELCND29   ="Used relaxation technique for hay fever"
      RELCND30   ="Used relaxation technique for hearing problem"
      RELCND31   ="Used relaxation technique for heart attack"
      RELCND32   =
"Used relaxation technique for other heart condition or disease"
      RELCND33   ="Used relaxation technique for hernia"
      RELCND34   ="Used relaxation technique for hypertension"
      RELCND35   ="Used relaxation technique for inflammatory bowel disease"
      RELCND36   ="Used relaxation technique for influenza or pneumonia"
      RELCND37   ="Used relaxation technique for insomnia or trouble sleeping"
      RELCND38   ="Used relaxation technique for irritable bowel"
      RELCND39   ="Used relaxation technique for jaw pain"
      RELCND40   =
"Used relaxation technique for joint pain or stiffness/other joint condition"
      RELCND41   =
"Used relaxation technique for knee problems (not arthritis, not joint injury)"
      RELCND42   ="Used relaxation technique for liver problem"
      RELCND43   =
"Used relaxation technique for lung/breathing problem (not already listed)"
      RELCND44   ="Used relaxation technique for lupus"
      RELCND45   ="Used relaxation technique for mania or psychosis"
      RELCND46   =
"Used relaxation technique for memory loss or loss of other cognitive function"
      RELCND47   ="Used relaxation technique for menopause"
      RELCND48   ="Used relaxation technique for menstrual problems"
      RELCND49   ="Used relaxation technique for mental retardation"
      RELCND50   =
"Used relaxation technique for missing limbs (fingers, toes or digits), amputee"
      RELCND51   ="Used relaxation technique for osteoporosis, tendinitis"
      RELCND52   ="Used relaxation technique for other developmental problem"
      RELCND53   ="Used relaxation technique for other injury"
      RELCND54   =
"Used relaxation technique for other nerve damage, including carpal tunnel syndr
ome"
      RELCND55   ="Used relaxation technique for phobia or fears"
      RELCND56   =
"Used relaxation technique for polio (myelitis), paralysis, para/quadriplegia"
      RELCND57   ="Used relaxation technique for poor circulation in legs"
      RELCND58   ="Used relaxation technique for prostate trouble or impotence"
      RELCND59   ="Used relaxation technique for regular headaches"
      RELCND60   ="Used relaxation technique for rheumatoid arthritis"
      RELCND61   ="Used relaxation technique for schizophrenia"
      RELCND62   ="Used relaxation technique for seizures"
      RELCND63   ="Used relaxation technique for senility"
      RELCND64   ="Used relaxation technique for sinusitis"
      RELCND65   ="Used relaxation technique for skin problems"
      RELCND66   ="Used relaxation technique for sprain or strain"
      RELCND67   ="Used relaxation technique for stroke"
      RELCND68   =
"Used relaxation technique for substance abuse, other than alcohol or tobacco"
      RELCND69   ="Used relaxation technique for other (specify)"
      RELCND70   ="Used relaxation technique for other (specify)"
      RELCND71   ="Used relaxation technique for ulcer"
      RELCND72   ="Used relaxation technique for urinary problem"
      RELCND73   ="Used relaxation technique for varicose veins, hemorrhoids"
      RELCND74   ="Used relaxation technique for vision problem"
      RELCND75   ="Used relaxation technique for weak or failing kidneys"
      RELCND76   ="Used relaxation technique for weight problem"
      RELCND77   ="Used relaxation technique for back pain or problem"
      RELCND78   ="Used relaxation technique for head or chest cold"
      RELCND79   ="Used relaxation technique for neck pain or problem"
      RELCND80   ="Used relaxation technique for severe headache or migraine"
      RELCND81   ="Used relaxation technique for stomach or intestinal illness"
      RELCND82   ="Used relaxation technique for other (specify)"
      RELCND83   =
"Used relaxation technique for anemia and other blood disorders"
      RELCND84   ="Used relaxation technique for other allergies"
      RELCND85   =
"Used relaxation technique for other infectious diseases and problems of the imm
une system"
      RELCND86   ="Used relaxation technique for other musculoskeletal"
      RELCND87   ="Used relaxation technique for stress"
      RELCONCT   ="Condition count for relaxation techniques"
      REL_SPEC   ="Used relaxation technique for other (specify)"
      REL_MOST   ="Condition for which relaxation technique was used the most"
      RELMED00   =
"Received no conventional medical treatment for condition for which a relaxation
 technique was used the most"
      RELMED01   =
"Received prescription medications for condition for which a relaxation techniqu
e was used the most"
      RELMED02   =
"Received over-the-counter medications for condition for which a relaxation tech
nique was used the most"
      RELMED03   =
"Received surgery for condition for which a relaxation technique was used the mo
st"
      RELMED04   =
"Received physical therapy for condition for which a relaxation technique was us
ed the most"
      RELMED05   =
"Received mental health counseling for condition for which a relaxation techniqu
e was used the most"
      REL_TIM1   =
"Time received prescription medications for condition for which a relaxation tec
hnique was used the most"
      REL_TIM2   =
"Time received over-the-counter medications for condition for which a relaxation
 technique was used the most"
      REL_TIM3   =
"Time received surgery for condition for which a relaxation technique was used t
he most"
      REL_TIM4   =
"Time received physical therapy for condition for which a relaxation technique w
as used the most"
      REL_TIM5   =
"Time received mental health counseling for condition for which a relaxation tec
hnique was used the most"
      REL_ENG    ="Used a relaxation technique to improve or enhance energy"
      REL_WEL    =
"Used a relaxation technique for general wellness or general disease prevention"
      REL_IMM    =
"Used a relaxation technique to improve or enhance immune function"
      REL_COP    ="Used a relaxation technique to cope with having an illness"
      REL_NOHP   =
"Used a relaxation technique because medical treatments did not help"
      REL_EXPS   =
"Used a relaxation technique because medical treatments were too expensive"
      REL_SUGG   =
"Used a relaxation technique because it was recommended by a health care provide
r"
      REL_FFC    =
"Used a relaxation technique because it was recommended by family, friends, or c
o-workers"
      REL_PRAC   =
"Saw a practitioner or took a class for relaxation technique, past 12 months"
      REL_YR     =
"Number of times saw a practitioner or took a class for relaxation technique"
      REL_PAY    =
"Amount paid per visit to practitioner or for a class for relaxation technique"
      REL_BKS    =
" Bought relaxation technique self-help book or other materials"
      REL_BPAY   =
"Amount paid for relaxation technique self-help book or other materials"
      RELDISC    =
"Let conventional medical professional know about use of relaxation technique"
      RELPRF1    =
"Let medical doctor (including specialists) know about use of relaxation techniq
ue"
      RELPRF2    =
"Let Doctor of Osteopathy (D.O.) know about use of relaxation technique"
      RELPRF3    =
"Let nurse practitioner/physician assistant know about use of relaxation techniq
ue"
      RELPRF4    ="Let psychiatrist know about use of relaxation technique"
      RELPRF5    =
"Let dentist (including specialists) know about use of relaxation technique"
      RELPRF6    =
"Let psychologist/social worker know about use of relaxation technique"
      RELPRF7    ="Let pharmacist know about use of relaxation technique"
      RELNOYR1   =
"Did not use meditation during the past 12 months because I never thought about 
it"
      RELNOYR2   =
"Did not use meditation during the past 12 months for no reason"
      RELNOYR3   =
"Did not use meditation during the past 12 months because I didn't need it in th
e last 12 months"
      RELNOYR4   =
"Did not use meditation during the past 12 months because it didn't work for me 
before"
      RELNOYR5   =
"Did not use meditation during the past 12 months because it costs too much"
      RELNOYR6   =
"Did not use meditation during the past 12 months because I had side effects las
t time"
      RELNOYR7   =
"Did not use meditation during the past 12 months because a health care provider
 told me not to use it"
      RELNOYR8   =
"Did not use meditation during the past 12 months because medical science has no
t shown that it works"
      RELNOYR9   =
"Did not use meditation during the past 12 months for some other reason"
      REL_SDEF   ="Kinds of side effects from meditation"
      REL_ATT    ="Side effects from meditation required medical attention"
      RELNOU01   =
"Never used meditation because I never heard of it/don't know much about it"
      RELNOU02   ="Never used meditation because I never thought about it"
      RELNOU03   ="Never used meditation for no reason"
      RELNOU04   ="Never used meditation because I don't need it"
      RELNOU05   =
"Never used meditation becauseI don't believe in it/it doesn't work"
      RELNOU06   ="Never used meditation because it costs too much"
      RELNOU07   ="Never used meditation because it is not safe"
      RELNOU08   =
"Never used meditation because a health care provider told me not to use it"
      RELNOU09   =
"Never used meditation because medical science has not shown that it works"
      RELNOU10   ="Never used meditation for some other reason"
      PRA_SLFE   ="Ever prayed for own health"
      PRA_SLFM   ="Prayed for own health, past 12 months"
      PRA_OTHE   ="Ever asked others to pray for your own health"
      PRA_OTHM   ="Had others pray for own health, past 12 months"
      COMPSTAT   ="Record completion status"
   ;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
   *    (PUT ASTERISK (*) BEFORE WORD "FORMAT"
        IN NEXT STATEMENT TO PREVENT FORMAT
        ASSOCIATIONS BEING STORED WITH DATA SET);
   FORMAT

      /* IDN FORMAT ASSOCIATIONS */

      RECTYPE $ ADP001X.   SRVY_YR   ADP002X.   HHX       $GROUPC.
      WTFA_SA   GROUPN.

      /* UCF FORMAT ASSOCIATIONS */



      /* ALT FORMAT ASSOCIATIONS */

      ACU_EVER  ADP009X.   AYU_EVER  ADP009X.   BIO_EVER  ADP009X.
      CHE_EVER  ADP009X.   COM_EVER  ADP009X.   EHT_EVER  ADP009X.
      HYP_EVER  ADP009X.   MAS_EVER  ADP009X.   NAT_EVER  ADP009X.
      ACU_USEM  ADP009X.   ACU_NUM   ADP019X.   ACU_PAY   ADP020X.
      ACU_TRET  ADP009X.   ACUCND01  ADP022X.   ACUCND02  ADP022X.
      ACUCND03  ADP022X.   ACUCND04  ADP022X.   ACUCND05  ADP022X.
      ACUCND06  ADP022X.   ACUCND07  ADP022X.   ACUCND08  ADP022X.
      ACUCND09  ADP022X.   ACUCND10  ADP022X.   ACUCND11  ADP022X.
      ACUCND12  ADP022X.   ACUCND13  ADP022X.   ACUCND14  ADP022X.
      ACUCND15  ADP022X.   ACUCND16  ADP022X.   ACUCND17  ADP022X.
      ACUCND18  ADP022X.   ACUCND19  ADP022X.   ACUCND20  ADP022X.
      ACUCND21  ADP022X.   ACUCND22  ADP022X.   ACUCND23  ADP022X.
      ACUCND24  ADP022X.   ACUCND25  ADP022X.   ACUCND26  ADP022X.
      ACUCND27  ADP022X.   ACUCND28  ADP022X.   ACUCND29  ADP022X.
      ACUCND30  ADP022X.   ACUCND31  ADP022X.   ACUCND32  ADP022X.
      ACUCND33  ADP022X.   ACUCND34  ADP022X.   ACUCND35  ADP022X.
      ACUCND36  ADP022X.   ACUCND37  ADP022X.   ACUCND38  ADP022X.
      ACUCND39  ADP022X.   ACUCND40  ADP022X.   ACUCND41  ADP022X.
      ACUCND42  ADP022X.   ACUCND43  ADP022X.   ACUCND44  ADP022X.
      ACUCND45  ADP022X.   ACUCND46  ADP022X.   ACUCND47  ADP022X.
      ACUCND48  ADP022X.   ACUCND49  ADP022X.   ACUCND50  ADP022X.
      ACUCND51  ADP022X.   ACUCND52  ADP022X.   ACUCND53  ADP022X.
      ACUCND54  ADP022X.   ACUCND55  ADP022X.   ACUCND56  ADP022X.
      ACUCND57  ADP022X.   ACUCND58  ADP022X.   ACUCND59  ADP022X.
      ACUCND60  ADP022X.   ACUCND61  ADP022X.   ACUCND62  ADP022X.
      ACUCND63  ADP022X.   ACUCND64  ADP022X.   ACUCND65  ADP022X.
      ACUCND66  ADP022X.   ACUCND67  ADP022X.   ACUCND68  ADP022X.
      ACUCND69  ADP022X.   ACUCND70  ADP022X.   ACUCND71  ADP022X.
      ACUCND72  ADP022X.   ACUCND73  ADP022X.   ACUCND74  ADP022X.
      ACUCND75  ADP022X.   ACUCND76  ADP022X.   ACUCND77  ADP022X.
      ACUCND78  ADP022X.   ACUCND79  ADP022X.   ACUCND80  ADP022X.
      ACUCND81  ADP022X.   ACUCND82  ADP022X.   ACUCND83  ADP022X.
      ACUCND84  ADP022X.   ACUCND85  ADP022X.   ACUCND86  ADP022X.
      ACUCND87  ADP022X.   ACUCONCT  ADP109X.   ACU_SPEC  $ADP110X.
      ACU_MOST  ADP111X.   ACUMED00  ADP022X.   ACUMED01  ADP022X.
      ACUMED02  ADP022X.   ACUMED03  ADP022X.   ACUMED04  ADP022X.
      ACUMED05  ADP022X.   ACU_TIM1  ADP118X.   ACU_TIM2  ADP118X.
      ACU_TIM3  ADP118X.   ACU_TIM4  ADP118X.   ACU_TIM5  ADP118X.
      ACU_ENG   ADP009X.   ACU_WEL   ADP009X.   ACU_IMM   ADP009X.
      ACU_NOHP  ADP009X.   ACU_EXPS  ADP009X.   ACU_SUGG  ADP009X.
      ACU_FFC   ADP009X.   ACUDISC   ADP009X.   ACUPRF1   ADP022X.
      ACUPRF2   ADP022X.   ACUPRF3   ADP022X.   ACUPRF4   ADP022X.
      ACUPRF5   ADP022X.   ACUPRF6   ADP022X.   ACUPRF7   ADP022X.
      ACUMNOT1  ADP022X.   ACUMNOT2  ADP022X.   ACUMNOT3  ADP022X.
      ACUMNOT4  ADP022X.   ACUMNOT5  ADP022X.   ACUMNOT6  ADP022X.
      ACUMNOT7  ADP022X.   ACUMNOT8  ADP022X.   ACUMNOT9  ADP022X.
      ACU_SDEF  $ADP110X.  ACU_ATT   ADP009X.   ACUNNT01  ADP022X.
      ACUNNT02  ADP022X.   ACUNNT03  ADP022X.   ACUNNT04  ADP022X.
      ACUNNT05  ADP022X.   ACUNNT06  ADP022X.   ACUNNT07  ADP022X.
      ACUNNT08  ADP022X.   ACUNNT09  ADP022X.   ACUNNT10  ADP022X.
      AYU_USEM  ADP009X.   AYU_NUM   ADP019X.   AYU_PAY   ADP020X.
      AYU_TRET  ADP009X.   AYUCND01  ADP022X.   AYUCND02  ADP022X.
      AYUCND03  ADP022X.   AYUCND04  ADP022X.   AYUCND05  ADP022X.
      AYUCND06  ADP022X.   AYUCND07  ADP022X.   AYUCND08  ADP022X.
      AYUCND09  ADP022X.   AYUCND10  ADP022X.   AYUCND11  ADP022X.
      AYUCND12  ADP022X.   AYUCND13  ADP022X.   AYUCND14  ADP022X.
      AYUCND15  ADP022X.   AYUCND16  ADP022X.   AYUCND17  ADP022X.
      AYUCND18  ADP022X.   AYUCND19  ADP022X.   AYUCND20  ADP022X.
      AYUCND21  ADP022X.   AYUCND22  ADP022X.   AYUCND23  ADP022X.
      AYUCND24  ADP022X.   AYUCND25  ADP022X.   AYUCND26  ADP022X.
      AYUCND27  ADP022X.   AYUCND28  ADP022X.   AYUCND29  ADP022X.
      AYUCND30  ADP022X.   AYUCND31  ADP022X.   AYUCND32  ADP022X.
      AYUCND33  ADP022X.   AYUCND34  ADP022X.   AYUCND35  ADP022X.
      AYUCND36  ADP022X.   AYUCND37  ADP022X.   AYUCND38  ADP022X.
      AYUCND39  ADP022X.   AYUCND40  ADP022X.   AYUCND41  ADP022X.
      AYUCND42  ADP022X.   AYUCND43  ADP022X.   AYUCND44  ADP022X.
      AYUCND45  ADP022X.   AYUCND46  ADP022X.   AYUCND47  ADP022X.
      AYUCND48  ADP022X.   AYUCND49  ADP022X.   AYUCND50  ADP022X.
      AYUCND51  ADP022X.   AYUCND52  ADP022X.   AYUCND53  ADP022X.
      AYUCND54  ADP022X.   AYUCND55  ADP022X.   AYUCND56  ADP022X.
      AYUCND57  ADP022X.   AYUCND58  ADP022X.   AYUCND59  ADP022X.
      AYUCND60  ADP022X.   AYUCND61  ADP022X.   AYUCND62  ADP022X.
      AYUCND63  ADP022X.   AYUCND64  ADP022X.   AYUCND65  ADP022X.
      AYUCND66  ADP022X.   AYUCND67  ADP022X.   AYUCND68  ADP022X.
      AYUCND69  ADP022X.   AYUCND70  ADP022X.   AYUCND71  ADP022X.
      AYUCND72  ADP022X.   AYUCND73  ADP022X.   AYUCND74  ADP022X.
      AYUCND75  ADP022X.   AYUCND76  ADP022X.   AYUCND77  ADP022X.
      AYUCND78  ADP022X.   AYUCND79  ADP022X.   AYUCND80  ADP022X.
      AYUCND81  ADP022X.   AYUCND82  ADP022X.   AYUCND83  ADP022X.
      AYUCND84  ADP022X.   AYUCND85  ADP022X.   AYUCND86  ADP022X.
      AYUCND87  ADP022X.   AYUCONCT  ADP109X.   AYU_SPEC  $ADP110X.
      AYU_MOST  ADP111X.   AYUMED00  ADP022X.   AYUMED01  ADP022X.
      AYUMED02  ADP022X.   AYUMED03  ADP022X.   AYUMED04  ADP022X.
      AYUMED05  ADP022X.   AYU_TIM1  ADP118X.   AYU_TIM2  ADP118X.
      AYU_TIM3  ADP118X.   AYU_TIM4  ADP118X.   AYU_TIM5  ADP118X.
      AYU_ENG   ADP009X.   AYU_WEL   ADP009X.   AYU_IMM   ADP009X.
      AYU_NOHP  ADP009X.   AYU_EXPS  ADP009X.   AYU_SUGG  ADP009X.
      AYU_FFC   ADP009X.   AYUDISC   ADP009X.   AYUPRF1   ADP022X.
      AYUPRF2   ADP022X.   AYUPRF3   ADP022X.   AYUPRF4   ADP022X.
      AYUPRF5   ADP022X.   AYUPRF6   ADP022X.   AYUPRF7   ADP022X.
      BIO_USEM  ADP009X.   BIO_NUM   ADP019X.   BIO_PAY   ADP020X.
      BIO_TRET  ADP009X.   BIOCND01  ADP022X.   BIOCND02  ADP022X.
      BIOCND03  ADP022X.   BIOCND04  ADP022X.   BIOCND05  ADP022X.
      BIOCND06  ADP022X.   BIOCND07  ADP022X.   BIOCND08  ADP022X.
      BIOCND09  ADP022X.   BIOCND10  ADP022X.   BIOCND11  ADP022X.
      BIOCND12  ADP022X.   BIOCND13  ADP022X.   BIOCND14  ADP022X.
      BIOCND15  ADP022X.   BIOCND16  ADP022X.   BIOCND17  ADP022X.
      BIOCND18  ADP022X.   BIOCND19  ADP022X.   BIOCND20  ADP022X.
      BIOCND21  ADP022X.   BIOCND22  ADP022X.   BIOCND23  ADP022X.
      BIOCND24  ADP022X.   BIOCND25  ADP022X.   BIOCND26  ADP022X.
      BIOCND27  ADP022X.   BIOCND28  ADP022X.   BIOCND29  ADP022X.
      BIOCND30  ADP022X.   BIOCND31  ADP022X.   BIOCND32  ADP022X.
      BIOCND33  ADP022X.   BIOCND34  ADP022X.   BIOCND35  ADP022X.
      BIOCND36  ADP022X.   BIOCND37  ADP022X.   BIOCND38  ADP022X.
      BIOCND39  ADP022X.   BIOCND40  ADP022X.   BIOCND41  ADP022X.
      BIOCND42  ADP022X.   BIOCND43  ADP022X.   BIOCND44  ADP022X.
      BIOCND45  ADP022X.   BIOCND46  ADP022X.   BIOCND47  ADP022X.
      BIOCND48  ADP022X.   BIOCND49  ADP022X.   BIOCND50  ADP022X.
      BIOCND51  ADP022X.   BIOCND52  ADP022X.   BIOCND53  ADP022X.
      BIOCND54  ADP022X.   BIOCND55  ADP022X.   BIOCND56  ADP022X.
      BIOCND57  ADP022X.   BIOCND58  ADP022X.   BIOCND59  ADP022X.
      BIOCND60  ADP022X.   BIOCND61  ADP022X.   BIOCND62  ADP022X.
      BIOCND63  ADP022X.   BIOCND64  ADP022X.   BIOCND65  ADP022X.
      BIOCND66  ADP022X.   BIOCND67  ADP022X.   BIOCND68  ADP022X.
      BIOCND69  ADP022X.   BIOCND70  ADP022X.   BIOCND71  ADP022X.
      BIOCND72  ADP022X.   BIOCND73  ADP022X.   BIOCND74  ADP022X.
      BIOCND75  ADP022X.   BIOCND76  ADP022X.   BIOCND77  ADP022X.
      BIOCND78  ADP022X.   BIOCND79  ADP022X.   BIOCND80  ADP022X.
      BIOCND81  ADP022X.   BIOCND82  ADP022X.   BIOCND83  ADP022X.
      BIOCND84  ADP022X.   BIOCND85  ADP022X.   BIOCND86  ADP022X.
      BIOCND87  ADP022X.   BIOCONCT  ADP109X.   BIO_SPEC  $ADP110X.
      BIO_MOST  ADP111X.   BIOMED00  ADP022X.   BIOMED01  ADP022X.
      BIOMED02  ADP022X.   BIOMED03  ADP022X.   BIOMED04  ADP022X.
      BIOMED05  ADP022X.   BIO_TIM1  ADP118X.   BIO_TIM2  ADP118X.
      BIO_TIM3  ADP118X.   BIO_TIM4  ADP118X.   BIO_TIM5  ADP118X.
      BIO_ENG   ADP009X.   BIO_WEL   ADP009X.   BIO_IMM   ADP009X.
      BIO_NOHP  ADP009X.   BIO_EXPS  ADP009X.   BIO_SUGG  ADP009X.
      BIO_FFC   ADP009X.   BIODISC   ADP009X.   BIOPRF1   ADP022X.
      BIOPRF2   ADP022X.   BIOPRF3   ADP022X.   BIOPRF4   ADP022X.
      BIOPRF5   ADP022X.   BIOPRF6   ADP022X.   BIOPRF7   ADP022X.
      CHE_USEM  ADP009X.   CHE_NUM   ADP019X.   CHE_PAY   ADP020X.
      CHE_TRET  ADP009X.   CHECND01  ADP022X.   CHECND02  ADP022X.
      CHECND03  ADP022X.   CHECND04  ADP022X.   CHECND05  ADP022X.
      CHECND06  ADP022X.   CHECND07  ADP022X.   CHECND08  ADP022X.
      CHECND09  ADP022X.   CHECND10  ADP022X.   CHECND11  ADP022X.
      CHECND12  ADP022X.   CHECND13  ADP022X.   CHECND14  ADP022X.
      CHECND15  ADP022X.   CHECND16  ADP022X.   CHECND17  ADP022X.
      CHECND18  ADP022X.   CHECND19  ADP022X.   CHECND20  ADP022X.
      CHECND21  ADP022X.   CHECND22  ADP022X.   CHECND23  ADP022X.
      CHECND24  ADP022X.   CHECND25  ADP022X.   CHECND26  ADP022X.
      CHECND27  ADP022X.   CHECND28  ADP022X.   CHECND29  ADP022X.
      CHECND30  ADP022X.   CHECND31  ADP022X.   CHECND32  ADP022X.
      CHECND33  ADP022X.   CHECND34  ADP022X.   CHECND35  ADP022X.
      CHECND36  ADP022X.   CHECND37  ADP022X.   CHECND38  ADP022X.
      CHECND39  ADP022X.   CHECND40  ADP022X.   CHECND41  ADP022X.
      CHECND42  ADP022X.   CHECND43  ADP022X.   CHECND44  ADP022X.
      CHECND45  ADP022X.   CHECND46  ADP022X.   CHECND47  ADP022X.
      CHECND48  ADP022X.   CHECND49  ADP022X.   CHECND50  ADP022X.
      CHECND51  ADP022X.   CHECND52  ADP022X.   CHECND53  ADP022X.
      CHECND54  ADP022X.   CHECND55  ADP022X.   CHECND56  ADP022X.
      CHECND57  ADP022X.   CHECND58  ADP022X.   CHECND59  ADP022X.
      CHECND60  ADP022X.   CHECND61  ADP022X.   CHECND62  ADP022X.
      CHECND63  ADP022X.   CHECND64  ADP022X.   CHECND65  ADP022X.
      CHECND66  ADP022X.   CHECND67  ADP022X.   CHECND68  ADP022X.
      CHECND69  ADP022X.   CHECND70  ADP022X.   CHECND71  ADP022X.
      CHECND72  ADP022X.   CHECND73  ADP022X.   CHECND74  ADP022X.
      CHECND75  ADP022X.   CHECND76  ADP022X.   CHECND77  ADP022X.
      CHECND78  ADP022X.   CHECND79  ADP022X.   CHECND80  ADP022X.
      CHECND81  ADP022X.   CHECND82  ADP022X.   CHECND83  ADP022X.
      CHECND84  ADP022X.   CHECND85  ADP022X.   CHECND86  ADP022X.
      CHECND87  ADP022X.   CHECONCT  ADP109X.   CHE_SPEC  $ADP110X.
      CHE_MOST  ADP111X.   CHEMED00  ADP022X.   CHEMED01  ADP022X.
      CHEMED02  ADP022X.   CHEMED03  ADP022X.   CHEMED04  ADP022X.
      CHEMED05  ADP022X.   CHE_TIM1  ADP118X.   CHE_TIM2  ADP118X.
      CHE_TIM3  ADP118X.   CHE_TIM4  ADP118X.   CHE_TIM5  ADP118X.
      CHE_ENG   ADP009X.   CHE_WEL   ADP009X.   CHE_IMM   ADP009X.
      CHE_NOHP  ADP009X.   CHE_EXPS  ADP009X.   CHE_SUGG  ADP009X.
      CHE_FFC   ADP009X.   CHEDISC   ADP009X.   CHEPRF1   ADP022X.
      CHEPRF2   ADP022X.   CHEPRF3   ADP022X.   CHEPRF4   ADP022X.
      CHEPRF5   ADP022X.   CHEPRF6   ADP022X.   CHEPRF7   ADP022X.
      COM_USEM  ADP009X.   COM_NUM   ADP019X.   COM_PAY   ADP020X.
      COM_TRET  ADP009X.   COMCND01  ADP022X.   COMCND02  ADP022X.
      COMCND03  ADP022X.   COMCND04  ADP022X.   COMCND05  ADP022X.
      COMCND06  ADP022X.   COMCND07  ADP022X.   COMCND08  ADP022X.
      COMCND09  ADP022X.   COMCND10  ADP022X.   COMCND11  ADP022X.
      COMCND12  ADP022X.   COMCND13  ADP022X.   COMCND14  ADP022X.
      COMCND15  ADP022X.   COMCND16  ADP022X.   COMCND17  ADP022X.
      COMCND18  ADP022X.   COMCND19  ADP022X.   COMCND20  ADP022X.
      COMCND21  ADP022X.   COMCND22  ADP022X.   COMCND23  ADP022X.
      COMCND24  ADP022X.   COMCND25  ADP022X.   COMCND26  ADP022X.
      COMCND27  ADP022X.   COMCND28  ADP022X.   COMCND29  ADP022X.
      COMCND30  ADP022X.   COMCND31  ADP022X.   COMCND32  ADP022X.
      COMCND33  ADP022X.   COMCND34  ADP022X.   COMCND35  ADP022X.
      COMCND36  ADP022X.   COMCND37  ADP022X.   COMCND38  ADP022X.
      COMCND39  ADP022X.   COMCND40  ADP022X.   COMCND41  ADP022X.
      COMCND42  ADP022X.   COMCND43  ADP022X.   COMCND44  ADP022X.
      COMCND45  ADP022X.   COMCND46  ADP022X.   COMCND47  ADP022X.
      COMCND48  ADP022X.   COMCND49  ADP022X.   COMCND50  ADP022X.
      COMCND51  ADP022X.   COMCND52  ADP022X.   COMCND53  ADP022X.
      COMCND54  ADP022X.   COMCND55  ADP022X.   COMCND56  ADP022X.
      COMCND57  ADP022X.   COMCND58  ADP022X.   COMCND59  ADP022X.
      COMCND60  ADP022X.   COMCND61  ADP022X.   COMCND62  ADP022X.
      COMCND63  ADP022X.   COMCND64  ADP022X.   COMCND65  ADP022X.
      COMCND66  ADP022X.   COMCND67  ADP022X.   COMCND68  ADP022X.
      COMCND69  ADP022X.   COMCND70  ADP022X.   COMCND71  ADP022X.
      COMCND72  ADP022X.   COMCND73  ADP022X.   COMCND74  ADP022X.
      COMCND75  ADP022X.   COMCND76  ADP022X.   COMCND77  ADP022X.
      COMCND78  ADP022X.   COMCND79  ADP022X.   COMCND80  ADP022X.
      COMCND81  ADP022X.   COMCND82  ADP022X.   COMCND83  ADP022X.
      COMCND84  ADP022X.   COMCND85  ADP022X.   COMCND86  ADP022X.
      COMCND87  ADP022X.   COMCONCT  ADP109X.   COM_SPEC  $ADP110X.
      COM_MOST  ADP111X.   COMMED00  ADP022X.   COMMED01  ADP022X.
      COMMED02  ADP022X.   COMMED03  ADP022X.   COMMED04  ADP022X.
      COMMED05  ADP022X.   COM_TIM1  ADP118X.   COM_TIM2  ADP118X.
      COM_TIM3  ADP118X.   COM_TIM4  ADP118X.   COM_TIM5  ADP118X.
      COM_ENG   ADP009X.   COM_WEL   ADP009X.   COM_IMM   ADP009X.
      COM_NOHP  ADP009X.   COM_EXPS  ADP009X.   COM_SUGG  ADP009X.
      COM_FFC   ADP009X.   COMDISC   ADP009X.   COMPRF1   ADP022X.
      COMPRF2   ADP022X.   COMPRF3   ADP022X.   COMPRF4   ADP022X.
      COMPRF5   ADP022X.   COMPRF6   ADP022X.   COMPRF7   ADP022X.
      COMMNOT1  ADP022X.   COMMNOT2  ADP022X.   COMMNOT3  ADP022X.
      COMMNOT4  ADP022X.   COMMNOT5  ADP022X.   COMMNOT6  ADP022X.
      COMMNOT7  ADP022X.   COMMNOT8  ADP022X.   COMMNOT9  ADP022X.
      COM_SDEF  $ADP110X.  COM_ATT   ADP009X.   COMNNT01  ADP022X.
      COMNNT02  ADP022X.   COMNNT03  ADP022X.   COMNNT04  ADP022X.
      COMNNT05  ADP022X.   COMNNT06  ADP022X.   COMNNT07  ADP022X.
      COMNNT08  ADP022X.   COMNNT09  ADP022X.   COMNNT10  ADP022X.
      EHT_USEM  ADP009X.   EHT_NUM   ADP019X.   EHT_PAY   ADP020X.
      EHT_TRET  ADP009X.   EHTCND01  ADP022X.   EHTCND02  ADP022X.
      EHTCND03  ADP022X.   EHTCND04  ADP022X.   EHTCND05  ADP022X.
      EHTCND06  ADP022X.   EHTCND07  ADP022X.   EHTCND08  ADP022X.
      EHTCND09  ADP022X.   EHTCND10  ADP022X.   EHTCND11  ADP022X.
      EHTCND12  ADP022X.   EHTCND13  ADP022X.   EHTCND14  ADP022X.
      EHTCND15  ADP022X.   EHTCND16  ADP022X.   EHTCND17  ADP022X.
      EHTCND18  ADP022X.   EHTCND19  ADP022X.   EHTCND20  ADP022X.
      EHTCND21  ADP022X.   EHTCND22  ADP022X.   EHTCND23  ADP022X.
      EHTCND24  ADP022X.   EHTCND25  ADP022X.   EHTCND26  ADP022X.
      EHTCND27  ADP022X.   EHTCND28  ADP022X.   EHTCND29  ADP022X.
      EHTCND30  ADP022X.   EHTCND31  ADP022X.   EHTCND32  ADP022X.
      EHTCND33  ADP022X.   EHTCND34  ADP022X.   EHTCND35  ADP022X.
      EHTCND36  ADP022X.   EHTCND37  ADP022X.   EHTCND38  ADP022X.
      EHTCND39  ADP022X.   EHTCND40  ADP022X.   EHTCND41  ADP022X.
      EHTCND42  ADP022X.   EHTCND43  ADP022X.   EHTCND44  ADP022X.
      EHTCND45  ADP022X.   EHTCND46  ADP022X.   EHTCND47  ADP022X.
      EHTCND48  ADP022X.   EHTCND49  ADP022X.   EHTCND50  ADP022X.
      EHTCND51  ADP022X.   EHTCND52  ADP022X.   EHTCND53  ADP022X.
      EHTCND54  ADP022X.   EHTCND55  ADP022X.   EHTCND56  ADP022X.
      EHTCND57  ADP022X.   EHTCND58  ADP022X.   EHTCND59  ADP022X.
      EHTCND60  ADP022X.   EHTCND61  ADP022X.   EHTCND62  ADP022X.
      EHTCND63  ADP022X.   EHTCND64  ADP022X.   EHTCND65  ADP022X.
      EHTCND66  ADP022X.   EHTCND67  ADP022X.   EHTCND68  ADP022X.
      EHTCND69  ADP022X.   EHTCND70  ADP022X.   EHTCND71  ADP022X.
      EHTCND72  ADP022X.   EHTCND73  ADP022X.   EHTCND74  ADP022X.
      EHTCND75  ADP022X.   EHTCND76  ADP022X.   EHTCND77  ADP022X.
      EHTCND78  ADP022X.   EHTCND79  ADP022X.   EHTCND80  ADP022X.
      EHTCND81  ADP022X.   EHTCND82  ADP022X.   EHTCND83  ADP022X.
      EHTCND84  ADP022X.   EHTCND85  ADP022X.   EHTCND86  ADP022X.
      EHTCND87  ADP022X.   EHTCONCT  ADP109X.   EHT_SPEC  $ADP110X.
      EHT_MOST  ADP111X.   EHTMED00  ADP022X.   EHTMED01  ADP022X.
      EHTMED02  ADP022X.   EHTMED03  ADP022X.   EHTMED04  ADP022X.
      EHTMED05  ADP022X.   EHT_TIM1  ADP118X.   EHT_TIM2  ADP118X.
      EHT_TIM3  ADP118X.   EHT_TIM4  ADP118X.   EHT_TIM5  ADP118X.
      EHT_ENG   ADP009X.   EHT_WEL   ADP009X.   EHT_IMM   ADP009X.
      EHT_NOHP  ADP009X.   EHT_EXPS  ADP009X.   EHT_SUGG  ADP009X.
      EHT_FFC   ADP009X.   EHTDISC   ADP009X.   EHTPRF1   ADP022X.
      EHTPRF2   ADP022X.   EHTPRF3   ADP022X.   EHTPRF4   ADP022X.
      EHTPRF5   ADP022X.   EHTPRF6   ADP022X.   EHTPRF7   ADP022X.
      HYP_USEM  ADP009X.   HYP_NUM   ADP019X.   HYP_PAY   ADP020X.
      HYP_TRET  ADP009X.   HYPCND01  ADP022X.   HYPCND02  ADP022X.
      HYPCND03  ADP022X.   HYPCND04  ADP022X.   HYPCND05  ADP022X.
      HYPCND06  ADP022X.   HYPCND07  ADP022X.   HYPCND08  ADP022X.
      HYPCND09  ADP022X.   HYPCND10  ADP022X.   HYPCND11  ADP022X.
      HYPCND12  ADP022X.   HYPCND13  ADP022X.   HYPCND14  ADP022X.
      HYPCND15  ADP022X.   HYPCND16  ADP022X.   HYPCND17  ADP022X.
      HYPCND18  ADP022X.   HYPCND19  ADP022X.   HYPCND20  ADP022X.
      HYPCND21  ADP022X.   HYPCND22  ADP022X.   HYPCND23  ADP022X.
      HYPCND24  ADP022X.   HYPCND25  ADP022X.   HYPCND26  ADP022X.
      HYPCND27  ADP022X.   HYPCND28  ADP022X.   HYPCND29  ADP022X.
      HYPCND30  ADP022X.   HYPCND31  ADP022X.   HYPCND32  ADP022X.
      HYPCND33  ADP022X.   HYPCND34  ADP022X.   HYPCND35  ADP022X.
      HYPCND36  ADP022X.   HYPCND37  ADP022X.   HYPCND38  ADP022X.
      HYPCND39  ADP022X.   HYPCND40  ADP022X.   HYPCND41  ADP022X.
      HYPCND42  ADP022X.   HYPCND43  ADP022X.   HYPCND44  ADP022X.
      HYPCND45  ADP022X.   HYPCND46  ADP022X.   HYPCND47  ADP022X.
      HYPCND48  ADP022X.   HYPCND49  ADP022X.   HYPCND50  ADP022X.
      HYPCND51  ADP022X.   HYPCND52  ADP022X.   HYPCND53  ADP022X.
      HYPCND54  ADP022X.   HYPCND55  ADP022X.   HYPCND56  ADP022X.
      HYPCND57  ADP022X.   HYPCND58  ADP022X.   HYPCND59  ADP022X.
      HYPCND60  ADP022X.   HYPCND61  ADP022X.   HYPCND62  ADP022X.
      HYPCND63  ADP022X.   HYPCND64  ADP022X.   HYPCND65  ADP022X.
      HYPCND66  ADP022X.   HYPCND67  ADP022X.   HYPCND68  ADP022X.
      HYPCND69  ADP022X.   HYPCND70  ADP022X.   HYPCND71  ADP022X.
      HYPCND72  ADP022X.   HYPCND73  ADP022X.   HYPCND74  ADP022X.
      HYPCND75  ADP022X.   HYPCND76  ADP022X.   HYPCND77  ADP022X.
      HYPCND78  ADP022X.   HYPCND79  ADP022X.   HYPCND80  ADP022X.
      HYPCND81  ADP022X.   HYPCND82  ADP022X.   HYPCND83  ADP022X.
      HYPCND84  ADP022X.   HYPCND85  ADP022X.   HYPCND86  ADP022X.
      HYPCND87  ADP022X.   HYPCONCT  ADP109X.   HYP_SPEC  $ADP110X.
      HYP_MOST  ADP111X.   HYPMED00  ADP022X.   HYPMED01  ADP022X.
      HYPMED02  ADP022X.   HYPMED03  ADP022X.   HYPMED04  ADP022X.
      HYPMED05  ADP022X.   HYP_TIM1  ADP118X.   HYP_TIM2  ADP118X.
      HYP_TIM3  ADP118X.   HYP_TIM4  ADP118X.   HYP_TIM5  ADP118X.
      HYP_ENG   ADP009X.   HYP_WEL   ADP009X.   HYP_IMM   ADP009X.
      HYP_NOHP  ADP009X.   HYP_EXPS  ADP009X.   HYP_SUGG  ADP009X.
      HYP_FFC   ADP009X.   HYPDISC   ADP009X.   HYPPRF1   ADP022X.
      HYPPRF2   ADP022X.   HYPPRF3   ADP022X.   HYPPRF4   ADP022X.
      HYPPRF5   ADP022X.   HYPPRF6   ADP022X.   HYPPRF7   ADP022X.
      MAS_USEM  ADP009X.   MAS_NUM   ADP019X.   MAS_PAY   ADP020X.
      MAS_TRET  ADP009X.   MASCND01  ADP022X.   MASCND02  ADP022X.
      MASCND03  ADP022X.   MASCND04  ADP022X.   MASCND05  ADP022X.
      MASCND06  ADP022X.   MASCND07  ADP022X.   MASCND08  ADP022X.
      MASCND09  ADP022X.   MASCND10  ADP022X.   MASCND11  ADP022X.
      MASCND12  ADP022X.   MASCND13  ADP022X.   MASCND14  ADP022X.
      MASCND15  ADP022X.   MASCND16  ADP022X.   MASCND17  ADP022X.
      MASCND18  ADP022X.   MASCND19  ADP022X.   MASCND20  ADP022X.
      MASCND21  ADP022X.   MASCND22  ADP022X.   MASCND23  ADP022X.
      MASCND24  ADP022X.   MASCND25  ADP022X.   MASCND26  ADP022X.
      MASCND27  ADP022X.   MASCND28  ADP022X.   MASCND29  ADP022X.
      MASCND30  ADP022X.   MASCND31  ADP022X.   MASCND32  ADP022X.
      MASCND33  ADP022X.   MASCND34  ADP022X.   MASCND35  ADP022X.
      MASCND36  ADP022X.   MASCND37  ADP022X.   MASCND38  ADP022X.
      MASCND39  ADP022X.   MASCND40  ADP022X.   MASCND41  ADP022X.
      MASCND42  ADP022X.   MASCND43  ADP022X.   MASCND44  ADP022X.
      MASCND45  ADP022X.   MASCND46  ADP022X.   MASCND47  ADP022X.
      MASCND48  ADP022X.   MASCND49  ADP022X.   MASCND50  ADP022X.
      MASCND51  ADP022X.   MASCND52  ADP022X.   MASCND53  ADP022X.
      MASCND54  ADP022X.   MASCND55  ADP022X.   MASCND56  ADP022X.
      MASCND57  ADP022X.   MASCND58  ADP022X.   MASCND59  ADP022X.
      MASCND60  ADP022X.   MASCND61  ADP022X.   MASCND62  ADP022X.
      MASCND63  ADP022X.   MASCND64  ADP022X.   MASCND65  ADP022X.
      MASCND66  ADP022X.   MASCND67  ADP022X.   MASCND68  ADP022X.
      MASCND69  ADP022X.   MASCND70  ADP022X.   MASCND71  ADP022X.
      MASCND72  ADP022X.   MASCND73  ADP022X.   MASCND74  ADP022X.
      MASCND75  ADP022X.   MASCND76  ADP022X.   MASCND77  ADP022X.
      MASCND78  ADP022X.   MASCND79  ADP022X.   MASCND80  ADP022X.
      MASCND81  ADP022X.   MASCND82  ADP022X.   MASCND83  ADP022X.
      MASCND84  ADP022X.   MASCND85  ADP022X.   MASCND86  ADP022X.
      MASCND87  ADP022X.   MASCONCT  ADP109X.   MAS_SPEC  $ADP110X.
      MAS_MOST  ADP111X.   MASMED00  ADP022X.   MASMED01  ADP022X.
      MASMED02  ADP022X.   MASMED03  ADP022X.   MASMED04  ADP022X.
      MASMED05  ADP022X.   MAS_TIM1  ADP118X.   MAS_TIM2  ADP118X.
      MAS_TIM3  ADP118X.   MAS_TIM4  ADP118X.   MAS_TIM5  ADP118X.
      MAS_ENG   ADP009X.   MAS_WEL   ADP009X.   MAS_IMM   ADP009X.
      MAS_NOHP  ADP009X.   MAS_EXPS  ADP009X.   MAS_SUGG  ADP009X.
      MAS_FFC   ADP009X.   MASDISC   ADP009X.   MASPRF1   ADP022X.
      MASPRF2   ADP022X.   MASPRF3   ADP022X.   MASPRF4   ADP022X.
      MASPRF5   ADP022X.   MASPRF6   ADP022X.   MASPRF7   ADP022X.
      NAT_USEM  ADP009X.   NAT_NUM   ADP019X.   NAT_PAY   ADP020X.
      NAT_TRET  ADP009X.   NATCND01  ADP022X.   NATCND02  ADP022X.
      NATCND03  ADP022X.   NATCND04  ADP022X.   NATCND05  ADP022X.
      NATCND06  ADP022X.   NATCND07  ADP022X.   NATCND08  ADP022X.
      NATCND09  ADP022X.   NATCND10  ADP022X.   NATCND11  ADP022X.
      NATCND12  ADP022X.   NATCND13  ADP022X.   NATCND14  ADP022X.
      NATCND15  ADP022X.   NATCND16  ADP022X.   NATCND17  ADP022X.
      NATCND18  ADP022X.   NATCND19  ADP022X.   NATCND20  ADP022X.
      NATCND21  ADP022X.   NATCND22  ADP022X.   NATCND23  ADP022X.
      NATCND24  ADP022X.   NATCND25  ADP022X.   NATCND26  ADP022X.
      NATCND27  ADP022X.   NATCND28  ADP022X.   NATCND29  ADP022X.
      NATCND30  ADP022X.   NATCND31  ADP022X.   NATCND32  ADP022X.
      NATCND33  ADP022X.   NATCND34  ADP022X.   NATCND35  ADP022X.
      NATCND36  ADP022X.   NATCND37  ADP022X.   NATCND38  ADP022X.
      NATCND39  ADP022X.   NATCND40  ADP022X.   NATCND41  ADP022X.
      NATCND42  ADP022X.   NATCND43  ADP022X.   NATCND44  ADP022X.
      NATCND45  ADP022X.   NATCND46  ADP022X.   NATCND47  ADP022X.
      NATCND48  ADP022X.   NATCND49  ADP022X.   NATCND50  ADP022X.
      NATCND51  ADP022X.   NATCND52  ADP022X.   NATCND53  ADP022X.
      NATCND54  ADP022X.   NATCND55  ADP022X.   NATCND56  ADP022X.
      NATCND57  ADP022X.   NATCND58  ADP022X.   NATCND59  ADP022X.
      NATCND60  ADP022X.   NATCND61  ADP022X.   NATCND62  ADP022X.
      NATCND63  ADP022X.   NATCND64  ADP022X.   NATCND65  ADP022X.
      NATCND66  ADP022X.   NATCND67  ADP022X.   NATCND68  ADP022X.
      NATCND69  ADP022X.   NATCND70  ADP022X.   NATCND71  ADP022X.
      NATCND72  ADP022X.   NATCND73  ADP022X.   NATCND74  ADP022X.
      NATCND75  ADP022X.   NATCND76  ADP022X.   NATCND77  ADP022X.
      NATCND78  ADP022X.   NATCND79  ADP022X.   NATCND80  ADP022X.
      NATCND81  ADP022X.   NATCND82  ADP022X.   NATCND83  ADP022X.
      NATCND84  ADP022X.   NATCND85  ADP022X.   NATCND86  ADP022X.
      NATCND87  ADP022X.   NATCONCT  ADP109X.   NAT_SPEC  $ADP110X.
      NAT_MOST  ADP111X.   NATMED00  ADP022X.   NATMED01  ADP022X.
      NATMED02  ADP022X.   NATMED03  ADP022X.   NATMED04  ADP022X.
      NATMED05  ADP022X.   NAT_TIM1  ADP118X.   NAT_TIM2  ADP118X.
      NAT_TIM3  ADP118X.   NAT_TIM4  ADP118X.   NAT_TIM5  ADP118X.
      NAT_ENG   ADP009X.   NAT_WEL   ADP009X.   NAT_IMM   ADP009X.
      NAT_NOHP  ADP009X.   NAT_EXPS  ADP009X.   NAT_SUGG  ADP009X.
      NAT_FFC   ADP009X.   NATDISC   ADP009X.   NATPRF1   ADP022X.
      NATPRF2   ADP022X.   NATPRF3   ADP022X.   NATPRF4   ADP022X.
      NATPRF5   ADP022X.   NATPRF6   ADP022X.   NATPRF7   ADP022X.
      CUR_EVER  ADP022X.   ESP_EVER  ADP022X.   YER_EVER  ADP022X.
      SHA_EVER  ADP022X.   BOT_EVER  ADP022X.   NAH_EVER  ADP022X.
      SBD_EVER  ADP022X.   TRDNEVER  ADP022X.   CUR_USEM  ADP009X.
      ESP_USEM  ADP009X.   YER_USEM  ADP009X.   SHA_USEM  ADP009X.
      BOT_USEM  ADP009X.   NAH_USEM  ADP009X.   SBD_USEM  ADP009X.
      TRD_MOST  ADP156K.   TRD_NUM   ADP019X.   TRD_PAY   ADP020X.
      TRD_TRET  ADP009X.   TRDCND01  ADP022X.   TRDCND02  ADP022X.
      TRDCND03  ADP022X.   TRDCND04  ADP022X.   TRDCND05  ADP022X.
      TRDCND06  ADP022X.   TRDCND07  ADP022X.   TRDCND08  ADP022X.
      TRDCND09  ADP022X.   TRDCND10  ADP022X.   TRDCND11  ADP022X.
      TRDCND12  ADP022X.   TRDCND13  ADP022X.   TRDCND14  ADP022X.
      TRDCND15  ADP022X.   TRDCND16  ADP022X.   TRDCND17  ADP022X.
      TRDCND18  ADP022X.   TRDCND19  ADP022X.   TRDCND20  ADP022X.
      TRDCND21  ADP022X.   TRDCND22  ADP022X.   TRDCND23  ADP022X.
      TRDCND24  ADP022X.   TRDCND25  ADP022X.   TRDCND26  ADP022X.
      TRDCND27  ADP022X.   TRDCND28  ADP022X.   TRDCND29  ADP022X.
      TRDCND30  ADP022X.   TRDCND31  ADP022X.   TRDCND32  ADP022X.
      TRDCND33  ADP022X.   TRDCND34  ADP022X.   TRDCND35  ADP022X.
      TRDCND36  ADP022X.   TRDCND37  ADP022X.   TRDCND38  ADP022X.
      TRDCND39  ADP022X.   TRDCND40  ADP022X.   TRDCND41  ADP022X.
      TRDCND42  ADP022X.   TRDCND43  ADP022X.   TRDCND44  ADP022X.
      TRDCND45  ADP022X.   TRDCND46  ADP022X.   TRDCND47  ADP022X.
      TRDCND48  ADP022X.   TRDCND49  ADP022X.   TRDCND50  ADP022X.
      TRDCND51  ADP022X.   TRDCND52  ADP022X.   TRDCND53  ADP022X.
      TRDCND54  ADP022X.   TRDCND55  ADP022X.   TRDCND56  ADP022X.
      TRDCND57  ADP022X.   TRDCND58  ADP022X.   TRDCND59  ADP022X.
      TRDCND60  ADP022X.   TRDCND61  ADP022X.   TRDCND62  ADP022X.
      TRDCND63  ADP022X.   TRDCND64  ADP022X.   TRDCND65  ADP022X.
      TRDCND66  ADP022X.   TRDCND67  ADP022X.   TRDCND68  ADP022X.
      TRDCND69  ADP022X.   TRDCND70  ADP022X.   TRDCND71  ADP022X.
      TRDCND72  ADP022X.   TRDCND73  ADP022X.   TRDCND74  ADP022X.
      TRDCND75  ADP022X.   TRDCND76  ADP022X.   TRDCND77  ADP022X.
      TRDCND78  ADP022X.   TRDCND79  ADP022X.   TRDCND80  ADP022X.
      TRDCND81  ADP022X.   TRDCND82  ADP022X.   TRDCND83  ADP022X.
      TRDCND84  ADP022X.   TRDCND85  ADP022X.   TRDCND86  ADP022X.
      TRDCND87  ADP022X.   TRDCONCT  ADP109X.   TRD_SPEC  $ADP110X.
      TRD_CONM  ADP111X.   TRDMED00  ADP022X.   TRDMED01  ADP022X.
      TRDMED02  ADP022X.   TRDMED03  ADP022X.   TRDMED04  ADP022X.
      TRDMED05  ADP022X.   TRD_TIM1  ADP118X.   TRD_TIM2  ADP118X.
      TRD_TIM3  ADP118X.   TRD_TIM4  ADP118X.   TRD_TIM5  ADP118X.
      TRD_ENG   ADP009X.   TRD_WEL   ADP009X.   TRD_IMM   ADP009X.
      TRD_NOHP  ADP009X.   TRD_EXPS  ADP009X.   TRD_SUGG  ADP009X.
      TRD_FFC   ADP009X.   TRDDISC   ADP009X.   TRDPRF1   ADP022X.
      TRDPRF2   ADP022X.   TRDPRF3   ADP022X.   TRDPRF4   ADP022X.
      TRDPRF5   ADP022X.   TRDPRF6   ADP022X.   TRDPRF7   ADP022X.
      FELD_EVE  ADP009X.   ALEX_EVE  ADP009X.   PIL_EVE   ADP009X.
      TRAG_EVE  ADP009X.   FELD_USE  ADP009X.   ALEX_USE  ADP009X.
      PIL_USE   ADP009X.   TRAG_USE  ADP009X.   MOV_MOST  ADP285K.
      MOV_NUM   ADP019X.   MOV_PAY   ADP020X.   MOV_TRET  ADP009X.
      MOVCND01  ADP022X.   MOVCND02  ADP022X.   MOVCND03  ADP022X.
      MOVCND04  ADP022X.   MOVCND05  ADP022X.   MOVCND06  ADP022X.
      MOVCND07  ADP022X.   MOVCND08  ADP022X.   MOVCND09  ADP022X.
      MOVCND10  ADP022X.   MOVCND11  ADP022X.   MOVCND12  ADP022X.
      MOVCND13  ADP022X.   MOVCND14  ADP022X.   MOVCND15  ADP022X.
      MOVCND16  ADP022X.   MOVCND17  ADP022X.   MOVCND18  ADP022X.
      MOVCND19  ADP022X.   MOVCND20  ADP022X.   MOVCND21  ADP022X.
      MOVCND22  ADP022X.   MOVCND23  ADP022X.   MOVCND24  ADP022X.
      MOVCND25  ADP022X.   MOVCND26  ADP022X.   MOVCND27  ADP022X.
      MOVCND28  ADP022X.   MOVCND29  ADP022X.   MOVCND30  ADP022X.
      MOVCND31  ADP022X.   MOVCND32  ADP022X.   MOVCND33  ADP022X.
      MOVCND34  ADP022X.   MOVCND35  ADP022X.   MOVCND36  ADP022X.
      MOVCND37  ADP022X.   MOVCND38  ADP022X.   MOVCND39  ADP022X.
      MOVCND40  ADP022X.   MOVCND41  ADP022X.   MOVCND42  ADP022X.
      MOVCND43  ADP022X.   MOVCND44  ADP022X.   MOVCND45  ADP022X.
      MOVCND46  ADP022X.   MOVCND47  ADP022X.   MOVCND48  ADP022X.
      MOVCND49  ADP022X.   MOVCND50  ADP022X.   MOVCND51  ADP022X.
      MOVCND52  ADP022X.   MOVCND53  ADP022X.   MOVCND54  ADP022X.
      MOVCND55  ADP022X.   MOVCND56  ADP022X.   MOVCND57  ADP022X.
      MOVCND58  ADP022X.   MOVCND59  ADP022X.   MOVCND60  ADP022X.
      MOVCND61  ADP022X.   MOVCND62  ADP022X.   MOVCND63  ADP022X.
      MOVCND64  ADP022X.   MOVCND65  ADP022X.   MOVCND66  ADP022X.
      MOVCND67  ADP022X.   MOVCND68  ADP022X.   MOVCND69  ADP022X.
      MOVCND70  ADP022X.   MOVCND71  ADP022X.   MOVCND72  ADP022X.
      MOVCND73  ADP022X.   MOVCND74  ADP022X.   MOVCND75  ADP022X.
      MOVCND76  ADP022X.   MOVCND77  ADP022X.   MOVCND78  ADP022X.
      MOVCND79  ADP022X.   MOVCND80  ADP022X.   MOVCND81  ADP022X.
      MOVCND82  ADP022X.   MOVCND83  ADP022X.   MOVCND84  ADP022X.
      MOVCND85  ADP022X.   MOVCND86  ADP022X.   MOVCND87  ADP022X.
      MOVCONCT  ADP109X.   MOV_SPEC  $ADP110X.  MOV_CONM  GROUPN.
      MOVMED00  ADP022X.   MOVMED01  ADP022X.   MOVMED02  ADP022X.
      MOVMED03  ADP022X.   MOVMED04  ADP022X.   MOVMED05  ADP022X.
      MOV_TIM1  ADP118X.   MOV_TIM2  ADP118X.   MOV_TIM3  ADP118X.
      MOV_TIM4  ADP118X.   MOV_TIM5  ADP118X.   MOV_ENG   ADP009X.
      MOV_WEL   ADP009X.   MOV_IMM   ADP009X.   MOV_NOHP  ADP009X.
      MOV_EXPS  ADP009X.   MOV_SUGG  ADP009X.   MOV_FFC   ADP009X.
      MOVDISC   ADP009X.   MOVPRF1   ADP022X.   MOVPRF2   ADP022X.
      MOVPRF3   ADP022X.   MOVPRF4   ADP022X.   MOVPRF5   ADP022X.
      MOVPRF6   ADP022X.   MOVPRF7   ADP022X.   AHB_EVER  ADP009X.
      AHB_USEM  ADP009X.   AHB_MO    ADP009X.   AHBTAK01  ADP022X.
      AHBTAK02  ADP022X.   AHBTAK03  ADP022X.   AHBTAK04  ADP022X.
      AHBTAK05  ADP022X.   AHBTAK06  ADP022X.   AHBTAK07  ADP022X.
      AHBTAK08  ADP022X.   AHBTAK09  ADP022X.   AHBTAK10  ADP022X.
      AHBTAK11  ADP022X.   AHBTAK12  ADP022X.   AHBTAK13  ADP022X.
      AHBTAK14  ADP022X.   AHBTAK15  ADP022X.   AHBTAK16  ADP022X.
      AHBTAK17  ADP022X.   AHBTAK18  ADP022X.   AHBTAK19  ADP022X.
      AHBTAK20  ADP022X.   AHBTAK21  ADP022X.   AHBTAK22  ADP022X.
      AHBTAK23  ADP022X.   AHBTAK24  ADP022X.   AHBTAK25  ADP022X.
      AHBTAK26  ADP022X.   AHBTAK27  ADP022X.   AHBTAK28  ADP022X.
      AHBTAK29  ADP022X.   AHBTAK30  ADP022X.   AHBTAK31  ADP022X.
      AHBTAK32  ADP022X.   AHBTAK33  ADP022X.   AHBTAK34  ADP022X.
      AHBTAK35  ADP022X.   AHBTAK36  ADP022X.   AHBTAK37  ADP022X.
      AHBTAK38  ADP022X.   AHBTAK39  ADP022X.   AHBTAK40  ADP022X.
      AHBTAK41  ADP022X.   AHBTAK42  ADP022X.   AHBTAK43  ADP022X.
      AHBTAK44  ADP022X.   AHBTAK45  ADP022X.   AHBTAKCT  ADP109X.
      AHB_COMN  ADP109X.   AHBCM102  ADP022X.   AHBCM103  ADP022X.
      AHBCM104  ADP022X.   AHBCM105  ADP022X.   AHBCM106  ADP022X.
      AHBCM107  ADP022X.   AHBCM108  ADP022X.   AHBCM109  ADP022X.
      AHBCM110  ADP022X.   AHBCM111  ADP022X.   AHBCM112  ADP022X.
      AHBCM113  ADP022X.   AHBCM114  ADP022X.   AHBCM115  ADP022X.
      AHBCM116  ADP022X.   AHBCM117  ADP022X.   AHBCM118  ADP022X.
      AHBCM119  ADP022X.   AHBCM120  ADP022X.   AHBCM121  ADP022X.
      AHBCM122  ADP022X.   AHBCM123  ADP022X.   AHBCM124  ADP022X.
      AHBCM125  ADP022X.   AHBCM126  ADP022X.   AHBCM127  ADP022X.
      AHBCM128  ADP022X.   AHBCM129  ADP022X.   AHBCM130  ADP022X.
      AHBCM131  ADP022X.   AHBCM132  ADP022X.   AHBCM133  ADP022X.
      AHBCM134  ADP022X.   AHBCM135  ADP022X.   AHBCM136  ADP022X.
      AHBCM137  ADP022X.   AHBCM138  ADP022X.   AHBCM139  ADP022X.
      AHBCM140  ADP022X.   AHBCM141  ADP022X.   AHBCM142  ADP022X.
      AHBCM143  ADP022X.   AHBCM144  ADP022X.   AHBCM145  ADP022X.
      AHBCM146  ADP022X.   AHBCM202  ADP022X.   AHBCM203  ADP022X.
      AHBCM204  ADP022X.   AHBCM205  ADP022X.   AHBCM206  ADP022X.
      AHBCM207  ADP022X.   AHBCM208  ADP022X.   AHBCM209  ADP022X.
      AHBCM210  ADP022X.   AHBCM211  ADP022X.   AHBCM212  ADP022X.
      AHBCM213  ADP022X.   AHBCM214  ADP022X.   AHBCM215  ADP022X.
      AHBCM216  ADP022X.   AHBCM217  ADP022X.   AHBCM218  ADP022X.
      AHBCM219  ADP022X.   AHBCM220  ADP022X.   AHBCM221  ADP022X.
      AHBCM222  ADP022X.   AHBCM223  ADP022X.   AHBCM224  ADP022X.
      AHBCM225  ADP022X.   AHBCM226  ADP022X.   AHBCM227  ADP022X.
      AHBCM228  ADP022X.   AHBCM229  ADP022X.   AHBCM230  ADP022X.
      AHBCM231  ADP022X.   AHBCM232  ADP022X.   AHBCM233  ADP022X.
      AHBCM234  ADP022X.   AHBCM235  ADP022X.   AHBCM236  ADP022X.
      AHBCM237  ADP022X.   AHBCM238  ADP022X.   AHBCM239  ADP022X.
      AHBCM240  ADP022X.   AHBCM241  ADP022X.   AHBCM242  ADP022X.
      AHBCM243  ADP022X.   AHBCM244  ADP022X.   AHBCM245  ADP022X.
      AHBCM246  ADP022X.   AHBTOP2A  ADP545K.   AHBTOP2B  ADP545K.
      AHB_R1A   ADP547K.   AHB_R2A   ADP547K.   AHB_R3A   ADP547K.
      AHB_R4A   ADP547K.   AHB_R5A   ADP547K.   AHB_R6A   ADP547K.
      AHB_R7A   ADP547K.   AHB_R8A   ADP547K.   AHB_R9A   ADP547K.
      AHB_R10A  ADP547K.   AHB_R11A  ADP547K.   AHB_R12A  ADP547K.
      AHB_R13A  ADP547K.   AHCTRA01  ADP022X.   AHCTRA02  ADP022X.
      AHCTRA03  ADP022X.   AHCTRA04  ADP022X.   AHCTRA05  ADP022X.
      AHCTRA06  ADP022X.   AHCTRA07  ADP022X.   AHCTRA08  ADP022X.
      AHCTRA09  ADP022X.   AHCTRA10  ADP022X.   AHCTRA11  ADP022X.
      AHCTRA12  ADP022X.   AHCTRA13  ADP022X.   AHCTRA14  ADP022X.
      AHCTRA15  ADP022X.   AHCTRA16  ADP022X.   AHCTRA17  ADP022X.
      AHCTRA18  ADP022X.   AHCTRA19  ADP022X.   AHCTRA20  ADP022X.
      AHCTRA21  ADP022X.   AHCTRA22  ADP022X.   AHCTRA23  ADP022X.
      AHCTRA24  ADP022X.   AHCTRA25  ADP022X.   AHCTRA26  ADP022X.
      AHCTRA27  ADP022X.   AHCTRA28  ADP022X.   AHCTRA29  ADP022X.
      AHCTRA30  ADP022X.   AHCTRA31  ADP022X.   AHCTRA32  ADP022X.
      AHCTRA33  ADP022X.   AHCTRA34  ADP022X.   AHCTRA35  ADP022X.
      AHCTRA36  ADP022X.   AHCTRA37  ADP022X.   AHCTRA38  ADP022X.
      AHCTRA39  ADP022X.   AHCTRA40  ADP022X.   AHCTRA41  ADP022X.
      AHCTRA42  ADP022X.   AHCTRA43  ADP022X.   AHCTRA44  ADP022X.
      AHCTRA45  ADP022X.   AHCTRA46  ADP022X.   AHCTRA47  ADP022X.
      AHCTRA48  ADP022X.   AHCTRA49  ADP022X.   AHCTRA50  ADP022X.
      AHCTRA51  ADP022X.   AHCTRA52  ADP022X.   AHCTRA53  ADP022X.
      AHCTRA54  ADP022X.   AHCTRA55  ADP022X.   AHCTRA56  ADP022X.
      AHCTRA57  ADP022X.   AHCTRA58  ADP022X.   AHCTRA59  ADP022X.
      AHCTRA60  ADP022X.   AHCTRA61  ADP022X.   AHCTRA62  ADP022X.
      AHCTRA63  ADP022X.   AHCTRA64  ADP022X.   AHCTRA65  ADP022X.
      AHCTRA66  ADP022X.   AHCTRA67  ADP022X.   AHCTRA68  ADP022X.
      AHCTRA69  ADP022X.   AHCTRA70  ADP022X.   AHCTRA71  ADP022X.
      AHCTRA72  ADP022X.   AHCTRA73  ADP022X.   AHCTRA74  ADP022X.
      AHCTRA75  ADP022X.   AHCTRA76  ADP022X.   AHCTRA77  ADP022X.
      AHCTRA78  ADP022X.   AHCTRA79  ADP022X.   AHCTRA80  ADP022X.
      AHCTRA81  ADP022X.   AHCTRA82  ADP022X.   AHCTRA83  ADP022X.
      AHCTRA84  ADP022X.   AHCTRA85  ADP022X.   AHCTRA86  ADP022X.
      AHCTRA87  ADP022X.   AHBCTACT  ADP109X.   AHB_SPT1  $ADP110X.
      AHB_CONA  ADP111X.   AHBMEDA0  ADP022X.   AHBMEDA1  ADP022X.
      AHBMEDA2  ADP022X.   AHBMEDA3  ADP022X.   AHBMEDA4  ADP022X.
      AHBMEDA5  ADP022X.   AHB_TM1A  ADP118X.   AHB_TM2A  ADP118X.
      AHB_TM3A  ADP118X.   AHB_TM4A  ADP118X.   AHB_TM5A  ADP118X.
      AHCNPA01  ADP022X.   AHCNPA02  ADP022X.   AHCNPA03  ADP022X.
      AHCNPA04  ADP022X.   AHCNPA05  ADP022X.   AHCNPA06  ADP022X.
      AHCNPA07  ADP022X.   AHCNPA08  ADP022X.   AHCNPA09  ADP022X.
      AHCNPA10  ADP022X.   AHCNPA11  ADP022X.   AHCNPA12  ADP022X.
      AHCNPA13  ADP022X.   AHCNPA14  ADP022X.   AHCNPA15  ADP022X.
      AHCNPA16  ADP022X.   AHCNPA17  ADP022X.   AHCNPA18  ADP022X.
      AHCNPA19  ADP022X.   AHCNPA20  ADP022X.   AHCNPA21  ADP022X.
      AHCNPA22  ADP022X.   AHCNPA23  ADP022X.   AHCNPA24  ADP022X.
      AHCNPA25  ADP022X.   AHCNPA26  ADP022X.   AHCNPA27  ADP022X.
      AHCNPA28  ADP022X.   AHCNPA29  ADP022X.   AHCNPA30  ADP022X.
      AHCNPA31  ADP022X.   AHCNPA32  ADP022X.   AHCNPA33  ADP022X.
      AHCNPA34  ADP022X.   AHCNPA35  ADP022X.   AHCNPA36  ADP022X.
      AHCNPA37  ADP022X.   AHCNPA38  ADP022X.   AHCNPA39  ADP022X.
      AHCNPA40  ADP022X.   AHCNPA41  ADP022X.   AHCNPA42  ADP022X.
      AHCNPA43  ADP022X.   AHCNPA44  ADP022X.   AHCNPA45  ADP022X.
      AHCNPA46  ADP022X.   AHCNPA47  ADP022X.   AHCNPA48  ADP022X.
      AHCNPA49  ADP022X.   AHCNPA50  ADP022X.   AHCNPA51  ADP022X.
      AHCNPA52  ADP022X.   AHCNPA53  ADP022X.   AHCNPA54  ADP022X.
      AHCNPA55  ADP022X.   AHCNPA56  ADP022X.   AHCNPA57  ADP022X.
      AHCNPA58  ADP022X.   AHCNPA59  ADP022X.   AHCNPA60  ADP022X.
      AHCNPA61  ADP022X.   AHCNPA62  ADP022X.   AHCNPA63  ADP022X.
      AHCNPA64  ADP022X.   AHCNPA65  ADP022X.   AHCNPA66  ADP022X.
      AHCNPA67  ADP022X.   AHCNPA68  ADP022X.   AHCNPA69  ADP022X.
      AHCNPA70  ADP022X.   AHCNPA71  ADP022X.   AHCNPA72  ADP022X.
      AHCNPA73  ADP022X.   AHCNPA74  ADP022X.   AHCNPA75  ADP022X.
      AHCNPA76  ADP022X.   AHCNPA77  ADP022X.   AHCNPA78  ADP022X.
      AHCNPA79  ADP022X.   AHCNPA80  ADP022X.   AHCNPA81  ADP022X.
      AHCNPA82  ADP022X.   AHCNPA83  ADP022X.   AHCNPA84  ADP022X.
      AHCNPA85  ADP022X.   AHCNPA86  ADP022X.   AHCNPA87  ADP022X.
      AHBCPACT  ADP109X.   AHB_SPP1  $ADP110X.  AHB_CMPA  ADP111X.
      AHB_SAME  ADP751K.   AHB_R1B   ADP009X.   AHB_R2B   ADP009X.
      AHB_R3B   ADP009X.   AHB_R4B   ADP009X.   AHB_R5B   ADP009X.
      AHB_R6B   ADP009X.   AHB_R7B   ADP009X.   AHB_R8B   ADP009X.
      AHB_R9B   ADP009X.   AHB_R10B  ADP009X.   AHB_R11B  ADP009X.
      AHB_R12B  ADP009X.   AHB_R13B  ADP009X.   AHCTRB01  ADP022X.
      AHCTRB02  ADP022X.   AHCTRB03  ADP022X.   AHCTRB04  ADP022X.
      AHCTRB05  ADP022X.   AHCTRB06  ADP022X.   AHCTRB07  ADP022X.
      AHCTRB08  ADP022X.   AHCTRB09  ADP022X.   AHCTRB10  ADP022X.
      AHCTRB11  ADP022X.   AHCTRB12  ADP022X.   AHCTRB13  ADP022X.
      AHCTRB14  ADP022X.   AHCTRB15  ADP022X.   AHCTRB16  ADP022X.
      AHCTRB17  ADP022X.   AHCTRB18  ADP022X.   AHCTRB19  ADP022X.
      AHCTRB20  ADP022X.   AHCTRB21  ADP022X.   AHCTRB22  ADP022X.
      AHCTRB23  ADP022X.   AHCTRB24  ADP022X.   AHCTRB25  ADP022X.
      AHCTRB26  ADP022X.   AHCTRB27  ADP022X.   AHCTRB28  ADP022X.
      AHCTRB29  ADP022X.   AHCTRB30  ADP022X.   AHCTRB31  ADP022X.
      AHCTRB32  ADP022X.   AHCTRB33  ADP022X.   AHCTRB34  ADP022X.
      AHCTRB35  ADP022X.   AHCTRB36  ADP022X.   AHCTRB37  ADP022X.
      AHCTRB38  ADP022X.   AHCTRB39  ADP022X.   AHCTRB40  ADP022X.
      AHCTRB41  ADP022X.   AHCTRB42  ADP022X.   AHCTRB43  ADP022X.
      AHCTRB44  ADP022X.   AHCTRB45  ADP022X.   AHCTRB46  ADP022X.
      AHCTRB47  ADP022X.   AHCTRB48  ADP022X.   AHCTRB49  ADP022X.
      AHCTRB50  ADP022X.   AHCTRB51  ADP022X.   AHCTRB52  ADP022X.
      AHCTRB53  ADP022X.   AHCTRB54  ADP022X.   AHCTRB55  ADP022X.
      AHCTRB56  ADP022X.   AHCTRB57  ADP022X.   AHCTRB58  ADP022X.
      AHCTRB59  ADP022X.   AHCTRB60  ADP022X.   AHCTRB61  ADP022X.
      AHCTRB62  ADP022X.   AHCTRB63  ADP022X.   AHCTRB64  ADP022X.
      AHCTRB65  ADP022X.   AHCTRB66  ADP022X.   AHCTRB67  ADP022X.
      AHCTRB68  ADP022X.   AHCTRB69  ADP022X.   AHCTRB70  ADP022X.
      AHCTRB71  ADP022X.   AHCTRB72  ADP022X.   AHCTRB73  ADP022X.
      AHCTRB74  ADP022X.   AHCTRB75  ADP022X.   AHCTRB76  ADP022X.
      AHCTRB77  ADP022X.   AHCTRB78  ADP022X.   AHCTRB79  ADP022X.
      AHCTRB80  ADP022X.   AHCTRB81  ADP022X.   AHCTRB82  ADP022X.
      AHCTRB83  ADP022X.   AHCTRB84  ADP022X.   AHCTRB85  ADP022X.
      AHCTRB86  ADP022X.   AHCTRB87  ADP022X.   AHBCTBCT  ADP109X.
      AHB_SPT2  $ADP110X.  AHB_CONB  ADP111X.   AHBMEDB0  ADP022X.
      AHBMEDB1  ADP022X.   AHBMEDB2  ADP022X.   AHBMEDB3  ADP022X.
      AHBMEDB4  ADP022X.   AHBMEDB5  ADP022X.   AHB_TM1B  ADP118X.
      AHB_TM2B  ADP118X.   AHB_TM3B  ADP118X.   AHB_TM4B  ADP118X.
      AHB_TM5B  ADP118X.   AHCNPB01  ADP022X.   AHCNPB02  ADP022X.
      AHCNPB03  ADP022X.   AHCNPB04  ADP022X.   AHCNPB05  ADP022X.
      AHCNPB06  ADP022X.   AHCNPB07  ADP022X.   AHCNPB08  ADP022X.
      AHCNPB09  ADP022X.   AHCNPB10  ADP022X.   AHCNPB11  ADP022X.
      AHCNPB12  ADP022X.   AHCNPB13  ADP022X.   AHCNPB14  ADP022X.
      AHCNPB15  ADP022X.   AHCNPB16  ADP022X.   AHCNPB17  ADP022X.
      AHCNPB18  ADP022X.   AHCNPB19  ADP022X.   AHCNPB20  ADP022X.
      AHCNPB21  ADP022X.   AHCNPB22  ADP022X.   AHCNPB23  ADP022X.
      AHCNPB24  ADP022X.   AHCNPB25  ADP022X.   AHCNPB26  ADP022X.
      AHCNPB27  ADP022X.   AHCNPB28  ADP022X.   AHCNPB29  ADP022X.
      AHCNPB30  ADP022X.   AHCNPB31  ADP022X.   AHCNPB32  ADP022X.
      AHCNPB33  ADP022X.   AHCNPB34  ADP022X.   AHCNPB35  ADP022X.
      AHCNPB36  ADP022X.   AHCNPB37  ADP022X.   AHCNPB38  ADP022X.
      AHCNPB39  ADP022X.   AHCNPB40  ADP022X.   AHCNPB41  ADP022X.
      AHCNPB42  ADP022X.   AHCNPB43  ADP022X.   AHCNPB44  ADP022X.
      AHCNPB45  ADP022X.   AHCNPB46  ADP022X.   AHCNPB47  ADP022X.
      AHCNPB48  ADP022X.   AHCNPB49  ADP022X.   AHCNPB50  ADP022X.
      AHCNPB51  ADP022X.   AHCNPB52  ADP022X.   AHCNPB53  ADP022X.
      AHCNPB54  ADP022X.   AHCNPB55  ADP022X.   AHCNPB56  ADP022X.
      AHCNPB57  ADP022X.   AHCNPB58  ADP022X.   AHCNPB59  ADP022X.
      AHCNPB60  ADP022X.   AHCNPB61  ADP022X.   AHCNPB62  ADP022X.
      AHCNPB63  ADP022X.   AHCNPB64  ADP022X.   AHCNPB65  ADP022X.
      AHCNPB66  ADP022X.   AHCNPB67  ADP022X.   AHCNPB68  ADP022X.
      AHCNPB69  ADP022X.   AHCNPB70  ADP022X.   AHCNPB71  ADP022X.
      AHCNPB72  ADP022X.   AHCNPB73  ADP022X.   AHCNPB74  ADP022X.
      AHCNPB75  ADP022X.   AHCNPB76  ADP022X.   AHCNPB77  ADP022X.
      AHCNPB78  ADP022X.   AHCNPB79  ADP022X.   AHCNPB80  ADP022X.
      AHCNPB81  ADP022X.   AHCNPB82  ADP022X.   AHCNPB83  ADP022X.
      AHCNPB84  ADP022X.   AHCNPB85  ADP022X.   AHCNPB86  ADP022X.
      AHCNPB87  ADP022X.   AHBCPBCT  ADP109X.   AHB_SPP2  $ADP110X.
      AHB_CMPB  ADP111X.   AHB_PRAC  ADP009X.   AHB_PR12  ADP009X.
      AHB_PRTM  ADP019X.   AHB_PAY   ADP020X.   AHBDISC   ADP009X.
      AHBPRF1   ADP022X.   AHBPRF2   ADP022X.   AHBPRF3   ADP022X.
      AHBPRF4   ADP022X.   AHBPRF5   ADP022X.   AHBPRF6   ADP022X.
      AHBPRF7   ADP022X.   AHBN301   ADP022X.   AHBN302   ADP022X.
      AHBN303   ADP022X.   AHBN304   ADP022X.   AHBN305   ADP022X.
      AHBN306   ADP022X.   AHBN307   ADP022X.   AHBN308   ADP022X.
      AHBN309   ADP022X.   AHBNYR1   ADP022X.   AHBNYR2   ADP022X.
      AHBNYR3   ADP022X.   AHBNYR4   ADP022X.   AHBNYR5   ADP022X.
      AHBNYR6   ADP022X.   AHBNYR7   ADP022X.   AHBNYR8   ADP022X.
      AHBNYR9   ADP022X.   AHB_SIDE  $ADP110X.  AHB_SMED  ADP009X.
      AHBNEV01  ADP022X.   AHBNEV02  ADP022X.   AHBNEV03  ADP022X.
      AHBNEV04  ADP022X.   AHBNEV05  ADP022X.   AHBNEV06  ADP022X.
      AHBNEV07  ADP022X.   AHBNEV08  ADP022X.   AHBNEV09  ADP022X.
      AHBNEV10  ADP022X.   AVT_EVER  ADP009X.   AVT_USEM  ADP009X.
      AVT_MO    ADP009X.   AVTTAK01  ADP022X.   AVTTAK02  ADP022X.
      AVTTAK03  ADP022X.   AVTTAK04  ADP022X.   AVTTAK05  ADP022X.
      AVTTAK06  ADP022X.   AVTTAK07  ADP022X.   AVTTAK08  ADP022X.
      AVTTAK09  ADP022X.   AVTTAK10  ADP022X.   AVTTAK11  ADP022X.
      AVTTAK12  ADP022X.   AVTTAK13  ADP022X.   AVTTAK14  ADP022X.
      AVTTAK15  ADP022X.   AVTTAK16  ADP022X.   AVTTAK17  ADP022X.
      AVTTAK18  ADP022X.   AVTTAK19  ADP022X.   AVTTAK20  ADP022X.
      AVTTAKCT  ADP109X.   AVTTOP2A  ADP022L.   AVTTOP2B  ADP022L.
      AVT_R1A   ADP009X.   AVT_R2A   ADP009X.   AVT_R3A   ADP009X.
      AVT_R4A   ADP009X.   AVT_R5A   ADP009X.   AVT_R6A   ADP009X.
      AVT_R7A   ADP009X.   AVT_R8A   ADP009X.   AVT_R9A   ADP009X.
      AVT_R10A  ADP009X.   AVT_R11A  ADP009X.   AVT_R12A  ADP009X.
      AVT_R13A  ADP009X.   AVCTRA01  ADP022X.   AVCTRA02  ADP022X.
      AVCTRA03  ADP022X.   AVCTRA04  ADP022X.   AVCTRA05  ADP022X.
      AVCTRA06  ADP022X.   AVCTRA07  ADP022X.   AVCTRA08  ADP022X.
      AVCTRA09  ADP022X.   AVCTRA10  ADP022X.   AVCTRA11  ADP022X.
      AVCTRA12  ADP022X.   AVCTRA13  ADP022X.   AVCTRA14  ADP022X.
      AVCTRA15  ADP022X.   AVCTRA16  ADP022X.   AVCTRA17  ADP022X.
      AVCTRA18  ADP022X.   AVCTRA19  ADP022X.   AVCTRA20  ADP022X.
      AVCTRA21  ADP022X.   AVCTRA22  ADP022X.   AVCTRA23  ADP022X.
      AVCTRA24  ADP022X.   AVCTRA25  ADP022X.   AVCTRA26  ADP022X.
      AVCTRA27  ADP022X.   AVCTRA28  ADP022X.   AVCTRA29  ADP022X.
      AVCTRA30  ADP022X.   AVCTRA31  ADP022X.   AVCTRA32  ADP022X.
      AVCTRA33  ADP022X.   AVCTRA34  ADP022X.   AVCTRA35  ADP022X.
      AVCTRA36  ADP022X.   AVCTRA37  ADP022X.   AVCTRA38  ADP022X.
      AVCTRA39  ADP022X.   AVCTRA40  ADP022X.   AVCTRA41  ADP022X.
      AVCTRA42  ADP022X.   AVCTRA43  ADP022X.   AVCTRA44  ADP022X.
      AVCTRA45  ADP022X.   AVCTRA46  ADP022X.   AVCTRA47  ADP022X.
      AVCTRA48  ADP022X.   AVCTRA49  ADP022X.   AVCTRA50  ADP022X.
      AVCTRA51  ADP022X.   AVCTRA52  ADP022X.   AVCTRA53  ADP022X.
      AVCTRA54  ADP022X.   AVCTRA55  ADP022X.   AVCTRA56  ADP022X.
      AVCTRA57  ADP022X.   AVCTRA58  ADP022X.   AVCTRA59  ADP022X.
      AVCTRA60  ADP022X.   AVCTRA61  ADP022X.   AVCTRA62  ADP022X.
      AVCTRA63  ADP022X.   AVCTRA64  ADP022X.   AVCTRA65  ADP022X.
      AVCTRA66  ADP022X.   AVCTRA67  ADP022X.   AVCTRA68  ADP022X.
      AVCTRA69  ADP022X.   AVCTRA70  ADP022X.   AVCTRA71  ADP022X.
      AVCTRA72  ADP022X.   AVCTRA73  ADP022X.   AVCTRA74  ADP022X.
      AVCTRA75  ADP022X.   AVCTRA76  ADP022X.   AVCTRA77  ADP022X.
      AVCTRA78  ADP022X.   AVCTRA79  ADP022X.   AVCTRA80  ADP022X.
      AVCTRA81  ADP022X.   AVCTRA82  ADP022X.   AVCTRA83  ADP022X.
      AVCTRA84  ADP022X.   AVCTRA85  ADP022X.   AVCTRA86  ADP022X.
      AVCTRA87  ADP022X.   AVTCTACT  ADP109X.   AVT_SPT1  $ADP110X.
      AVT_CONA  ADP111X.   AVTMEDA0  ADP022X.   AVTMEDA1  ADP022X.
      AVTMEDA2  ADP022X.   AVTMEDA3  ADP022X.   AVTMEDA4  ADP022X.
      AVTMEDA5  ADP022X.   AVT_TM1A  ADP118X.   AVT_TM2A  ADP118X.
      AVT_TM3A  ADP118X.   AVT_TM4A  ADP118X.   AVT_TM5A  ADP118X.
      AVCNPA01  ADP022X.   AVCNPA02  ADP022X.   AVCNPA03  ADP022X.
      AVCNPA04  ADP022X.   AVCNPA05  ADP022X.   AVCNPA06  ADP022X.
      AVCNPA07  ADP022X.   AVCNPA08  ADP022X.   AVCNPA09  ADP022X.
      AVCNPA10  ADP022X.   AVCNPA11  ADP022X.   AVCNPA12  ADP022X.
      AVCNPA13  ADP022X.   AVCNPA14  ADP022X.   AVCNPA15  ADP022X.
      AVCNPA16  ADP022X.   AVCNPA17  ADP022X.   AVCNPA18  ADP022X.
      AVCNPA19  ADP022X.   AVCNPA20  ADP022X.   AVCNPA21  ADP022X.
      AVCNPA22  ADP022X.   AVCNPA23  ADP022X.   AVCNPA24  ADP022X.
      AVCNPA25  ADP022X.   AVCNPA26  ADP022X.   AVCNPA27  ADP022X.
      AVCNPA28  ADP022X.   AVCNPA29  ADP022X.   AVCNPA30  ADP022X.
      AVCNPA31  ADP022X.   AVCNPA32  ADP022X.   AVCNPA33  ADP022X.
      AVCNPA34  ADP022X.   AVCNPA35  ADP022X.   AVCNPA36  ADP022X.
      AVCNPA37  ADP022X.   AVCNPA38  ADP022X.   AVCNPA39  ADP022X.
      AVCNPA40  ADP022X.   AVCNPA41  ADP022X.   AVCNPA42  ADP022X.
      AVCNPA43  ADP022X.   AVCNPA44  ADP022X.   AVCNPA45  ADP022X.
      AVCNPA46  ADP022X.   AVCNPA47  ADP022X.   AVCNPA48  ADP022X.
      AVCNPA49  ADP022X.   AVCNPA50  ADP022X.   AVCNPA51  ADP022X.
      AVCNPA52  ADP022X.   AVCNPA53  ADP022X.   AVCNPA54  ADP022X.
      AVCNPA55  ADP022X.   AVCNPA56  ADP022X.   AVCNPA57  ADP022X.
      AVCNPA58  ADP022X.   AVCNPA59  ADP022X.   AVCNPA60  ADP022X.
      AVCNPA61  ADP022X.   AVCNPA62  ADP022X.   AVCNPA63  ADP022X.
      AVCNPA64  ADP022X.   AVCNPA65  ADP022X.   AVCNPA66  ADP022X.
      AVCNPA67  ADP022X.   AVCNPA68  ADP022X.   AVCNPA69  ADP022X.
      AVCNPA70  ADP022X.   AVCNPA71  ADP022X.   AVCNPA72  ADP022X.
      AVCNPA73  ADP022X.   AVCNPA74  ADP022X.   AVCNPA75  ADP022X.
      AVCNPA76  ADP022X.   AVCNPA77  ADP022X.   AVCNPA78  ADP022X.
      AVCNPA79  ADP022X.   AVCNPA80  ADP022X.   AVCNPA81  ADP022X.
      AVCNPA82  ADP022X.   AVCNPA83  ADP022X.   AVCNPA84  ADP022X.
      AVCNPA85  ADP022X.   AVCNPA86  ADP022X.   AVCNPA87  ADP022X.
      AVTCPACT  ADP109X.   AVT_SPP1  $ADP226L.  AVT_CMPA  ADP111X.
      AVT_SAME  ADP751K.   AVT_R1B   ADP009X.   AVT_R2B   ADP009X.
      AVT_R3B   ADP009X.   AVT_R4B   ADP009X.   AVT_R5B   ADP009X.
      AVT_R6B   ADP009X.   AVT_R7B   ADP009X.   AVT_R8B   ADP009X.
      AVT_R9B   ADP009X.   AVT_R10B  ADP009X.   AVT_R11B  ADP009X.
      AVT_R12B  ADP009X.   AVT_R13B  ADP009X.   AVCTRB01  ADP022X.
      AVCTRB02  ADP022X.   AVCTRB03  ADP022X.   AVCTRB04  ADP022X.
      AVCTRB05  ADP022X.   AVCTRB06  ADP022X.   AVCTRB07  ADP022X.
      AVCTRB08  ADP022X.   AVCTRB09  ADP022X.   AVCTRB10  ADP022X.
      AVCTRB11  ADP022X.   AVCTRB12  ADP022X.   AVCTRB13  ADP022X.
      AVCTRB14  ADP022X.   AVCTRB15  ADP022X.   AVCTRB16  ADP022X.
      AVCTRB17  ADP022X.   AVCTRB18  ADP022X.   AVCTRB19  ADP022X.
      AVCTRB20  ADP022X.   AVCTRB21  ADP022X.   AVCTRB22  ADP022X.
      AVCTRB23  ADP022X.   AVCTRB24  ADP022X.   AVCTRB25  ADP022X.
      AVCTRB26  ADP022X.   AVCTRB27  ADP022X.   AVCTRB28  ADP022X.
      AVCTRB29  ADP022X.   AVCTRB30  ADP022X.   AVCTRB31  ADP022X.
      AVCTRB32  ADP022X.   AVCTRB33  ADP022X.   AVCTRB34  ADP022X.
      AVCTRB35  ADP022X.   AVCTRB36  ADP022X.   AVCTRB37  ADP022X.
      AVCTRB38  ADP022X.   AVCTRB39  ADP022X.   AVCTRB40  ADP022X.
      AVCTRB41  ADP022X.   AVCTRB42  ADP022X.   AVCTRB43  ADP022X.
      AVCTRB44  ADP022X.   AVCTRB45  ADP022X.   AVCTRB46  ADP022X.
      AVCTRB47  ADP022X.   AVCTRB48  ADP022X.   AVCTRB49  ADP022X.
      AVCTRB50  ADP022X.   AVCTRB51  ADP022X.   AVCTRB52  ADP022X.
      AVCTRB53  ADP022X.   AVCTRB54  ADP022X.   AVCTRB55  ADP022X.
      AVCTRB56  ADP022X.   AVCTRB57  ADP022X.   AVCTRB58  ADP022X.
      AVCTRB59  ADP022X.   AVCTRB60  ADP022X.   AVCTRB61  ADP022X.
      AVCTRB62  ADP022X.   AVCTRB63  ADP022X.   AVCTRB64  ADP022X.
      AVCTRB65  ADP022X.   AVCTRB66  ADP022X.   AVCTRB67  ADP022X.
      AVCTRB68  ADP022X.   AVCTRB69  ADP022X.   AVCTRB70  ADP022X.
      AVCTRB71  ADP022X.   AVCTRB72  ADP022X.   AVCTRB73  ADP022X.
      AVCTRB74  ADP022X.   AVCTRB75  ADP022X.   AVCTRB76  ADP022X.
      AVCTRB77  ADP022X.   AVCTRB78  ADP022X.   AVCTRB79  ADP022X.
      AVCTRB80  ADP022X.   AVCTRB81  ADP022X.   AVCTRB82  ADP022X.
      AVCTRB83  ADP022X.   AVCTRB84  ADP022X.   AVCTRB85  ADP022X.
      AVCTRB86  ADP022X.   AVCTRB87  ADP022X.   AVTCTBCT  ADP109X.
      AVT_SPT2  $ADP110X.  AVT_CONB  ADP111X.   AVTMEDB0  ADP022X.
      AVTMEDB1  ADP022X.   AVTMEDB2  ADP022X.   AVTMEDB3  ADP022X.
      AVTMEDB4  ADP022X.   AVTMEDB5  ADP022X.   AVT_TM1B  ADP118X.
      AVT_TM2B  ADP118X.   AVT_TM3B  ADP118X.   AVT_TM4B  ADP118X.
      AVT_TM5B  ADP118X.   AVCNPB01  ADP022X.   AVCNPB02  ADP022X.
      AVCNPB03  ADP022X.   AVCNPB04  ADP022X.   AVCNPB05  ADP022X.
      AVCNPB06  ADP022X.   AVCNPB07  ADP022X.   AVCNPB08  ADP022X.
      AVCNPB09  ADP022X.   AVCNPB10  ADP022X.   AVCNPB11  ADP022X.
      AVCNPB12  ADP022X.   AVCNPB13  ADP022X.   AVCNPB14  ADP022X.
      AVCNPB15  ADP022X.   AVCNPB16  ADP022X.   AVCNPB17  ADP022X.
      AVCNPB18  ADP022X.   AVCNPB19  ADP022X.   AVCNPB20  ADP022X.
      AVCNPB21  ADP022X.   AVCNPB22  ADP022X.   AVCNPB23  ADP022X.
      AVCNPB24  ADP022X.   AVCNPB25  ADP022X.   AVCNPB26  ADP022X.
      AVCNPB27  ADP022X.   AVCNPB28  ADP022X.   AVCNPB29  ADP022X.
      AVCNPB30  ADP022X.   AVCNPB31  ADP022X.   AVCNPB32  ADP022X.
      AVCNPB33  ADP022X.   AVCNPB34  ADP022X.   AVCNPB35  ADP022X.
      AVCNPB36  ADP022X.   AVCNPB37  ADP022X.   AVCNPB38  ADP022X.
      AVCNPB39  ADP022X.   AVCNPB40  ADP022X.   AVCNPB41  ADP022X.
      AVCNPB42  ADP022X.   AVCNPB43  ADP022X.   AVCNPB44  ADP022X.
      AVCNPB45  ADP022X.   AVCNPB46  ADP022X.   AVCNPB47  ADP022X.
      AVCNPB48  ADP022X.   AVCNPB49  ADP022X.   AVCNPB50  ADP022X.
      AVCNPB51  ADP022X.   AVCNPB52  ADP022X.   AVCNPB53  ADP022X.
      AVCNPB54  ADP022X.   AVCNPB55  ADP022X.   AVCNPB56  ADP022X.
      AVCNPB57  ADP022X.   AVCNPB58  ADP022X.   AVCNPB59  ADP022X.
      AVCNPB60  ADP022X.   AVCNPB61  ADP022X.   AVCNPB62  ADP022X.
      AVCNPB63  ADP022X.   AVCNPB64  ADP022X.   AVCNPB65  ADP022X.
      AVCNPB66  ADP022X.   AVCNPB67  ADP022X.   AVCNPB68  ADP022X.
      AVCNPB69  ADP022X.   AVCNPB70  ADP022X.   AVCNPB71  ADP022X.
      AVCNPB72  ADP022X.   AVCNPB73  ADP022X.   AVCNPB74  ADP022X.
      AVCNPB75  ADP022X.   AVCNPB76  ADP022X.   AVCNPB77  ADP022X.
      AVCNPB78  ADP022X.   AVCNPB79  ADP022X.   AVCNPB80  ADP022X.
      AVCNPB81  ADP022X.   AVCNPB82  ADP022X.   AVCNPB83  ADP022X.
      AVCNPB84  ADP022X.   AVCNPB85  ADP022X.   AVCNPB86  ADP022X.
      AVCNPB87  ADP022X.   AVTCPBCT  ADP109X.   AVT_SPP2  $ADP110X.
      AVT_CMPB  ADP111X.   AVTDISC   ADP009X.   AVTPRF1   ADP022X.
      AVTPRF2   ADP022X.   AVTPRF3   ADP022X.   AVTPRF4   ADP022X.
      AVTPRF5   ADP022X.   AVTPRF6   ADP022X.   AVTPRF7   ADP022X.
      AHB_OFTN  ADP441L.   AHB_OFTT  ADP442L.   AHB_COST  ADP443L.
      AVT_OFTN  ADP441L.   AVT_OFTT  ADP442L.   AVT_COST  ADP443L.
      HOM_EVER  ADP009X.   HOM_USEM  ADP009X.   HOMNO     ADP449L.
      HOMTP     ADP450L.   HOM_SPEN  ADP020X.   HOM_TRET  ADP009X.
      HOMCND01  ADP022X.   HOMCND02  ADP022X.   HOMCND03  ADP022X.
      HOMCND04  ADP022X.   HOMCND05  ADP022X.   HOMCND06  ADP022X.
      HOMCND07  ADP022X.   HOMCND08  ADP022X.   HOMCND09  ADP022X.
      HOMCND10  ADP022X.   HOMCND11  ADP022X.   HOMCND12  ADP022X.
      HOMCND13  ADP022X.   HOMCND14  ADP022X.   HOMCND15  ADP022X.
      HOMCND16  ADP022X.   HOMCND17  ADP022X.   HOMCND18  ADP022X.
      HOMCND19  ADP022X.   HOMCND20  ADP022X.   HOMCND21  ADP022X.
      HOMCND22  ADP022X.   HOMCND23  ADP022X.   HOMCND24  ADP022X.
      HOMCND25  ADP022X.   HOMCND26  ADP022X.   HOMCND27  ADP022X.
      HOMCND28  ADP022X.   HOMCND29  ADP022X.   HOMCND30  ADP022X.
      HOMCND31  ADP022X.   HOMCND32  ADP022X.   HOMCND33  ADP022X.
      HOMCND34  ADP022X.   HOMCND35  ADP022X.   HOMCND36  ADP022X.
      HOMCND37  ADP022X.   HOMCND38  ADP022X.   HOMCND39  ADP022X.
      HOMCND40  ADP022X.   HOMCND41  ADP022X.   HOMCND42  ADP022X.
      HOMCND43  ADP022X.   HOMCND44  ADP022X.   HOMCND45  ADP022X.
      HOMCND46  ADP022X.   HOMCND47  ADP022X.   HOMCND48  ADP022X.
      HOMCND49  ADP022X.   HOMCND50  ADP022X.   HOMCND51  ADP022X.
      HOMCND52  ADP022X.   HOMCND53  ADP022X.   HOMCND54  ADP022X.
      HOMCND55  ADP022X.   HOMCND56  ADP022X.   HOMCND57  ADP022X.
      HOMCND58  ADP022X.   HOMCND59  ADP022X.   HOMCND60  ADP022X.
      HOMCND61  ADP022X.   HOMCND62  ADP022X.   HOMCND63  ADP022X.
      HOMCND64  ADP022X.   HOMCND65  ADP022X.   HOMCND66  ADP022X.
      HOMCND67  ADP022X.   HOMCND68  ADP022X.   HOMCND69  ADP022X.
      HOMCND70  ADP022X.   HOMCND71  ADP022X.   HOMCND72  ADP022X.
      HOMCND73  ADP022X.   HOMCND74  ADP022X.   HOMCND75  ADP022X.
      HOMCND76  ADP022X.   HOMCND77  ADP022X.   HOMCND78  ADP022X.
      HOMCND79  ADP022X.   HOMCND80  ADP022X.   HOMCND81  ADP022X.
      HOMCND82  ADP022X.   HOMCND83  ADP022X.   HOMCND84  ADP022X.
      HOMCND85  ADP022X.   HOMCND86  ADP022X.   HOMCND87  ADP022X.
      HOMCONCT  ADP109X.   HOM_SPEC  $ADP110X.  HOM_MOST  ADP542L.
      HOMMED00  ADP022X.   HOMMED01  ADP022X.   HOMMED02  ADP022X.
      HOMMED03  ADP022X.   HOMMED04  ADP022X.   HOMMED05  ADP022X.
      HOM_TIM1  ADP118X.   HOM_TIM2  ADP118X.   HOM_TIM3  ADP118X.
      HOM_TIM4  ADP118X.   HOM_TIM5  ADP118X.   HOM_ENG   ADP009X.
      HOM_WEL   ADP009X.   HOM_IMM   ADP009X.   HOM_NOHP  ADP009X.
      HOM_EXPS  ADP009X.   HOM_SUGG  ADP009X.   HOM_FFC   ADP009X.
      HOM_PRAC  ADP009X.   HOM_YR    ADP009X.   HOM_NUM   ADP019X.
      HOM_PAY   ADP020X.   HOMDISC   ADP009X.   HOMPRF1   ADP022X.
      HOMPRF2   ADP022X.   HOMPRF3   ADP022X.   HOMPRF4   ADP022X.
      HOMPRF5   ADP022X.   HOMPRF6   ADP022X.   HOMPRF7   ADP022X.
      DITEVER1  ADP009X.   DITEVER2  ADP009X.   DITEVER3  ADP009X.
      DITEVER4  ADP009X.   DITEVER5  ADP009X.   DITEVER6  ADP009X.
      DITEVER7  ADP009X.   DITUSEM1  ADP009X.   DITUSEM2  ADP009X.
      DITUSEM3  ADP009X.   DITUSEM4  ADP009X.   DITUSEM5  ADP009X.
      DITUSEM6  ADP009X.   DITUSEM7  ADP009X.   DIT_DMST  ADP588L.
      DIT_WGHT  ADP009X.   DIT_TRET  ADP009X.   DITCND01  ADP022X.
      DITCND02  ADP022X.   DITCND03  ADP022X.   DITCND04  ADP022X.
      DITCND05  ADP022X.   DITCND06  ADP022X.   DITCND07  ADP022X.
      DITCND08  ADP022X.   DITCND09  ADP022X.   DITCND10  ADP022X.
      DITCND11  ADP022X.   DITCND12  ADP022X.   DITCND13  ADP022X.
      DITCND14  ADP022X.   DITCND15  ADP022X.   DITCND16  ADP022X.
      DITCND17  ADP022X.   DITCND18  ADP022X.   DITCND19  ADP022X.
      DITCND20  ADP022X.   DITCND21  ADP022X.   DITCND22  ADP022X.
      DITCND23  ADP022X.   DITCND24  ADP022X.   DITCND25  ADP022X.
      DITCND26  ADP022X.   DITCND27  ADP022X.   DITCND28  ADP022X.
      DITCND29  ADP022X.   DITCND30  ADP022X.   DITCND31  ADP022X.
      DITCND32  ADP022X.   DITCND33  ADP022X.   DITCND34  ADP022X.
      DITCND35  ADP022X.   DITCND36  ADP022X.   DITCND37  ADP022X.
      DITCND38  ADP022X.   DITCND39  ADP022X.   DITCND40  ADP022X.
      DITCND41  ADP022X.   DITCND42  ADP022X.   DITCND43  ADP022X.
      DITCND44  ADP022X.   DITCND45  ADP022X.   DITCND46  ADP022X.
      DITCND47  ADP022X.   DITCND48  ADP022X.   DITCND49  ADP022X.
      DITCND50  ADP022X.   DITCND51  ADP022X.   DITCND52  ADP022X.
      DITCND53  ADP022X.   DITCND54  ADP022X.   DITCND55  ADP022X.
      DITCND56  ADP022X.   DITCND57  ADP022X.   DITCND58  ADP022X.
      DITCND59  ADP022X.   DITCND60  ADP022X.   DITCND61  ADP022X.
      DITCND62  ADP022X.   DITCND63  ADP022X.   DITCND64  ADP022X.
      DITCND65  ADP022X.   DITCND66  ADP022X.   DITCND67  ADP022X.
      DITCND68  ADP022X.   DITCND69  ADP022X.   DITCND70  ADP022X.
      DITCND71  ADP022X.   DITCND72  ADP022X.   DITCND73  ADP022X.
      DITCND74  ADP022X.   DITCND75  ADP022X.   DITCND76  ADP022X.
      DITCND77  ADP022X.   DITCND78  ADP022X.   DITCND79  ADP022X.
      DITCND80  ADP022X.   DITCND81  ADP022X.   DITCND82  ADP022X.
      DITCND83  ADP022X.   DITCND84  ADP022X.   DITCND85  ADP022X.
      DITCND86  ADP022X.   DITCND87  ADP022X.   DITCONCT  ADP109X.
      DIT_SPEC  $ADP110X.  DIT_MOST  ADP111X.   DITMED00  ADP022X.
      DITMED01  ADP022X.   DITMED02  ADP022X.   DITMED03  ADP022X.
      DITMED04  ADP022X.   DITMED05  ADP022X.   DIT_TIM1  ADP118X.
      DIT_TIM2  ADP118X.   DIT_TIM3  ADP118X.   DIT_TIM4  ADP118X.
      DIT_TIM5  ADP118X.   DIT_ENG   ADP009X.   DIT_WEL   ADP009X.
      DIT_IMM   ADP009X.   DIT_NOHP  ADP009X.   DIT_EXPS  ADP009X.
      DIT_SUGG  ADP009X.   DIT_FFC   ADP009X.   DIT_PRAC  ADP009X.
      DIT_YR    ADP009X.   DITTYPE1  ADP022X.   DITTYPE2  ADP022X.
      DITTYPE3  ADP022X.   DITTYPE4  ADP022X.   DITTYPE5  ADP022X.
      DIT_NUM   ADP019X.   DIT_PAY   ADP020X.   DITDISC   ADP009X.
      DITPRF1   ADP022X.   DITPRF2   ADP022X.   DITPRF3   ADP022X.
      DITPRF4   ADP022X.   DITPRF5   ADP022X.   DITPRF6   ADP022X.
      DITPRF7   ADP022X.   YTQE_YOG  ADP009X.   YTQE_TAI  ADP009X.
      YTQE_QIG  ADP009X.   YTQU_YOG  ADP009X.   YTQU_TAI  ADP009X.
      YTQU_QIG  ADP009X.   YTQ_MOST  ADP723L.   YTQ_TRET  ADP009X.
      YTQCND01  ADP022X.   YTQCND02  ADP022X.   YTQCND03  ADP022X.
      YTQCND04  ADP022X.   YTQCND05  ADP022X.   YTQCND06  ADP022X.
      YTQCND07  ADP022X.   YTQCND08  ADP022X.   YTQCND09  ADP022X.
      YTQCND10  ADP022X.   YTQCND11  ADP022X.   YTQCND12  ADP022X.
      YTQCND13  ADP022X.   YTQCND14  ADP022X.   YTQCND15  ADP022X.
      YTQCND16  ADP022X.   YTQCND17  ADP022X.   YTQCND18  ADP022X.
      YTQCND19  ADP022X.   YTQCND20  ADP022X.   YTQCND21  ADP022X.
      YTQCND22  ADP022X.   YTQCND23  ADP022X.   YTQCND24  ADP022X.
      YTQCND25  ADP022X.   YTQCND26  ADP022X.   YTQCND27  ADP022X.
      YTQCND28  ADP022X.   YTQCND29  ADP022X.   YTQCND30  ADP022X.
      YTQCND31  ADP022X.   YTQCND32  ADP022X.   YTQCND33  ADP022X.
      YTQCND34  ADP022X.   YTQCND35  ADP022X.   YTQCND36  ADP022X.
      YTQCND37  ADP022X.   YTQCND38  ADP022X.   YTQCND39  ADP022X.
      YTQCND40  ADP022X.   YTQCND41  ADP022X.   YTQCND42  ADP022X.
      YTQCND43  ADP022X.   YTQCND44  ADP022X.   YTQCND45  ADP022X.
      YTQCND46  ADP022X.   YTQCND47  ADP022X.   YTQCND48  ADP022X.
      YTQCND49  ADP022X.   YTQCND50  ADP022X.   YTQCND51  ADP022X.
      YTQCND52  ADP022X.   YTQCND53  ADP022X.   YTQCND54  ADP022X.
      YTQCND55  ADP022X.   YTQCND56  ADP022X.   YTQCND57  ADP022X.
      YTQCND58  ADP022X.   YTQCND59  ADP022X.   YTQCND60  ADP022X.
      YTQCND61  ADP022X.   YTQCND62  ADP022X.   YTQCND63  ADP022X.
      YTQCND64  ADP022X.   YTQCND65  ADP022X.   YTQCND66  ADP022X.
      YTQCND67  ADP022X.   YTQCND68  ADP022X.   YTQCND69  ADP022X.
      YTQCND70  ADP022X.   YTQCND71  ADP022X.   YTQCND72  ADP022X.
      YTQCND73  ADP022X.   YTQCND74  ADP022X.   YTQCND75  ADP022X.
      YTQCND76  ADP022X.   YTQCND77  ADP022X.   YTQCND78  ADP022X.
      YTQCND79  ADP022X.   YTQCND80  ADP022X.   YTQCND81  ADP022X.
      YTQCND82  ADP022X.   YTQCND83  ADP022X.   YTQCND84  ADP022X.
      YTQCND85  ADP022X.   YTQCND86  ADP022X.   YTQCND87  ADP022X.
      YTQCONCT  ADP109X.   YTQ_SPEC  $ADP110X.  YTQ_CONM  ADP111X.
      YTQMED00  ADP022X.   YTQMED01  ADP022X.   YTQMED02  ADP022X.
      YTQMED03  ADP022X.   YTQMED04  ADP022X.   YTQMED05  ADP022X.
      YTQ_TIM1  ADP118X.   YTQ_TIM2  ADP118X.   YTQ_TIM3  ADP118X.
      YTQ_TIM4  ADP118X.   YTQ_TIM5  ADP118X.   YTQ_ENG   ADP009X.
      YTQ_WEL   ADP009X.   YTQ_IMM   ADP009X.   YTQ_NOHP  ADP009X.
      YTQ_EXPS  ADP009X.   YTQ_SUGG  ADP009X.   YTQ_FFC   ADP009X.
      YTQ_CLAS  ADP009X.   YTQ_CLSO  ADP834L.   YTQ_PAY   ADP020X.
      YTQDISC   ADP009X.   YTQPRF1   ADP022X.   YTQPRF2   ADP022X.
      YTQPRF3   ADP022X.   YTQPRF4   ADP022X.   YTQPRF5   ADP022X.
      YTQPRF6   ADP022X.   YTQPRF7   ADP022X.   YTQNOTU1  ADP022X.
      YTQNOTU2  ADP022X.   YTQNOTU3  ADP022X.   YTQNOTU4  ADP022X.
      YTQNOTU5  ADP022X.   YTQNOTU6  ADP022X.   YTQNOTU7  ADP022X.
      YTQNOTU8  ADP022X.   YTQNOTU9  ADP022X.   YTQ_SDEF  $ADP110X.
      YTQ_ATT   ADP009X.   YTQNVU01  ADP022X.   YTQNVU02  ADP022X.
      YTQNVU03  ADP022X.   YTQNVU04  ADP022X.   YTQNVU05  ADP022X.
      YTQNVU06  ADP022X.   YTQNVU07  ADP022X.   YTQNVU08  ADP022X.
      YTQNVU09  ADP022X.   YTQNVU10  ADP022X.   RELE_MED  ADP009X.
      RELE_GIM  ADP009X.   RELE_PRO  ADP009X.   RELE_DBE  ADP009X.
      RELE_SUP  ADP009X.   RELE_STR  ADP009X.   RELU_MED  ADP009X.
      RELU_GIM  ADP009X.   RELU_PRO  ADP009X.   RELU_DBE  ADP009X.
      RELU_SUP  ADP009X.   RELU_STR  ADP009X.   REL_RMST  ADP878L.
      REL_TRET  ADP009X.   RELCND01  ADP022X.   RELCND02  ADP022X.
      RELCND03  ADP022X.   RELCND04  ADP022X.   RELCND05  ADP022X.
      RELCND06  ADP022X.   RELCND07  ADP022X.   RELCND08  ADP022X.
      RELCND09  ADP022X.   RELCND10  ADP022X.   RELCND11  ADP022X.
      RELCND12  ADP022X.   RELCND13  ADP022X.   RELCND14  ADP022X.
      RELCND15  ADP022X.   RELCND16  ADP022X.   RELCND17  ADP022X.
      RELCND18  ADP022X.   RELCND19  ADP022X.   RELCND20  ADP022X.
      RELCND21  ADP022X.   RELCND22  ADP022X.   RELCND23  ADP022X.
      RELCND24  ADP022X.   RELCND25  ADP022X.   RELCND26  ADP022X.
      RELCND27  ADP022X.   RELCND28  ADP022X.   RELCND29  ADP022X.
      RELCND30  ADP022X.   RELCND31  ADP022X.   RELCND32  ADP022X.
      RELCND33  ADP022X.   RELCND34  ADP022X.   RELCND35  ADP022X.
      RELCND36  ADP022X.   RELCND37  ADP022X.   RELCND38  ADP022X.
      RELCND39  ADP022X.   RELCND40  ADP022X.   RELCND41  ADP022X.
      RELCND42  ADP022X.   RELCND43  ADP022X.   RELCND44  ADP022X.
      RELCND45  ADP022X.   RELCND46  ADP022X.   RELCND47  ADP022X.
      RELCND48  ADP022X.   RELCND49  ADP022X.   RELCND50  ADP022X.
      RELCND51  ADP022X.   RELCND52  ADP022X.   RELCND53  ADP022X.
      RELCND54  ADP022X.   RELCND55  ADP022X.   RELCND56  ADP022X.
      RELCND57  ADP022X.   RELCND58  ADP022X.   RELCND59  ADP022X.
      RELCND60  ADP022X.   RELCND61  ADP022X.   RELCND62  ADP022X.
      RELCND63  ADP022X.   RELCND64  ADP022X.   RELCND65  ADP022X.
      RELCND66  ADP022X.   RELCND67  ADP022X.   RELCND68  ADP022X.
      RELCND69  ADP022X.   RELCND70  ADP022X.   RELCND71  ADP022X.
      RELCND72  ADP022X.   RELCND73  ADP022X.   RELCND74  ADP022X.
      RELCND75  ADP022X.   RELCND76  ADP022X.   RELCND77  ADP022X.
      RELCND78  ADP022X.   RELCND79  ADP022X.   RELCND80  ADP022X.
      RELCND81  ADP022X.   RELCND82  ADP022X.   RELCND83  ADP022X.
      RELCND84  ADP022X.   RELCND85  ADP022X.   RELCND86  ADP022X.
      RELCND87  ADP022X.   RELCONCT  ADP109X.   REL_SPEC  $ADP110X.
      REL_MOST  ADP111X.   RELMED00  ADP022X.   RELMED01  ADP022X.
      RELMED02  ADP022X.   RELMED03  ADP022X.   RELMED04  ADP022X.
      RELMED05  ADP022X.   REL_TIM1  ADP118X.   REL_TIM2  ADP118X.
      REL_TIM3  ADP118X.   REL_TIM4  ADP118X.   REL_TIM5  ADP118X.
      REL_ENG   ADP009X.   REL_WEL   ADP009X.   REL_IMM   ADP009X.
      REL_COP   ADP009X.   REL_NOHP  ADP009X.   REL_EXPS  ADP009X.
      REL_SUGG  ADP009X.   REL_FFC   ADP009X.   REL_PRAC  ADP009X.
      REL_YR    ADP019X.   REL_PAY   ADP020X.   REL_BKS   ADP009X.
      REL_BPAY  ADP020X.   RELDISC   ADP009X.   RELPRF1   ADP022X.
      RELPRF2   ADP022X.   RELPRF3   ADP022X.   RELPRF4   ADP022X.
      RELPRF5   ADP022X.   RELPRF6   ADP022X.   RELPRF7   ADP022X.
      RELNOYR1  ADP022X.   RELNOYR2  ADP022X.   RELNOYR3  ADP022X.
      RELNOYR4  ADP022X.   RELNOYR5  ADP022X.   RELNOYR6  ADP022X.
      RELNOYR7  ADP022X.   RELNOYR8  ADP022X.   RELNOYR9  ADP022X.
      REL_SDEF  $ADP110X.  REL_ATT   ADP009X.   RELNOU01  ADP022X.
      RELNOU02  ADP022X.   RELNOU03  ADP022X.   RELNOU04  ADP022X.
      RELNOU05  ADP022X.   RELNOU06  ADP022X.   RELNOU07  ADP022X.
      RELNOU08  ADP022X.   RELNOU09  ADP022X.   RELNOU10  ADP022X.
      PRA_SLFE  ADP009X.   PRA_SLFM  ADP009X.   PRA_OTHE  ADP009X.
      PRA_OTHM  ADP009X.   COMPSTAT  ADP027M.;
RUN;

PROC CONTENTS DATA=NHIS.ALTHEALT;
   TITLE1 'CONTENTS OF THE 2007 NHIS Adult Alternative Medicine FILE';

PROC FREQ DATA=NHIS.ALTHEALT NOTITLE;
   TABLES RECTYPE $/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2007 NHIS Adult Alternative Medicine FILE';
   TITLE2 '(WEIGHTED)';
   WEIGHT WTFA_SA;

PROC FREQ DATA=NHIS.ALTHEALT NOTITLE;
   TABLES RECTYPE $/LIST MISSING;
   TITLE1 'FREQUENCY REPORT FOR 2007 NHIS Adult Alternative Medicine FILE';
   TITLE2 '(UNWEIGHTED)';

* USER NOTE: TO SEE UNFORMATTED VALUES IN PROCEDURES, ADD THE
             STATEMENT: FORMAT _ALL_;
RUN;