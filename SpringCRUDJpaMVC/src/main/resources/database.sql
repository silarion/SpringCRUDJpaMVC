SET REFERENTIAL_INTEGRITY FALSE;

DROP TABLE IF EXISTS administrateur;
CREATE TABLE IF NOT EXISTS administrateur (
  user_id int(11) NOT NULL default '0',
  PRIMARY KEY  (user_id)
) ;


INSERT INTO administrateur VALUES(1);

DROP TABLE IF EXISTS age_skill;
CREATE TABLE IF NOT EXISTS age_skill (
  race_id int(11) NOT NULL default '0',
  age_min int(10) unsigned NOT NULL default '0',
  age_max int(10) unsigned NOT NULL default '0',
  modificateur int(11) default '0',
  PRIMARY KEY  (race_id,age_min,age_max)
) ;


INSERT INTO age_skill VALUES(1, 21, 30, 1);
INSERT INTO age_skill VALUES(1, 31, 40, 2);
INSERT INTO age_skill VALUES(1, 41, 50, 1);
INSERT INTO age_skill VALUES(1, 61, 70, -1);
INSERT INTO age_skill VALUES(1, 71, 80, -2);
INSERT INTO age_skill VALUES(2, 41, 50, 1);
INSERT INTO age_skill VALUES(2, 51, 60, 1);
INSERT INTO age_skill VALUES(2, 61, 70, 1);
INSERT INTO age_skill VALUES(2, 71, 80, 1);
INSERT INTO age_skill VALUES(2, 81, 90, 1);
INSERT INTO age_skill VALUES(2, 91, 100, 2);
INSERT INTO age_skill VALUES(2, 101, 110, 2);
INSERT INTO age_skill VALUES(2, 111, 120, 2);
INSERT INTO age_skill VALUES(2, 121, 130, 2);
INSERT INTO age_skill VALUES(2, 131, 140, 2);
INSERT INTO age_skill VALUES(2, 141, 150, 3);
INSERT INTO age_skill VALUES(2, 151, 160, 3);
INSERT INTO age_skill VALUES(2, 161, 170, 3);
INSERT INTO age_skill VALUES(2, 171, 180, 3);
INSERT INTO age_skill VALUES(2, 181, 190, 3);
INSERT INTO age_skill VALUES(2, 191, 200, 2);
INSERT INTO age_skill VALUES(2, 201, 210, 1);
INSERT INTO age_skill VALUES(3, 41, 50, 1);
INSERT INTO age_skill VALUES(3, 51, 60, 1);
INSERT INTO age_skill VALUES(3, 61, 70, 1);
INSERT INTO age_skill VALUES(3, 71, 80, 2);
INSERT INTO age_skill VALUES(3, 81, 90, 2);
INSERT INTO age_skill VALUES(3, 91, 100, 2);
INSERT INTO age_skill VALUES(3, 101, 110, 1);
INSERT INTO age_skill VALUES(3, 111, 120, 1);
INSERT INTO age_skill VALUES(3, 121, 130, 1);
INSERT INTO age_skill VALUES(3, 171, 180, -1);
INSERT INTO age_skill VALUES(3, 181, 190, -1);
INSERT INTO age_skill VALUES(3, 191, 200, -2);
INSERT INTO age_skill VALUES(4, 31, 40, 1);
INSERT INTO age_skill VALUES(4, 41, 50, 1);
INSERT INTO age_skill VALUES(4, 51, 60, 1);
INSERT INTO age_skill VALUES(4, 61, 70, 1);
INSERT INTO age_skill VALUES(4, 101, 110, -1);
INSERT INTO age_skill VALUES(4, 111, 120, -1);
INSERT INTO age_skill VALUES(4, 121, 130, -2);
INSERT INTO age_skill VALUES(4, 131, 140, -2);
INSERT INTO age_skill VALUES(5, 31, 40, 1);
INSERT INTO age_skill VALUES(5, 41, 50, 1);
INSERT INTO age_skill VALUES(5, 51, 60, 1);
INSERT INTO age_skill VALUES(5, 61, 70, 2);
INSERT INTO age_skill VALUES(5, 71, 80, 2);
INSERT INTO age_skill VALUES(5, 81, 90, 2);
INSERT INTO age_skill VALUES(5, 91, 100, 1);
INSERT INTO age_skill VALUES(5, 101, 110, 1);
INSERT INTO age_skill VALUES(5, 111, 120, 1);
INSERT INTO age_skill VALUES(5, 151, 160, -1);
INSERT INTO age_skill VALUES(5, 161, 170, -1);
INSERT INTO age_skill VALUES(5, 171, 180, -2);



DROP TABLE IF EXISTS ajustement_poids_sexe;
CREATE TABLE IF NOT EXISTS ajustement_poids_sexe (
  race_id int(11) NOT NULL default '0',
  chance int(10) unsigned NOT NULL default '0',
  de_id int(10) unsigned NOT NULL default '0',
  multiplicateur int(11) default NULL,
  PRIMARY KEY  (race_id,chance)
) ;


INSERT INTO ajustement_poids_sexe VALUES(1, 1, 10, -1);
INSERT INTO ajustement_poids_sexe VALUES(1, 2, 8, -1);
INSERT INTO ajustement_poids_sexe VALUES(1, 3, 5, -1);
INSERT INTO ajustement_poids_sexe VALUES(1, 4, 5, -1);
INSERT INTO ajustement_poids_sexe VALUES(1, 5, 3, -1);
INSERT INTO ajustement_poids_sexe VALUES(3, 2, 10, -1);
INSERT INTO ajustement_poids_sexe VALUES(3, 3, 8, -1);
INSERT INTO ajustement_poids_sexe VALUES(3, 4, 8, -1);
INSERT INTO ajustement_poids_sexe VALUES(3, 5, 5, -1);
INSERT INTO ajustement_poids_sexe VALUES(3, 6, 3, -1);
INSERT INTO ajustement_poids_sexe VALUES(4, 1, 8, -1);
INSERT INTO ajustement_poids_sexe VALUES(4, 2, 5, -1);
INSERT INTO ajustement_poids_sexe VALUES(4, 3, 3, -1);
INSERT INTO ajustement_poids_sexe VALUES(4, 4, 3, -1);
INSERT INTO ajustement_poids_sexe VALUES(4, 6, 3, 1);



DROP TABLE IF EXISTS ajustement_poids_taille;
CREATE TABLE IF NOT EXISTS ajustement_poids_taille (
  race_id int(11) NOT NULL default '0',
  mini int(10) unsigned NOT NULL default '0',
  maxi int(10) unsigned NOT NULL default '0',
  de_id int(10) unsigned NOT NULL default '0',
  multiplicateur int(11) default NULL,
  PRIMARY KEY  (race_id,mini,maxi)
) ;


INSERT INTO ajustement_poids_taille VALUES(1, 161, 165, 10, -1);
INSERT INTO ajustement_poids_taille VALUES(1, 166, 170, 5, -1);
INSERT INTO ajustement_poids_taille VALUES(1, 181, 185, 5, 1);
INSERT INTO ajustement_poids_taille VALUES(1, 186, 190, 10, 1);
INSERT INTO ajustement_poids_taille VALUES(2, 166, 170, 8, -1);
INSERT INTO ajustement_poids_taille VALUES(2, 171, 175, 5, -1);
INSERT INTO ajustement_poids_taille VALUES(2, 186, 190, 5, 1);
INSERT INTO ajustement_poids_taille VALUES(2, 191, 195, 8, 1);
INSERT INTO ajustement_poids_taille VALUES(3, 131, 135, 6, -2);
INSERT INTO ajustement_poids_taille VALUES(3, 136, 140, 8, -1);
INSERT INTO ajustement_poids_taille VALUES(3, 151, 155, 8, 1);
INSERT INTO ajustement_poids_taille VALUES(3, 156, 160, 6, -2);
INSERT INTO ajustement_poids_taille VALUES(4, 101, 105, 5, -1);
INSERT INTO ajustement_poids_taille VALUES(4, 106, 110, 3, -1);
INSERT INTO ajustement_poids_taille VALUES(4, 121, 125, 3, 1);
INSERT INTO ajustement_poids_taille VALUES(4, 126, 130, 5, 1);
INSERT INTO ajustement_poids_taille VALUES(5, 101, 105, 5, -1);
INSERT INTO ajustement_poids_taille VALUES(5, 106, 110, 3, -1);
INSERT INTO ajustement_poids_taille VALUES(5, 121, 125, 3, 1);
INSERT INTO ajustement_poids_taille VALUES(5, 126, 130, 5, 1);



DROP TABLE IF EXISTS alignment;
CREATE TABLE IF NOT EXISTS alignment (
  alignment_id int(10) unsigned NOT NULL default '0',
  alignment_name varchar(45) default NULL,
  alignment_desc text,
  PRIMARY KEY  (alignment_id)
) ;


INSERT INTO alignment VALUES(1, 'loyal', '');
INSERT INTO alignment VALUES(2, 'bon', '');
INSERT INTO alignment VALUES(3, 'neutre', '');
INSERT INTO alignment VALUES(4, 'mauvais', '');
INSERT INTO alignment VALUES(5, 'chaotique', '');



DROP TABLE IF EXISTS animal;
CREATE TABLE IF NOT EXISTS animal (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO animal VALUES(188);
INSERT INTO animal VALUES(189);
INSERT INTO animal VALUES(190);



DROP TABLE IF EXISTS armor;
CREATE TABLE IF NOT EXISTS armor (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO armor VALUES(18);
INSERT INTO armor VALUES(19);
INSERT INTO armor VALUES(20);
INSERT INTO armor VALUES(21);
INSERT INTO armor VALUES(22);
INSERT INTO armor VALUES(23);
INSERT INTO armor VALUES(24);
INSERT INTO armor VALUES(25);
INSERT INTO armor VALUES(26);
INSERT INTO armor VALUES(27);
INSERT INTO armor VALUES(28);
INSERT INTO armor VALUES(29);
INSERT INTO armor VALUES(30);
INSERT INTO armor VALUES(31);
INSERT INTO armor VALUES(32);
INSERT INTO armor VALUES(33);
INSERT INTO armor VALUES(34);
INSERT INTO armor VALUES(35);
INSERT INTO armor VALUES(36);



DROP TABLE IF EXISTS bag;
CREATE TABLE IF NOT EXISTS bag (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO bag VALUES(163);
INSERT INTO bag VALUES(164);
INSERT INTO bag VALUES(165);
INSERT INTO bag VALUES(166);
INSERT INTO bag VALUES(167);
INSERT INTO bag VALUES(168);
INSERT INTO bag VALUES(169);
INSERT INTO bag VALUES(170);
INSERT INTO bag VALUES(171);
INSERT INTO bag VALUES(172);
INSERT INTO bag VALUES(173);
INSERT INTO bag VALUES(174);
INSERT INTO bag VALUES(175);



DROP TABLE IF EXISTS career;
CREATE TABLE IF NOT EXISTS career (
  career_id int(10) unsigned NOT NULL auto_increment,
  main_career int(10) unsigned NOT NULL default '0',
  career_name varchar(45) NOT NULL default '',
  career_desc text,
  base int(1) default '0',
  PRIMARY KEY  (career_id)
)    ;


INSERT INTO career VALUES(1, 0, 'agitateur', 'Les Agitateurs se font les d?fenseurs actifs des grandes causes. Pratiquement toutes les causes sont bonnes, depuis la d?fense des droits des Humains (ou des Elfes, des Nains ou encore des Halfelings) jusqu''? la remise en ?tat des canaux d''?vacuation. Inlassablement ils m?nent campagne sur campagne afin de recruter des partisans, prennent la parole lors de r?unions, distribuent des prospectus et baratinent quiconque s''enr?le. La plus grande satisfaction d''un Agitateur est de voir les autorit?s forc?es ? agir sous le poids de l''opinion publique. Certains Agitateurs sont r?ellement concern?s et motiv?s par l''int?r?t public, mais beaucoup y voient d''abord leurs propres int?r?ts - souvent le parti gagnant d''une controverse r?compensera g?n?reusement ses plus loyaux d?fenseurs. Il n''est pas rare que les droits civiques soient s?rieusement ?gratign?s par l''intervention d''un Agitateur, bien qu''ils puissent ?tre aussi responsables d''une am?lioration. Le fait qu''il puisse exister des fauteurs de troubles  officieux de cette sorte montre ? quel point le Vieux Monde est compliqu', 1);
INSERT INTO career VALUES(2, 0, 'apothicaire', 'Les Apothicaires sont des sp?cialistes qui pr?parent et vendent les m?decines prescrites par les M?decins. Dans beaucoup de cas, ils sont les pendants des Herboristes, fournissant des pr?parations min?rales et chimiques plut?t que des rem?des ? base de plantes. Leur m?tier leur apprend ? reconna?tre un grand nombre de substances exotiques et rares, et ? conna?tre leurs propri?t?s th?rapeutiques ou autres. C''est une profession qui demande beaucoup de savoir-faire, et nombres d''Apothicaires sot employ?s ? demeure par de riches individus pour s''assurer que les meilleurs traitements leur seront dispens?s rapidement. Malheureusement, l''Apothicaire fait souvent office de bouc-?missaire quand le M?decin a ?chou? et beaucoup sont alors chass?s de la ville, avec l''alternative d''offrir leurs services aux Hors-la-loi et bandits, ou de tenter l''aventure ? travers les territoires sauvages du Vieux Monde.', 1);
INSERT INTO career VALUES(3, 0, 'apprenti alchimiste', 'La seule fa?on de devenir Alchimiste est de faire un apprentissage chez un ma?tre esp?riment?. Toutefois, la vie d''un apprenti consiste trop souvent ? trimer dur plut?t que de s''instruire. L''Apprenti est fr?quemment trait? comme un serviteur non r?mun?r?, et passe le plus clair de son temps ? r?curer le plancher et ? faire les commissions, au lieu d''?tudier assid?ment l''art de l''alchimie. Il n''est pas surprenant, par cons?quent, que seul un petit nombre d''Apprentis pers?v?rent suffisamment longtemps pour devenir des Alchimistes comp?tents.', 1);
INSERT INTO career VALUES(4, 0, 'apprenti artisan', 'Tous les Artisans apprennent leur m?tier en apprentissage. Comme Apprentis, ils ?tudient les comp?tences n?cessaires ? leur profession, tout en subvenant ? leurs besoins. H?las, ils travaillent encore trop souvent pendant de longues heures contre une petite gratification et sont charg?s de toutes les corv?es d?plaisantes et serviles, quand ils n''ont pas la malchance de tomber sur un ma?tre hargneux, ivrogne et/ou incomp?tent. Les Apprentis qui quittent leur ma?tre avant d''avoir fini leur apprentissage n''ont pas de m?tier et beaucoup deviendront vagabonds ou aventuriers pour esp?rer conna?tre autre chose de la vie. Les apprentis sont form?s ? exercer un m?tier particulier. Regardez les diff?rentes carri?res de Ma?tre Artisan pour d?terminer celui du personnage. Tous les apprentis ont 25% de chances d''avoir UNE comp?tence relative ? leur m?tier et, dans ce cas,  ils poss?dent aussi des outils appropri?s ? la comp?tence du m?tier.', 1);
INSERT INTO career VALUES(5, 0, 'apprenti sorcier', 'L''apprentissage d''un Sorcier est long et p?rilleux. En devenant Apprentis, les aspirants Sorciers doivent s''attendre ? faire de longues heures de travaux domestiques, en contrepartie de leur h?bergement, et occasionnellement leur initiation ? la magie. Beaucoup d''Apprentis se lassent de r?curer les planchers, d''?tre aux ordres de leur ma?tre comme un vulgaire serviteur, et partent avant de terminer leur formation.', 1);
INSERT INTO career VALUES(6, 0, 'batelier', 'Le Vieux Monde est riche de nombreuses installations c?ti?res, et les voies fluviales sont aussi importantes que les routes en ce qui concerne le commerce et les transports. Le Batelier a le m?me r?le sur l''eau que le Cocher sur les routes, c''est-?-dire transporter des passagers et des marchandises d''un endroit ? un autre et ?viter la rencontre ind?sir?e des bandits et des autorit?s. Non seulement donc, les Bateliers se doivent d''?tre de bons marins et de bons navigateurs, mails doivent ?tre capables ?galement de s''occuper de leurs passagers et de leur cargaison, car certaines voies commerciales traversent des r?gions sauvages et dangereuses.', 1);
INSERT INTO career VALUES(7, 166, 'acrobate', 'Un acrobate n''a pas de d?bouch? mais peut entamer une carri?re de base de voleur.', 1);
INSERT INTO career VALUES(8, 166, 'acteur', '', 1);
INSERT INTO career VALUES(9, 166, 'artiste de l''Ã©vasion', '', 1);
INSERT INTO career VALUES(10, 166, 'barbouilleur de trottoir', '', 1);
INSERT INTO career VALUES(11, 166, 'bouffon', '', 1);
INSERT INTO career VALUES(12, 166, 'chanteur', '', 1);
INSERT INTO career VALUES(13, 166, 'cracheur de feu', '', 1);
INSERT INTO career VALUES(14, 166, 'diseur de bonne aventure', '', 1);
INSERT INTO career VALUES(15, 166, 'fantaisiste', '', 1);
INSERT INTO career VALUES(16, 166, 'funambule', 'Un funambule peut ensuite commencer une carri?re de base de Voleur.', 1);
INSERT INTO career VALUES(17, 166, 'homme fort', '', 1);
INSERT INTO career VALUES(18, 166, 'hypnotiseur', '', 1);
INSERT INTO career VALUES(19, 166, 'imitateur', '', 1);
INSERT INTO career VALUES(20, 166, 'jongleur', '', 1);
INSERT INTO career VALUES(21, 166, 'lanceur de couteaux', '', 1);
INSERT INTO career VALUES(22, 166, 'lutteur de foire', '', 1);
INSERT INTO career VALUES(23, 166, 'montreur d''animaux', '', 1);
INSERT INTO career VALUES(24, 166, 'poÃªte', '', 1);
INSERT INTO career VALUES(25, 166, 'prestidigitateur', '', 1);
INSERT INTO career VALUES(26, 166, 'troubadour', '', 1);
INSERT INTO career VALUES(27, 166, 'ventriloque', '', 1);
INSERT INTO career VALUES(28, 0, 'brigand', 'Les Brigands et les Coupe-jarrets sont une menace dans les villes et sur les routes. Ils agissent en groupe, en attirant dans des guet-apens les voyageurs ou passants d?sarm?s. Ils pr?f?rent ?viter de verser le sang, sauf si n?cessaire, mais combattent f?rocement bien qu''ils tendent le plus souvent des embuscades avec un avantage en nombre d''au moins deux contre un. La plupart se contente de mettre leurs victimes hors de combat en les assomant, mais il y a ceux - plus connus sous le nom de Coupe-jarrets - qui tuent toujours ceux qu''ils d?valisent.', 1);
INSERT INTO career VALUES(29, 0, 'bÃ»cheron', 'Les BÃ»cherons rÃ©sident dans les grandes forÃªts du Vieux Monde. Ils vivent de l''abattage et de la coupe du bois. Le BÃ»cheron doit aussi savoir reconnaÃ®tre et Ã©liminer la vermine qui menace les arbres. La majoritÃ© travaille sur les terres de Gentilshommes, mais les plus entreprenants oeuvrent pour leur compte personnel en bordure des forÃªts, vendant du bois de construction ou prÃ©parant de nouveaux sites. Beaucoup d''entre eux rÃ©alisent que leur savoir-faire peut leur rapporter davantage comme aventuriers, dans les coins les plus reculÃ©s du Vieux Monde.', 1);
INSERT INTO career VALUES(30, 0, 'chasseur', 'La chasse est l''une des plus anciennes activit?s du Vieux Monde. Le Chasseur est capable de suivre et, le plus souvent, de pressentir la direction qu''un animal a pris avec une inqui?tante pr?cision et de le tuer proprement. Les habitudes des b?tes sauvages sont une partie de leur existence ; ils ont une affinit? peu ordinaire avec les cr?atures sauvages et leur milieu. Le Chasseur semble renfrogn? et taciturne, mais c''est surtout ? cause de son style de vie solitaire et r?serv?. Les Chasseurs se d?marquent du commun des Occidentaux. Ils sont v?tus habituellement des peaux des animaux qu''ils tuent ; cela leur conf?re une valeur symbolique, autant qu''une protection efficace dans les pays froids.', 1);
INSERT INTO career VALUES(31, 0, 'chasseur de primes', 'Les Chasseurs de primes vivent en traquant les criminels recherch?s, malfaiteurs et autres ind?sirables pour les remettre aux mains de la Justice. Ils s''attaquent ? toutes les sortes de criminels, ce qui fait d''eux un maillon important de la civilisation du Vieux Monde. Les r?compenses sont offertes par les souverains, les guides ou les conseils locaux, pour se d?barrasser des brigands, des bandes de Gobelins d?cha?n?s et autres fauteurs de troubles. Occasionnellement, il arrive que des races ou des clans entiers soient d?cr?t?s hors-la-loi et mis ? prix et que, pendant quelque temps, toute une r?gion soit infest?e de Chasseurs de primes accourus des territoires alentours. Les Chasseurs de primes sont des combattants exp?riment?s capables de traquer leurs proies sans perdre leur piste ; car ils sont d''un caract?re obstin?, dur et cynique. Ce sont des tueurs professionnels dans le vrai sens du terme, qui n''h?sitent pas en dernier ressort ? employer tous les moyens, s''ils justifient la fin, pour r?ussir. Ce sont des solitaires par nature, qui ne se fient ? personne et qui ne recherchent la compagnie des autres qu''? partir du moment o? elle sert leurs int?r?ts. Les gens de basse condition les consid?rent avec peur et d?fiance, depuis que l''on sait qu''ils n''h?sitent pas ? s''occuper des pauvres paysans quand leurs victimes leur ?chappent. Les autorit?s les voient comme un mal n?cessaire, mais les accueillent froidement.', 1);
INSERT INTO career VALUES(32, 0, 'cocher', 'Voyager sur les routes du Vieux Monde est hasardeux et ceux qui en font leur m?tier ne sont pas n''importe qui. Le Cocher - qui risque sa vie quotidiennement - doit faire face ? de nombreuses difficult?s ; les routes sont dangereuses car tr?s mal entretenues et les voyageurs peuvent s''attendre ? faire de mauvaises rencontres telles que des bandes organis?es, Bandits de grand chemin, P?agers irrascibles et Patrouilleurs inquisiteurs, sans parler du monstre de passage ou de la bande de Gobelins en maraude. C''est le travail peu enviable du Cocher de mener passagers et cargaison en lieu s?r ''contre vents et mar?es'', et d''acheminer les messages officiels ou leurs porteurs quand on les sollicite. Peu de Cochers restent dans cette profession suffisamment longtemps pour b?n?ficier de la pension accord?e par la Guilde des conducteurs d''attelage et certains pr?f?rent employer leurs talents ? une vie d''aventures.', 1);
INSERT INTO career VALUES(33, 0, 'collecteur d''impÃ´ts', 'Les Collecteurs d''impÃ´ts sont probablement les citoyens les moins populaires du Vieux Monde. Qu''importe la bienvaillance des gouvernements, ou la rÃ©signation des rÃ©sidents, toujours est-il que personne n''aime payer ses impÃ´ts et que le Collecteur fait les frais du ressentiment gÃ©nÃ©ral. Ils constituent malgrÃ© tout une branche nÃ©cessaire du service civil et aucun rÃ©gime ne pourrait survivre longtemps sans eux. Pourtant les Collecteurs de taxes n''ont que peu de satisfaction Ã  accomplir leur tÃ¢che et ils sont rarement bien payÃ©s. Ceci explique que certains d''entre eux se laissent inÃ©vitablement corrompre, alors que d''autres, dans l''espoir d''une hypothÃ©tique promotion, restent d''une intÃ©gritÃ© scrupuleuse.', 1);
INSERT INTO career VALUES(34, 0, 'colporteur', 'Peu de villages poss?dent leurs propres boutiques ou comptoirs de commerce ; aussi tous sont d?pendants du Colporteur, insignifiant marchand ambulant. Apr?s avoir achet? des marchandises facilement transportables sur les march?s aux divers Artisans et Marchands, le Colporteur voyage d''un village ? un autre, vendant ses produits tout en diffusant les nouvelles et potins de la ville. Le chargement du Colporteur est constitu? de tout ce qui peut se transporter facilement, tels des pots, casseroles, accessoires de v?tements, bourses, ?pingles, couteaux, etc... Dans les r?gions les plus peupl?es, les Colporteurs sont souvent patent?s et peuvent avoir leur propre Guilde charg?e de prot?ger leurs int?r?ts et de d?courager d''?ventuels concurrents d''empi?ter sur leurs pr?rogatives. Beaucoup ont une vie de nomade et croient r?solument dans la fraternit? de leur profession, m?me s''ils sont de races diff?rentes et qu''ils n''ont ni culture, tradition ou langage en commun. Beaucoup acqui?rent des connaissances d''Herboriste. A peu pr?s tout le monde se m?fie d''eux, sp?cialement les Gardes et les Patrouilleurs ruraux.', 1);
INSERT INTO career VALUES(35, 0, 'combattant des tunnels', 'Les incursions du Chaos dans les Montagnes du Bout-du-Monde ont ravag? nombre de forteresses naines et, au cours des si?cles, les autres ont ?t? abandonn?es. Contre cela, les Nains se sont d?fendus pour maintenir leur existence au travers des si?cles, en formant des arm?es de guerriers experts dans le combat souterrain. La grande majorit? de ces Combattants des tunnels sont des Nains, except? les quelques Humains engag?s ? titre de mercenaires, avides des r?compenses pr?lev?es sur le tr?sor des Nains. Depuis quelques ann?es, comme le d?clin des Nains s''est poursuivi, on trouve m?me des Halfelings Combattants des tunnels, car les primes sont souvent importantes. Note : Seuls les Nains peuvent faire une Carri?re initial de Combattant des tunnels.', 1);
INSERT INTO career VALUES(36, 0, 'combattant embarqu', 'Le Combattant embarqu? est ? la fois un marin et un Guerrier qui navigue ? bord de navires civils ou militaires, pour pr?venir d''?ventuelles attaques de pirates. Sur les vaisseaux de guerre, il existe des ''matelots-recruteurs'', qui sont une source de peur dans les villes c?ti?res. Les malheureux, recrut?s contre leur gr?, peuvent racheter leur libert?, mais - le plus souvent - ils devront accomplir un service difficile et dangereux pendant cinq ann?es ? bord d''un navire de guerre. Cet aspect de leur condition fait des Combattants embarqu?s une bande redout?e et mise ? l''?cart par le reste de la communaut? du navire, m?me s''ils accomplissent un travail rigoureux et des plus dangereux. Beaucoup de Capitaines de navire, qui ont fait prisonniers de tels Combattants lors d''une prise donneront l''ordre de les ''passer par la planche'' ; apr?s leur avoir toutefois propos? de les prendre ? leur service.', 1);
INSERT INTO career VALUES(37, 0, 'commerÃ§ant', 'Il y a suffisamment de monde dans les grandes villes et les citÃ©s pour que les CommerÃ§ants puissent installer une petite boutique ou un Ã©talage sur le marchÃ©. Ainsi, Ã  la diffÃ©rence de ces vagabonds de Colporteurs, le CommerÃ§ant attend que le client vienne Ã  lui. Certains pourront se constituer une vÃ©ritable petite fortune, avec plusieurs magasins et un status social trÃ¨s proche de celui des petits Marchands. GÃ©nÃ©ralement, cependant, la vie du CommerÃ§ant est des plus monotones, animÃ©e seulement par des vols occasionnels ou la visite peu courtoise des Racketteurs. Il n''est pas Ã©tonnant que les CommerÃ§ants dÃ©cident parfois de courir l''aventure, en quÃªte d''une vie plus excitante et de rapides profits.', 1);
INSERT INTO career VALUES(38, 0, 'contrebandier', 'La plupart des grandes voies maritimes et terrestres emprunt?es par les marchands sont soumises ? des droits et ? des taxes ; aux limites des pays, villes, fiefs - en fait ? chaque endroit o? les autorit?s locales ont d?cid? de taxer la circulation des marchandises. Dans les grands ports, presque tout ce qui entre ou qui sort est impos? de la m?me mani?re. Pour ?viter de payer ces charges suppl?mentaires, certains esprits d?termin?s s''occupent de faire passer les marchandises en fraude. Dans certains villages c?tiers ?loign?s, la population enti?re se consacre ? cette activit? tout ? fait ouvertement. Les  Contrebandiers sont souvent des gens tr?s respectables qui ont trouv? la fa?on de d?jouer les lois. Il existe aussi des contrebandiers amateurs que les profesionnels consid?rent plus comme des commer?ants lib?raux que comme de v?ritables criminels.', 1);
INSERT INTO career VALUES(39, 0, 'courrier', 'Les forteresses naines des montagnes du Bout-du-Monde sont reli?es entre elles par des kilom?tres de galeries souterraines.Les correspondances sont assur?es par l''interm?diaire de Courriers : de jeunes Nains sp?cialement entra?n?s qui riquent leur vie pour acheminer des messages d''une forteresse ? une autre. Depuis quelques si?cles, comme les forteresses naines tombent de plus en plus aux ''pattes'' des gobelino?des, les conditions de vie du Courrier se sont d?grad?es. Ils sont forc?s de prendre fr?quemment des itin?raires d?tourn?s, ce qui est lourd de cons?quences quand les gobelino?des  d?couvrent les galeries. Souvent aussi, les Courriers doivent sortir des souterrains et franchir les montagnes et vall?es ? l''air libre. Note : Seuls les Nains peuvent devenir Courriers.', 1);
INSERT INTO career VALUES(40, 0, 'domestique', 'Les Domestiques ne sont pas vraiment la classe la plus basse de la soci?t? ; apr?s tout, il existe aussi les esclaves. Mais pour tous ces gar?ons d''?curie, filles de cuisine ou de salle, une vie aventureuse peut sembler un r?ve ? port?e de main. Ces malheureux passent leur temps ? ex?cuter les t?ches les plus ingrates et les plus d?gradantes que leur imposent les membres les plus anciens de la domesticit?. Bien qu''il soit possible pour un Domestique, ? force de labeur et apr?s plusieurs ann?es de service, de monter dans la hi?rarchie pour obtenir une place plus convoit?e comme ma?tre d''h?tel ou intendant, nombreux, parmi les plus entreprenants, sont ceux qui quittent le service de leur ma?tre ? la recherche d''une vie plus excitante.', 1);
INSERT INTO career VALUES(41, 0, 'engingneur', 'Les Nains Engingneurs sont tr?s recherch?s ? peu pr?s partout dans le Vieux Monde, car ce sont les seuls capables d''?laborer les machines merveilleuses de leur temps. La Guilde des Engingneurs Nains est une corporation puissante mais tr?s secr?te. Sa structure, ses lois et les ?tranges et parfois d?testables rituels qui la r?gissent, reposent sur les bases de traditions s?culaires. Elle a une profonde m?fiance de tout ce qui est innovation et invention - la Guilde ne garde que ce dont elle est s?re, c''est-?-dire ce qu''elle a essay? quelques si?cles auparavant. A cause de cet ?tat d''esprit, et parce que la Guilde tient ses membres sous une surveillance ?troite et constante, il n''est pas rare que de jeunes Nains imaginatifs et inventeurs la quittent, ou soient chass?s de ses rangs, et recherchent un emploi ou un patronage dans le monde ext?rieur. Pour des raisons historiques, le terme employ? pour d?signer de tels individus est ''Capon'', mais il est peu raisonnable de les appeler ainsi en face. On retrouve ces Capons au service de riches patrons du Vieux Monde. La Guilde s''inqui?te de plus en plus de voir ainsi son autorit? et sa position s''effriter inexorablement. Membres de la Guilde et Capons se consid?rent respectivement avec une indiff?rence teint?e de m?pris. Note : Seuls les Nains peuvent devenir Engingneurs. Tous les Nains ? leur cr?ation poss?dent la comp?tence Exploitation Mini?re. Dans le cas des Engingneurs, cette Comp?tence est renforc?e ; ils disposent donc d''un bonus de + 20% sur les Tests de Construction, ainsi qu''un + 20% sur les Tests de Recherche pour trouver des portes secr?tes en sous-sol.', 1);
INSERT INTO career VALUES(42, 0, 'Ã©cuyer', 'Les Ecuyers sont des Gentilshommes et des Chevaliers errants, mÃªme s''il apparaÃ®t que leur statut ne les diffÃ©rencie pas beaucoup de celui de simple Domestique. L''Ecuyer a la charge de veiller Ã  l''entretien de la monture et de l''armure de son maÃ®tre et de satisfaire Ã  ses autres besoins. Pour beaucoup de Gentilshommes sans titre - les cadets de nobliaux de campagne - cette fonction fait partie de leur Ã©ducation de Chevalier, bien que souvent ce ne soit qu''un ''apprentissage'' symbolique avant qu''il reÃ§oivent leur ordination d''un Gentilhomme ou d''un plus haut personnage.', 1);
INSERT INTO career VALUES(43, 0, 'estudiant', 'Beaucoup d''Estudiants re?oivent un enseignement formel dans les ?tablissements universitaires du Vieux Monde. De ce fait, ils ont la possibilit? d''apprendre beaucoup de nouvelles comp?tences, et d''acc?der ? une vari?t? de carri?res lucratives et respectables. En d?pit de cela, beaucoup d''Estudiants ont tendance ? d?laisser ces opportunit?s pour ?largir leurs activit?s sociales et d?velopper des app?tits moins intellectuels.', 1);
INSERT INTO career VALUES(44, 0, 'estudiant en mÃ©decine', 'Apr?s l''arm?e et l''?glise, la Carri?re la plus populaire parmi la jeunesse relativement ais?e, est celle de M?decin. Celui qui a du talent - ou simplement une r?putation - peut amasser une petite fortune gr?ce ? la recommandation de la noblesse. Comme pour la plupart des Carri?res de Lettr?s, la seule fa?on de devenir M?decin est de se faire disciple d''un praticien d?j? ?tabli. Les M?decins cependant ne prennent pas d''apprentis ; au lieu de cela, les individus renomm?s ou retir?s enseignent leur savoir ? des groupes d''Estudiants qui leur payent des honoraires. Beaucoup d''h?pitaux et de facult?s dans les grandes cit?s s''occupent de dispenser cet enseignement. Il faut plusieurs ann?es de travail et beaucoup de volont? pour devenir enfin M?decin et tous les Estudiants n''y parviennent pas.', 1);
INSERT INTO career VALUES(45, 0, 'garde', 'Les Gardes sont employ?s dans toutes les villes du Vieux Monde, pour faire fonction de policiers. Leur travail consiste ? patrouiller dans les rues et ? intervenir en cas de probl?mes. Ils sont charg?s de faire appliquer la loi en g?n?ral et de maintenir l''ordre, comme de r?gler les situations impr?vues. Les Gardes sont employ?s par les autorit?s locales et leurs pouvoirs varient selon les lieux ; dans beaucoup de villes ils sont absolus (sp?cialement envers les pauvres et les sans-d?fenses). C''est le lot du Garde d''?tre impopulaire aupr?s des gens des villes et des cit?s ; ils sont recrut?s dans les bas-fonds pour combattre les bas-fonds. Rares, parmi eux, sont les vrais fervents des lois et, ironiquement, ce sont g?n?ralement ceux-l? qui abandonnent cette lutte in?gale pour chercher l''aventure ailleurs.', 1);
INSERT INTO career VALUES(46, 0, 'garde du corps', 'Le Vieux Monde est un monde dangereux, sp?cialement si vous passez pour ?tre franc de paroles, impopulaire, puissant ou riche. Depuis que de plus en plus de gens correspondent ? ces signalements, il n''est plus surprenant qu''une cat?gorie de protecteurs professionnels ait fait son apparition pour r?pondre ? la demande. Souvent les Marchands et les Gentilshommes entretiennent un groupe de Gardes du corps qui les prot?gent de ceux qui voudraient leur faire un mauvais sort, et les d?barrassent des Mendiants et autres canailles rencontr?s sur leur route. La nature de ces Gardes du corps varie depuis le simple lourdaud - plus b?te que m?chant - jusqu''? la constitution d''une v?ritable arm?e priv?e ; la plupart d''entre eux cependant, ne sont que de simples brutes qui prennent plaisir ? rudoyer les citoyens qui n''ont rien ? se reprocher.', 1);
INSERT INTO career VALUES(47, 0, 'garde chasse', 'La plupart des propri?taires terriens emploient des Gardes-chasse pour s''occuper de leurs propri?t?s, for?ts et r?serves de chasse. Les Gardes-chasse surveillent les ind?sirables avec soin et leurs soup?ons se r?v?lent parfois fond?s. L''ennemi jur? du Garde-chasse est le Braconnier, qui cherche constamment ? pi?ger ou ? chasser les animaux r?serv?s. tous les Gardes-chasse se vantent de leurs victoires sur ces adversaires insaisissables. Les Braconniers et les Gardes-chasse peuvent ?tre consid?r?s, bien qu''appartenant ? deux camps oppos?s, comme faisant partie de la m?me branche d''activit? ; le joueur ayant un personnage Garde-chasse d''alignement Neutre, Mauvais ou Chaotique peut choisir d''?tre Braconnier ? la place. Les Gardes-chasse ou les Braconniers pourront reprendre cette Carri?re une deuxi?me fois, en se ralliant au camp oppos?, selon la proc?dure normale de changement de carri?re.', 1);
INSERT INTO career VALUES(48, 0, 'braconnier', 'La plupart des propri?taires terriens emploient des Gardes-chasse pour s''occuper de leurs propri?t?s, for?ts et r?serves de chasse. Les Gardes-chasse surveillent les ind?sirables avec soin et leurs soup?ons se r?v?lent parfois fond?s. L''ennemi jur? du Garde-chasse est le Braconnier, qui cherche constamment ? pi?ger ou ? chasser les animaux r?serv?s. tous les Gardes-chasse se vantent de leurs victoires sur ces adversaires insaisissables. Les Braconniers et les Gardes-chasse peuvent ?tre consid?r?s, bien qu''appartenant ? deux camps oppos?s, comme faisant partie de la m?me branche d''activit? ; le joueur ayant un personnage Garde-chasse d''alignement Neutre, Mauvais ou Chaotique peut choisir d''?tre Braconnier ? la place. Les Gardes-chasse ou les Braconniers pourront reprendre cette Carri?re une deuxi?me fois, en se ralliant au camp oppos?, selon la proc?dure normale de changement de carri?re.', 1);
INSERT INTO career VALUES(49, 0, 'gentilhomme', 'Appartenir ? l''une des castes dirigeantes, c''est - aux yeux des citoyens du Vieux Monde - avoir le privil?ge de vivre une vie exempte des soucis et des conflits de l''homme de la rue. La noblesse contr?le le pays et beaucoup de Gentilshommes ont eu le bon sens de s''impliquer dans les affaires du n?goce, en comp?tition avec les banquiers et les financiers. Pourtant, les cadets de ces nobles familles doivent souvent se d?brouiller seuls quand leur fr?re a?n? prend possession des terres et de la fortune familiales ; depuis lors, il semblerait que la plus grande pr?occupation de la classe nobilitaire soit de causer le plus de torts ? ses autres membres, m?me s''ils appartiennent ? leur propre famille. Beaucoup de Gentilshommes d?sh?rit?s s''engagent dans l''arm?e ou partent ? l''aventure pour les sensations fortes d''abord, mais aussi et surtout parcequ''ils ne sauraient rien faire d''autre. Aucun d''entre eux ne voudrait s''abaisser ? tenir un commerce et ils sont peu nombreux ceux qui acceptent les ?tudes fastidieuses pour exercer une profession de Lettr?. ils consid?rent la guerre comme un m?tier glorieux et honorable, tout comme se saouler, insulter les roturiers et d?molir les auberges. Les Gentilshommes ont une f?cheuse tendance ? ?tre peu respectueux, ? avoir un parl? guind? et irritant ainsi qu''une propension naturelle ? froisser la susceptibilit? des gens du peuple. Mais ils s''arrangent presque toujours pour s''en sortir indemnes gr?ce ? un m?lange de chance, de prestance, de politesse et de gr?ce, aussi, ? la d?f?rence que leur mode de vie dispendieux inspire chez les commer?ants.', 1);
INSERT INTO career VALUES(50, 0, 'geÃ´lier', 'Les cachots et les oubliettes ne sont pas des endroits oÃ¹ on se plaÃ®t, et mÃªme de courts sÃ©jours peuvent avoir un effet nuisible sur les gens. Les GeÃ´liers y vivent pourtant et cela se voit. Ils sont souvent d''un physique disgracieux et vÃ©hiculent une variÃ©tÃ© de maladies et autres parasites, bien qu''ils ne soient eux-mÃªmes que rarement inquiÃ©tÃ©s par ces maladies. Les GeÃ´liers n''ont habituellement aucune notion de justice ou de pitiÃ© et les plaintes ou les beaux discours les laissent de marbre. Le langage qu''ils comprennent le mieux est celui de l''argent, car c''est un mÃ©tier mal rÃ©tribuÃ©. Les GeÃ´liers s''aguerrissent rapidement Ã  la souffrance des autres, et sont souvent brutaux et mÃªme sadiques ; un grand nombre d''entre eux sont Alcooliques.', 1);
INSERT INTO career VALUES(51, 0, 'gladiateur', 'Dans beaucoup de contr?es, le combat ? mort est toujours rest? une forme tr?s populaire de spectacle. Ce qui revient le moins cher est le combat ? un contre un dans un champ clos ou une fosse, entre deux criminels condamn?s ou deux prisonniers de guerre. Les combats sont durs et vicieux, car les Gladiateurs qui parviennent ? survivre pendant assez longtemps acqui?rent un certain entra?nement aux armes de toutes sortes et, dans certains cas, suffisamment d''argent pour racheter leur libert?. il y a plusieurs dizaines d''ann?es, il ?tait ? la mode d''utiliser des Demi-orques comme Gladiateurs, mais la promiscuit? avec la population Humaine les rendait dangereux et, depuis, le Gladiateur humain est devenu la norme. Il existe ?galement de plus en plus de Gladiateurs profesionnels, des hommes libres qui font ce m?tier pour l''argent et le plaisir, sans y ?tre contraints. Le spectacle attire beaucoup de monde et des paris sont organis?s. Quand ? ceux qui survivent assez longtemps pour racheter leur libert?, ils finissent presque toujours comme Hors-la-loi, Chasseurs de primes ou aventuriers, o? leur formidable science du combat et leur intr?pidit? fait merveille.', 1);
INSERT INTO career VALUES(52, 0, 'guide-convoyeur', 'Les Guides-convoyeurs sont des combattants exp?riment?s, employ?s pour la reconnaissance et le soutien des arm?es et des groupes itin?rants, ? la recherche d''attaquants ?ventuels et autres probl?mes. La plupart d''entre eux appuient leur r?putation sur une connaissance parfaite des r?gions travers?es. Leur libert? d''action est plus ou moins grande selon le groupe ou l''arm?e qu''ils servent et ils doivent ?tre capables de se d?brouiller seuls et de trouver ? subsister dans le pays m?me. Occasionnellement, ils entreprennent de longues patrouilles le long des limites dangereuses ou dans des zones difficiles, op?rant comme Eclaireurs et recueillant des informations sur les dangers ?ventuels de la route, les mouvements de troupes arm?es et autres ?l?ments.', 1);
INSERT INTO career VALUES(53, 0, 'guide-racoleur', 'Dans toute ville du Vieux Monde qui se respecte, on peut trouver des guides professionnels qui escortent leur clients dans les quartiers pauvres. Ce sont des familiers des nombreux ?tablissements ill?gaux et immoraux qui y pullulent. Tout le monde les conna?t comme Guides-racoleurs. De tels hommes - car ce sont habituellement des Humains de sexe masculin - sont familiers des meilleurs d?bits de boisson, maisons de jeu ou de plaisir, fumeries de drogues et autres ?tablissements qui permettent d''assouvir tous les vices inimaginables. Ils peuvent ouvrir l''acc?s ? ces endroits pour les ?trangers et l''on peut s''en remettre ? eux pour savoir lesquels sont sans danger, lesquels sont surveill?s par les autorit?s et lesquels pratiquent couramment l''escroquerie et/ou l''assassinat des clients occasionnels. Leur travail consiste ? se mettre au service de tout bon vivant qui leur para?t suffisamment riche. Mais beaucoup de Guides-racoleurs ne respectent pas leurs engagements et conduisent leurs nouveaux compagnons dans des ''coups fourr?s'' ou chez une bande de Coupe-Jarrets, en ?change d''une part des prises.', 1);
INSERT INTO career VALUES(54, 0, 'herboriste', 'La m?decine du Vieux Monde est primitive, incertaine et co?teuse, aussi beaucoup de personnes restent-elles fid?les aux rem?des traditionnels et aux m?dicaments dont l''efficacit? a travers? les si?cles. en fait, la plupart des gens ne font pas confiance ? la m?decine ''scientifique''. Les Herboristes, d''un autre c?t?, sont des membres respect?s de la soci?t? bien que leur client?le ne soit pas aussi exclusive que celle des M?decins. Ils cueillent et vendent des herbes et pr?parent toutes sortes de d?coctions, pour toutes sortes de maux. Dans de rares cas tr?s graves, ils traiteront le patient personnellement. Certains abusent de leurs pouvoirs ; ceux qui ont ?t? la victime de philtres d''amour ou de charmes pourront vous le dire. Mais la profession ? toujours ?t? pr?sente dans toutes les l?gendes populaire du Vieux Monde et beaucoup de gens du peuple estiment que l''Herboriste reste leur seul ami lorsqu''ils tombent malades.', 1);
INSERT INTO career VALUES(55, 0, 'hors-la-loi', 'Les Hors-la-loi sont des gens qui ont ?t? mis au ban de la soci?t?, ou qui ont choisi de vivre en dehors de ses lois. Dans la pratique, cela concerne un grand nombre de personnes. Certains bastions de Hors-la-loi sont tr?s puissants et peuvent effectivement se constituer en petits royaumes ind?pendants. Les Hors-la-loi s''identifient d''eux-m?mes ? la paysannerie et au commun du peuple, lequel s''en remet ? eux pour les soutenir et les prot?ger. Il existe d''ailleurs des Princes et des Gentilshommes Hors-la-loi, reni?s par leur famille et qui pratiquent la guerre d''usure contre leur ancienne patrie. G?n?ralement, les Hors-la-loi se contentent d''attaquer les riches et les auxiliaires du r?gime ; le fait qu''ils agissent comme de vulgaires malfaiteurs ne leur ?chappe pas, bien qu''ils n''attaquent que lorsque le besoin s''en fait sentir. Les Hors-la-loi pr?f?rent op?rer en for?ts ou en terrain accident? o? ils peuvent se dissimuler. Leur tactique favorite est l''embuscade et certains ont la sp?cialit? de bondir depuis les arbres. Cette existence difficile qu''ils m?nent, toujours dehors, les endurcit mais peut affecter leur sant?. beaucoup de Hors-la-loi souffrent de toux permanente et de graves maladies de peau. Ceux qui atteignent un certain ?ge sont invariablement perclus d''arthrose.', 1);
INSERT INTO career VALUES(56, 0, 'initiÃ©', 'La richesse a pris le pas sur la religion dans les pr?occupations premi?res de la plupart des Occidentaux ; mais ils sont encore nombreux, les jeunes gens qui aspirent ? la fonction de Clerc. La vocation religieuse exige de chaque membre qu''il se consacre ? l''?tude en toute abn?gation. Un Clerc d?bute en tant qu''Initi?, qui se m?tamorphosera lentement lors de sa difficile initiation - v?ritable endoctrinement - jusqu''? ?tre enfin ordonn?. Jusqu''? ce qu''ils aient achev? leur ?ducation religieuse, ils n''auront pas qualit? pour pr?cher ou diriger un office. L''Initi? passe son temps ? ?tudier les Saintes Ecritures de sa religion et ? travailler comme seviteur-assistant d''un Clerc plus ?g?. La p?riode pass?e comme Initi? est souvent consid?r?e comme une ?tude de l''?me de l''individu et elles est souvent d?terminante pour l''avancement dans la pr?trise.', 1);
INSERT INTO career VALUES(57, 0, 'joueur professionnel', 'Beaucoup d''Occidentaux r?fl?chissent aux moyens faciles de gagner de l''argent. Les Joueurs professionnels cherchent ? utiliser leurs talents pour s''approprier les richesses des autres, sans que ces derniers s''estiment l?s?s. Parfois les choses tournent mal et le Joueur professionnel perd de fortes sommes ; dans ce cas, une retraite rapide s''impose souvent, avant que ses cr?anciers d?couvrent qu''il n''a pas les moyens de s''acquitter de ses dettes. Les Joueurs professionnels ne savent jamais quand il faut s''arr?ter, ce qui les oblige ? changer souvent d''endroit pour ?viter les vieilles dettes de jeu et les mauvais perdants.', 1);
INSERT INTO career VALUES(58, 0, 'magnÃ©tiseur', 'Dans le Vieux Monde, la puissance de l''hypnose est employÃ©e Ã  des fins aussi diverses que la mÃ©decine ou le divertissement (cf. carriÃ¨re de Bateleur : Hypnotiseur). Les MagnÃ©tiseurs - si on fait exception de quelques Charlatans - ne prÃ©tendent pas percer les mystÃ¨res de l''esprit humain, mais semblent avoir un don pour guÃ©rir ses affections. Le MagnÃ©tiseur est appelÃ© pour traiter une grande variÃ©tÃ© de maladies nerveuses, la dÃ©pendance Ã  l''alcool et autres substances toxiques et mÃªme certaines formes de Folies.', 1);
INSERT INTO career VALUES(59, 0, 'manouvrier', 'La grande majorit? des citoyens se satisfont d''une existence pr?caire. Beaucoup d''entre eux se louent comme Manouvriers g?n?ralement pour une p?riode d?finie. La plupart des Manouvriers sont des individus au caract?re dissip?, bourru et frustre qui appr?cient au plus haut point de pouvoir chanter ou siffler, grimper sur des ?chaffaudages branlants, engloutir des quantit?s d''infusions d''herbes et, occasionnellement, travailler tr?s dur. Leur avenir est toujours incertain ; ils se vendent ? un prix relativement bas compar? aux Artisans, mais quand ils ne manquent pas de travail, les Manouvriers prosp?rent. Les meilleurs emplois sont les constructions de temples, fortifications, grandes maisons et autres, car ils garantissent du travail pendant une longue p?riode. Ce sont avant tout des hommes ? l''esprit pratique et quand ils partent en aventure pendant les p?riodes de crise, celles-ci sont souvent couronn?es de succ?s.', 1);
INSERT INTO career VALUES(60, 0, 'matelot', 'Beaucoup de gens sont d?pendants de la mer ; les P?cheurs, les Commer?ants et m?me les rois. Mais de tous, ce sont les Matelots qui y sont le plus attach?s, bien que leur existence ? bord des navires de commerce ou de guerre les rendent bourrus et souvent brutaux. Cela fait que les Matelots ont tendance ? ?tre plut?t bruyants et effront?s et qu''ils aiment se vanter, hurler, chanter et se battre, ce qui n''est pas toujours du go?t de tout le monde. Ils abusent des alcools bon march? ; tout personnage suivant cette carri?re a 5% de chance de base d''?tre Alcoolique. Fort de sa vieille exp?rience de loup de mer, le Matelot a l''habitude de se battre - que ce soit en mer ou sur le plancher des vaches - et les bagarres soudaines ? bord des navires ou dans les tavernes des ports sont extr?mement fr?quentes.', 1);
INSERT INTO career VALUES(61, 0, 'mendiant', 'Les Mendiants sont les parias de la soci?t?, des d?sesp?r?s qui n''ont pas de moyens visibles de subsistance. Ils se regroupent dans les villes et les cit?s du Vieux Monde, car la seule fa?on pour eux d''?viter les affres de la faim consiste ? mendier dans les rues. C''est une activit? des plus hasardeuses, surtout depuis que la plupart des villes autorisent que la garde moleste, marque au fer et jette en prison les vagabonds pratiqueent comme il lui pla?t. Le Mendiant accepte ces risques comme inh?rents ? son m?tier et il devient souvent expert dans l''art d''extorquer de l''argent aux passants - certains jouent sur la piti? alors que d''autres offrent leur b?n?diction ou menacent de mal?dictions - tout cela dans l''unique but de remplir leur s?bile. Dans certaines grandes cit?s, les Mendiants sont organis?s en Guildes de Mendiants (non reconnues officiellement) qui attribuent les emplacements, s''occupent de d?tourner l''attention des autorit?s et ?liminent les amateurs ou les Mendiants non-affili?s. Le plus souvent la Guilde des Mendiants travaille conjointement avec la Guilde locale des Voleurs, lui fournissant des informateurs et des guetteurs.', 1);
INSERT INTO career VALUES(62, 0, 'mÃ©nestrel', 'Traditionnellement, MÃ©nestrel Ã©tait simplement un titre donnÃ© aux interprÃªtes de chants et de ballades qui parcouraient les chemins du Vieux Monde, gagnant leur vie de leur art. Toutefois, ce vocable prend ici une signification plus prÃ©cise. Beaucoup de gens trouvaient que le talent particulier des Elfes, pour le chant, les dÃ©signaient tout naturellement pour cette fonction. Par consÃ©quent les chanteurs Elfes qui couraient les routes Ã©taient connus comme des MÃ©nestrels, pour les distinguer de leurs homologues Humains. Ce n''est que plus tard que cette distinction s''estompa, quand les grands chanteurs Humains commencÃ¨rent Ã  entrer au service des grandes maisons de la noblesse. Les MÃ©nestrels peuvent se rÃ©jouir des avantages d''avoir lit et repas assurÃ©s et de pouvoir d?penser de l''argent, bien qu''en retour ils doivent assortir phrases et musique ? la demande de leur protecteur (certains trouvent que la tÃ¢che de composer des odes Ã  la beautÃ© de l''Ã©pouse disgrÃ¢cieuse de leur bienfaiteur interfÃ¨re sÃ©rieusement avec leur libertÃ© artistique). Et bien que leur vie peut alors difficilement Ãªtre considÃ©rÃ©e comme pÃ©nible, beaucoup de MÃ©nestrels se trouvent forcÃ©s de partir Ã  l''aventure, quittant leur situation plus ou moins hÃ¢tivement, selon la gravitÃ© des indÃ©licatesses qu''ils se sont permis avec les membres de la famille. Les MÃ©nestrels Elfes prÃ©fÃ¨rent mener une vie d''errance ; leur tempÃ©rament fait qu''ils s''accomodent mal de travailler pour un maÃ®tre Humain ; beaucoup pensent qu''aucun Humain n''est Ã  mÃªme d''apprÃ©cier leur art Ã  sa juste valeur. Seuls les Elfes pourront dÃ©buter le jeu comme MÃ©nestrels ; les personnages de race diffÃ©rente devront d''abord avoir Ã©tÃ© Troubadours (carriÃ¨re de Bateleur).', 1);
INSERT INTO career VALUES(63, 0, 'mercenaire', '', 1);
INSERT INTO career VALUES(64, 0, 'milicien', '', 1);
INSERT INTO career VALUES(65, 0, 'muletier', '', 1);
INSERT INTO career VALUES(66, 0, 'ovate', '', 1);
INSERT INTO career VALUES(67, 0, 'pÃ¢tre', '', 1);
INSERT INTO career VALUES(68, 0, 'patrouilleur rural', '', 1);
INSERT INTO career VALUES(69, 0, 'pÃ©ager', '', 1);
INSERT INTO career VALUES(70, 0, 'pÃªcheur', '', 1);
INSERT INTO career VALUES(71, 0, 'pilleur de tombes', '', 1);
INSERT INTO career VALUES(72, 0, 'pilote', '', 1);
INSERT INTO career VALUES(73, 0, 'pourfendeur de trolls', '', 1);
INSERT INTO career VALUES(74, 0, 'prÃ©dicateur', 'Les PrÃ©dicateurs sont des religieux qui ont, un jour, d''exercer en dehors de leur paroisse. On peut les trouver sur les places du marchÃ© de n''importe quel ville, occupÃ©s Ã  proclamer leurs derniÃ¨res rÃ©vÃ©lations Ã  qui veut les entendre. A une Ã©poque oÃ¹ les mots intolÃ©rance et concurrence dÃ©finissent les rapports entre les religions, les PrÃ©dicateurs apparaissent comme des opportunistes, empiÃ¨tant sur les vÃ©ritables croyances. A une Ã©poque oÃ¹ les maladies mentales ne sont pas encore parfaitement connues et maÃ®trisÃ©es, les PrÃ©dicateurs passent souvent pour des excentriques. Certains d''entre eux peuvent Ãªtre rÃ©ellement inspirÃ©s, mais il existe beaucoup de charlatans et encore plus de dÃ©traquÃ©s mentaux.', 1);
INSERT INTO career VALUES(75, 0, 'prospecteur', '', 1);
INSERT INTO career VALUES(76, 0, 'raconteur', '', 1);
INSERT INTO career VALUES(77, 0, 'ratier', '', 1);
INSERT INTO career VALUES(78, 0, 'scribe', '', 1);
INSERT INTO career VALUES(79, 0, 'soldat', '', 1);
INSERT INTO career VALUES(80, 0, 'spadassin', '', 1);
INSERT INTO career VALUES(81, 0, 'trafiquant de cadavres', '', 1);
INSERT INTO career VALUES(82, 0, 'trappeur', '', 1);
INSERT INTO career VALUES(83, 0, 'voleur de bÃ©tail', '', 1);
INSERT INTO career VALUES(84, 167, 'en gÃ©nÃ©ral', '', 1);
INSERT INTO career VALUES(85, 167, 'cambrioleur', '', 1);
INSERT INTO career VALUES(86, 167, 'escroc', '', 1);
INSERT INTO career VALUES(87, 167, 'rogneur de monnaie', '', 1);
INSERT INTO career VALUES(88, 167, 'tire-laine', '', 1);
INSERT INTO career VALUES(89, 0, 'assassin', 'Les Assassins sont des tueurs Ã  gages, des professionnels consciencieux et d''excellents combattants. Ils sont experts dans le maniement d''une grande variÃ©tÃ© d''armes et leur niveau d''entraÃ®nement se\r\n situe bien au dessus de celui de la majoritÃ© des Guerriers, Brigands et autres tueurs Ã  la manque. Ils sont trÃ¨s habiles, Ã©galement, Ã  l''utilisation de poisons et la construction de piÃ¨ges. Ces talents leur permettent de se louer au plus offrant et il arrive qu''un mÃªme Assassin soit engagÃ© par deux partis opposÃ©s pour Ã©liminer leurs deux chefs adverses respectifs. Dans le Vieux Monde, l''Assassin est l''arme la plus efficace en cas de conflit, utilisÃ©e indistinctement par les grandes familles, les gouvernements et les temples.', 0);
INSERT INTO career VALUES(90, 0, 'avouÃ©', 'Les AvouÃ©s Ã©tudient longuemÃ«nt les procÃ©dÃ©s judiciaires dans le Vieux Monde et, d''une faÃ§on gÃ©nÃ©rale, tous les systÃ¨mes de lois. Ce sont des juristes professionnels qui occupent une place Ã©levÃ©e dans la sociÃ©tÃ© et qui jouissent gÃ©nÃ©ralement- d''une excellente rÃ©putation. C''est d''ailleurs cette rÃ©putation qui constitue leur principale richesse : la leur, en tant que juriste, mais aussi celle de leur ville et de son systÃ¨me de lÃ©gislation. C''est encore elle qui leur apporte un afflux constant de clients -et donc de revenusaussi peu d''avouÃ©s prennent-ils le risque de traiter des affaires qu''ils ne sont pas sÃ»rs de gagner. Toutefois il arrive que certains jeunes AvouÃ©s veuillent se charger d''affaires inhabituelles, susceptibles d''attirer l''attention de l''opinion publique, car de telles victoires augmentent terriblement leur rÃ©putation ainsi que leur position sociale et professionnelle. Bien que les rÃ©gimes de lois diffÃ©rent de ville en ville, et de rÃ©gion en rÃ©gion, ils ont de nombreuses similitudes ; un AvouÃ© compÃ©tent sera Ã  mÃªme de venir Ã  bout d''un systÃ¨me qui ne lui est pas familier aprÃ¨s quelques recherches.', 0);
INSERT INTO career VALUES(91, 0, 'bandit de grand chemin', 'Les Bandits de grand chemin gagnent leur vie en arrÃªtant et dÃ©valisant les voitures qui empruntent\r\nles routes du Vieux Monde. Ils sont diffÃ©rents des simples dÃ©trousseurs, mais peu s''en faut. les Bandits de grand chemin opÃ¨rent avec style; ils appartiennent Ã  ce que l''on peut appeler la noblesse des voleurs. MÃªme en pleine besogne, ils sont toujours impeccablement vÃªtus et, dans beaucoup de rÃ©gions, ils rivalisent entre eux; c''est Ã  celui qui s''habillera le plus richement, ou qui attaquera le plus de carrosses. Ils affectionnent les manteaux amples sur une chemise blanche Ã  jabots (en soie, naturellement) et portent de grands tricornes surmontÃ©s d''au moins une grande plume bariolÃ©e. Leurs masques sont simples mais Ã©lÃ©gants, du style de ceux que l''on porte dans les bals costumÃ©s ; le summum de la mode consiste Ã  ce que le masque et le contour des yeux soient bordÃ©s de feuilles argentÃ©es ou dorÃ©es.', 0);
INSERT INTO career VALUES(92, 0, 'bourreau', 'Les bourreaux sÃ©vissent, pour la: plupart, dans les - donjons oÃ¹ ils acquiÃ¨rent quelques une des habitudes les moins plaisantes des Geoliers. Ils tendent toutefois a se montrer un peu plus propres et un peu moins corruptibles, mais la diffÃ©rence est souvent infime. Le Bourreau est un expert dans les interrogatoires avec utilisation de la force et sait comment causer une grande souffrance qui ne laisse que trÃ¨s peu de traces. Certains Bourreaux particuliÃ¨rement qualifiÃ©s peuvent mÃªme acquÃ©rir des connaissances limitÃ©es en mÃ©decine, pour maintenir leur victime en vie jusqu''Ã  ce qu''ils en aient fini avec elle.', 0);
INSERT INTO career VALUES(93, 0, 'capitaine de navire', 'Il n''existe que deux voies pour parvenir Ã  la fonction de Capitaine - soit Achever entiÃ¨rement la CarriÃ¨re de Navigateur (en prenant toutes les Promotions et CompÃ©tences), soit passer par le grade de Matelot (cf. CarriÃ¨res de Base) puis Officier en Second (en prenant toutes les Promotions et CompÃ©tences dans ce dernier cas). Devenir Capitaine nÃ©cessite un Ã©tat d''esprit bien particulier. Ils doivent avoir une passion des voyages trÃ¨s forte, couplÃ©e d''une foi ardente en ce qu''ils font. Qui oserait. en effet. se risquer Ã  commander une bande d''ivrognes, capables bien souvent d''une seule chose: rendre responsable leur Capitaine de tous leurs maux, du mauvais temps jusqu''aux Ã©pidÃ©mies de scorbut?\r\nQuant Ã  ceux qui survivent aux mutineries, aux attaques de pirates et aux terribles tempÃªtes qui sÃ©vissent sur les ocÃ©ans, ils peuvent trouver leur\r\nmÃ©tier lucratif. Il y a toujours de la demande pour transporter des marchandises et le Capitaine sait habituellement dans quel port il faut se rendre pour tirer un profit maximum de la cargaison. Mais tous les Capitaines ne vivent pas de nÃ©goce, nombreux sont ceux qui prÃ©fÃ¨rent prendre les marchandises par la force Ã  ceux qui ne sont pas en Ã©tat de se dÃ©fendre. Pirates, Flibustiers ou Corsaires - ils ont de nombreux noms, mais ce sont tous des meurtriers sanguinaires qui attaquent les navires de commerce, s''emparent de leur cargaison et jettent aux requins, ou enrÃ´lent de force, tout homme d''Ã©quipage ou passager qui ne peut Ãªtre vendu comme esclave. Dans ces conditions, il n''est pas surprenant que, dans la plupart des pays, la peine encourue pour piraterie soit la mort.', 0);
INSERT INTO career VALUES(94, 0, 'officier en second', 'Les Officiers en second, comme leur nom l''indique, sont les commandants en second, Ã  bord, aprÃ¨s le Capitaine. Bien qu''ils aient l''avantage de pouvoir commander la man?uvre dans un coup de vent de force 9 plutÃ´t que de l''exÃ©cuter eux-mÃªmes. le fait que les Seconds doivent s''assurer que les ordres du Capitaine soient bien exÃ©cutÃ©s, ne les rend pas vraiment sympathiques aux yeux de l''Ã©quipage. Un Officier en second se doit d''Ãªtre ferme pour gagner le respect de l''Ã©quipage. En cas de mutinerie, le Second impopulaire sera Ã©galement second Ã  passer la planche aprÃ¨s le Capitaine. Il n''est pas surprenant d''entendre les Seconds raconter des lÃ©gendes incroyables et essayer de se surpasser les uns les autres avec des histoires sur le grand Kraken, les serpents de mer, les sirÃ¨nes et bien d''autres mythes. Certaines de ces lÃ©gendes peuvent Ãªtre vÃ©ridiques, mais beaucoup ont Ã©tÃ© quelque peu modifiÃ©es au fil des auditoires. La majoritÃ© sont presque entiÃ¨rement fictives.', 0);
INSERT INTO career VALUES(95, 0, 'capitaine-mercenaire', '', 0);
INSERT INTO career VALUES(96, 0, 'sergent-mercenaire', '', 0);
INSERT INTO career VALUES(97, 0, 'champion de justice', '', 0);
INSERT INTO career VALUES(98, 0, 'charlatan', 'Le Charlatan est un roublard ; un baratineur ingÃ©nieux capable de convaincre n''importe qui, sur Ã  peu prÃ¨s n''importe quoi. MÃªme les gens les mieux informÃ©s pourront s''y laisser prendre; croire- que cette bouteille contient un nouveau mÃ©dicament-miracle qui les guÃ©rira de toutes leurs maux, ou que contre une ridicule somme d''argent, leur maison sera enfin dÃ©barrassÃ©e dÃ©finitivement de la vermine qui l''infeste. Il n''est nul besoin de le dire, le Charlatan allie une langue bien pendue Ã  un charme naturel ; mais la facultÃ© de jauger un auditoire -pour Ã©valuer sa crÃ©dibilitÃ© et anticiper sur ce qu''il veut entendre- reste sans conteste sa meilleure arme. Les Charlatans se dÃ©guisent frÃ©quemment - non pas pour dissimuler leur vÃ©ritable identitÃ©, mais pour se prÃ©senter de la faÃ§on la plus afceptable devant leur auditoire. Ainsi un Charlatan revÃªtira les attributs d''un MÃ©decin pour vendre ses mÃ©decines miraculeuses, ou se fera passer pour un MaÃ®tre-Artisan, Alchimiste ou Sorcier afin de donner Ã  ses produits douteux une apparence plus authentique. Tandis que la plupart des Charlatans gagnent leur vie en Ã©coulant de grnades quantitÃ©s de marchandises bon marchÃ© (Ã  l''achat du moins), certains se spÃ©cialisent dans la vente de ponts et autres monuments.', 0);
INSERT INTO career VALUES(99, 0, 'chef rebelle', 'Les Hors-la-loi mÃ©ritants se mettent Ã  la tÃªte de leur propre bande et ils deviennent des Chefs rebelles rÃ©putÃ©s. Comme tels, ils ont le droit au meilleur Ã©quipement et choisissent en prioritÃ© parmi le butin provenant des diverses rapines. AprÃ¨s les avantages du Chef, viennent ses responsabilitÃ©s ; le Chef est responsable du bien-Ãªtre de ses hommes et, s''ils ne sont pas satisfaits de lui pour une quelconque raison, ils pourraient lui apprendre leur contrariÃ©tÃ© d''une maniÃ¨re dÃ©finitive. Nombreux sont ceux qui convoitent sa place, dans la bande. Et bien sÃ»r, alors que ses hommes capturÃ©s par les autoritÃ©s, seront pendus haut et court, le Chef, quant Ã  lui, aura droit Ã  une fin moins expÃ©ditive et plus recherchÃ©e. A cause de toutes ces difficultÃ©s, auxquelles ils doivent faire face, certains Chefs rebelles cherchent Ã  se retirer et peut -Ãªtre Ã  gagner leur vie plus honnÃªtement. Cette dÃ©cision comporte nÃ©anmoins certains risques car les Hors-la-loi considÃ©reront certainement la dÃ©sertion de leur Chef comme sa derniÃ¨re trahison.', 0);
INSERT INTO career VALUES(100, 0, 'chef-balistaire', 'Le Chef-Balistaire est un militaire spÃ©cialiste chargÃ© de superviser l''Ã©laboration, le transport et l''utilisation des balistes. Cette carriÃ¨re regroupe Ã  la fois la maÃ®trise des engins lanceurs de traits et de pierres, mais pas les canons ni les bombardes voir Chef-Canonnier. Le Chef-Balistaire dirige les servants d''une baliste (ce sont gÃ©nÃ©ralement des Soldats ou des Miliciens) et leur donne ses instructions concernant le chargement et le tir. Les Chefs-Balistaires peuvent commander un engin balistique pour chaque dix points de leur score en Initiative.', 0);
INSERT INTO career VALUES(101, 0, 'chef-canonnier', 'Les Chefs-Canonniers sont des militaires spÃ©cialisÃ©s dans l''emploi des bombardes. AprÃ¨s avoir passÃ© de longues pÃ©riodes Ã  utiliser ces armes bruyantes, instables et le plus souvent dangereuses, beaucoup de Chefs Canonniers sont un peu durs d''oreille et quelque peu excentriques; mais ils trouvent facilement Ã  s''employer dans les armÃ©es du Vieux Monde. Un Chef-Canonnier commande le chargement et le tir des canons, Ã  une Ã©quipe de servants, le plus souvent de simples Soldats totalement incompÃ©tents. Un Chef-Canonnier peut superviser un canon pour chaque tranche de dix points de son score en Initiative.', 0);
INSERT INTO career VALUES(102, 0, 'chef-sapeur', 'Les Chefs-Sapeurs sont des ingÃ©nieurs militaires, compÃ©tents dans plusieurs domaines, tels que la fabrication ''d''explosifs, la conception de piÃ¨ces d''artillerie et la direction de machines de siÃ¨ge (qu''ils assurent presque comme un Chef Balistaire). Mais leur spÃ©cialitÃ© reste l''excavation de galeries, gÃ©nÃ©ralement pour pÃ©nÃ©trer Ã  l''intÃ©rieur des fortifications ennemies. Les services des Chefs-Sapeurs Nains sont trÃ¨s recherchÃ©s par les armÃ©es de tous les pays et certaines unitÃ©s de Mercenaires Nains renommÃ©es sont constituÃ©es exclusivement de Sapeurs. Les Chefs-Sapeurs opÃ©rants pour une armÃ©e Naine font toujours partie de la Guilde des Engingneurs Nains (cf. CarriÃ¨res de base - Engingneur), alors que les unitÃ©s de Mercenaires engagÃ©s dans des troupes non-Naines n''en sont pas obligatoirement membres.', 0);
INSERT INTO career VALUES(103, 0, 'chevalier errant', 'Tout comme les Guerriers de basse extraction se font Mercenaires, les Ecuyers ou les Gentilshommes peuvent louer leurs services en devenant Chevaliers errants. Les Chevaliers errants sont, gÃ©nÃ©ralement, soit des nobles en titre qui ont un goÃ»t prononcÃ© pour l''aventure, soit des cavaliers expÃ©rimentÃ©s de condition plus modeste qui s''engagent Ã  charger en premiÃ¨re ligne dans les batailles. Les considÃ©rations financiÃ¨res prennent le pas sur celles de l''honneur et de la chevalerie et beaucoup de Chevaliers errants, en manque d''emploi, peuvent mÃªme se conduire comme de vulgaires Spadassins, en s''Ã©tablissant Ã  l''extrÃ©mitÃ© d''un pont ou en bloquant l''accÃ¨s d''une route et en provoquant au combat tout voyageur armÃ© qui veut forcer le passage, et ainsi de le dÃ©possÃ©der de ses biens.', 0);
INSERT INTO career VALUES(104, 0, 'clerc', 'Les Clercs sont les ecclÃ©siastiques du Vieux Monde, investis par leurs Ã©glises du pouvoir de diriger les offices religieux et de pourvoir aux besoins spirituels de leurs fidÃ¨les. C''est pour exercer ces fonctions, que l''on autorise les Clercs Ã  accÃ©der aux dieux par le biais de la priÃ¨re, ainsi qu''Ã  un certain nombre de pouvoirs magiques. Ces pouvoirs sont la consÃ©quence de la dÃ©votion portÃ©e par le Clerc Ã  son dieu, plutÃ´t que de ses connaissances et de la force de sa volontÃ©. Avant de devenir Clerc, le personnage devra d''abord achever sa CarriÃ¨re de Base d''InitiÃ©. Puisque les sortilÃ¨ges du Clerc dÃ©pendent avant tout de son dieu, les personnages ne passeront pas automatiquement du titre d''InitiÃ© Ã  celui de Clerc niveau I. Quand la carriÃ¨re d''InitiÃ© sera achevÃ©e, ils devront accumuler les 100 points d''ExpÃ©rience nÃ©cessaires Ã  la reconversion, avant de se rendre au temple de leur dieu et d''y prier pour leur Ã©volution (et d''Ã©changer les 100 PE contre un jet de dÃ©s sur la Table d''Avancement des Clercs). Pour de plus amples informations Ã  propos des Clercs et de leurs religions, veuillez compulser les sections Magie et Religions et Croyances.', 0);
INSERT INTO career VALUES(105, 0, 'dÃ©magogue', 'Les DÃ©magogues sont des Agitateurs populaires, considÃ©rÃ©s comme les chefs de file ou les champions de causes particuliÃ¨res. Ce sont des personnages subtils et trÃ¨s compÃ©tents, capables de soulever de grandes passions dans l''opinion publique. Ils sont plus susceptibles d''attirer l''attention des autoritÃ©s.', 0);
INSERT INTO career VALUES(106, 0, 'druide', 'Les Druides sont les disciples de la Foi Antique, une croyance dont les origines remontent Ã  des temps immÃ©moriaux. Leurs rituels sont fortement associÃ©s Ã  d''anciens sites, tels que les tumulus et les cercles de pierres, dont la signification a depuis longtemps Ã©tÃ© oubliÃ© des autres. Avant de devenir Druide, le personnage devra d''abord achever sa CarriÃ¨re de Base d''Ovate. Puisque les sortilÃ¨ges du Druide dÃ©pendent avant tout de leurs dieux, les personnages ne passeront pas automatiquement du titre d''Ovate Ã  celui de Druide niveau 1. Quand sa carriÃ¨re d''Ovate sera achevÃ©e, le personnage devra accumuler les 100 points d''ExpÃ©rience nÃ©cessaires Ã  sa reconversion, avant de faire appel Ã  ses dieux. Le personnage se rendra sur un lieu sacrÃ© et priera pour son Ã©volution - en troquant ses 100 PE contre un jet de dÃ©s sur la Table d''avancement des Druides. Pour de plus amples informations Ã  propos des Druides et de la Foi Antique, veuillez vous rÃ©fÃ©rez aux sections Magie et Religions et Croyances. Note: Seul les Humains peuvent prÃ©tendre devenir Druides.', 0);
INSERT INTO career VALUES(107, 0, 'duelliste', 'Les Duellistes sont rÃ©putÃ©s pour leurs prouesses au combat, que ce soit avec des armes de contact telle une Ã©pÃ©e, ou avec des armes de trait ou de jet. Les armes favorites du Duelliste sont l''Ã©pÃ©e d''escrime et le pistolet de duel, une grossiÃ¨re et instable arme Ã  poudre, dont la fÃ¢cheuse tendance Ã  exploser inspire peu les gens. sensÃ©s. Les Duellistes, quand Ã  eux, prennent plaisir Ã  multiplier les risques. Ils suivent un code de conduite trÃ¨s strict. Se battre en duel de la maniÃ¨re la plus conventionnelle est souvent plus important Ã  leurs yeux que la victoire elle mÃªme. Les Duellistes ont tendance Ã  traiter le commun des mortels avec arrogance et mÃ©pris et ils sont toujours prÃªts Ã  exiger rÃ©paration sur le champ pour tout offense ou insulte, rÃ©elle ou imaginaire. La plupart sont des fils de bonne famille qui s''adonnent au duel par plaisir. Du fait de leur activitÃ©, ils ne sont pas particuliÃ¨rement apprÃ©ciÃ©s par les autoritÃ©s, mais pour l''instant, le duel n''est pas illÃ©gal dans la plus grande partie du Vieux Monde et les Duellistes sont protÃ©gÃ©s par d''archaÃ¯ques dÃ©crets de lois qui n''ont pas Ã©tÃ© abrogÃ©s.', 0);
INSERT INTO career VALUES(108, 0, 'Ã©claireur', 'Les Eclaireurs louent leurs services Ã  l''armÃ©e, aux marchands, voyageurs ou Ã  quiconque est en  mesure d''en payer le prix. Leur travail consiste Ã  partir en avant de leurs employeurs afin \r\nd''explorer le terrain et de leur rendre  compte de toute activitÃ© suspecte ou toute source possible de danger et ceci, avant que tout le groupe ne s''y aventure. Les Eclaireurs sont experts dans l''art\r\nde se fondre dans le paysage; ils parviennent souvent Ã  s''approcher suffisamment prÃ¨s d''une armÃ©e pour lire les emblÃ¨mes de ses banniÃ¨res et boucliers sans se faire repÃ©rer.', 0);
INSERT INTO career VALUES(109, 0, 'Ã©rudit', 'De nombreux LettrÃ©s gagnent leur vie en enseignant dans l''une des facultÃ©s du Vieux Monde, en se louant comme prÃ©cepteurs, ou encore en Ã©crivant de doctes traitÃ©s sur divers sujets. Dans certains cas, l''Erudit peut trouver un protecteur ou un mÃ©cÃ¨ne qui finance ses Ã©tudes et ainsi assouvir son penchant pour la science en toute quiÃ©tude. Les Erudits ont un intÃ©rÃªt tout personnel pour les connaissances ; ils ne se confinent pas Ã  un seul domaine, mais font des recherches sur tout et rien, selon leur humeur du moment et les opportunitÃ©s qui se prÃ©sentent. Bien qu''ils ne soient pas aventureux par nature, beaucoup d''Erudits partent pour de longs voyages en vue de rÃ©colter de nouvelles ou prÃ©cieuses informations, ou de retrouver des connaissances oubliÃ©es. Il n''est pas rare de voir un Erudit vivre comme un aventurier pour atteindre des endroits inaccessibles oÃ¹ les autres LettrÃ©s n''ont pas le courage de se rendre.', 0);
INSERT INTO career VALUES(110, 0, 'espion', 'Les Espions sont utilisÃ©s pour recueillir et transmettre des informations secrÃ¨tement. Ce sont des experts dans l''art de s''infiltrer dans les plus hauts rangs d''une organisation et d''y travailler sans se faire repÃ©rer durant des mois et mÃªme .des annÃ©es. Certains Espions prÃ©fÃ¨rent opÃ©rer d''une maniÃ¨re plus directe dans des missions spÃ©ciales, comme pÃ©nÃ©trer dans une maison pour y voler des informations, ou commettre un acte de sabotage. Tous les gouvernements du Vieux Monde emploient des Espions, principalement dans le but de recueillir des renseignements d''ordre militaire sur leurs voisins mais nÃ©anmoins rivaux ; les Espions sont aussi engagÃ©s, de faÃ§on rÃ©guliÃ¨re, par les grandes compagnies de Marchands pour des raisons similaires.', 0);
INSERT INTO career VALUES(111, 0, 'explorateur', 'Les Explorateurs voyagent Ã©normÃ©ment de par le Vieux Monde, toujours Ã  la rechercfie de nouveaux produits et de nouveaux emplacements oÃ¹ installer des comptoirs de commerce. Leur travailles conduit souvent Ã  traverser des rÃ©gions sauvages et inexplorÃ©es, ce qui les oblige Ã  s''adjoindre la compagnie de combattants expÃ©rimentÃ©s autant que de marchands qualifiÃ©s.', 0);
INSERT INTO career VALUES(112, 0, 'faussaire', 'Les Faussaires sont avant tout des artistes. PlutÃ´t que d''Ã©laborer des compositions artistiques de leur crÃ», ils s''affairent Ã  reproduire divers articles qui se vendront un bon prix, tels que des documents, lettres et sceaux. Ils peuvent imiter n''importe quelle Ã©criture avec une grande prÃ©cision, Ã  partir d''un Ã©chantillon de base et ils sont familliarisÃ©s avec une grande variÃ©tÃ© de documents, encres, sceaux et autres matÃ©riels d''Ã©criture.', 0);
INSERT INTO career VALUES(113, 0, 'faux-monnayeur', 'Les Faux-monnayeurs sont des criminels bien plus habiles que leurs modestes confrÃ¨res , les Rogneurs de monnaIe. Au lieu de gratter les piÃ¨ces de monnaie, ils en fabriquent tout simplement, en faisant fondre quelques vraies piÃ¨ces et en leur adjoignant de l''or ou de l''argent de mauvaise qualitÃ© et, peut-Ãªtre, un peu de plomb pour donner du poids. Les Faux-monnayeurs fabriquent leurs propres moules, que ce soit en les gravant, ou en prenant l''empreinte de piÃ¨ces originales.\r\n', 0);
INSERT INTO career VALUES(114, 0, 'franc-archer', 'Les Franc-archers sont des professionnels qui participent Ã  des compÃ©titions de tir Ã  l''arc. Certains utilisent d''autres armes neurobalistiques, telle l''arbalÃ¨te, mais l''arc long est de loin le plus\r\npopulaire. Les Franc-archers voyagent de tournois en concours et de foire en kermesse, s''inscrivant Ã  chaque compÃ©tition, et/ou travaillant presque Ã  la faÃ§on des Bateleurs, en dÃ©fiant les indigÃ¨nes sur un concours impromptu pour une boisson ou un petit enjeu, ou encore en accomplissant divers enchaÃ®nements comme un spectacle forain. Un Franc-archer habile peut vivre correctement en concourant dans les principaux tournois.', 0);
INSERT INTO career VALUES(115, 164, 'armurier', '', 0);
INSERT INTO career VALUES(116, 164, 'brasseur', '', 0);
INSERT INTO career VALUES(117, 164, 'calligraphe', '', 0);
INSERT INTO career VALUES(118, 164, 'chandelon', '', 0);
INSERT INTO career VALUES(119, 164, 'charpentier', '', 0);
INSERT INTO career VALUES(120, 164, 'charpentier de marine', '', 0);
INSERT INTO career VALUES(121, 164, 'charron', '', 0);
INSERT INTO career VALUES(122, 164, 'cordonnier-bottier', '', 0);
INSERT INTO career VALUES(123, 164, 'forgeron', '', 0);
INSERT INTO career VALUES(124, 164, 'graveur', '', 0);
INSERT INTO career VALUES(125, 164, 'imprimeur', '', 0);
INSERT INTO career VALUES(126, 164, 'joaillier', '', 0);
INSERT INTO career VALUES(127, 164, 'maÃ§on', '', 0);
INSERT INTO career VALUES(128, 164, 'menuisier', '', 0);
INSERT INTO career VALUES(129, 164, 'potier', '', 0);
INSERT INTO career VALUES(130, 164, 'tailleur', '', 0);
INSERT INTO career VALUES(131, 164, 'tanneur', '', 0);
INSERT INTO career VALUES(132, 164, 'tonnelier', '', 0);
INSERT INTO career VALUES(133, 164, 'verrier', '', 0);
INSERT INTO career VALUES(134, 0, 'marchand', 'Les Marchands gagnÃ«nt leur vie en faisant le commerce de marchandises. A la diffÃ©rence des CommerÃ§ants, ils ne traitent pas directement avec les consommateurs; ils font plus souvent fonction de "grossistes" que de dÃ©taillants. S''intÃ©ressant Ã  tout ce qui peut rapporter des bÃ©nÃ©fices, les Marchands voyagent Ã©normÃ©ment pour acheter et acheminer des marchandises. Ils se rendent sur tous les grands marchÃ©s urbains, laissant le soin Ã  leurs subalternes de nÃ©gocier sur les petits marchÃ©s et les foires rÃ©gionales. Les Marchands sont souvent les membres influents et respectÃ©s des conseils municipaux ou autres corps dirigeants. La Guilde des Marchands est une organisation puissante rÃ©gie par ses propres lois. Les Marchands vivent tous dans l''opulence et entretiennent au moins une maison en ville, ainsi que plusieurs entrepÃ´ts.', 0);
INSERT INTO career VALUES(135, 0, 'marchand d''esclaves', 'L''esclavage est le lot subi par des millions de personnes sur le Vieux Monde; il peut revÃªtir\r\nl''apparence du service domestique, des travaux forcÃ©s ou du servage aux champs. Il y a beaucoup de formes d''esclavage qui sont illÃ©gales, mais le servage est rarement contrÃ´lÃ© dans la plupart des rÃ©gions. Le Marchand d''esclaves se procure gÃ©nÃ©ralement sa marchandise Ã  l''Ã©tranger, ou fait le commerce de ceux qui sont trop jeunes ou trop pauvres pour revendiquer leurs droits. Les plus grands marchÃ©s aux esclaves sont en Arabie et le sort de ceux qui y sont vendus est des plus misÃ©rable. Dans le Vieux Monde, certaines personnes sont asservies par les tribunaux, pour non-paiement de dettes ou dÃ©lits similaires. De plus, il existait encore, rÃ©cemment, un commerce\r\nflorissant de Demi-orques. Les Esclaves du Vieux Monde sont gÃ©nÃ©ralement bien traitÃ©s, travaillant souvent avec des Domestiques rÃ©munÃ©rÃ©s et partageant leurs conditions de vie.', 0);
INSERT INTO career VALUES(136, 0, 'massacreur de gÃ©ants', 'Devenir Massacreur de GÃ©ants est une affaire qui concerne les Nains, suivant leur psychologie toute particuliÃ¨re. Le Nain proscrit qui n''a pas pu trouver sa dÃ©livrance comme Pourfendeur de Trolls, va chercher Ã  affronter des dangers encore plus grands. Les Massacreurs de GÃ©ants, selon l''usage, se teignent les cheveux en orange vif et se les frictionnent avec de la graisse animale pour les rendre raides et hÃ©rissÃ©s. Leurs goÃ»ts en matiÃ¨re de fanfreluches leur viennent de leur prÃ©cÃ©dente carriÃ¨re de Pourfendeur de Trolls et ils ont toujours -bien entendu- leurs tatouages. Les Massacreurs de GÃ©ants sont obsÃ©dÃ©s par le dÃ©sir de dÃ©busquer et dÃ©truire ces crÃ©atures, mais ils ne nÃ©gligeront pas de s''engager dans toute situation oÃ¹ ils pensent avoir une bonne chance de trouver la mort.\r\n', 0);
INSERT INTO career VALUES(137, 0, 'mÃ©decin', 'Les MÃ©decins sont les praticiens de cette science encore jeune qu''est la mÃ©decine. Ils connaissent les traitements de base et pratiquent la petite chirurgie, qui leur permet de soulager les maux simples tels que furoncles, fractures et blessures lÃ©gÃ¨res. Ce sont des membres respectÃ©s de la sociÃ©tÃ©, qui peuvent Ãªtre d''un grand secours pour les aventuriers blessÃ©s.', 0);
INSERT INTO career VALUES(138, 0, 'navigateur', 'Le Navigateur est un Ã©lÃ©ment essentiel de l''Ã©quipage d''un navire, responsable d''Ã©tablir et de tracer les itinÃ©raires, tout en se portant garant de la position du vaisseau et de son cap. Les Navigateurs s''orientent Ã  l''aide des Ã©toiles, du soleil ou des cartes marines. Leurs aptitudes Ã  la navigation sont Ã©galement trÃ¨s utiles Ã  terre et les Navigateurs sont quelquefois engagÃ©s pour accompagner des expÃ©ditions risquÃ©es traversant des territoires inconnus.', 0);
INSERT INTO career VALUES(139, 0, 'racketteur', 'Les Racketteurs sont des brutes organisÃ©es qui extorquent de l''argent aux citoyens par la violence, le chantage et autres mÃ©thodes illÃ©gales. Ils travaillent gÃ©nÃ©ralement en groupe et, bien qu''ils ne sont pas trÃ¨s imaginatifs comme criminels, ils sont inflexibles et trÃ¨s bien outillÃ©s. Leur principale source de revenus est la rÃ©munÃ©ration de leur "protection", mais ils sont aussi impliquÃ©s dans les jeux clandestins et les prÃªts Ã  taux usuraires. Celui qui ne paie pas Ã  la date fixÃ©e, quelque soit sa raison, doit s''attendre Ã  Ãªtre traitÃ© durement ; cela peut aller du simple avertissement sur ses biens matÃ©riels jusqu''Ã  la mutilation ou le meurtre.', 0);
INSERT INTO career VALUES(140, 0, 'receleur', 'La plupart des marchands s''occupent d''affaires quelque peu illÃ©gales; c''est le cas des Receleurs qui sont spÃ©cialisÃ©s dans l''achat et la revente de marchandises volÃ©es. Certains articles distincts et de valeur, tel que des bijoux, peuvent s''avÃ©rer difficiles Ã  remettre en circulation ; les Receleurs les achÃ¨teront probablement Ã  une fraction de leur valeur rÃ©elle et les Ã©couleront de maniÃ¨re Ã  ce que ni le vÃ©ritable propriÃ©taire, ni les reprÃ©sentants de la loi, n''en soient avertis. Les Receleurs sont intÃ©ressÃ©s par pratiquement tout, y compris les marchandises prohibÃ©es.', 0);
INSERT INTO career VALUES(141, 0, 'rÃ©purgateur', 'Les RÃ©purgateurs sont des individus qui, pour des raisons particuliÃ¨res, ont vouÃ© leur existence Ã  traquer et dÃ©truire le Chaos et ses reprÃ©sentants partout oÃ¹ ils se trouvent. Leur dÃ©finition du Chaos est quelque peu personnelle et s''Ã©tend frÃ©quemment Ã  toute action ou personne qui leur dÃ©plaÃ®t. C''est pourquoi on les considÃ¨re le plus souvent avec crainte. A la diffÃ©rence de ceux qui combattent les incursions du Chaos aux limites du Vieux Monde, les RÃ©purgateurs prÃ©fÃ¨rent agir Ã  l''intÃ©rieur des communautÃ©s Humaines, extirpant le mal avant qu''il n''y prenne racine. Ce sont des solitaires par nature qui ne font confiance Ã  personne; personne n''Ã©chappe Ã  leur suspicion et toute dÃ©viance Ã  leur dÃ©finition personnelle de l''Ordre attire leur attention. Ils agiront contre quiconque en qui ils dÃ©tectent (ou croient dÃ©tecter) des traces de mutations ou autres dispositions Chaotiques. Certains RÃ©purgateurs Ã©tendent leur attention aux Demi-orques, traquant impitoyablement les moindres traces de sang Orque. Dans certains Ã©tats, les RÃ©purgateurs sont tolÃ©rÃ©s et mÃªme encouragÃ©s ; dans ceux oÃ¹ ils ne le sont pas, ils opÃ¨rent en secret et sont mÃªme plus\r\nsuspicieux qu''Ã  l''accoutumÃ©e (comme si cela Ã©tait possible). Ils tuent leur proie de leurs mains quand cela est nÃ©cessaire, mais prÃ©fÃ¨rent laisser ce soin Ã  la foule hystÃ©rique. Ils aiment conduire des jugements publics et des exÃ©cutions collectives, encourageant les gens Ã  dÃ©noncer leurs voisins, leurs dirigeants et mÃªme leurs propres parents.', 0);
INSERT INTO career VALUES(142, 0, 'sorcier', 'Les Sorciers sont les plus nombreux de tous les Enchanteurs. Beaucoup choisissent de vivre en aventuriers, utilisant leurs talents pour retrouver de vieux enseignements oubliÃ©s, des objets magiques lÃ©gendaires et, bien sÃ»r, la fortune. AprÃ¨s avoir terminÃ© son premier niveau de CarriÃ¨re, le Sorcier peut se spÃ©cialiser dans une branche particuliÃ¨re de la magie (DÃ©monisme, ElÃ©mentalisme, Illusion ou NÃ©cromancie). De nombreux Sorciers trouvent plus profitable de garder une base plus large d''utilisation de sortilÃ¨ges et ne se spÃ©cialisent pas. Une fois qu''un personnage a terminÃ© son temps comme Apprenti Sorcier, on considÃ¨re que son maÃ®tre continue Ã  l''instruire s''il souhaite persÃ©vÃ©rer dans une CarriÃ¨re de Sorcier.', 0);
INSERT INTO career VALUES(143, 0, 'templier', 'Certains hommes d''armes s''associent directement Ã  l''un des groupements religieux du Vieux Monde en ralliant un ordre militaire Ã  l''intÃ©rieur d''une religion spÃ©cifique. Comme tels, ils prennent le titre de Chevaliers du Temple ou Chevaliers Templiers. Les Templiers peuvent entrer au service d''une dÃ©itÃ© pour une pÃ©riode dÃ©terminÃ©e ou, plus rarement, Ã  vie. Parfois un chevalier se fera Templier par pÃ©nitence, afin d''expier un parjure ou la violation d''un autre commandement. Tous les ordres militaires exigent une soumission absolue et un haut niveau de prouesses martiales; les Templiers sont aux ordres des autoritÃ©s du temple et vivent dans son enceinte. Leur devoir est de protÃ©ger le temple et ses plus hauts dignitaires et de prendre des mesures"en ce qui concerne les forces militaires nÃ©cessaires Ã  la destruction des hÃ©rÃ©sies, l''organisation de guerres saintes, et le soutien de la foi contre la persÃ©cution et les attaques des infidÃ¨les.', 0);
INSERT INTO career VALUES(144, 0, 'alchimiste', 'Alchimistes Ã©tudient la branche de la magie ou de la science qui traite de la matiÃ¨re et de ses propriÃ©tÃ©s. Ce sont des experts dans la prÃ©paration de composants chimiques et la reconnaissance de minerais. Les Alchimistes sont d''un grand secours pour tous ceux qui travaillent le mÃ©tal et ils sont capables de prÃ©parer le mÃ©lange dÃ©tonant pour les armes Ã  poudre; si le personnage a acquis la CompÃ©tence Chimie. Nombreux sont les Alchimistes, pourtant, qui considÃ¨rent comme dÃ©gradant le fait d''utiliser leurs talents Ã  des fins aussi matÃ©rielles et qui consacrent leur vie Ã  la recherche. Trouver comment transmuter le vil mÃ©tal en or en est un exemple notoire, bien que toutes les recherches en ce sens se soient rÃ©vÃ©lÃ©es Ã  ce jour infructueuses. Les Alchimistes sont Ã©galement capables d''utiliser la magie, quoique leurs talents dans ce domaine soient moindres que ceux d''un Sorcier de mÃªme niveau. Ceux qui postulent au titre d''Alchimiste devront d''abord Achever la CarriÃ¨re de Base d''Apprenti Alchimiste - C.- Ã -do avoir pris toutes les Promotions et les CompÃ©tences proposÃ©es. Des dÃ©tails supplÃ©mentaires sur les Alchimistes, y compris sur les Plans de CarriÃ¨re et les CompÃ©tences. sont dispensÃ©s dans la section sur la Magie.', 0);
INSERT INTO career VALUES(145, 4, 'armurier', '', 1);
INSERT INTO career VALUES(146, 4, 'brasseur', '', 1);
INSERT INTO career VALUES(147, 4, 'calligraphe', '', 1);
INSERT INTO career VALUES(148, 4, 'chandelon', '', 1);
INSERT INTO career VALUES(149, 4, 'charpentier', '', 1);
INSERT INTO career VALUES(150, 4, 'charpentier de marine', '', 1);
INSERT INTO career VALUES(151, 4, 'charron', '', 1);
INSERT INTO career VALUES(152, 4, 'cordonnier-bottier', '', 1);
INSERT INTO career VALUES(153, 4, 'forgeron', '', 1);
INSERT INTO career VALUES(154, 4, 'graveur', '', 1);
INSERT INTO career VALUES(155, 4, 'imprimeur', '', 1);
INSERT INTO career VALUES(156, 4, 'joaillier', '', 1);
INSERT INTO career VALUES(157, 4, 'maÃ§on', '', 1);
INSERT INTO career VALUES(158, 4, 'menuisier', '', 1);
INSERT INTO career VALUES(159, 4, 'potier', '', 1);
INSERT INTO career VALUES(160, 4, 'tailleur', '', 1);
INSERT INTO career VALUES(161, 4, 'tanneur', '', 1);
INSERT INTO career VALUES(162, 4, 'tonnelier', '', 1);
INSERT INTO career VALUES(163, 4, 'verrier', '', 1);
INSERT INTO career VALUES(164, 0, 'maÃ®tre-artisan', 'Le MaÃ®tre-Artisan est un ouvrier qualifiÃ© qui fabrique la plupart des innombrables objets qui accompagnent toute civilisation. La table ci-dessous propose une liste (qui n''a pas la prÃ©tention d''Ãªtre exhaustive) de MaÃ®tres-Artisans parmi les plus courants. Beaucoup de villes ou de\r\nrÃ©gions sont spÃ©cialisÃ©es dans un artisanat particulier, alors que d''autres pourront abriter un\r\ntype d''Artisans ou un corps de mÃ©tier unique en son genre et qui ne se rencontrera nulle part\r\nailleurs dans le Vieux Monde. L''Artisan devra exercer un long apprentissage avant de maÃ®triser\r\npleinement son art et les services d''un MaÃŽtre-Artisan compÃ©tent sont honorÃ©s Ã  leur juste valeur. La plupart des MaÃ®tres-Artisans ont leurs Ã©choppes en ville, oÃ¹ la demande est suffisamment importante pour leur garantir du travail Ã  plein temps. Les MaÃ®tres-Artisans sont toujours membres de la Guilde correspondant Ã  leur mÃ©tier.', 0);
INSERT INTO career VALUES(165, 142, 'niveau 1', 'sorcier niveau 1', 0);
INSERT INTO career VALUES(166, 0, 'bateleur', 'Les Bateleurs gagnent leur vie en proposant des spectacles et des divertissements dans les cit?s, villages et palais du Vieux Monde. Ils voyagent beaucoup, que ce soit en petites troupes ou seuls, se produisant l? o? ils pensent avoir une chance de gagner quelque argent, ou au moins d''?tre pay?s d''un repas et d''un lit pour la nuit. Seul un tr?s petit nombre d''entre eux deviennent suffisamment c?l?bres pour s''attirer les faveurs de la noblesse, tandis que les autres vivent plus ou moins comme des vagabonds, se produisant o? et quand ils le peuvent avant d''?tre expuls?s par les gardes soup?onneux de la ville.', 1);
INSERT INTO career VALUES(167, 0, 'voleur', '', 1);
INSERT INTO career VALUES(168, 104, 'niveau 1', 'clerc niveau 1', 0);
INSERT INTO career VALUES(169, 104, 'niveau 2', '', 0);
INSERT INTO career VALUES(170, 104, 'niveau 3', '', 0);
INSERT INTO career VALUES(171, 104, 'niveau 4', '', 0);
INSERT INTO career VALUES(172, 142, 'niveau 2', 'sorcier niveau 2', 0);
INSERT INTO career VALUES(173, 142, 'niveau 3', 'sorcier niveau 3', 0);
INSERT INTO career VALUES(174, 142, 'niveau 4', 'sorcier niveau 4', 0);
INSERT INTO career VALUES(175, 144, 'niveau 1', '', 0);
INSERT INTO career VALUES(176, 144, 'niveau 2', '', 0);
INSERT INTO career VALUES(177, 144, 'niveau 3', '', 0);
INSERT INTO career VALUES(178, 144, 'niveau 4', '', 0);
INSERT INTO career VALUES(179, 106, 'niveau 1', 'druide', 0);
INSERT INTO career VALUES(180, 106, 'niveau 2', 'druide', 0);
INSERT INTO career VALUES(181, 106, 'niveau 3', 'druide', 0);
INSERT INTO career VALUES(182, 106, 'niveau 4', 'druide', 0);
INSERT INTO career VALUES(183, 0, 'nÃ©cromant', '', 0);
INSERT INTO career VALUES(184, 183, 'niveau 1', 'n?cromant', 0);
INSERT INTO career VALUES(185, 183, 'niveau 2', 'n?cromant', 0);
INSERT INTO career VALUES(186, 183, 'niveau 3', 'n?cromant', 0);
INSERT INTO career VALUES(187, 183, 'niveau 4', 'n?cromant', 0);
INSERT INTO career VALUES(188, 0, 'dÃ©moniste', '', 0);
INSERT INTO career VALUES(189, 188, 'niveau 1', 'd?moniste', 0);
INSERT INTO career VALUES(190, 188, 'niveau 2', 'd?moniste', 0);
INSERT INTO career VALUES(191, 188, 'niveau 3', 'd?moniste', 0);
INSERT INTO career VALUES(192, 188, 'niveau 4', 'd?moniste', 0);
INSERT INTO career VALUES(193, 0, 'Ã©lÃ©mentaliste', '', 0);
INSERT INTO career VALUES(194, 193, 'niveau 1', '?l?mentaliste', 0);
INSERT INTO career VALUES(195, 193, 'niveau 2', '?l?mentaliste', 0);
INSERT INTO career VALUES(196, 193, 'niveau 3', '?l?mentaliste', 0);
INSERT INTO career VALUES(197, 193, 'niveau 4', '?l?mentaliste', 0);
INSERT INTO career VALUES(198, 0, 'illusionniste', '', 0);
INSERT INTO career VALUES(199, 198, 'niveau 1', 'illusionniste', 0);
INSERT INTO career VALUES(200, 198, 'niveau 2', 'illusionniste', 0);
INSERT INTO career VALUES(201, 198, 'niveau 3', 'illusionniste', 0);
INSERT INTO career VALUES(202, 198, 'niveau 4', 'illusionniste', 0);
INSERT INTO career VALUES(204, 89, 'Test', 'Test', 1);
INSERT INTO career VALUES(206, 0, 'test', 'test', 1);



DROP TABLE IF EXISTS career_exit;
CREATE TABLE IF NOT EXISTS career_exit (
  career_id int(10) unsigned NOT NULL default '0',
  career_id2 int(10) unsigned NOT NULL default '0',
  complement text,
  PRIMARY KEY  (career_id,career_id2)
) ;


INSERT INTO career_exit VALUES(1, 55, NULL);
INSERT INTO career_exit VALUES(76, 105, NULL);
INSERT INTO career_exit VALUES(76, 98, NULL);
INSERT INTO career_exit VALUES(2, 3, NULL);
INSERT INTO career_exit VALUES(74, 98, NULL);
INSERT INTO career_exit VALUES(58, 137, NULL);
INSERT INTO career_exit VALUES(2, 75, NULL);
INSERT INTO career_exit VALUES(3, 144, NULL);
INSERT INTO career_exit VALUES(3, 175, NULL);
INSERT INTO career_exit VALUES(3, 25, NULL);
INSERT INTO career_exit VALUES(25, 98, NULL);
INSERT INTO career_exit VALUES(87, 113, NULL);
INSERT INTO career_exit VALUES(3, 53, NULL);
INSERT INTO career_exit VALUES(3, 75, NULL);
INSERT INTO career_exit VALUES(3, 81, NULL);
INSERT INTO career_exit VALUES(4, 28, NULL);
INSERT INTO career_exit VALUES(4, 164, NULL);
INSERT INTO career_exit VALUES(4, 46, NULL);
INSERT INTO career_exit VALUES(145, 28, NULL);
INSERT INTO career_exit VALUES(145, 46, NULL);
INSERT INTO career_exit VALUES(146, 28, NULL);
INSERT INTO career_exit VALUES(146, 46, NULL);
INSERT INTO career_exit VALUES(147, 28, NULL);
INSERT INTO career_exit VALUES(147, 46, NULL);
INSERT INTO career_exit VALUES(148, 28, NULL);
INSERT INTO career_exit VALUES(148, 46, NULL);
INSERT INTO career_exit VALUES(149, 28, NULL);
INSERT INTO career_exit VALUES(149, 46, NULL);
INSERT INTO career_exit VALUES(150, 28, NULL);
INSERT INTO career_exit VALUES(150, 46, NULL);
INSERT INTO career_exit VALUES(151, 28, NULL);
INSERT INTO career_exit VALUES(151, 46, NULL);
INSERT INTO career_exit VALUES(152, 28, NULL);
INSERT INTO career_exit VALUES(152, 46, NULL);
INSERT INTO career_exit VALUES(153, 28, NULL);
INSERT INTO career_exit VALUES(153, 46, NULL);
INSERT INTO career_exit VALUES(154, 28, NULL);
INSERT INTO career_exit VALUES(154, 46, NULL);
INSERT INTO career_exit VALUES(155, 28, NULL);
INSERT INTO career_exit VALUES(155, 46, NULL);
INSERT INTO career_exit VALUES(156, 28, NULL);
INSERT INTO career_exit VALUES(156, 46, NULL);
INSERT INTO career_exit VALUES(157, 127, NULL);
INSERT INTO career_exit VALUES(157, 46, NULL);
INSERT INTO career_exit VALUES(158, 28, NULL);
INSERT INTO career_exit VALUES(158, 46, NULL);
INSERT INTO career_exit VALUES(159, 28, NULL);
INSERT INTO career_exit VALUES(159, 46, NULL);
INSERT INTO career_exit VALUES(160, 28, NULL);
INSERT INTO career_exit VALUES(160, 46, NULL);
INSERT INTO career_exit VALUES(161, 28, NULL);
INSERT INTO career_exit VALUES(161, 46, NULL);
INSERT INTO career_exit VALUES(162, 28, NULL);
INSERT INTO career_exit VALUES(162, 46, NULL);
INSERT INTO career_exit VALUES(163, 28, NULL);
INSERT INTO career_exit VALUES(163, 46, NULL);
INSERT INTO career_exit VALUES(145, 115, NULL);
INSERT INTO career_exit VALUES(146, 116, NULL);
INSERT INTO career_exit VALUES(147, 117, NULL);
INSERT INTO career_exit VALUES(148, 118, NULL);
INSERT INTO career_exit VALUES(149, 119, NULL);
INSERT INTO career_exit VALUES(150, 120, NULL);
INSERT INTO career_exit VALUES(151, 121, NULL);
INSERT INTO career_exit VALUES(152, 122, NULL);
INSERT INTO career_exit VALUES(153, 123, NULL);
INSERT INTO career_exit VALUES(154, 124, NULL);
INSERT INTO career_exit VALUES(155, 125, NULL);
INSERT INTO career_exit VALUES(156, 126, NULL);
INSERT INTO career_exit VALUES(157, 28, NULL);
INSERT INTO career_exit VALUES(158, 128, NULL);
INSERT INTO career_exit VALUES(159, 129, NULL);
INSERT INTO career_exit VALUES(160, 130, NULL);
INSERT INTO career_exit VALUES(161, 131, NULL);
INSERT INTO career_exit VALUES(162, 132, NULL);
INSERT INTO career_exit VALUES(163, 133, NULL);
INSERT INTO career_exit VALUES(5, 25, NULL);
INSERT INTO career_exit VALUES(62, 98, NULL);
INSERT INTO career_exit VALUES(5, 53, NULL);
INSERT INTO career_exit VALUES(5, 57, NULL);
INSERT INTO career_exit VALUES(5, 71, NULL);
INSERT INTO career_exit VALUES(5, 81, NULL);
INSERT INTO career_exit VALUES(5, 165, NULL);
INSERT INTO career_exit VALUES(6, 38, NULL);
INSERT INTO career_exit VALUES(6, 55, NULL);
INSERT INTO career_exit VALUES(6, 60, NULL);
INSERT INTO career_exit VALUES(166, 166, NULL);
INSERT INTO career_exit VALUES(7, 166, NULL);
INSERT INTO career_exit VALUES(8, 166, NULL);
INSERT INTO career_exit VALUES(9, 166, NULL);
INSERT INTO career_exit VALUES(10, 166, NULL);
INSERT INTO career_exit VALUES(11, 166, NULL);
INSERT INTO career_exit VALUES(12, 166, NULL);
INSERT INTO career_exit VALUES(13, 166, NULL);
INSERT INTO career_exit VALUES(14, 166, NULL);
INSERT INTO career_exit VALUES(58, 98, NULL);
INSERT INTO career_exit VALUES(15, 166, NULL);
INSERT INTO career_exit VALUES(171, 105, NULL);
INSERT INTO career_exit VALUES(16, 166, NULL);
INSERT INTO career_exit VALUES(17, 166, NULL);
INSERT INTO career_exit VALUES(61, 139, NULL);
INSERT INTO career_exit VALUES(18, 166, NULL);
INSERT INTO career_exit VALUES(137, 58, NULL);
INSERT INTO career_exit VALUES(19, 166, NULL);
INSERT INTO career_exit VALUES(20, 166, NULL);
INSERT INTO career_exit VALUES(21, 166, NULL);
INSERT INTO career_exit VALUES(22, 166, NULL);
INSERT INTO career_exit VALUES(22, 139, NULL);
INSERT INTO career_exit VALUES(23, 166, NULL);
INSERT INTO career_exit VALUES(24, 166, NULL);
INSERT INTO career_exit VALUES(25, 166, NULL);
INSERT INTO career_exit VALUES(57, 98, NULL);
INSERT INTO career_exit VALUES(26, 166, NULL);
INSERT INTO career_exit VALUES(26, 62, NULL);
INSERT INTO career_exit VALUES(27, 166, NULL);
INSERT INTO career_exit VALUES(69, 91, NULL);
INSERT INTO career_exit VALUES(28, 46, NULL);
INSERT INTO career_exit VALUES(28, 55, NULL);
INSERT INTO career_exit VALUES(83, 135, NULL);
INSERT INTO career_exit VALUES(17, 139, NULL);
INSERT INTO career_exit VALUES(88, 140, NULL);
INSERT INTO career_exit VALUES(29, 66, NULL);
INSERT INTO career_exit VALUES(29, 55, NULL);
INSERT INTO career_exit VALUES(82, 108, NULL);
INSERT INTO career_exit VALUES(204, 108, NULL);
INSERT INTO career_exit VALUES(30, 55, NULL);
INSERT INTO career_exit VALUES(30, 66, NULL);
INSERT INTO career_exit VALUES(114, 96, NULL);
INSERT INTO career_exit VALUES(31, 28, NULL);
INSERT INTO career_exit VALUES(55, 114, NULL);
INSERT INTO career_exit VALUES(79, 135, NULL);
INSERT INTO career_exit VALUES(31, 63, NULL);
INSERT INTO career_exit VALUES(31, 80, NULL);
INSERT INTO career_exit VALUES(68, 91, NULL);
INSERT INTO career_exit VALUES(75, 108, NULL);
INSERT INTO career_exit VALUES(33, 68, NULL);
INSERT INTO career_exit VALUES(78, 90, NULL);
INSERT INTO career_exit VALUES(33, 86, NULL);
INSERT INTO career_exit VALUES(33, 1, NULL);
INSERT INTO career_exit VALUES(33, 64, NULL);
INSERT INTO career_exit VALUES(78, 134, NULL);
INSERT INTO career_exit VALUES(33, 55, NULL);
INSERT INTO career_exit VALUES(140, 167, NULL);
INSERT INTO career_exit VALUES(34, 46, NULL);
INSERT INTO career_exit VALUES(34, 55, NULL);
INSERT INTO career_exit VALUES(87, 140, NULL);
INSERT INTO career_exit VALUES(34, 82, NULL);
INSERT INTO career_exit VALUES(79, 102, NULL);
INSERT INTO career_exit VALUES(35, 38, NULL);
INSERT INTO career_exit VALUES(35, 71, NULL);
INSERT INTO career_exit VALUES(36, 28, NULL);
INSERT INTO career_exit VALUES(72, 93, NULL);
INSERT INTO career_exit VALUES(36, 96, NULL);
INSERT INTO career_exit VALUES(36, 31, NULL);
INSERT INTO career_exit VALUES(101, 96, NULL);
INSERT INTO career_exit VALUES(63, 135, NULL);
INSERT INTO career_exit VALUES(139, 140, NULL);
INSERT INTO career_exit VALUES(138, 93, NULL);
INSERT INTO career_exit VALUES(38, 60, NULL);
INSERT INTO career_exit VALUES(38, 72, NULL);
INSERT INTO career_exit VALUES(71, 140, NULL);
INSERT INTO career_exit VALUES(39, 35, NULL);
INSERT INTO career_exit VALUES(67, 205, NULL);
INSERT INTO career_exit VALUES(40, 1, NULL);
INSERT INTO career_exit VALUES(40, 47, NULL);
INSERT INTO career_exit VALUES(40, 78, NULL);
INSERT INTO career_exit VALUES(53, 140, NULL);
INSERT INTO career_exit VALUES(41, 3, NULL);
INSERT INTO career_exit VALUES(100, 96, NULL);
INSERT INTO career_exit VALUES(79, 101, NULL);
INSERT INTO career_exit VALUES(63, 102, NULL);
INSERT INTO career_exit VALUES(41, 35, NULL);
INSERT INTO career_exit VALUES(41, 127, NULL);
INSERT INTO career_exit VALUES(41, 128, NULL);
INSERT INTO career_exit VALUES(42, 204, NULL);
INSERT INTO career_exit VALUES(143, 103, NULL);
INSERT INTO career_exit VALUES(43, 1, NULL);
INSERT INTO career_exit VALUES(43, 90, NULL);
INSERT INTO career_exit VALUES(78, 109, NULL);
INSERT INTO career_exit VALUES(43, 53, NULL);
INSERT INTO career_exit VALUES(72, 138, NULL);
INSERT INTO career_exit VALUES(43, 84, NULL);
INSERT INTO career_exit VALUES(44, 53, NULL);
INSERT INTO career_exit VALUES(44, 98, NULL);
INSERT INTO career_exit VALUES(45, 96, NULL);
INSERT INTO career_exit VALUES(45, 97, NULL);
INSERT INTO career_exit VALUES(45, 31, NULL);
INSERT INTO career_exit VALUES(45, 68, 'Halfelings except');
INSERT INTO career_exit VALUES(45, 139, NULL);
INSERT INTO career_exit VALUES(46, 28, NULL);
INSERT INTO career_exit VALUES(46, 31, NULL);
INSERT INTO career_exit VALUES(96, 99, NULL);
INSERT INTO career_exit VALUES(46, 63, NULL);
INSERT INTO career_exit VALUES(67, 108, NULL);
INSERT INTO career_exit VALUES(47, 114, NULL);
INSERT INTO career_exit VALUES(47, 64, NULL);
INSERT INTO career_exit VALUES(47, 66, NULL);
INSERT INTO career_exit VALUES(47, 76, NULL);
INSERT INTO career_exit VALUES(65, 108, NULL);
INSERT INTO career_exit VALUES(48, 55, NULL);
INSERT INTO career_exit VALUES(48, 66, NULL);
INSERT INTO career_exit VALUES(48, 76, NULL);
INSERT INTO career_exit VALUES(67, 55, NULL);
INSERT INTO career_exit VALUES(49, 103, NULL);
INSERT INTO career_exit VALUES(80, 107, NULL);
INSERT INTO career_exit VALUES(49, 43, NULL);
INSERT INTO career_exit VALUES(49, 53, NULL);
INSERT INTO career_exit VALUES(49, 57, NULL);
INSERT INTO career_exit VALUES(50, 46, NULL);
INSERT INTO career_exit VALUES(50, 92, NULL);
INSERT INTO career_exit VALUES(51, 28, NULL);
INSERT INTO career_exit VALUES(51, 97, NULL);
INSERT INTO career_exit VALUES(51, 31, NULL);
INSERT INTO career_exit VALUES(113, 140, NULL);
INSERT INTO career_exit VALUES(51, 35, NULL);
INSERT INTO career_exit VALUES(73, 136, NULL);
INSERT INTO career_exit VALUES(55, 91, NULL);
INSERT INTO career_exit VALUES(52, 108, NULL);
INSERT INTO career_exit VALUES(52, 63, NULL);
INSERT INTO career_exit VALUES(53, 46, NULL);
INSERT INTO career_exit VALUES(86, 140, NULL);
INSERT INTO career_exit VALUES(81, 44, NULL);
INSERT INTO career_exit VALUES(54, 66, NULL);
INSERT INTO career_exit VALUES(52, 91, NULL);
INSERT INTO career_exit VALUES(63, 99, NULL);
INSERT INTO career_exit VALUES(31, 114, NULL);
INSERT INTO career_exit VALUES(55, 47, NULL);
INSERT INTO career_exit VALUES(55, 83, NULL);
INSERT INTO career_exit VALUES(56, 168, NULL);
INSERT INTO career_exit VALUES(56, 1, NULL);
INSERT INTO career_exit VALUES(84, 98, NULL);
INSERT INTO career_exit VALUES(74, 1, NULL);
INSERT INTO career_exit VALUES(14, 98, NULL);
INSERT INTO career_exit VALUES(44, 137, NULL);
INSERT INTO career_exit VALUES(58, 18, NULL);
INSERT INTO career_exit VALUES(5, 98, NULL);
INSERT INTO career_exit VALUES(59, 28, NULL);
INSERT INTO career_exit VALUES(63, 100, NULL);
INSERT INTO career_exit VALUES(96, 100, NULL);
INSERT INTO career_exit VALUES(79, 100, NULL);
INSERT INTO career_exit VALUES(59, 46, NULL);
INSERT INTO career_exit VALUES(60, 6, NULL);
INSERT INTO career_exit VALUES(60, 94, NULL);
INSERT INTO career_exit VALUES(60, 38, NULL);
INSERT INTO career_exit VALUES(60, 135, NULL);
INSERT INTO career_exit VALUES(60, 72, NULL);
INSERT INTO career_exit VALUES(60, 76, NULL);
INSERT INTO career_exit VALUES(61, 46, NULL);
INSERT INTO career_exit VALUES(61, 77, NULL);
INSERT INTO career_exit VALUES(84, 139, NULL);
INSERT INTO career_exit VALUES(3, 98, NULL);
INSERT INTO career_exit VALUES(63, 96, NULL);
INSERT INTO career_exit VALUES(135, 99, NULL);
INSERT INTO career_exit VALUES(59, 100, NULL);
INSERT INTO career_exit VALUES(96, 101, NULL);
INSERT INTO career_exit VALUES(41, 102, NULL);
INSERT INTO career_exit VALUES(63, 35, NULL);
INSERT INTO career_exit VALUES(50, 135, NULL);
INSERT INTO career_exit VALUES(64, 28, NULL);
INSERT INTO career_exit VALUES(64, 55, NULL);
INSERT INTO career_exit VALUES(64, 63, NULL);
INSERT INTO career_exit VALUES(65, 38, NULL);
INSERT INTO career_exit VALUES(47, 108, NULL);
INSERT INTO career_exit VALUES(65, 55, NULL);
INSERT INTO career_exit VALUES(66, 29, NULL);
INSERT INTO career_exit VALUES(66, 30, NULL);
INSERT INTO career_exit VALUES(66, 47, NULL);
INSERT INTO career_exit VALUES(66, 55, NULL);
INSERT INTO career_exit VALUES(66, 82, NULL);
INSERT INTO career_exit VALUES(66, 179, NULL);
INSERT INTO career_exit VALUES(39, 108, NULL);
INSERT INTO career_exit VALUES(67, 83, NULL);
INSERT INTO career_exit VALUES(67, 66, NULL);
INSERT INTO career_exit VALUES(67, 64, NULL);
INSERT INTO career_exit VALUES(48, 83, NULL);
INSERT INTO career_exit VALUES(107, 91, NULL);
INSERT INTO career_exit VALUES(68, 55, NULL);
INSERT INTO career_exit VALUES(68, 64, NULL);
INSERT INTO career_exit VALUES(32, 91, NULL);
INSERT INTO career_exit VALUES(69, 55, NULL);
INSERT INTO career_exit VALUES(69, 86, NULL);
INSERT INTO career_exit VALUES(70, 72, NULL);
INSERT INTO career_exit VALUES(70, 60, NULL);
INSERT INTO career_exit VALUES(70, 38, NULL);
INSERT INTO career_exit VALUES(70, 37, NULL);
INSERT INTO career_exit VALUES(71, 35, NULL);
INSERT INTO career_exit VALUES(71, 46, NULL);
INSERT INTO career_exit VALUES(71, 77, NULL);
INSERT INTO career_exit VALUES(38, 140, NULL);
INSERT INTO career_exit VALUES(94, 138, NULL);
INSERT INTO career_exit VALUES(72, 38, NULL);
INSERT INTO career_exit VALUES(111, 138, NULL);
INSERT INTO career_exit VALUES(72, 76, NULL);
INSERT INTO career_exit VALUES(51, 136, NULL);
INSERT INTO career_exit VALUES(75, 35, 'Nains seulement');
INSERT INTO career_exit VALUES(170, 105, NULL);
INSERT INTO career_exit VALUES(75, 71, NULL);
INSERT INTO career_exit VALUES(75, 79, NULL);
INSERT INTO career_exit VALUES(2, 98, NULL);
INSERT INTO career_exit VALUES(169, 105, NULL);
INSERT INTO career_exit VALUES(77, 28, NULL);
INSERT INTO career_exit VALUES(77, 46, NULL);
INSERT INTO career_exit VALUES(77, 50, NULL);
INSERT INTO career_exit VALUES(77, 81, NULL);
INSERT INTO career_exit VALUES(33, 90, NULL);
INSERT INTO career_exit VALUES(43, 109, NULL);
INSERT INTO career_exit VALUES(78, 112, NULL);
INSERT INTO career_exit VALUES(37, 134, NULL);
INSERT INTO career_exit VALUES(79, 28, NULL);
INSERT INTO career_exit VALUES(79, 96, NULL);
INSERT INTO career_exit VALUES(79, 31, NULL);
INSERT INTO career_exit VALUES(41, 100, NULL);
INSERT INTO career_exit VALUES(63, 101, NULL);
INSERT INTO career_exit VALUES(35, 102, NULL);
INSERT INTO career_exit VALUES(36, 135, NULL);
INSERT INTO career_exit VALUES(80, 28, NULL);
INSERT INTO career_exit VALUES(80, 97, NULL);
INSERT INTO career_exit VALUES(80, 31, NULL);
INSERT INTO career_exit VALUES(49, 107, NULL);
INSERT INTO career_exit VALUES(54, 44, NULL);
INSERT INTO career_exit VALUES(81, 46, NULL);
INSERT INTO career_exit VALUES(81, 77, NULL);
INSERT INTO career_exit VALUES(32, 108, NULL);
INSERT INTO career_exit VALUES(82, 55, NULL);
INSERT INTO career_exit VALUES(82, 66, NULL);
INSERT INTO career_exit VALUES(31, 135, NULL);
INSERT INTO career_exit VALUES(83, 55, NULL);
INSERT INTO career_exit VALUES(84, 46, NULL);
INSERT INTO career_exit VALUES(84, 55, NULL);
INSERT INTO career_exit VALUES(1, 98, NULL);
INSERT INTO career_exit VALUES(85, 46, NULL);
INSERT INTO career_exit VALUES(37, 140, NULL);
INSERT INTO career_exit VALUES(86, 37, NULL);
INSERT INTO career_exit VALUES(34, 140, NULL);
INSERT INTO career_exit VALUES(86, 78, NULL);
INSERT INTO career_exit VALUES(112, 113, NULL);
INSERT INTO career_exit VALUES(85, 140, NULL);
INSERT INTO career_exit VALUES(88, 46, NULL);
INSERT INTO career_exit VALUES(28, 140, NULL);
INSERT INTO career_exit VALUES(175, 165, NULL);
INSERT INTO career_exit VALUES(176, 165, NULL);
INSERT INTO career_exit VALUES(177, 165, NULL);
INSERT INTO career_exit VALUES(178, 165, NULL);
INSERT INTO career_exit VALUES(144, 165, NULL);
INSERT INTO career_exit VALUES(144, 144, NULL);
INSERT INTO career_exit VALUES(175, 176, NULL);
INSERT INTO career_exit VALUES(176, 177, NULL);
INSERT INTO career_exit VALUES(177, 178, NULL);
INSERT INTO career_exit VALUES(89, 63, NULL);
INSERT INTO career_exit VALUES(143, 95, NULL);
INSERT INTO career_exit VALUES(168, 105, NULL);
INSERT INTO career_exit VALUES(33, 134, NULL);
INSERT INTO career_exit VALUES(90, 76, NULL);
INSERT INTO career_exit VALUES(91, 96, NULL);
INSERT INTO career_exit VALUES(97, 107, NULL);
INSERT INTO career_exit VALUES(55, 99, NULL);
INSERT INTO career_exit VALUES(92, 167, NULL);
INSERT INTO career_exit VALUES(28, 139, NULL);
INSERT INTO career_exit VALUES(51, 99, NULL);
INSERT INTO career_exit VALUES(134, 111, NULL);
INSERT INTO career_exit VALUES(138, 111, NULL);
INSERT INTO career_exit VALUES(94, 93, NULL);
INSERT INTO career_exit VALUES(95, 97, NULL);
INSERT INTO career_exit VALUES(95, 31, NULL);
INSERT INTO career_exit VALUES(46, 99, NULL);
INSERT INTO career_exit VALUES(36, 100, NULL);
INSERT INTO career_exit VALUES(41, 101, NULL);
INSERT INTO career_exit VALUES(42, 103, NULL);
INSERT INTO career_exit VALUES(109, 111, NULL);
INSERT INTO career_exit VALUES(95, 57, NULL);
INSERT INTO career_exit VALUES(95, 80, NULL);
INSERT INTO career_exit VALUES(96, 95, NULL);
INSERT INTO career_exit VALUES(96, 97, NULL);
INSERT INTO career_exit VALUES(96, 31, NULL);
INSERT INTO career_exit VALUES(114, 89, NULL);
INSERT INTO career_exit VALUES(102, 101, NULL);
INSERT INTO career_exit VALUES(102, 100, NULL);
INSERT INTO career_exit VALUES(96, 57, NULL);
INSERT INTO career_exit VALUES(96, 80, NULL);
INSERT INTO career_exit VALUES(110, 89, NULL);
INSERT INTO career_exit VALUES(97, 96, NULL);
INSERT INTO career_exit VALUES(91, 107, NULL);
INSERT INTO career_exit VALUES(171, 141, NULL);
INSERT INTO career_exit VALUES(141, 143, NULL);
INSERT INTO career_exit VALUES(15, 105, NULL);
INSERT INTO career_exit VALUES(99, 105, NULL);
INSERT INTO career_exit VALUES(99, 96, NULL);
INSERT INTO career_exit VALUES(98, 105, NULL);
INSERT INTO career_exit VALUES(99, 108, NULL);
INSERT INTO career_exit VALUES(99, 205, NULL);
INSERT INTO career_exit VALUES(100, 36, NULL);
INSERT INTO career_exit VALUES(100, 102, NULL);
INSERT INTO career_exit VALUES(100, 101, NULL);
INSERT INTO career_exit VALUES(101, 36, NULL);
INSERT INTO career_exit VALUES(101, 100, NULL);
INSERT INTO career_exit VALUES(95, 100, NULL);
INSERT INTO career_exit VALUES(95, 101, NULL);
INSERT INTO career_exit VALUES(102, 63, NULL);
INSERT INTO career_exit VALUES(102, 41, NULL);
INSERT INTO career_exit VALUES(102, 35, NULL);
INSERT INTO career_exit VALUES(103, 143, NULL);
INSERT INTO career_exit VALUES(103, 95, NULL);
INSERT INTO career_exit VALUES(168, 169, NULL);
INSERT INTO career_exit VALUES(30, 108, NULL);
INSERT INTO career_exit VALUES(170, 141, NULL);
INSERT INTO career_exit VALUES(169, 170, NULL);
INSERT INTO career_exit VALUES(111, 110, NULL);
INSERT INTO career_exit VALUES(169, 141, NULL);
INSERT INTO career_exit VALUES(170, 171, NULL);
INSERT INTO career_exit VALUES(90, 134, NULL);
INSERT INTO career_exit VALUES(168, 141, NULL);
INSERT INTO career_exit VALUES(90, 105, NULL);
INSERT INTO career_exit VALUES(97, 141, NULL);
INSERT INTO career_exit VALUES(179, 180, NULL);
INSERT INTO career_exit VALUES(180, 181, NULL);
INSERT INTO career_exit VALUES(181, 182, NULL);
INSERT INTO career_exit VALUES(205, 99, NULL);
INSERT INTO career_exit VALUES(107, 96, NULL);
INSERT INTO career_exit VALUES(28, 91, NULL);
INSERT INTO career_exit VALUES(107, 89, NULL);
INSERT INTO career_exit VALUES(108, 99, NULL);
INSERT INTO career_exit VALUES(205, 111, NULL);
INSERT INTO career_exit VALUES(1, 105, NULL);
INSERT INTO career_exit VALUES(109, 134, NULL);
INSERT INTO career_exit VALUES(31, 89, NULL);
INSERT INTO career_exit VALUES(111, 94, NULL);
INSERT INTO career_exit VALUES(43, 138, NULL);
INSERT INTO career_exit VALUES(98, 110, NULL);
INSERT INTO career_exit VALUES(111, 95, NULL);
INSERT INTO career_exit VALUES(112, 167, NULL);
INSERT INTO career_exit VALUES(3, 113, NULL);
INSERT INTO career_exit VALUES(113, 84, NULL);
INSERT INTO career_exit VALUES(40, 84, NULL);
INSERT INTO career_exit VALUES(97, 89, NULL);
INSERT INTO career_exit VALUES(105, 99, NULL);
INSERT INTO career_exit VALUES(114, 99, NULL);
INSERT INTO career_exit VALUES(115, 79, NULL);
INSERT INTO career_exit VALUES(108, 111, NULL);
INSERT INTO career_exit VALUES(135, 60, NULL);
INSERT INTO career_exit VALUES(95, 99, NULL);
INSERT INTO career_exit VALUES(137, 3, NULL);
INSERT INTO career_exit VALUES(18, 58, NULL);
INSERT INTO career_exit VALUES(36, 93, NULL);
INSERT INTO career_exit VALUES(95, 111, NULL);
INSERT INTO career_exit VALUES(92, 99, NULL);
INSERT INTO career_exit VALUES(139, 99, NULL);
INSERT INTO career_exit VALUES(34, 37, NULL);
INSERT INTO career_exit VALUES(140, 37, NULL);
INSERT INTO career_exit VALUES(141, 104, NULL);
INSERT INTO career_exit VALUES(143, 141, NULL);
INSERT INTO career_exit VALUES(141, 56, NULL);
INSERT INTO career_exit VALUES(143, 56, NULL);
INSERT INTO career_exit VALUES(95, 103, NULL);
INSERT INTO career_exit VALUES(97, 143, NULL);
INSERT INTO career_exit VALUES(91, 99, NULL);
INSERT INTO career_exit VALUES(165, 172, NULL);
INSERT INTO career_exit VALUES(165, 189, NULL);
INSERT INTO career_exit VALUES(165, 194, NULL);
INSERT INTO career_exit VALUES(165, 199, NULL);
INSERT INTO career_exit VALUES(165, 184, NULL);
INSERT INTO career_exit VALUES(172, 173, NULL);
INSERT INTO career_exit VALUES(172, 189, NULL);
INSERT INTO career_exit VALUES(172, 194, NULL);
INSERT INTO career_exit VALUES(172, 199, NULL);
INSERT INTO career_exit VALUES(172, 184, NULL);
INSERT INTO career_exit VALUES(173, 174, NULL);
INSERT INTO career_exit VALUES(173, 189, NULL);
INSERT INTO career_exit VALUES(173, 194, NULL);
INSERT INTO career_exit VALUES(173, 199, NULL);
INSERT INTO career_exit VALUES(173, 184, NULL);
INSERT INTO career_exit VALUES(174, 189, NULL);
INSERT INTO career_exit VALUES(174, 194, NULL);
INSERT INTO career_exit VALUES(174, 199, NULL);
INSERT INTO career_exit VALUES(174, 184, NULL);
INSERT INTO career_exit VALUES(189, 190, NULL);
INSERT INTO career_exit VALUES(189, 172, NULL);
INSERT INTO career_exit VALUES(189, 199, NULL);
INSERT INTO career_exit VALUES(189, 184, NULL);
INSERT INTO career_exit VALUES(190, 191, NULL);
INSERT INTO career_exit VALUES(190, 172, NULL);
INSERT INTO career_exit VALUES(190, 199, NULL);
INSERT INTO career_exit VALUES(190, 184, NULL);
INSERT INTO career_exit VALUES(191, 192, NULL);
INSERT INTO career_exit VALUES(191, 172, NULL);
INSERT INTO career_exit VALUES(191, 199, NULL);
INSERT INTO career_exit VALUES(191, 184, NULL);
INSERT INTO career_exit VALUES(192, 172, NULL);
INSERT INTO career_exit VALUES(192, 199, NULL);
INSERT INTO career_exit VALUES(192, 184, NULL);
INSERT INTO career_exit VALUES(184, 185, NULL);
INSERT INTO career_exit VALUES(184, 189, NULL);
INSERT INTO career_exit VALUES(184, 199, NULL);
INSERT INTO career_exit VALUES(184, 172, NULL);
INSERT INTO career_exit VALUES(185, 186, NULL);
INSERT INTO career_exit VALUES(185, 189, NULL);
INSERT INTO career_exit VALUES(185, 199, NULL);
INSERT INTO career_exit VALUES(185, 172, NULL);
INSERT INTO career_exit VALUES(186, 187, NULL);
INSERT INTO career_exit VALUES(186, 189, NULL);
INSERT INTO career_exit VALUES(186, 199, NULL);
INSERT INTO career_exit VALUES(186, 172, NULL);
INSERT INTO career_exit VALUES(187, 189, NULL);
INSERT INTO career_exit VALUES(187, 199, NULL);
INSERT INTO career_exit VALUES(187, 172, NULL);
INSERT INTO career_exit VALUES(194, 195, NULL);
INSERT INTO career_exit VALUES(194, 199, NULL);
INSERT INTO career_exit VALUES(194, 172, NULL);
INSERT INTO career_exit VALUES(195, 196, NULL);
INSERT INTO career_exit VALUES(195, 199, NULL);
INSERT INTO career_exit VALUES(195, 172, NULL);
INSERT INTO career_exit VALUES(196, 197, NULL);
INSERT INTO career_exit VALUES(196, 199, NULL);
INSERT INTO career_exit VALUES(196, 172, NULL);
INSERT INTO career_exit VALUES(197, 199, NULL);
INSERT INTO career_exit VALUES(197, 172, NULL);
INSERT INTO career_exit VALUES(199, 200, NULL);
INSERT INTO career_exit VALUES(199, 189, NULL);
INSERT INTO career_exit VALUES(199, 194, NULL);
INSERT INTO career_exit VALUES(199, 184, NULL);
INSERT INTO career_exit VALUES(199, 172, NULL);
INSERT INTO career_exit VALUES(200, 201, NULL);
INSERT INTO career_exit VALUES(200, 189, NULL);
INSERT INTO career_exit VALUES(200, 194, NULL);
INSERT INTO career_exit VALUES(200, 184, NULL);
INSERT INTO career_exit VALUES(200, 172, NULL);
INSERT INTO career_exit VALUES(201, 202, NULL);
INSERT INTO career_exit VALUES(201, 189, NULL);
INSERT INTO career_exit VALUES(201, 194, NULL);
INSERT INTO career_exit VALUES(201, 184, NULL);
INSERT INTO career_exit VALUES(201, 172, NULL);
INSERT INTO career_exit VALUES(202, 189, NULL);
INSERT INTO career_exit VALUES(202, 194, NULL);
INSERT INTO career_exit VALUES(202, 184, NULL);
INSERT INTO career_exit VALUES(202, 172, NULL);
INSERT INTO career_exit VALUES(204, 42, NULL);
INSERT INTO career_exit VALUES(29, 205, NULL);
INSERT INTO career_exit VALUES(42, 95, NULL);
INSERT INTO career_exit VALUES(108, 96, NULL);
INSERT INTO career_exit VALUES(29, 108, NULL);
INSERT INTO career_exit VALUES(48, 205, NULL);
INSERT INTO career_exit VALUES(30, 205, NULL);
INSERT INTO career_exit VALUES(99, 91, NULL);
INSERT INTO career_exit VALUES(32, 205, NULL);
INSERT INTO career_exit VALUES(39, 205, NULL);
INSERT INTO career_exit VALUES(47, 205, NULL);
INSERT INTO career_exit VALUES(52, 205, NULL);
INSERT INTO career_exit VALUES(65, 205, NULL);
INSERT INTO career_exit VALUES(48, 108, NULL);
INSERT INTO career_exit VALUES(75, 205, NULL);
INSERT INTO career_exit VALUES(204, 205, NULL);
INSERT INTO career_exit VALUES(82, 205, NULL);
INSERT INTO career_exit VALUES(205, 31, NULL);
INSERT INTO career_exit VALUES(89, 99, NULL);
INSERT INTO career_exit VALUES(93, 111, NULL);
INSERT INTO career_exit VALUES(205, 96, NULL);
INSERT INTO career_exit VALUES(205, 204, NULL);
INSERT INTO career_exit VALUES(108, 204, NULL);
INSERT INTO career_exit VALUES(108, 31, NULL);
INSERT INTO career_exit VALUES(105, 63, NULL);
INSERT INTO career_exit VALUES(37, 87, NULL);
INSERT INTO career_exit VALUES(33, 87, NULL);
INSERT INTO career_exit VALUES(2, 137, NULL);
INSERT INTO career_exit VALUES(44, 81, NULL);
INSERT INTO career_exit VALUES(69, 64, NULL);
INSERT INTO career_exit VALUES(28, 135, NULL);
INSERT INTO career_exit VALUES(50, 77, NULL);
INSERT INTO career_exit VALUES(92, 139, NULL);
INSERT INTO career_exit VALUES(135, 96, NULL);
INSERT INTO career_exit VALUES(89, 141, NULL);
INSERT INTO career_exit VALUES(93, 72, NULL);
INSERT INTO career_exit VALUES(94, 72, NULL);
INSERT INTO career_exit VALUES(144, 206, NULL);
INSERT INTO career_exit VALUES(1, 206, NULL);
INSERT INTO career_exit VALUES(8, 206, NULL);
INSERT INTO career_exit VALUES(7, 206, NULL);
INSERT INTO career_exit VALUES(206, 8, NULL);
INSERT INTO career_exit VALUES(206, 1, NULL);
INSERT INTO career_exit VALUES(206, 144, NULL);
INSERT INTO career_exit VALUES(206, 7, NULL);











DROP TABLE IF EXISTS casting;
CREATE TABLE IF NOT EXISTS casting (
  casting_id int(10) unsigned NOT NULL auto_increment,
  magic_level_id int(10) unsigned default NULL,
  magic_field_id int(10) unsigned NOT NULL default '0',
  casting_name varchar(255) default NULL,
  casting_desc text,
  casting_preparation varchar(255) default NULL,
  casting_mp int(10) unsigned default NULL,
  casting_range varchar(255) default NULL,
  casting_duration varchar(255) default NULL,
  casting_area varchar(255) default NULL,
  PRIMARY KEY  (casting_id)
)    ;


INSERT INTO casting VALUES(1, NULL, 7, 'alarme magique', 'Ce sort peut ?tre lanc? sur n''importe quel endroit choisi par l''Enchanteur. Si une ou plusieurs cr?atures passent ? moins d''un m?tre de l?, le personnage sera averti de leur pr?sence - m?me si celui-ci dort. Il n''aura aucun moyen de conna?tre ce qui se passe mais saura que quelque chose a d?clench? le sort, sans plus de d?tails. L''Enchanteur ne peut avoir qu''un seul sort de ce type en fonction ? la fois et celui-ci dure jusqu''? ce qu''il soit d?clench? ou que l''Enchanteur en incante un autre.', '', 2, 'Toucher', 'jusqu''au d?clenchement', '1 m?tre');







DROP TABLE IF EXISTS characteristic;
CREATE TABLE IF NOT EXISTS characteristic (
  characteristic_id int(11) NOT NULL auto_increment,
  characteristic_name varchar(45) NOT NULL default '',
  characteristic_desc text,
  characteristic_abbr varchar(20) NOT NULL default '',
  characteristic_max varchar(20) NOT NULL default 'N/A',
  characteristic_order int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (characteristic_id),
  UNIQUE KEY characteristic_id (characteristic_id),
  UNIQUE KEY characteristic_id_2 (characteristic_id)
)    ;


INSERT INTO characteristic VALUES(1, 'mouvement', 'Ce chiffre sert ? d?terminer la vitesse d''une cr?ature dans n''importe quelle situation. 4 est un M moyen pour un humain, ce qui ?quivaut ? une distance de 8 m?tres pour 10 secondes en se d?pla?ant ? une allure prudente. En comparaison, 8 est le M moyen d''un cheval.', 'M', 'N/A', 1);
INSERT INTO characteristic VALUES(2, 'capacit? de combat', 'C''est l''aptitude d''un personnage ? lutter au corps ? corps ; cela refl?te aussi son agressivit? naturelle, sa disposition et son entra?nement. Sa valeur est exprim?e en pourcentage ; c''est-?-dire de 01 ? 100%. Plus le Combat est ?lev?, plus il est facile de porter un coup dans un combat au contact, ou de parer celui d''un adversaire.', 'CC', '100', 2);
INSERT INTO characteristic VALUES(3, 'capacit? de tir', 'C''est l''aptitude d''un personnage ? utiliser des armes ? projectiles, ? lancer un objet, ou (dans le cas de certaines cr?atures) ? cracher du venin. Comme le Combat, son score correspond ? un pourcentage et plus le score en Tir est ?lev? plus il est facile de toucher la cible.', 'CT', '100', 3);
INSERT INTO characteristic VALUES(4, 'force', 'C''est une indication de la puissance d''une cr?ature et des d?g?ts qu''elle peut infliger en combat. Les personnages disposant d''une grande force causeront d''importants dommages, alors que ceux qui ne disposent que d''une faible F n''en feront que de relativement petits. F est un chiffre compris entre 1 et 10.', 'F', '10', 4);
INSERT INTO characteristic VALUES(5, 'endurance', 'C''est l''aptitude d''une cr?ature ? r?sister aux dommages. Il est tr?s difficile d''infliger des d?g?ts ? une cr?ature disposant d''une grande Endurance, alors que cela devient plus facile quand elle est faible. La valeur de E s''exprime ?galement par un chiffre entre 1 et 10.', 'E', '10', 5);
INSERT INTO characteristic VALUES(6, 'points de blessure', 'Quelques cr?atures peuvent supporter plus de dommages que d''autres, soit parce qu''elles ont plus de vigueur physique, soit parce qu''elles sont peu sensibles ? la souffrance, soit qu''elles n''en tiennent compte que tr?s peu. Ceci est repr?sent? par le montant de B dont dispose la cr?ature et correspond au total de d?g?ts qui pourra ?tre support? avant que ne soit inflig?e une l?sion s?rieuse ou m?me la mort. Les personnages r?duits ? 0 en Blessures ne sont pas morts mais ils n''ont plus la capacit? d''encaisser des dommages suppl?mentaires sans souffrir de l?sion de quelque gravit? que ce soit. B est un chiffre de 1 ou plus. La plupart des personnages Humains commencent avec une B de 6.', 'B', 'N/A', 6);
INSERT INTO characteristic VALUES(7, 'initiative', 'C''est la rapidit? d''esprit d''un personnage, qu''il soit vif ou lent d''esprit. En combat rapproch?, I d?termine qui agit en premier. On la repr?sente par un pourcentage.', 'I', '100', 7);
INSERT INTO characteristic VALUES(8, 'nombre d''attaques', 'C''est le nombre de fois que la cr?ature peut frapper dans un m?me Round de combat. Plus une cr?ature peut porter de coups, plus elle sera dangereuse. Beaucoup de personnages -et de nombreuses cr?atures- ne disposent que d''une seule Attaque, mais l''on peut en avoir plus et il n''existe pas de maximum.', 'A', 'N/A', 8);
INSERT INTO characteristic VALUES(9, 'dext?rit', 'C''est une indication de l''aptitude du personnage ? ex?cuter un travail manuel sp?cialis?, complexe et/ou d?licat. Cela d?termine si le personnage est habile pour les tours de passe-passe, le crochetage des serrures, l''exploration des poches de ses voisins ou tout autre besogne r?clamant patience et habilet? manuelle. Cette Caract?ristique est exprim?e par un nombre entre 01 et 100%.', 'Dex', '100', 9);
INSERT INTO characteristic VALUES(10, 'commandement', 'C''est l''aptitude d''un personnage ? en commander d''autres. Une forte valeur en Commandement implique un personnage charismatique, qui inspire confiance et loyaut?, tandis qu''un faible Cd montrera un personnage plut?t ind?cis dans ses actions. Le Cd est repr?sent? par un pourcentage.', 'Cd', '100', 10);
INSERT INTO characteristic VALUES(11, 'intelligence', 'C''est la capacit? de raisonnement et de compr?hension du personnage. C''est en quelque sorte son quotient intellectuel (Q.I.), mais celui-ci ne variera qu''entre 01 et 100%.', 'Int', '100', 11);
INSERT INTO characteristic VALUES(12, 'calme', 'C''est la capacit? du personnage ? rester calme, ma?tre de son corps - et de son esprit - quand il est soumis ? de violentes tesions psychologiques. Certaines cr?atures qui peuplent le Vieux Monde sont r?ellement effrayantes et seuls des personnages poss?dant un bon Sang-Froid peuvent esp?rer leur tenir t?te sans flancher. Le Cl est compris entre 01 et 100%.', 'Cl', '100', 12);
INSERT INTO characteristic VALUES(13, 'force mentale', 'C''est la mesure de la r?sistance mentale et magique d''un personnage et de sa conscience g?n?rale de la magie. C''est aussi, pour une cr?ature, sa capacit? ? annuler les effets de la magie, des charmes et autres influences mentales. Les personnages qui utilisent la magie tireront avantage d''une Volont? ?lev?e, tout sp?cialement s''ils sont confront?s ? certaines cr?atures infernales venues d''autres mondes, qui ont la possibilit? d''infiltrer leurs esprits et de d?former leurs personnalit?s. Un pourcentage d?terminera la valeur de la FM.', 'FM', '100', 13);
INSERT INTO characteristic VALUES(14, 'sociabilit', 'C''est le reflet des aptitudes sociales d''un personnage, ? la fois son apparence, sa facult? de communiquer, de sympathiser avec les autres et, d''une fa?on g?n?rale sa facilit? ? ''bien s''entendre avec les gens''. Un personnage ayant une bonne Sociabilit? trouvera facilement ? se faire de nouvelles relations et sera capable d''obtenir des informations en aiguillant habilement une conversation. Par contre, les personnages n''ayant que peu de Soc ont la f?cheuse habitude de parler au mauvais moment et sont d''incorrigibles gaffeurs. Ils sont ?galement imperm?ables ? toute allusion voil?e, n''arrivent jamais ? se mettre dans l''ambiance et manquent totalement de tact. La Soc s''?chelonne de 01 ? 100%.', 'Soc', '100', 14);



DROP TABLE IF EXISTS cimetiere;
CREATE TABLE IF NOT EXISTS cimetiere (
  personnage_id int(10) unsigned NOT NULL default '0',
  cimetiere_desc text,
  PRIMARY KEY  (personnage_id)
) ;


INSERT INTO cimetiere VALUES(1, '');



DROP TABLE IF EXISTS city;
CREATE TABLE IF NOT EXISTS city (
  city_id int(10) unsigned NOT NULL default '0',
  city_name varchar(45) NOT NULL default '',
  city_desc text,
  PRIMARY KEY  (city_id)
) ;


DROP TABLE IF EXISTS continent;
CREATE TABLE IF NOT EXISTS continent (
  continent_id int(11) NOT NULL default '0',
  continent_name varchar(45) NOT NULL default '',
  continent_desc text,
  PRIMARY KEY  (continent_id)
) ;


INSERT INTO continent VALUES(1, 'Le Vieux Monde', 'Le Vieux Monde est analogue l''Europe du Moyen-Age. Il est constitu? de petits ?tats ind?pendants qui ont en commun un h?ritage culturel comparable et un langage commun, l''Occidental.');
INSERT INTO continent VALUES(2, 'Arabie', 'L''arabie pourrait ?tre compar?e au Proche Orient ? l''?poque de l''empire Ottoman. C''est un empire gigantesque, compos? de nombreux Califats th?ocratiques sur lesquels r?gne en ma?tre le Sultan de Toute l''Arabie. La soci?t? arabe est domin?e par un fondamentalisme religieux et, techniquement, elle n''est pas aussi avanc?e que celle du vieux monde. Il y a environ 1000 ans, (vers 1500 selon le calendrier du Vieux Monde) le Sultan Daryus-e Qabir mena une serie de guerres religieuses contre le Vieux Monde mais sans le moindre succ?s durable. Les l?gendes datant de cette ?poque ont marqu? d?favorablement l''attitude des Occidentaux face aux habitants de l''Arabie, mais il existe d''importantes relations commerciales entre les deux r?gions. L''Arabie est une r?gion chaude, s?che, o? l''eau et les zones r?ellement fertiles sont rares. Beaucoup de terres sont d?sertiques ou presque et n?cessitent une irrigation tr?s soign?e pour produire quelques r?coltes.');





DROP TABLE IF EXISTS copyright;
CREATE TABLE IF NOT EXISTS copyright (
  copyright_id int(10) unsigned NOT NULL auto_increment,
  copyright_name varchar(45) default NULL,
  copyright_desc text,
  copyright_src varchar(255) default NULL,
  PRIMARY KEY  (copyright_id)
)    ;


INSERT INTO copyright VALUES(1, 'Games Workshop', 'sous licence de Games Workshop Ltd', 'http://www.games-workshop.com');



DROP TABLE IF EXISTS corpulence;
CREATE TABLE IF NOT EXISTS corpulence (
  corpulence_id int(10) unsigned NOT NULL auto_increment,
  modificateur_poids_de int(10) unsigned NOT NULL default '0',
  corpulence_name varchar(45) default NULL,
  modificateur_poids_multiplicateur varchar(20) default NULL,
  modificateur_jet int(11) default NULL,
  PRIMARY KEY  (corpulence_id)
)    ;


INSERT INTO corpulence VALUES(1, 10, 'tr?s faible', '1', -20);
INSERT INTO corpulence VALUES(2, 1, 'faible', '0', -10);
INSERT INTO corpulence VALUES(3, 1, 'moyenne', '0', 0);
INSERT INTO corpulence VALUES(4, 1, 'forte', '0', 10);
INSERT INTO corpulence VALUES(5, 10, 'tr?s forte', '1', 20);



DROP TABLE IF EXISTS country;
CREATE TABLE IF NOT EXISTS country (
  country_id int(11) NOT NULL default '0',
  country_name varchar(45) NOT NULL default '',
  country_desc text,
  PRIMARY KEY  (country_id)
) ;


INSERT INTO country VALUES(1, 'naggaroth', 'description de naggoroth');
INSERT INTO country VALUES(2, 'les royaumes du chaos', 'description des royaumes du chaos');
INSERT INTO country VALUES(3, 'norsca', 'description de la norsca');
INSERT INTO country VALUES(4, 'le vieux monde', 'Le Vieux Monde est analogue l''Europe du Moyen-Age. Il est constitu? de petits ?tats ind?pendants qui ont en commun un h?ritage culturel comparable et un langage commun, l''Occidental.');
INSERT INTO country VALUES(5, 'les terres sombres', 'description des terres sombres');
INSERT INTO country VALUES(6, 'arabie', 'L''arabie pourrait ?tre compar?e au Proche Orient ? l''?poque de l''empire Ottoman. C''est un empire gigantesque, compos? de nombreux Califats th?ocratiques sur lesquels r?gne en ma?tre le Sultan de Toute l''Arabie. La soci?t? arabe est domin?e par un fondamentalisme religieux et, techniquement, elle n''est pas aussi avanc?e que celle du vieux monde. Il y a environ 1000 ans, (vers 1500 selon le calendrier du Vieux Monde) le Sultan Daryus-e Qabir mena une serie de guerres religieuses contre le Vieux Monde mais sans le moindre succ?s durable. Les l?gendes datant de cette ?poque ont marqu? d?favorablement l''attitude des Occidentaux face aux habitants de l''Arabie, mais il existe d''importantes relations commerciales entre les deux r?gions. L''Arabie est une r?gion chaude, s?che, o? l''eau et les zones r?ellement fertiles sont rares. Beaucoup de terres sont d?sertiques ou presque et n?cessitent une irrigation tr?s soign?e pour produire quelques r?coltes.');
INSERT INTO country VALUES(7, 'terres du sud', 'description des terres du sud');
INSERT INTO country VALUES(8, 'ulthuan', 'description d''ulthuan');
INSERT INTO country VALUES(9, 'lustrianie', 'description de la lustrianie');



DROP TABLE IF EXISTS creature;
CREATE TABLE IF NOT EXISTS creature (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO creature VALUES(216);
INSERT INTO creature VALUES(217);



DROP TABLE IF EXISTS cure;
CREATE TABLE IF NOT EXISTS cure (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;





DROP TABLE IF EXISTS cut;
CREATE TABLE IF NOT EXISTS cut (
  cut_id int(11) NOT NULL default '0',
  nomtable_id int(10) unsigned NOT NULL default '0',
  cut_desc text,
  coords varchar(255) NOT NULL default '',
  cut_type VARCHAR(5) default 'rect'
  check (cut_type in ('rect','shape','poly')),
  id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cut_id)
) ;


INSERT INTO cut VALUES(1, 17, 'naggoroth', '161, 68, 241, 84', 'rect', 1);
INSERT INTO cut VALUES(2, 17, 'royaumes du chaos', '238, 22, 367, 39', 'rect', 2);
INSERT INTO cut VALUES(3, 17, 'norsca', '438, 74, 490, 90', 'rect', 3);
INSERT INTO cut VALUES(4, 17, 'vieux monde', '412, 139, 468, 186', 'rect', 4);
INSERT INTO cut VALUES(5, 17, 'terres sombres', '524, 159, 584, 206', 'rect', 5);
INSERT INTO cut VALUES(6, 17, 'arabie', '358, 239, 405, 258', 'rect', 6);
INSERT INTO cut VALUES(7, 17, 'terres du sud', '450, 320, 502, 351', 'rect', 7);
INSERT INTO cut VALUES(8, 17, 'ulthuan', '225, 302, 287, 320', 'rect', 8);
INSERT INTO cut VALUES(9, 17, 'lustrianie', '155, 365, 209, 384', 'rect', 9);









DROP TABLE IF EXISTS de;
CREATE TABLE IF NOT EXISTS de (
  de_id int(10) unsigned NOT NULL default '0',
  de_value int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (de_id)
) ;


INSERT INTO de VALUES(1, 1);
INSERT INTO de VALUES(2, 2);
INSERT INTO de VALUES(3, 3);
INSERT INTO de VALUES(4, 4);
INSERT INTO de VALUES(6, 6);
INSERT INTO de VALUES(8, 8);
INSERT INTO de VALUES(12, 12);
INSERT INTO de VALUES(20, 20);
INSERT INTO de VALUES(100, 100);
INSERT INTO de VALUES(1000, 1000);



DROP TABLE IF EXISTS debouche;
CREATE TABLE IF NOT EXISTS debouche (
  career_id int(10) unsigned NOT NULL default '0',
  career_id2 int(10) unsigned NOT NULL default '0',
  complement text,
  PRIMARY KEY  (career_id,career_id2)
) ;


INSERT INTO debouche VALUES(1, 55, NULL);
INSERT INTO debouche VALUES(76, 105, NULL);
INSERT INTO debouche VALUES(76, 98, NULL);
INSERT INTO debouche VALUES(2, 3, NULL);
INSERT INTO debouche VALUES(74, 98, NULL);
INSERT INTO debouche VALUES(58, 137, NULL);
INSERT INTO debouche VALUES(2, 75, NULL);
INSERT INTO debouche VALUES(3, 144, NULL);
INSERT INTO debouche VALUES(3, 175, NULL);
INSERT INTO debouche VALUES(3, 25, NULL);
INSERT INTO debouche VALUES(25, 98, NULL);
INSERT INTO debouche VALUES(87, 113, NULL);
INSERT INTO debouche VALUES(3, 53, NULL);
INSERT INTO debouche VALUES(3, 75, NULL);
INSERT INTO debouche VALUES(3, 81, NULL);
INSERT INTO debouche VALUES(4, 28, NULL);
INSERT INTO debouche VALUES(4, 164, NULL);
INSERT INTO debouche VALUES(4, 46, NULL);
INSERT INTO debouche VALUES(145, 28, NULL);
INSERT INTO debouche VALUES(145, 46, NULL);
INSERT INTO debouche VALUES(146, 28, NULL);
INSERT INTO debouche VALUES(146, 46, NULL);
INSERT INTO debouche VALUES(147, 28, NULL);
INSERT INTO debouche VALUES(147, 46, NULL);
INSERT INTO debouche VALUES(148, 28, NULL);
INSERT INTO debouche VALUES(148, 46, NULL);
INSERT INTO debouche VALUES(149, 28, NULL);
INSERT INTO debouche VALUES(149, 46, NULL);
INSERT INTO debouche VALUES(150, 28, NULL);
INSERT INTO debouche VALUES(150, 46, NULL);
INSERT INTO debouche VALUES(151, 28, NULL);
INSERT INTO debouche VALUES(151, 46, NULL);
INSERT INTO debouche VALUES(152, 28, NULL);
INSERT INTO debouche VALUES(152, 46, NULL);
INSERT INTO debouche VALUES(153, 28, NULL);
INSERT INTO debouche VALUES(153, 46, NULL);
INSERT INTO debouche VALUES(154, 28, NULL);
INSERT INTO debouche VALUES(154, 46, NULL);
INSERT INTO debouche VALUES(155, 28, NULL);
INSERT INTO debouche VALUES(155, 46, NULL);
INSERT INTO debouche VALUES(156, 28, NULL);
INSERT INTO debouche VALUES(156, 46, NULL);
INSERT INTO debouche VALUES(157, 127, NULL);
INSERT INTO debouche VALUES(157, 46, NULL);
INSERT INTO debouche VALUES(158, 28, NULL);
INSERT INTO debouche VALUES(158, 46, NULL);
INSERT INTO debouche VALUES(159, 28, NULL);
INSERT INTO debouche VALUES(159, 46, NULL);
INSERT INTO debouche VALUES(160, 28, NULL);
INSERT INTO debouche VALUES(160, 46, NULL);
INSERT INTO debouche VALUES(161, 28, NULL);
INSERT INTO debouche VALUES(161, 46, NULL);
INSERT INTO debouche VALUES(162, 28, NULL);
INSERT INTO debouche VALUES(162, 46, NULL);
INSERT INTO debouche VALUES(163, 28, NULL);
INSERT INTO debouche VALUES(163, 46, NULL);
INSERT INTO debouche VALUES(145, 115, NULL);
INSERT INTO debouche VALUES(146, 116, NULL);
INSERT INTO debouche VALUES(147, 117, NULL);
INSERT INTO debouche VALUES(148, 118, NULL);
INSERT INTO debouche VALUES(149, 119, NULL);
INSERT INTO debouche VALUES(150, 120, NULL);
INSERT INTO debouche VALUES(151, 121, NULL);
INSERT INTO debouche VALUES(152, 122, NULL);
INSERT INTO debouche VALUES(153, 123, NULL);
INSERT INTO debouche VALUES(154, 124, NULL);
INSERT INTO debouche VALUES(155, 125, NULL);
INSERT INTO debouche VALUES(156, 126, NULL);
INSERT INTO debouche VALUES(157, 28, NULL);
INSERT INTO debouche VALUES(158, 128, NULL);
INSERT INTO debouche VALUES(159, 129, NULL);
INSERT INTO debouche VALUES(160, 130, NULL);
INSERT INTO debouche VALUES(161, 131, NULL);
INSERT INTO debouche VALUES(162, 132, NULL);
INSERT INTO debouche VALUES(163, 133, NULL);
INSERT INTO debouche VALUES(5, 25, NULL);
INSERT INTO debouche VALUES(62, 98, NULL);
INSERT INTO debouche VALUES(5, 53, NULL);
INSERT INTO debouche VALUES(5, 57, NULL);
INSERT INTO debouche VALUES(5, 71, NULL);
INSERT INTO debouche VALUES(5, 81, NULL);
INSERT INTO debouche VALUES(5, 165, NULL);
INSERT INTO debouche VALUES(6, 38, NULL);
INSERT INTO debouche VALUES(6, 55, NULL);
INSERT INTO debouche VALUES(6, 60, NULL);
INSERT INTO debouche VALUES(166, 166, NULL);
INSERT INTO debouche VALUES(7, 166, NULL);
INSERT INTO debouche VALUES(8, 166, NULL);
INSERT INTO debouche VALUES(9, 166, NULL);
INSERT INTO debouche VALUES(10, 166, NULL);
INSERT INTO debouche VALUES(11, 166, NULL);
INSERT INTO debouche VALUES(12, 166, NULL);
INSERT INTO debouche VALUES(13, 166, NULL);
INSERT INTO debouche VALUES(14, 166, NULL);
INSERT INTO debouche VALUES(58, 98, NULL);
INSERT INTO debouche VALUES(15, 166, NULL);
INSERT INTO debouche VALUES(171, 105, NULL);
INSERT INTO debouche VALUES(16, 166, NULL);
INSERT INTO debouche VALUES(17, 166, NULL);
INSERT INTO debouche VALUES(61, 139, NULL);
INSERT INTO debouche VALUES(18, 166, NULL);
INSERT INTO debouche VALUES(137, 58, NULL);
INSERT INTO debouche VALUES(19, 166, NULL);
INSERT INTO debouche VALUES(20, 166, NULL);
INSERT INTO debouche VALUES(21, 166, NULL);
INSERT INTO debouche VALUES(22, 166, NULL);
INSERT INTO debouche VALUES(22, 139, NULL);
INSERT INTO debouche VALUES(23, 166, NULL);
INSERT INTO debouche VALUES(24, 166, NULL);
INSERT INTO debouche VALUES(25, 166, NULL);
INSERT INTO debouche VALUES(57, 98, NULL);
INSERT INTO debouche VALUES(26, 166, NULL);
INSERT INTO debouche VALUES(26, 62, NULL);
INSERT INTO debouche VALUES(27, 166, NULL);
INSERT INTO debouche VALUES(69, 91, NULL);
INSERT INTO debouche VALUES(28, 46, NULL);
INSERT INTO debouche VALUES(28, 55, NULL);
INSERT INTO debouche VALUES(83, 135, NULL);
INSERT INTO debouche VALUES(17, 139, NULL);
INSERT INTO debouche VALUES(88, 140, NULL);
INSERT INTO debouche VALUES(29, 66, NULL);
INSERT INTO debouche VALUES(29, 55, NULL);
INSERT INTO debouche VALUES(82, 108, NULL);
INSERT INTO debouche VALUES(204, 108, NULL);
INSERT INTO debouche VALUES(30, 55, NULL);
INSERT INTO debouche VALUES(30, 66, NULL);
INSERT INTO debouche VALUES(114, 96, NULL);
INSERT INTO debouche VALUES(31, 28, NULL);
INSERT INTO debouche VALUES(55, 114, NULL);
INSERT INTO debouche VALUES(79, 135, NULL);
INSERT INTO debouche VALUES(31, 63, NULL);
INSERT INTO debouche VALUES(31, 80, NULL);
INSERT INTO debouche VALUES(68, 91, NULL);
INSERT INTO debouche VALUES(75, 108, NULL);
INSERT INTO debouche VALUES(33, 68, NULL);
INSERT INTO debouche VALUES(78, 90, NULL);
INSERT INTO debouche VALUES(33, 86, NULL);
INSERT INTO debouche VALUES(33, 1, NULL);
INSERT INTO debouche VALUES(33, 64, NULL);
INSERT INTO debouche VALUES(78, 134, NULL);
INSERT INTO debouche VALUES(33, 55, NULL);
INSERT INTO debouche VALUES(140, 167, NULL);
INSERT INTO debouche VALUES(34, 46, NULL);
INSERT INTO debouche VALUES(34, 55, NULL);
INSERT INTO debouche VALUES(87, 140, NULL);
INSERT INTO debouche VALUES(34, 82, NULL);
INSERT INTO debouche VALUES(79, 102, NULL);
INSERT INTO debouche VALUES(35, 38, NULL);
INSERT INTO debouche VALUES(35, 71, NULL);
INSERT INTO debouche VALUES(36, 28, NULL);
INSERT INTO debouche VALUES(72, 93, NULL);
INSERT INTO debouche VALUES(36, 96, NULL);
INSERT INTO debouche VALUES(36, 31, NULL);
INSERT INTO debouche VALUES(101, 96, NULL);
INSERT INTO debouche VALUES(63, 135, NULL);
INSERT INTO debouche VALUES(139, 140, NULL);
INSERT INTO debouche VALUES(138, 93, NULL);
INSERT INTO debouche VALUES(38, 60, NULL);
INSERT INTO debouche VALUES(38, 72, NULL);
INSERT INTO debouche VALUES(71, 140, NULL);
INSERT INTO debouche VALUES(39, 35, NULL);
INSERT INTO debouche VALUES(67, 205, NULL);
INSERT INTO debouche VALUES(40, 1, NULL);
INSERT INTO debouche VALUES(40, 47, NULL);
INSERT INTO debouche VALUES(40, 78, NULL);
INSERT INTO debouche VALUES(53, 140, NULL);
INSERT INTO debouche VALUES(41, 3, NULL);
INSERT INTO debouche VALUES(100, 96, NULL);
INSERT INTO debouche VALUES(79, 101, NULL);
INSERT INTO debouche VALUES(63, 102, NULL);
INSERT INTO debouche VALUES(41, 35, NULL);
INSERT INTO debouche VALUES(41, 127, NULL);
INSERT INTO debouche VALUES(41, 128, NULL);
INSERT INTO debouche VALUES(42, 204, NULL);
INSERT INTO debouche VALUES(143, 103, NULL);
INSERT INTO debouche VALUES(43, 1, NULL);
INSERT INTO debouche VALUES(43, 90, NULL);
INSERT INTO debouche VALUES(78, 109, NULL);
INSERT INTO debouche VALUES(43, 53, NULL);
INSERT INTO debouche VALUES(72, 138, NULL);
INSERT INTO debouche VALUES(43, 84, NULL);
INSERT INTO debouche VALUES(44, 53, NULL);
INSERT INTO debouche VALUES(44, 98, NULL);
INSERT INTO debouche VALUES(45, 96, NULL);
INSERT INTO debouche VALUES(45, 97, NULL);
INSERT INTO debouche VALUES(45, 31, NULL);
INSERT INTO debouche VALUES(45, 68, 'Halfelings except');
INSERT INTO debouche VALUES(45, 139, NULL);
INSERT INTO debouche VALUES(46, 28, NULL);
INSERT INTO debouche VALUES(46, 31, NULL);
INSERT INTO debouche VALUES(96, 99, NULL);
INSERT INTO debouche VALUES(46, 63, NULL);
INSERT INTO debouche VALUES(67, 108, NULL);
INSERT INTO debouche VALUES(47, 114, NULL);
INSERT INTO debouche VALUES(47, 64, NULL);
INSERT INTO debouche VALUES(47, 66, NULL);
INSERT INTO debouche VALUES(47, 76, NULL);
INSERT INTO debouche VALUES(65, 108, NULL);
INSERT INTO debouche VALUES(48, 55, NULL);
INSERT INTO debouche VALUES(48, 66, NULL);
INSERT INTO debouche VALUES(48, 76, NULL);
INSERT INTO debouche VALUES(67, 55, NULL);
INSERT INTO debouche VALUES(49, 103, NULL);
INSERT INTO debouche VALUES(80, 107, NULL);
INSERT INTO debouche VALUES(49, 43, NULL);
INSERT INTO debouche VALUES(49, 53, NULL);
INSERT INTO debouche VALUES(49, 57, NULL);
INSERT INTO debouche VALUES(50, 46, NULL);
INSERT INTO debouche VALUES(50, 92, NULL);
INSERT INTO debouche VALUES(51, 28, NULL);
INSERT INTO debouche VALUES(51, 97, NULL);
INSERT INTO debouche VALUES(51, 31, NULL);
INSERT INTO debouche VALUES(113, 140, NULL);
INSERT INTO debouche VALUES(51, 35, NULL);
INSERT INTO debouche VALUES(73, 136, NULL);
INSERT INTO debouche VALUES(55, 91, NULL);
INSERT INTO debouche VALUES(52, 108, NULL);
INSERT INTO debouche VALUES(52, 63, NULL);
INSERT INTO debouche VALUES(53, 46, NULL);
INSERT INTO debouche VALUES(86, 140, NULL);
INSERT INTO debouche VALUES(81, 44, NULL);
INSERT INTO debouche VALUES(54, 66, NULL);
INSERT INTO debouche VALUES(52, 91, NULL);
INSERT INTO debouche VALUES(63, 99, NULL);
INSERT INTO debouche VALUES(31, 114, NULL);
INSERT INTO debouche VALUES(55, 47, NULL);
INSERT INTO debouche VALUES(55, 83, NULL);
INSERT INTO debouche VALUES(56, 168, NULL);
INSERT INTO debouche VALUES(56, 1, NULL);
INSERT INTO debouche VALUES(84, 98, NULL);
INSERT INTO debouche VALUES(74, 1, NULL);
INSERT INTO debouche VALUES(14, 98, NULL);
INSERT INTO debouche VALUES(44, 137, NULL);
INSERT INTO debouche VALUES(58, 18, NULL);
INSERT INTO debouche VALUES(5, 98, NULL);
INSERT INTO debouche VALUES(59, 28, NULL);
INSERT INTO debouche VALUES(63, 100, NULL);
INSERT INTO debouche VALUES(96, 100, NULL);
INSERT INTO debouche VALUES(79, 100, NULL);
INSERT INTO debouche VALUES(59, 46, NULL);
INSERT INTO debouche VALUES(60, 6, NULL);
INSERT INTO debouche VALUES(60, 94, NULL);
INSERT INTO debouche VALUES(60, 38, NULL);
INSERT INTO debouche VALUES(60, 135, NULL);
INSERT INTO debouche VALUES(60, 72, NULL);
INSERT INTO debouche VALUES(60, 76, NULL);
INSERT INTO debouche VALUES(61, 46, NULL);
INSERT INTO debouche VALUES(61, 77, NULL);
INSERT INTO debouche VALUES(84, 139, NULL);
INSERT INTO debouche VALUES(3, 98, NULL);
INSERT INTO debouche VALUES(63, 96, NULL);
INSERT INTO debouche VALUES(135, 99, NULL);
INSERT INTO debouche VALUES(59, 100, NULL);
INSERT INTO debouche VALUES(96, 101, NULL);
INSERT INTO debouche VALUES(41, 102, NULL);
INSERT INTO debouche VALUES(63, 35, NULL);
INSERT INTO debouche VALUES(50, 135, NULL);
INSERT INTO debouche VALUES(64, 28, NULL);
INSERT INTO debouche VALUES(64, 55, NULL);
INSERT INTO debouche VALUES(64, 63, NULL);
INSERT INTO debouche VALUES(65, 38, NULL);
INSERT INTO debouche VALUES(47, 108, NULL);
INSERT INTO debouche VALUES(65, 55, NULL);
INSERT INTO debouche VALUES(66, 29, NULL);
INSERT INTO debouche VALUES(66, 30, NULL);
INSERT INTO debouche VALUES(66, 47, NULL);
INSERT INTO debouche VALUES(66, 55, NULL);
INSERT INTO debouche VALUES(66, 82, NULL);
INSERT INTO debouche VALUES(66, 179, NULL);
INSERT INTO debouche VALUES(39, 108, NULL);
INSERT INTO debouche VALUES(67, 83, NULL);
INSERT INTO debouche VALUES(67, 66, NULL);
INSERT INTO debouche VALUES(67, 64, NULL);
INSERT INTO debouche VALUES(48, 83, NULL);
INSERT INTO debouche VALUES(107, 91, NULL);
INSERT INTO debouche VALUES(68, 55, NULL);
INSERT INTO debouche VALUES(68, 64, NULL);
INSERT INTO debouche VALUES(32, 91, NULL);
INSERT INTO debouche VALUES(69, 55, NULL);
INSERT INTO debouche VALUES(69, 86, NULL);
INSERT INTO debouche VALUES(70, 72, NULL);
INSERT INTO debouche VALUES(70, 60, NULL);
INSERT INTO debouche VALUES(70, 38, NULL);
INSERT INTO debouche VALUES(70, 37, NULL);
INSERT INTO debouche VALUES(71, 35, NULL);
INSERT INTO debouche VALUES(71, 46, NULL);
INSERT INTO debouche VALUES(71, 77, NULL);
INSERT INTO debouche VALUES(38, 140, NULL);
INSERT INTO debouche VALUES(94, 138, NULL);
INSERT INTO debouche VALUES(72, 38, NULL);
INSERT INTO debouche VALUES(111, 138, NULL);
INSERT INTO debouche VALUES(72, 76, NULL);
INSERT INTO debouche VALUES(51, 136, NULL);
INSERT INTO debouche VALUES(75, 35, 'Nains seulement');
INSERT INTO debouche VALUES(170, 105, NULL);
INSERT INTO debouche VALUES(75, 71, NULL);
INSERT INTO debouche VALUES(75, 79, NULL);
INSERT INTO debouche VALUES(2, 98, NULL);
INSERT INTO debouche VALUES(169, 105, NULL);
INSERT INTO debouche VALUES(77, 28, NULL);
INSERT INTO debouche VALUES(77, 46, NULL);
INSERT INTO debouche VALUES(77, 50, NULL);
INSERT INTO debouche VALUES(77, 81, NULL);
INSERT INTO debouche VALUES(33, 90, NULL);
INSERT INTO debouche VALUES(43, 109, NULL);
INSERT INTO debouche VALUES(78, 112, NULL);
INSERT INTO debouche VALUES(37, 134, NULL);
INSERT INTO debouche VALUES(79, 28, NULL);
INSERT INTO debouche VALUES(79, 96, NULL);
INSERT INTO debouche VALUES(79, 31, NULL);
INSERT INTO debouche VALUES(41, 100, NULL);
INSERT INTO debouche VALUES(63, 101, NULL);
INSERT INTO debouche VALUES(35, 102, NULL);
INSERT INTO debouche VALUES(36, 135, NULL);
INSERT INTO debouche VALUES(80, 28, NULL);
INSERT INTO debouche VALUES(80, 97, NULL);
INSERT INTO debouche VALUES(80, 31, NULL);
INSERT INTO debouche VALUES(49, 107, NULL);
INSERT INTO debouche VALUES(54, 44, NULL);
INSERT INTO debouche VALUES(81, 46, NULL);
INSERT INTO debouche VALUES(81, 77, NULL);
INSERT INTO debouche VALUES(32, 108, NULL);
INSERT INTO debouche VALUES(82, 55, NULL);
INSERT INTO debouche VALUES(82, 66, NULL);
INSERT INTO debouche VALUES(31, 135, NULL);
INSERT INTO debouche VALUES(83, 55, NULL);
INSERT INTO debouche VALUES(84, 46, NULL);
INSERT INTO debouche VALUES(84, 55, NULL);
INSERT INTO debouche VALUES(1, 98, NULL);
INSERT INTO debouche VALUES(85, 46, NULL);
INSERT INTO debouche VALUES(37, 140, NULL);
INSERT INTO debouche VALUES(86, 37, NULL);
INSERT INTO debouche VALUES(34, 140, NULL);
INSERT INTO debouche VALUES(86, 78, NULL);
INSERT INTO debouche VALUES(112, 113, NULL);
INSERT INTO debouche VALUES(85, 140, NULL);
INSERT INTO debouche VALUES(88, 46, NULL);
INSERT INTO debouche VALUES(28, 140, NULL);
INSERT INTO debouche VALUES(175, 165, NULL);
INSERT INTO debouche VALUES(176, 165, NULL);
INSERT INTO debouche VALUES(177, 165, NULL);
INSERT INTO debouche VALUES(178, 165, NULL);
INSERT INTO debouche VALUES(144, 165, NULL);
INSERT INTO debouche VALUES(144, 144, NULL);
INSERT INTO debouche VALUES(175, 176, NULL);
INSERT INTO debouche VALUES(176, 177, NULL);
INSERT INTO debouche VALUES(177, 178, NULL);
INSERT INTO debouche VALUES(89, 63, NULL);
INSERT INTO debouche VALUES(143, 95, NULL);
INSERT INTO debouche VALUES(168, 105, NULL);
INSERT INTO debouche VALUES(33, 134, NULL);
INSERT INTO debouche VALUES(90, 76, NULL);
INSERT INTO debouche VALUES(91, 96, NULL);
INSERT INTO debouche VALUES(97, 107, NULL);
INSERT INTO debouche VALUES(55, 99, NULL);
INSERT INTO debouche VALUES(92, 167, NULL);
INSERT INTO debouche VALUES(28, 139, NULL);
INSERT INTO debouche VALUES(51, 99, NULL);
INSERT INTO debouche VALUES(134, 111, NULL);
INSERT INTO debouche VALUES(138, 111, NULL);
INSERT INTO debouche VALUES(94, 93, NULL);
INSERT INTO debouche VALUES(95, 97, NULL);
INSERT INTO debouche VALUES(95, 31, NULL);
INSERT INTO debouche VALUES(46, 99, NULL);
INSERT INTO debouche VALUES(36, 100, NULL);
INSERT INTO debouche VALUES(41, 101, NULL);
INSERT INTO debouche VALUES(42, 103, NULL);
INSERT INTO debouche VALUES(109, 111, NULL);
INSERT INTO debouche VALUES(95, 57, NULL);
INSERT INTO debouche VALUES(95, 80, NULL);
INSERT INTO debouche VALUES(96, 95, NULL);
INSERT INTO debouche VALUES(96, 97, NULL);
INSERT INTO debouche VALUES(96, 31, NULL);
INSERT INTO debouche VALUES(114, 89, NULL);
INSERT INTO debouche VALUES(102, 101, NULL);
INSERT INTO debouche VALUES(102, 100, NULL);
INSERT INTO debouche VALUES(96, 57, NULL);
INSERT INTO debouche VALUES(96, 80, NULL);
INSERT INTO debouche VALUES(110, 89, NULL);
INSERT INTO debouche VALUES(97, 96, NULL);
INSERT INTO debouche VALUES(91, 107, NULL);
INSERT INTO debouche VALUES(171, 141, NULL);
INSERT INTO debouche VALUES(141, 143, NULL);
INSERT INTO debouche VALUES(15, 105, NULL);
INSERT INTO debouche VALUES(99, 105, NULL);
INSERT INTO debouche VALUES(99, 96, NULL);
INSERT INTO debouche VALUES(98, 105, NULL);
INSERT INTO debouche VALUES(99, 108, NULL);
INSERT INTO debouche VALUES(99, 205, NULL);
INSERT INTO debouche VALUES(100, 36, NULL);
INSERT INTO debouche VALUES(100, 102, NULL);
INSERT INTO debouche VALUES(100, 101, NULL);
INSERT INTO debouche VALUES(101, 36, NULL);
INSERT INTO debouche VALUES(101, 100, NULL);
INSERT INTO debouche VALUES(95, 100, NULL);
INSERT INTO debouche VALUES(95, 101, NULL);
INSERT INTO debouche VALUES(102, 63, NULL);
INSERT INTO debouche VALUES(102, 41, NULL);
INSERT INTO debouche VALUES(102, 35, NULL);
INSERT INTO debouche VALUES(103, 143, NULL);
INSERT INTO debouche VALUES(103, 95, NULL);
INSERT INTO debouche VALUES(168, 169, NULL);
INSERT INTO debouche VALUES(30, 108, NULL);
INSERT INTO debouche VALUES(170, 141, NULL);
INSERT INTO debouche VALUES(169, 170, NULL);
INSERT INTO debouche VALUES(111, 110, NULL);
INSERT INTO debouche VALUES(169, 141, NULL);
INSERT INTO debouche VALUES(170, 171, NULL);
INSERT INTO debouche VALUES(90, 134, NULL);
INSERT INTO debouche VALUES(168, 141, NULL);
INSERT INTO debouche VALUES(90, 105, NULL);
INSERT INTO debouche VALUES(97, 141, NULL);
INSERT INTO debouche VALUES(179, 180, NULL);
INSERT INTO debouche VALUES(180, 181, NULL);
INSERT INTO debouche VALUES(181, 182, NULL);
INSERT INTO debouche VALUES(205, 99, NULL);
INSERT INTO debouche VALUES(107, 96, NULL);
INSERT INTO debouche VALUES(28, 91, NULL);
INSERT INTO debouche VALUES(107, 89, NULL);
INSERT INTO debouche VALUES(108, 99, NULL);
INSERT INTO debouche VALUES(205, 111, NULL);
INSERT INTO debouche VALUES(1, 105, NULL);
INSERT INTO debouche VALUES(109, 134, NULL);
INSERT INTO debouche VALUES(31, 89, NULL);
INSERT INTO debouche VALUES(111, 94, NULL);
INSERT INTO debouche VALUES(43, 138, NULL);
INSERT INTO debouche VALUES(98, 110, NULL);
INSERT INTO debouche VALUES(111, 95, NULL);
INSERT INTO debouche VALUES(112, 167, NULL);
INSERT INTO debouche VALUES(3, 113, NULL);
INSERT INTO debouche VALUES(113, 84, NULL);
INSERT INTO debouche VALUES(40, 84, NULL);
INSERT INTO debouche VALUES(97, 89, NULL);
INSERT INTO debouche VALUES(105, 99, NULL);
INSERT INTO debouche VALUES(114, 99, NULL);
INSERT INTO debouche VALUES(115, 79, NULL);
INSERT INTO debouche VALUES(108, 111, NULL);
INSERT INTO debouche VALUES(135, 60, NULL);
INSERT INTO debouche VALUES(95, 99, NULL);
INSERT INTO debouche VALUES(137, 3, NULL);
INSERT INTO debouche VALUES(18, 58, NULL);
INSERT INTO debouche VALUES(36, 93, NULL);
INSERT INTO debouche VALUES(95, 111, NULL);
INSERT INTO debouche VALUES(92, 99, NULL);
INSERT INTO debouche VALUES(139, 99, NULL);
INSERT INTO debouche VALUES(34, 37, NULL);
INSERT INTO debouche VALUES(140, 37, NULL);
INSERT INTO debouche VALUES(141, 104, NULL);
INSERT INTO debouche VALUES(143, 141, NULL);
INSERT INTO debouche VALUES(141, 56, NULL);
INSERT INTO debouche VALUES(143, 56, NULL);
INSERT INTO debouche VALUES(95, 103, NULL);
INSERT INTO debouche VALUES(97, 143, NULL);
INSERT INTO debouche VALUES(91, 99, NULL);
INSERT INTO debouche VALUES(165, 172, NULL);
INSERT INTO debouche VALUES(165, 189, NULL);
INSERT INTO debouche VALUES(165, 194, NULL);
INSERT INTO debouche VALUES(165, 199, NULL);
INSERT INTO debouche VALUES(165, 184, NULL);
INSERT INTO debouche VALUES(172, 173, NULL);
INSERT INTO debouche VALUES(172, 189, NULL);
INSERT INTO debouche VALUES(172, 194, NULL);
INSERT INTO debouche VALUES(172, 199, NULL);
INSERT INTO debouche VALUES(172, 184, NULL);
INSERT INTO debouche VALUES(173, 174, NULL);
INSERT INTO debouche VALUES(173, 189, NULL);
INSERT INTO debouche VALUES(173, 194, NULL);
INSERT INTO debouche VALUES(173, 199, NULL);
INSERT INTO debouche VALUES(173, 184, NULL);
INSERT INTO debouche VALUES(174, 189, NULL);
INSERT INTO debouche VALUES(174, 194, NULL);
INSERT INTO debouche VALUES(174, 199, NULL);
INSERT INTO debouche VALUES(174, 184, NULL);
INSERT INTO debouche VALUES(189, 190, NULL);
INSERT INTO debouche VALUES(189, 172, NULL);
INSERT INTO debouche VALUES(189, 199, NULL);
INSERT INTO debouche VALUES(189, 184, NULL);
INSERT INTO debouche VALUES(190, 191, NULL);
INSERT INTO debouche VALUES(190, 172, NULL);
INSERT INTO debouche VALUES(190, 199, NULL);
INSERT INTO debouche VALUES(190, 184, NULL);
INSERT INTO debouche VALUES(191, 192, NULL);
INSERT INTO debouche VALUES(191, 172, NULL);
INSERT INTO debouche VALUES(191, 199, NULL);
INSERT INTO debouche VALUES(191, 184, NULL);
INSERT INTO debouche VALUES(192, 172, NULL);
INSERT INTO debouche VALUES(192, 199, NULL);
INSERT INTO debouche VALUES(192, 184, NULL);
INSERT INTO debouche VALUES(184, 185, NULL);
INSERT INTO debouche VALUES(184, 189, NULL);
INSERT INTO debouche VALUES(184, 199, NULL);
INSERT INTO debouche VALUES(184, 172, NULL);
INSERT INTO debouche VALUES(185, 186, NULL);
INSERT INTO debouche VALUES(185, 189, NULL);
INSERT INTO debouche VALUES(185, 199, NULL);
INSERT INTO debouche VALUES(185, 172, NULL);
INSERT INTO debouche VALUES(186, 187, NULL);
INSERT INTO debouche VALUES(186, 189, NULL);
INSERT INTO debouche VALUES(186, 199, NULL);
INSERT INTO debouche VALUES(186, 172, NULL);
INSERT INTO debouche VALUES(187, 189, NULL);
INSERT INTO debouche VALUES(187, 199, NULL);
INSERT INTO debouche VALUES(187, 172, NULL);
INSERT INTO debouche VALUES(194, 195, NULL);
INSERT INTO debouche VALUES(194, 199, NULL);
INSERT INTO debouche VALUES(194, 172, NULL);
INSERT INTO debouche VALUES(195, 196, NULL);
INSERT INTO debouche VALUES(195, 199, NULL);
INSERT INTO debouche VALUES(195, 172, NULL);
INSERT INTO debouche VALUES(196, 197, NULL);
INSERT INTO debouche VALUES(196, 199, NULL);
INSERT INTO debouche VALUES(196, 172, NULL);
INSERT INTO debouche VALUES(197, 199, NULL);
INSERT INTO debouche VALUES(197, 172, NULL);
INSERT INTO debouche VALUES(199, 200, NULL);
INSERT INTO debouche VALUES(199, 189, NULL);
INSERT INTO debouche VALUES(199, 194, NULL);
INSERT INTO debouche VALUES(199, 184, NULL);
INSERT INTO debouche VALUES(199, 172, NULL);
INSERT INTO debouche VALUES(200, 201, NULL);
INSERT INTO debouche VALUES(200, 189, NULL);
INSERT INTO debouche VALUES(200, 194, NULL);
INSERT INTO debouche VALUES(200, 184, NULL);
INSERT INTO debouche VALUES(200, 172, NULL);
INSERT INTO debouche VALUES(201, 202, NULL);
INSERT INTO debouche VALUES(201, 189, NULL);
INSERT INTO debouche VALUES(201, 194, NULL);
INSERT INTO debouche VALUES(201, 184, NULL);
INSERT INTO debouche VALUES(201, 172, NULL);
INSERT INTO debouche VALUES(202, 189, NULL);
INSERT INTO debouche VALUES(202, 194, NULL);
INSERT INTO debouche VALUES(202, 184, NULL);
INSERT INTO debouche VALUES(202, 172, NULL);
INSERT INTO debouche VALUES(204, 42, NULL);
INSERT INTO debouche VALUES(29, 205, NULL);
INSERT INTO debouche VALUES(42, 95, NULL);
INSERT INTO debouche VALUES(108, 96, NULL);
INSERT INTO debouche VALUES(29, 108, NULL);
INSERT INTO debouche VALUES(48, 205, NULL);
INSERT INTO debouche VALUES(30, 205, NULL);
INSERT INTO debouche VALUES(99, 91, NULL);
INSERT INTO debouche VALUES(32, 205, NULL);
INSERT INTO debouche VALUES(39, 205, NULL);
INSERT INTO debouche VALUES(47, 205, NULL);
INSERT INTO debouche VALUES(52, 205, NULL);
INSERT INTO debouche VALUES(65, 205, NULL);
INSERT INTO debouche VALUES(48, 108, NULL);
INSERT INTO debouche VALUES(75, 205, NULL);
INSERT INTO debouche VALUES(204, 205, NULL);
INSERT INTO debouche VALUES(82, 205, NULL);
INSERT INTO debouche VALUES(205, 31, NULL);
INSERT INTO debouche VALUES(89, 99, NULL);
INSERT INTO debouche VALUES(93, 111, NULL);
INSERT INTO debouche VALUES(205, 96, NULL);
INSERT INTO debouche VALUES(205, 204, NULL);
INSERT INTO debouche VALUES(108, 204, NULL);
INSERT INTO debouche VALUES(108, 31, NULL);
INSERT INTO debouche VALUES(105, 63, NULL);
INSERT INTO debouche VALUES(37, 87, NULL);
INSERT INTO debouche VALUES(33, 87, NULL);
INSERT INTO debouche VALUES(2, 137, NULL);
INSERT INTO debouche VALUES(44, 81, NULL);
INSERT INTO debouche VALUES(69, 64, NULL);
INSERT INTO debouche VALUES(28, 135, NULL);
INSERT INTO debouche VALUES(50, 77, NULL);
INSERT INTO debouche VALUES(92, 139, NULL);
INSERT INTO debouche VALUES(135, 96, NULL);
INSERT INTO debouche VALUES(89, 141, NULL);
INSERT INTO debouche VALUES(93, 72, NULL);
INSERT INTO debouche VALUES(94, 72, NULL);
INSERT INTO debouche VALUES(144, 206, NULL);
INSERT INTO debouche VALUES(1, 206, NULL);
INSERT INTO debouche VALUES(8, 206, NULL);
INSERT INTO debouche VALUES(7, 206, NULL);
INSERT INTO debouche VALUES(206, 8, NULL);
INSERT INTO debouche VALUES(206, 1, NULL);
INSERT INTO debouche VALUES(206, 144, NULL);
INSERT INTO debouche VALUES(206, 7, NULL);



DROP TABLE IF EXISTS directory;
CREATE TABLE IF NOT EXISTS `directory` (
  directory_id int(10) unsigned NOT NULL auto_increment,
  main_directory int(10) unsigned NOT NULL default '1',
  directory_name varchar(45) default NULL,
  directory_desc text,
  PRIMARY KEY  (directory_id)
)    ;


INSERT INTO directory VALUES(1, 0, 'images', 'r?pertoire racine des images');
INSERT INTO directory VALUES(2, 1, 'careers', 'images repr?sentant une carri?re');
INSERT INTO directory VALUES(3, 1, 'helps', 'aides de jeu');
INSERT INTO directory VALUES(4, 3, 'sheets', 'feuilles de personnage');
INSERT INTO directory VALUES(5, 0, 'php', 'fichiers php');
INSERT INTO directory VALUES(6, 5, 'admin', 'fichiers php pour l''administration');
INSERT INTO directory VALUES(7, 1, 'maps', 'Ce rÃ©pertoire contient les images de toutes les cartes.');



DROP TABLE IF EXISTS disponibility;
CREATE TABLE IF NOT EXISTS disponibility (
  disponibility_id int(10) unsigned NOT NULL default '0',
  disponibility_name varchar(45) NOT NULL default '',
  disponibility_desc text,
  PRIMARY KEY  (disponibility_id)
) ;


INSERT INTO disponibility VALUES(1, 'banal', '');
INSERT INTO disponibility VALUES(2, 'fr?quent', '');
INSERT INTO disponibility VALUES(3, 'courant', '');
INSERT INTO disponibility VALUES(4, 'inhabituel', '');
INSERT INTO disponibility VALUES(5, 'rare', '');
INSERT INTO disponibility VALUES(6, 'rarissime', '');



DROP TABLE IF EXISTS domestic;
CREATE TABLE IF NOT EXISTS domestic (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO domestic VALUES(1);
INSERT INTO domestic VALUES(2);
INSERT INTO domestic VALUES(3);
INSERT INTO domestic VALUES(4);
INSERT INTO domestic VALUES(5);
INSERT INTO domestic VALUES(6);
INSERT INTO domestic VALUES(7);
INSERT INTO domestic VALUES(8);
INSERT INTO domestic VALUES(9);
INSERT INTO domestic VALUES(10);
INSERT INTO domestic VALUES(11);
INSERT INTO domestic VALUES(12);
INSERT INTO domestic VALUES(13);
INSERT INTO domestic VALUES(14);
INSERT INTO domestic VALUES(15);
INSERT INTO domestic VALUES(16);
INSERT INTO domestic VALUES(17);



DROP TABLE IF EXISTS dotation;
CREATE TABLE IF NOT EXISTS dotation (
  career_id int(10) unsigned NOT NULL default '0',
  objet_id int(10) unsigned NOT NULL default '0',
  dotation_qte varchar(255) default '1',
  dotation_desc text,
  chance int(10) unsigned default '100',
  PRIMARY KEY  (career_id,objet_id)
) ;


INSERT INTO dotation VALUES(1, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(1, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(1, 191, '2D10', NULL, 100);
INSERT INTO dotation VALUES(2, 192, '1', NULL, 100);
INSERT INTO dotation VALUES(2, 193, '1', NULL, 100);
INSERT INTO dotation VALUES(2, 194, '1D6', NULL, 100);
INSERT INTO dotation VALUES(4, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(145, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(146, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(147, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(148, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(149, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(150, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(151, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(152, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(153, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(154, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(155, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(156, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(157, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(158, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(159, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(160, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(161, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(162, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(163, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(6, 2, '1', NULL, 100);
INSERT INTO dotation VALUES(6, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(6, 146, '1', 'amarr?e ? proximit', 100);
INSERT INTO dotation VALUES(9, 112, '1', NULL, 100);
INSERT INTO dotation VALUES(9, 113, '1', NULL, 100);
INSERT INTO dotation VALUES(10, 195, '1D6', 'de couleur', 100);
INSERT INTO dotation VALUES(13, 110, '1', NULL, 100);
INSERT INTO dotation VALUES(16, 114, '6 m?tres de', NULL, 100);
INSERT INTO dotation VALUES(18, 196, '1', 'en pendentif', 100);
INSERT INTO dotation VALUES(20, 197, '6', NULL, 100);
INSERT INTO dotation VALUES(21, 46, '6', NULL, 100);
INSERT INTO dotation VALUES(23, 188, '1D4', 'chance ?gale pour chaque type d''animal', 100);
INSERT INTO dotation VALUES(23, 216, '1', 'chance ?gale pour chaque type d''animal', 100);
INSERT INTO dotation VALUES(23, 217, '1', 'chance ?gale pour chaque type d''animal', 100);
INSERT INTO dotation VALUES(24, 198, '1', NULL, 100);
INSERT INTO dotation VALUES(206, 214, '1', 'dfs', 100);
INSERT INTO dotation VALUES(206, 196, '1', 'ert', 100);
INSERT INTO dotation VALUES(206, 48, '1', 'cvb', 100);
INSERT INTO dotation VALUES(206, 94, '1', 'sgt', 100);
INSERT INTO dotation VALUES(25, 199, '3', NULL, 100);
INSERT INTO dotation VALUES(25, 200, '3', NULL, 100);
INSERT INTO dotation VALUES(25, 201, '1', NULL, 100);
INSERT INTO dotation VALUES(26, 176, '1', 'un instrument parmi les trois', 100);
INSERT INTO dotation VALUES(26, 177, '1', 'un instrument parmi les trois', 100);
INSERT INTO dotation VALUES(26, 178, '1', 'un instrument parmi les trois', 100);
INSERT INTO dotation VALUES(27, 202, '1', NULL, 100);
INSERT INTO dotation VALUES(28, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(28, 203, '1', NULL, 100);
INSERT INTO dotation VALUES(28, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(28, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(28, 49, '1', NULL, 100);
INSERT INTO dotation VALUES(28, 35, '1', NULL, 25);
INSERT INTO dotation VALUES(29, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(29, 50, '1', NULL, 100);
INSERT INTO dotation VALUES(30, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(30, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(30, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(31, 21, '1', NULL, 100);
INSERT INTO dotation VALUES(31, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(31, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(31, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(31, 204, '1', NULL, 100);
INSERT INTO dotation VALUES(31, 129, '1D4', NULL, 100);
INSERT INTO dotation VALUES(31, 51, '1', NULL, 100);
INSERT INTO dotation VALUES(32, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(32, 21, '1', NULL, 100);
INSERT INTO dotation VALUES(32, 56, '1', NULL, 100);
INSERT INTO dotation VALUES(32, 55, '1D6 charges de', '+ munitions', 100);
INSERT INTO dotation VALUES(32, 179, '1', NULL, 100);
INSERT INTO dotation VALUES(33, 207, '1', NULL, 100);
INSERT INTO dotation VALUES(33, 206, '1', NULL, 100);
INSERT INTO dotation VALUES(33, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(34, 189, '1', NULL, 100);
INSERT INTO dotation VALUES(34, 151, '1', NULL, 100);
INSERT INTO dotation VALUES(34, 12, '1', 'dans le chariot', 100);
INSERT INTO dotation VALUES(34, 8, '1D4 (dans le chariot) et 4 (dans le ballot)', NULL, 100);
INSERT INTO dotation VALUES(34, 42, '1', NULL, 100);
INSERT INTO dotation VALUES(34, 175, '1', NULL, 100);
INSERT INTO dotation VALUES(34, 3, '1', 'dans le ballot', 100);
INSERT INTO dotation VALUES(34, 114, '10m, dans le ballot', NULL, 100);
INSERT INTO dotation VALUES(34, 170, '1D4', NULL, 100);
INSERT INTO dotation VALUES(34, 10, '1D4', 'dans chaque grand sac', 100);
INSERT INTO dotation VALUES(34, 16, '1D4', 'dans chaque grand sac', 100);
INSERT INTO dotation VALUES(34, 17, '3D6', 'dans chaque grand sac', 100);
INSERT INTO dotation VALUES(34, 9, '1D6x100', 'dans chaque grand sac', 100);
INSERT INTO dotation VALUES(34, 205, '1D6', 'dans chaque grand sac', 100);
INSERT INTO dotation VALUES(35, 22, '1', NULL, 100);
INSERT INTO dotation VALUES(35, 35, '1', NULL, 100);
INSERT INTO dotation VALUES(35, 48, '1', 'avec munitions', 100);
INSERT INTO dotation VALUES(35, 114, '10m', NULL, 100);
INSERT INTO dotation VALUES(35, 121, '1', NULL, 100);
INSERT INTO dotation VALUES(35, 166, '1', NULL, 100);
INSERT INTO dotation VALUES(36, 21, '1', NULL, 100);
INSERT INTO dotation VALUES(36, 35, '1', NULL, 100);
INSERT INTO dotation VALUES(36, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(36, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(36, 114, '10m', NULL, 100);
INSERT INTO dotation VALUES(36, 121, '1', NULL, 100);
INSERT INTO dotation VALUES(37, 18, '1', NULL, 100);
INSERT INTO dotation VALUES(38, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(38, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(38, 146, '1', 'amarr?e ? proximit', 100);
INSERT INTO dotation VALUES(38, 152, '1', NULL, 100);
INSERT INTO dotation VALUES(38, 155, '1', NULL, 100);
INSERT INTO dotation VALUES(39, 156, '1', '? dessein', 100);
INSERT INTO dotation VALUES(39, 157, '1', NULL, 100);
INSERT INTO dotation VALUES(39, 158, '1', NULL, 100);
INSERT INTO dotation VALUES(40, 49, '1', NULL, 100);
INSERT INTO dotation VALUES(40, 159, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 78, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 137, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 138, '1D4', NULL, 100);
INSERT INTO dotation VALUES(41, 139, '1D6 x 10', NULL, 100);
INSERT INTO dotation VALUES(41, 140, '1D4', NULL, 100);
INSERT INTO dotation VALUES(41, 141, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 135, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 134, '1D6', NULL, 100);
INSERT INTO dotation VALUES(41, 142, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 143, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 144, '1', NULL, 100);
INSERT INTO dotation VALUES(41, 160, '1', 'sauf pour les Capons', 100);
INSERT INTO dotation VALUES(42, 147, '1', NULL, 100);
INSERT INTO dotation VALUES(42, 21, '1', NULL, 100);
INSERT INTO dotation VALUES(42, 35, '1', NULL, 100);
INSERT INTO dotation VALUES(43, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(43, 198, '1D3', 'livres de r?f?rences correspondant ? chacune des ?ventuelles Comp?tences de connaissance', 100);
INSERT INTO dotation VALUES(43, 145, '1', NULL, 100);
INSERT INTO dotation VALUES(44, 136, '1', NULL, 100);
INSERT INTO dotation VALUES(44, 190, '1', NULL, 100);
INSERT INTO dotation VALUES(44, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(44, 208, '1', NULL, 100);
INSERT INTO dotation VALUES(45, 49, '1', NULL, 100);
INSERT INTO dotation VALUES(45, 42, '1', NULL, 100);
INSERT INTO dotation VALUES(45, 44, '1', NULL, 100);
INSERT INTO dotation VALUES(45, 21, '1', NULL, 25);
INSERT INTO dotation VALUES(45, 19, '1', 'si le personnage n''a pas de chemise de mailles', 100);
INSERT INTO dotation VALUES(46, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(46, 59, '1', NULL, 100);
INSERT INTO dotation VALUES(45, 35, '1', NULL, 50);
INSERT INTO dotation VALUES(47, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(47, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(47, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(47, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(47, 133, '1', NULL, 100);
INSERT INTO dotation VALUES(48, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(48, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(48, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(48, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(48, 133, '1', NULL, 100);
INSERT INTO dotation VALUES(49, 161, '1', NULL, 100);
INSERT INTO dotation VALUES(49, 147, '1', NULL, 100);
INSERT INTO dotation VALUES(49, 209, '1D4', NULL, 100);
INSERT INTO dotation VALUES(49, 210, '1', 'pour une valeur de 10D6 CO', 100);
INSERT INTO dotation VALUES(50, 49, '1', NULL, 100);
INSERT INTO dotation VALUES(51, 21, '1', NULL, 100);
INSERT INTO dotation VALUES(51, 35, '1', NULL, 100);
INSERT INTO dotation VALUES(51, 59, '1', NULL, 100);
INSERT INTO dotation VALUES(51, 70, '1', NULL, 100);
INSERT INTO dotation VALUES(51, 109, '1', NULL, 100);
INSERT INTO dotation VALUES(52, 21, '1', NULL, 100);
INSERT INTO dotation VALUES(52, 35, '1', NULL, 100);
INSERT INTO dotation VALUES(52, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(52, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(52, 147, '1', 'sell? et harnach', 100);
INSERT INTO dotation VALUES(52, 114, '10m', NULL, 100);
INSERT INTO dotation VALUES(53, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(53, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(54, 192, '1', NULL, 100);
INSERT INTO dotation VALUES(54, 193, '1', NULL, 100);
INSERT INTO dotation VALUES(54, 165, '1', 'contient des herbes s?ches', 100);
INSERT INTO dotation VALUES(55, 35, '1', NULL, 100);
INSERT INTO dotation VALUES(55, 47, '1', 'ou arbal?te ; avec munitions', 100);
INSERT INTO dotation VALUES(55, 48, '1', 'ou arc ; avec munitions', 100);
INSERT INTO dotation VALUES(55, 18, '1', NULL, 50);
INSERT INTO dotation VALUES(56, 162, '1', NULL, 100);
INSERT INTO dotation VALUES(57, 19, '1', NULL, 100);
INSERT INTO dotation VALUES(57, 45, '1', NULL, 100);
INSERT INTO dotation VALUES(57, 201, '1', 'y compris des As de rechange', 100);
INSERT INTO dotation VALUES(57, 212, '1', NULL, 100);
INSERT INTO dotation VALUES(57, 213, '1', NULL, 100);
INSERT INTO dotation VALUES(74, 211, '1', NULL, 100);
INSERT INTO dotation VALUES(58, 214, '1', NULL, 100);
INSERT INTO dotation VALUES(59, 18, '1', NULL, 100);
INSERT INTO dotation VALUES(59, 165, '1', 'avec casse-cro?te', 100);
INSERT INTO dotation VALUES(59, 215, '1', NULL, 100);
INSERT INTO dotation VALUES(60, 111, '1', NULL, 100);
INSERT INTO dotation VALUES(204, 65, '1', NULL, 100);
INSERT INTO dotation VALUES(204, 209, '1', NULL, 100);
INSERT INTO dotation VALUES(33, 19, '1', NULL, 100);



DROP TABLE IF EXISTS dress;
CREATE TABLE IF NOT EXISTS dress (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO dress VALUES(156);
INSERT INTO dress VALUES(157);
INSERT INTO dress VALUES(158);
INSERT INTO dress VALUES(159);
INSERT INTO dress VALUES(160);
INSERT INTO dress VALUES(161);
INSERT INTO dress VALUES(162);



DROP TABLE IF EXISTS drink;
CREATE TABLE IF NOT EXISTS drink (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO drink VALUES(110);
INSERT INTO drink VALUES(111);



DROP TABLE IF EXISTS equipment;
CREATE TABLE IF NOT EXISTS equipment (
  career_id int(10) unsigned NOT NULL default '0',
  career_id2 int(10) unsigned NOT NULL default '0',
  complement text,
  PRIMARY KEY  (career_id,career_id2)
) ;


INSERT INTO equipment VALUES(1, 55, NULL);
INSERT INTO equipment VALUES(76, 105, NULL);
INSERT INTO equipment VALUES(76, 98, NULL);
INSERT INTO equipment VALUES(2, 3, NULL);
INSERT INTO equipment VALUES(74, 98, NULL);
INSERT INTO equipment VALUES(58, 137, NULL);
INSERT INTO equipment VALUES(2, 75, NULL);
INSERT INTO equipment VALUES(3, 144, NULL);
INSERT INTO equipment VALUES(3, 175, NULL);
INSERT INTO equipment VALUES(3, 25, NULL);
INSERT INTO equipment VALUES(25, 98, NULL);
INSERT INTO equipment VALUES(87, 113, NULL);
INSERT INTO equipment VALUES(3, 53, NULL);
INSERT INTO equipment VALUES(3, 75, NULL);
INSERT INTO equipment VALUES(3, 81, NULL);
INSERT INTO equipment VALUES(4, 28, NULL);
INSERT INTO equipment VALUES(4, 164, NULL);
INSERT INTO equipment VALUES(4, 46, NULL);
INSERT INTO equipment VALUES(145, 28, NULL);
INSERT INTO equipment VALUES(145, 46, NULL);
INSERT INTO equipment VALUES(146, 28, NULL);
INSERT INTO equipment VALUES(146, 46, NULL);
INSERT INTO equipment VALUES(147, 28, NULL);
INSERT INTO equipment VALUES(147, 46, NULL);
INSERT INTO equipment VALUES(148, 28, NULL);
INSERT INTO equipment VALUES(148, 46, NULL);
INSERT INTO equipment VALUES(149, 28, NULL);
INSERT INTO equipment VALUES(149, 46, NULL);
INSERT INTO equipment VALUES(150, 28, NULL);
INSERT INTO equipment VALUES(150, 46, NULL);
INSERT INTO equipment VALUES(151, 28, NULL);
INSERT INTO equipment VALUES(151, 46, NULL);
INSERT INTO equipment VALUES(152, 28, NULL);
INSERT INTO equipment VALUES(152, 46, NULL);
INSERT INTO equipment VALUES(153, 28, NULL);
INSERT INTO equipment VALUES(153, 46, NULL);
INSERT INTO equipment VALUES(154, 28, NULL);
INSERT INTO equipment VALUES(154, 46, NULL);
INSERT INTO equipment VALUES(155, 28, NULL);
INSERT INTO equipment VALUES(155, 46, NULL);
INSERT INTO equipment VALUES(156, 28, NULL);
INSERT INTO equipment VALUES(156, 46, NULL);
INSERT INTO equipment VALUES(157, 127, NULL);
INSERT INTO equipment VALUES(157, 46, NULL);
INSERT INTO equipment VALUES(158, 28, NULL);
INSERT INTO equipment VALUES(158, 46, NULL);
INSERT INTO equipment VALUES(159, 28, NULL);
INSERT INTO equipment VALUES(159, 46, NULL);
INSERT INTO equipment VALUES(160, 28, NULL);
INSERT INTO equipment VALUES(160, 46, NULL);
INSERT INTO equipment VALUES(161, 28, NULL);
INSERT INTO equipment VALUES(161, 46, NULL);
INSERT INTO equipment VALUES(162, 28, NULL);
INSERT INTO equipment VALUES(162, 46, NULL);
INSERT INTO equipment VALUES(163, 28, NULL);
INSERT INTO equipment VALUES(163, 46, NULL);
INSERT INTO equipment VALUES(145, 115, NULL);
INSERT INTO equipment VALUES(146, 116, NULL);
INSERT INTO equipment VALUES(147, 117, NULL);
INSERT INTO equipment VALUES(148, 118, NULL);
INSERT INTO equipment VALUES(149, 119, NULL);
INSERT INTO equipment VALUES(150, 120, NULL);
INSERT INTO equipment VALUES(151, 121, NULL);
INSERT INTO equipment VALUES(152, 122, NULL);
INSERT INTO equipment VALUES(153, 123, NULL);
INSERT INTO equipment VALUES(154, 124, NULL);
INSERT INTO equipment VALUES(155, 125, NULL);
INSERT INTO equipment VALUES(156, 126, NULL);
INSERT INTO equipment VALUES(157, 28, NULL);
INSERT INTO equipment VALUES(158, 128, NULL);
INSERT INTO equipment VALUES(159, 129, NULL);
INSERT INTO equipment VALUES(160, 130, NULL);
INSERT INTO equipment VALUES(161, 131, NULL);
INSERT INTO equipment VALUES(162, 132, NULL);
INSERT INTO equipment VALUES(163, 133, NULL);
INSERT INTO equipment VALUES(5, 25, NULL);
INSERT INTO equipment VALUES(62, 98, NULL);
INSERT INTO equipment VALUES(5, 53, NULL);
INSERT INTO equipment VALUES(5, 57, NULL);
INSERT INTO equipment VALUES(5, 71, NULL);
INSERT INTO equipment VALUES(5, 81, NULL);
INSERT INTO equipment VALUES(5, 165, NULL);
INSERT INTO equipment VALUES(6, 38, NULL);
INSERT INTO equipment VALUES(6, 55, NULL);
INSERT INTO equipment VALUES(6, 60, NULL);
INSERT INTO equipment VALUES(166, 166, NULL);
INSERT INTO equipment VALUES(7, 166, NULL);
INSERT INTO equipment VALUES(8, 166, NULL);
INSERT INTO equipment VALUES(9, 166, NULL);
INSERT INTO equipment VALUES(10, 166, NULL);
INSERT INTO equipment VALUES(11, 166, NULL);
INSERT INTO equipment VALUES(12, 166, NULL);
INSERT INTO equipment VALUES(13, 166, NULL);
INSERT INTO equipment VALUES(14, 166, NULL);
INSERT INTO equipment VALUES(58, 98, NULL);
INSERT INTO equipment VALUES(15, 166, NULL);
INSERT INTO equipment VALUES(171, 105, NULL);
INSERT INTO equipment VALUES(16, 166, NULL);
INSERT INTO equipment VALUES(17, 166, NULL);
INSERT INTO equipment VALUES(61, 139, NULL);
INSERT INTO equipment VALUES(18, 166, NULL);
INSERT INTO equipment VALUES(137, 58, NULL);
INSERT INTO equipment VALUES(19, 166, NULL);
INSERT INTO equipment VALUES(20, 166, NULL);
INSERT INTO equipment VALUES(21, 166, NULL);
INSERT INTO equipment VALUES(22, 166, NULL);
INSERT INTO equipment VALUES(22, 139, NULL);
INSERT INTO equipment VALUES(23, 166, NULL);
INSERT INTO equipment VALUES(24, 166, NULL);
INSERT INTO equipment VALUES(25, 166, NULL);
INSERT INTO equipment VALUES(57, 98, NULL);
INSERT INTO equipment VALUES(26, 166, NULL);
INSERT INTO equipment VALUES(26, 62, NULL);
INSERT INTO equipment VALUES(27, 166, NULL);
INSERT INTO equipment VALUES(69, 91, NULL);
INSERT INTO equipment VALUES(28, 46, NULL);
INSERT INTO equipment VALUES(28, 55, NULL);
INSERT INTO equipment VALUES(83, 135, NULL);
INSERT INTO equipment VALUES(17, 139, NULL);
INSERT INTO equipment VALUES(88, 140, NULL);
INSERT INTO equipment VALUES(29, 66, NULL);
INSERT INTO equipment VALUES(29, 55, NULL);
INSERT INTO equipment VALUES(82, 108, NULL);
INSERT INTO equipment VALUES(204, 108, NULL);
INSERT INTO equipment VALUES(30, 55, NULL);
INSERT INTO equipment VALUES(30, 66, NULL);
INSERT INTO equipment VALUES(114, 96, NULL);
INSERT INTO equipment VALUES(31, 28, NULL);
INSERT INTO equipment VALUES(55, 114, NULL);
INSERT INTO equipment VALUES(79, 135, NULL);
INSERT INTO equipment VALUES(31, 63, NULL);
INSERT INTO equipment VALUES(31, 80, NULL);
INSERT INTO equipment VALUES(68, 91, NULL);
INSERT INTO equipment VALUES(75, 108, NULL);
INSERT INTO equipment VALUES(33, 68, NULL);
INSERT INTO equipment VALUES(78, 90, NULL);
INSERT INTO equipment VALUES(33, 86, NULL);
INSERT INTO equipment VALUES(33, 1, NULL);
INSERT INTO equipment VALUES(33, 64, NULL);
INSERT INTO equipment VALUES(78, 134, NULL);
INSERT INTO equipment VALUES(33, 55, NULL);
INSERT INTO equipment VALUES(140, 167, NULL);
INSERT INTO equipment VALUES(34, 46, NULL);
INSERT INTO equipment VALUES(34, 55, NULL);
INSERT INTO equipment VALUES(87, 140, NULL);
INSERT INTO equipment VALUES(34, 82, NULL);
INSERT INTO equipment VALUES(79, 102, NULL);
INSERT INTO equipment VALUES(35, 38, NULL);
INSERT INTO equipment VALUES(35, 71, NULL);
INSERT INTO equipment VALUES(36, 28, NULL);
INSERT INTO equipment VALUES(72, 93, NULL);
INSERT INTO equipment VALUES(36, 96, NULL);
INSERT INTO equipment VALUES(36, 31, NULL);
INSERT INTO equipment VALUES(101, 96, NULL);
INSERT INTO equipment VALUES(63, 135, NULL);
INSERT INTO equipment VALUES(139, 140, NULL);
INSERT INTO equipment VALUES(138, 93, NULL);
INSERT INTO equipment VALUES(38, 60, NULL);
INSERT INTO equipment VALUES(38, 72, NULL);
INSERT INTO equipment VALUES(71, 140, NULL);
INSERT INTO equipment VALUES(39, 35, NULL);
INSERT INTO equipment VALUES(67, 205, NULL);
INSERT INTO equipment VALUES(40, 1, NULL);
INSERT INTO equipment VALUES(40, 47, NULL);
INSERT INTO equipment VALUES(40, 78, NULL);
INSERT INTO equipment VALUES(53, 140, NULL);
INSERT INTO equipment VALUES(41, 3, NULL);
INSERT INTO equipment VALUES(100, 96, NULL);
INSERT INTO equipment VALUES(79, 101, NULL);
INSERT INTO equipment VALUES(63, 102, NULL);
INSERT INTO equipment VALUES(41, 35, NULL);
INSERT INTO equipment VALUES(41, 127, NULL);
INSERT INTO equipment VALUES(41, 128, NULL);
INSERT INTO equipment VALUES(42, 204, NULL);
INSERT INTO equipment VALUES(143, 103, NULL);
INSERT INTO equipment VALUES(43, 1, NULL);
INSERT INTO equipment VALUES(43, 90, NULL);
INSERT INTO equipment VALUES(78, 109, NULL);
INSERT INTO equipment VALUES(43, 53, NULL);
INSERT INTO equipment VALUES(72, 138, NULL);
INSERT INTO equipment VALUES(43, 84, NULL);
INSERT INTO equipment VALUES(44, 53, NULL);
INSERT INTO equipment VALUES(44, 98, NULL);
INSERT INTO equipment VALUES(45, 96, NULL);
INSERT INTO equipment VALUES(45, 97, NULL);
INSERT INTO equipment VALUES(45, 31, NULL);
INSERT INTO equipment VALUES(45, 68, 'Halfelings except');
INSERT INTO equipment VALUES(45, 139, NULL);
INSERT INTO equipment VALUES(46, 28, NULL);
INSERT INTO equipment VALUES(46, 31, NULL);
INSERT INTO equipment VALUES(96, 99, NULL);
INSERT INTO equipment VALUES(46, 63, NULL);
INSERT INTO equipment VALUES(67, 108, NULL);
INSERT INTO equipment VALUES(47, 114, NULL);
INSERT INTO equipment VALUES(47, 64, NULL);
INSERT INTO equipment VALUES(47, 66, NULL);
INSERT INTO equipment VALUES(47, 76, NULL);
INSERT INTO equipment VALUES(65, 108, NULL);
INSERT INTO equipment VALUES(48, 55, NULL);
INSERT INTO equipment VALUES(48, 66, NULL);
INSERT INTO equipment VALUES(48, 76, NULL);
INSERT INTO equipment VALUES(67, 55, NULL);
INSERT INTO equipment VALUES(49, 103, NULL);
INSERT INTO equipment VALUES(80, 107, NULL);
INSERT INTO equipment VALUES(49, 43, NULL);
INSERT INTO equipment VALUES(49, 53, NULL);
INSERT INTO equipment VALUES(49, 57, NULL);
INSERT INTO equipment VALUES(50, 46, NULL);
INSERT INTO equipment VALUES(50, 92, NULL);
INSERT INTO equipment VALUES(51, 28, NULL);
INSERT INTO equipment VALUES(51, 97, NULL);
INSERT INTO equipment VALUES(51, 31, NULL);
INSERT INTO equipment VALUES(113, 140, NULL);
INSERT INTO equipment VALUES(51, 35, NULL);
INSERT INTO equipment VALUES(73, 136, NULL);
INSERT INTO equipment VALUES(55, 91, NULL);
INSERT INTO equipment VALUES(52, 108, NULL);
INSERT INTO equipment VALUES(52, 63, NULL);
INSERT INTO equipment VALUES(53, 46, NULL);
INSERT INTO equipment VALUES(86, 140, NULL);
INSERT INTO equipment VALUES(81, 44, NULL);
INSERT INTO equipment VALUES(54, 66, NULL);
INSERT INTO equipment VALUES(52, 91, NULL);
INSERT INTO equipment VALUES(63, 99, NULL);
INSERT INTO equipment VALUES(31, 114, NULL);
INSERT INTO equipment VALUES(55, 47, NULL);
INSERT INTO equipment VALUES(55, 83, NULL);
INSERT INTO equipment VALUES(56, 168, NULL);
INSERT INTO equipment VALUES(56, 1, NULL);
INSERT INTO equipment VALUES(84, 98, NULL);
INSERT INTO equipment VALUES(74, 1, NULL);
INSERT INTO equipment VALUES(14, 98, NULL);
INSERT INTO equipment VALUES(44, 137, NULL);
INSERT INTO equipment VALUES(58, 18, NULL);
INSERT INTO equipment VALUES(5, 98, NULL);
INSERT INTO equipment VALUES(59, 28, NULL);
INSERT INTO equipment VALUES(63, 100, NULL);
INSERT INTO equipment VALUES(96, 100, NULL);
INSERT INTO equipment VALUES(79, 100, NULL);
INSERT INTO equipment VALUES(59, 46, NULL);
INSERT INTO equipment VALUES(60, 6, NULL);
INSERT INTO equipment VALUES(60, 94, NULL);
INSERT INTO equipment VALUES(60, 38, NULL);
INSERT INTO equipment VALUES(60, 135, NULL);
INSERT INTO equipment VALUES(60, 72, NULL);
INSERT INTO equipment VALUES(60, 76, NULL);
INSERT INTO equipment VALUES(61, 46, NULL);
INSERT INTO equipment VALUES(61, 77, NULL);
INSERT INTO equipment VALUES(84, 139, NULL);
INSERT INTO equipment VALUES(3, 98, NULL);
INSERT INTO equipment VALUES(63, 96, NULL);
INSERT INTO equipment VALUES(135, 99, NULL);
INSERT INTO equipment VALUES(59, 100, NULL);
INSERT INTO equipment VALUES(96, 101, NULL);
INSERT INTO equipment VALUES(41, 102, NULL);
INSERT INTO equipment VALUES(63, 35, NULL);
INSERT INTO equipment VALUES(50, 135, NULL);
INSERT INTO equipment VALUES(64, 28, NULL);
INSERT INTO equipment VALUES(64, 55, NULL);
INSERT INTO equipment VALUES(64, 63, NULL);
INSERT INTO equipment VALUES(65, 38, NULL);
INSERT INTO equipment VALUES(47, 108, NULL);
INSERT INTO equipment VALUES(65, 55, NULL);
INSERT INTO equipment VALUES(66, 29, NULL);
INSERT INTO equipment VALUES(66, 30, NULL);
INSERT INTO equipment VALUES(66, 47, NULL);
INSERT INTO equipment VALUES(66, 55, NULL);
INSERT INTO equipment VALUES(66, 82, NULL);
INSERT INTO equipment VALUES(66, 179, NULL);
INSERT INTO equipment VALUES(39, 108, NULL);
INSERT INTO equipment VALUES(67, 83, NULL);
INSERT INTO equipment VALUES(67, 66, NULL);
INSERT INTO equipment VALUES(67, 64, NULL);
INSERT INTO equipment VALUES(48, 83, NULL);
INSERT INTO equipment VALUES(107, 91, NULL);
INSERT INTO equipment VALUES(68, 55, NULL);
INSERT INTO equipment VALUES(68, 64, NULL);
INSERT INTO equipment VALUES(32, 91, NULL);
INSERT INTO equipment VALUES(69, 55, NULL);
INSERT INTO equipment VALUES(69, 86, NULL);
INSERT INTO equipment VALUES(70, 72, NULL);
INSERT INTO equipment VALUES(70, 60, NULL);
INSERT INTO equipment VALUES(70, 38, NULL);
INSERT INTO equipment VALUES(70, 37, NULL);
INSERT INTO equipment VALUES(71, 35, NULL);
INSERT INTO equipment VALUES(71, 46, NULL);
INSERT INTO equipment VALUES(71, 77, NULL);
INSERT INTO equipment VALUES(38, 140, NULL);
INSERT INTO equipment VALUES(94, 138, NULL);
INSERT INTO equipment VALUES(72, 38, NULL);
INSERT INTO equipment VALUES(111, 138, NULL);
INSERT INTO equipment VALUES(72, 76, NULL);
INSERT INTO equipment VALUES(51, 136, NULL);
INSERT INTO equipment VALUES(75, 35, 'Nains seulement');
INSERT INTO equipment VALUES(170, 105, NULL);
INSERT INTO equipment VALUES(75, 71, NULL);
INSERT INTO equipment VALUES(75, 79, NULL);
INSERT INTO equipment VALUES(2, 98, NULL);
INSERT INTO equipment VALUES(169, 105, NULL);
INSERT INTO equipment VALUES(77, 28, NULL);
INSERT INTO equipment VALUES(77, 46, NULL);
INSERT INTO equipment VALUES(77, 50, NULL);
INSERT INTO equipment VALUES(77, 81, NULL);
INSERT INTO equipment VALUES(33, 90, NULL);
INSERT INTO equipment VALUES(43, 109, NULL);
INSERT INTO equipment VALUES(78, 112, NULL);
INSERT INTO equipment VALUES(37, 134, NULL);
INSERT INTO equipment VALUES(79, 28, NULL);
INSERT INTO equipment VALUES(79, 96, NULL);
INSERT INTO equipment VALUES(79, 31, NULL);
INSERT INTO equipment VALUES(41, 100, NULL);
INSERT INTO equipment VALUES(63, 101, NULL);
INSERT INTO equipment VALUES(35, 102, NULL);
INSERT INTO equipment VALUES(36, 135, NULL);
INSERT INTO equipment VALUES(80, 28, NULL);
INSERT INTO equipment VALUES(80, 97, NULL);
INSERT INTO equipment VALUES(80, 31, NULL);
INSERT INTO equipment VALUES(49, 107, NULL);
INSERT INTO equipment VALUES(54, 44, NULL);
INSERT INTO equipment VALUES(81, 46, NULL);
INSERT INTO equipment VALUES(81, 77, NULL);
INSERT INTO equipment VALUES(32, 108, NULL);
INSERT INTO equipment VALUES(82, 55, NULL);
INSERT INTO equipment VALUES(82, 66, NULL);
INSERT INTO equipment VALUES(31, 135, NULL);
INSERT INTO equipment VALUES(83, 55, NULL);
INSERT INTO equipment VALUES(84, 46, NULL);
INSERT INTO equipment VALUES(84, 55, NULL);
INSERT INTO equipment VALUES(1, 98, NULL);
INSERT INTO equipment VALUES(85, 46, NULL);
INSERT INTO equipment VALUES(37, 140, NULL);
INSERT INTO equipment VALUES(86, 37, NULL);
INSERT INTO equipment VALUES(34, 140, NULL);
INSERT INTO equipment VALUES(86, 78, NULL);
INSERT INTO equipment VALUES(112, 113, NULL);
INSERT INTO equipment VALUES(85, 140, NULL);
INSERT INTO equipment VALUES(88, 46, NULL);
INSERT INTO equipment VALUES(28, 140, NULL);
INSERT INTO equipment VALUES(175, 165, NULL);
INSERT INTO equipment VALUES(176, 165, NULL);
INSERT INTO equipment VALUES(177, 165, NULL);
INSERT INTO equipment VALUES(178, 165, NULL);
INSERT INTO equipment VALUES(144, 165, NULL);
INSERT INTO equipment VALUES(144, 144, NULL);
INSERT INTO equipment VALUES(175, 176, NULL);
INSERT INTO equipment VALUES(176, 177, NULL);
INSERT INTO equipment VALUES(177, 178, NULL);
INSERT INTO equipment VALUES(89, 63, NULL);
INSERT INTO equipment VALUES(143, 95, NULL);
INSERT INTO equipment VALUES(168, 105, NULL);
INSERT INTO equipment VALUES(33, 134, NULL);
INSERT INTO equipment VALUES(90, 76, NULL);
INSERT INTO equipment VALUES(91, 96, NULL);
INSERT INTO equipment VALUES(97, 107, NULL);
INSERT INTO equipment VALUES(55, 99, NULL);
INSERT INTO equipment VALUES(92, 167, NULL);
INSERT INTO equipment VALUES(28, 139, NULL);
INSERT INTO equipment VALUES(51, 99, NULL);
INSERT INTO equipment VALUES(134, 111, NULL);
INSERT INTO equipment VALUES(138, 111, NULL);
INSERT INTO equipment VALUES(94, 93, NULL);
INSERT INTO equipment VALUES(95, 97, NULL);
INSERT INTO equipment VALUES(95, 31, NULL);
INSERT INTO equipment VALUES(46, 99, NULL);
INSERT INTO equipment VALUES(36, 100, NULL);
INSERT INTO equipment VALUES(41, 101, NULL);
INSERT INTO equipment VALUES(42, 103, NULL);
INSERT INTO equipment VALUES(109, 111, NULL);
INSERT INTO equipment VALUES(95, 57, NULL);
INSERT INTO equipment VALUES(95, 80, NULL);
INSERT INTO equipment VALUES(96, 95, NULL);
INSERT INTO equipment VALUES(96, 97, NULL);
INSERT INTO equipment VALUES(96, 31, NULL);
INSERT INTO equipment VALUES(114, 89, NULL);
INSERT INTO equipment VALUES(102, 101, NULL);
INSERT INTO equipment VALUES(102, 100, NULL);
INSERT INTO equipment VALUES(96, 57, NULL);
INSERT INTO equipment VALUES(96, 80, NULL);
INSERT INTO equipment VALUES(110, 89, NULL);
INSERT INTO equipment VALUES(97, 96, NULL);
INSERT INTO equipment VALUES(91, 107, NULL);
INSERT INTO equipment VALUES(171, 141, NULL);
INSERT INTO equipment VALUES(141, 143, NULL);
INSERT INTO equipment VALUES(15, 105, NULL);
INSERT INTO equipment VALUES(99, 105, NULL);
INSERT INTO equipment VALUES(99, 96, NULL);
INSERT INTO equipment VALUES(98, 105, NULL);
INSERT INTO equipment VALUES(99, 108, NULL);
INSERT INTO equipment VALUES(99, 205, NULL);
INSERT INTO equipment VALUES(100, 36, NULL);
INSERT INTO equipment VALUES(100, 102, NULL);
INSERT INTO equipment VALUES(100, 101, NULL);
INSERT INTO equipment VALUES(101, 36, NULL);
INSERT INTO equipment VALUES(101, 100, NULL);
INSERT INTO equipment VALUES(95, 100, NULL);
INSERT INTO equipment VALUES(95, 101, NULL);
INSERT INTO equipment VALUES(102, 63, NULL);
INSERT INTO equipment VALUES(102, 41, NULL);
INSERT INTO equipment VALUES(102, 35, NULL);
INSERT INTO equipment VALUES(103, 143, NULL);
INSERT INTO equipment VALUES(103, 95, NULL);
INSERT INTO equipment VALUES(168, 169, NULL);
INSERT INTO equipment VALUES(30, 108, NULL);
INSERT INTO equipment VALUES(170, 141, NULL);
INSERT INTO equipment VALUES(169, 170, NULL);
INSERT INTO equipment VALUES(111, 110, NULL);
INSERT INTO equipment VALUES(169, 141, NULL);
INSERT INTO equipment VALUES(170, 171, NULL);
INSERT INTO equipment VALUES(90, 134, NULL);
INSERT INTO equipment VALUES(168, 141, NULL);
INSERT INTO equipment VALUES(90, 105, NULL);
INSERT INTO equipment VALUES(97, 141, NULL);
INSERT INTO equipment VALUES(179, 180, NULL);
INSERT INTO equipment VALUES(180, 181, NULL);
INSERT INTO equipment VALUES(181, 182, NULL);
INSERT INTO equipment VALUES(205, 99, NULL);
INSERT INTO equipment VALUES(107, 96, NULL);
INSERT INTO equipment VALUES(28, 91, NULL);
INSERT INTO equipment VALUES(107, 89, NULL);
INSERT INTO equipment VALUES(108, 99, NULL);
INSERT INTO equipment VALUES(205, 111, NULL);
INSERT INTO equipment VALUES(1, 105, NULL);
INSERT INTO equipment VALUES(109, 134, NULL);
INSERT INTO equipment VALUES(31, 89, NULL);
INSERT INTO equipment VALUES(111, 94, NULL);
INSERT INTO equipment VALUES(43, 138, NULL);
INSERT INTO equipment VALUES(98, 110, NULL);
INSERT INTO equipment VALUES(111, 95, NULL);
INSERT INTO equipment VALUES(112, 167, NULL);
INSERT INTO equipment VALUES(3, 113, NULL);
INSERT INTO equipment VALUES(113, 84, NULL);
INSERT INTO equipment VALUES(40, 84, NULL);
INSERT INTO equipment VALUES(97, 89, NULL);
INSERT INTO equipment VALUES(105, 99, NULL);
INSERT INTO equipment VALUES(114, 99, NULL);
INSERT INTO equipment VALUES(115, 79, NULL);
INSERT INTO equipment VALUES(108, 111, NULL);
INSERT INTO equipment VALUES(135, 60, NULL);
INSERT INTO equipment VALUES(95, 99, NULL);
INSERT INTO equipment VALUES(137, 3, NULL);
INSERT INTO equipment VALUES(18, 58, NULL);
INSERT INTO equipment VALUES(36, 93, NULL);
INSERT INTO equipment VALUES(95, 111, NULL);
INSERT INTO equipment VALUES(92, 99, NULL);
INSERT INTO equipment VALUES(139, 99, NULL);
INSERT INTO equipment VALUES(34, 37, NULL);
INSERT INTO equipment VALUES(140, 37, NULL);
INSERT INTO equipment VALUES(141, 104, NULL);
INSERT INTO equipment VALUES(143, 141, NULL);
INSERT INTO equipment VALUES(141, 56, NULL);
INSERT INTO equipment VALUES(143, 56, NULL);
INSERT INTO equipment VALUES(95, 103, NULL);
INSERT INTO equipment VALUES(97, 143, NULL);
INSERT INTO equipment VALUES(91, 99, NULL);
INSERT INTO equipment VALUES(165, 172, NULL);
INSERT INTO equipment VALUES(165, 189, NULL);
INSERT INTO equipment VALUES(165, 194, NULL);
INSERT INTO equipment VALUES(165, 199, NULL);
INSERT INTO equipment VALUES(165, 184, NULL);
INSERT INTO equipment VALUES(172, 173, NULL);
INSERT INTO equipment VALUES(172, 189, NULL);
INSERT INTO equipment VALUES(172, 194, NULL);
INSERT INTO equipment VALUES(172, 199, NULL);
INSERT INTO equipment VALUES(172, 184, NULL);
INSERT INTO equipment VALUES(173, 174, NULL);
INSERT INTO equipment VALUES(173, 189, NULL);
INSERT INTO equipment VALUES(173, 194, NULL);
INSERT INTO equipment VALUES(173, 199, NULL);
INSERT INTO equipment VALUES(173, 184, NULL);
INSERT INTO equipment VALUES(174, 189, NULL);
INSERT INTO equipment VALUES(174, 194, NULL);
INSERT INTO equipment VALUES(174, 199, NULL);
INSERT INTO equipment VALUES(174, 184, NULL);
INSERT INTO equipment VALUES(189, 190, NULL);
INSERT INTO equipment VALUES(189, 172, NULL);
INSERT INTO equipment VALUES(189, 199, NULL);
INSERT INTO equipment VALUES(189, 184, NULL);
INSERT INTO equipment VALUES(190, 191, NULL);
INSERT INTO equipment VALUES(190, 172, NULL);
INSERT INTO equipment VALUES(190, 199, NULL);
INSERT INTO equipment VALUES(190, 184, NULL);
INSERT INTO equipment VALUES(191, 192, NULL);
INSERT INTO equipment VALUES(191, 172, NULL);
INSERT INTO equipment VALUES(191, 199, NULL);
INSERT INTO equipment VALUES(191, 184, NULL);
INSERT INTO equipment VALUES(192, 172, NULL);
INSERT INTO equipment VALUES(192, 199, NULL);
INSERT INTO equipment VALUES(192, 184, NULL);
INSERT INTO equipment VALUES(184, 185, NULL);
INSERT INTO equipment VALUES(184, 189, NULL);
INSERT INTO equipment VALUES(184, 199, NULL);
INSERT INTO equipment VALUES(184, 172, NULL);
INSERT INTO equipment VALUES(185, 186, NULL);
INSERT INTO equipment VALUES(185, 189, NULL);
INSERT INTO equipment VALUES(185, 199, NULL);
INSERT INTO equipment VALUES(185, 172, NULL);
INSERT INTO equipment VALUES(186, 187, NULL);
INSERT INTO equipment VALUES(186, 189, NULL);
INSERT INTO equipment VALUES(186, 199, NULL);
INSERT INTO equipment VALUES(186, 172, NULL);
INSERT INTO equipment VALUES(187, 189, NULL);
INSERT INTO equipment VALUES(187, 199, NULL);
INSERT INTO equipment VALUES(187, 172, NULL);
INSERT INTO equipment VALUES(194, 195, NULL);
INSERT INTO equipment VALUES(194, 199, NULL);
INSERT INTO equipment VALUES(194, 172, NULL);
INSERT INTO equipment VALUES(195, 196, NULL);
INSERT INTO equipment VALUES(195, 199, NULL);
INSERT INTO equipment VALUES(195, 172, NULL);
INSERT INTO equipment VALUES(196, 197, NULL);
INSERT INTO equipment VALUES(196, 199, NULL);
INSERT INTO equipment VALUES(196, 172, NULL);
INSERT INTO equipment VALUES(197, 199, NULL);
INSERT INTO equipment VALUES(197, 172, NULL);
INSERT INTO equipment VALUES(199, 200, NULL);
INSERT INTO equipment VALUES(199, 189, NULL);
INSERT INTO equipment VALUES(199, 194, NULL);
INSERT INTO equipment VALUES(199, 184, NULL);
INSERT INTO equipment VALUES(199, 172, NULL);
INSERT INTO equipment VALUES(200, 201, NULL);
INSERT INTO equipment VALUES(200, 189, NULL);
INSERT INTO equipment VALUES(200, 194, NULL);
INSERT INTO equipment VALUES(200, 184, NULL);
INSERT INTO equipment VALUES(200, 172, NULL);
INSERT INTO equipment VALUES(201, 202, NULL);
INSERT INTO equipment VALUES(201, 189, NULL);
INSERT INTO equipment VALUES(201, 194, NULL);
INSERT INTO equipment VALUES(201, 184, NULL);
INSERT INTO equipment VALUES(201, 172, NULL);
INSERT INTO equipment VALUES(202, 189, NULL);
INSERT INTO equipment VALUES(202, 194, NULL);
INSERT INTO equipment VALUES(202, 184, NULL);
INSERT INTO equipment VALUES(202, 172, NULL);
INSERT INTO equipment VALUES(204, 42, NULL);
INSERT INTO equipment VALUES(29, 205, NULL);
INSERT INTO equipment VALUES(42, 95, NULL);
INSERT INTO equipment VALUES(108, 96, NULL);
INSERT INTO equipment VALUES(29, 108, NULL);
INSERT INTO equipment VALUES(48, 205, NULL);
INSERT INTO equipment VALUES(30, 205, NULL);
INSERT INTO equipment VALUES(99, 91, NULL);
INSERT INTO equipment VALUES(32, 205, NULL);
INSERT INTO equipment VALUES(39, 205, NULL);
INSERT INTO equipment VALUES(47, 205, NULL);
INSERT INTO equipment VALUES(52, 205, NULL);
INSERT INTO equipment VALUES(65, 205, NULL);
INSERT INTO equipment VALUES(48, 108, NULL);
INSERT INTO equipment VALUES(75, 205, NULL);
INSERT INTO equipment VALUES(204, 205, NULL);
INSERT INTO equipment VALUES(82, 205, NULL);
INSERT INTO equipment VALUES(205, 31, NULL);
INSERT INTO equipment VALUES(89, 99, NULL);
INSERT INTO equipment VALUES(93, 111, NULL);
INSERT INTO equipment VALUES(205, 96, NULL);
INSERT INTO equipment VALUES(205, 204, NULL);
INSERT INTO equipment VALUES(108, 204, NULL);
INSERT INTO equipment VALUES(108, 31, NULL);
INSERT INTO equipment VALUES(105, 63, NULL);
INSERT INTO equipment VALUES(37, 87, NULL);
INSERT INTO equipment VALUES(33, 87, NULL);
INSERT INTO equipment VALUES(2, 137, NULL);
INSERT INTO equipment VALUES(44, 81, NULL);
INSERT INTO equipment VALUES(69, 64, NULL);
INSERT INTO equipment VALUES(28, 135, NULL);
INSERT INTO equipment VALUES(50, 77, NULL);
INSERT INTO equipment VALUES(92, 139, NULL);
INSERT INTO equipment VALUES(135, 96, NULL);
INSERT INTO equipment VALUES(89, 141, NULL);
INSERT INTO equipment VALUES(93, 72, NULL);
INSERT INTO equipment VALUES(94, 72, NULL);
INSERT INTO equipment VALUES(144, 206, NULL);
INSERT INTO equipment VALUES(1, 206, NULL);
INSERT INTO equipment VALUES(8, 206, NULL);
INSERT INTO equipment VALUES(7, 206, NULL);
INSERT INTO equipment VALUES(206, 8, NULL);
INSERT INTO equipment VALUES(206, 1, NULL);
INSERT INTO equipment VALUES(206, 144, NULL);
INSERT INTO equipment VALUES(206, 7, NULL);



DROP TABLE IF EXISTS eye;
CREATE TABLE IF NOT EXISTS eye (
  eye_id int(10) unsigned NOT NULL auto_increment,
  eye_name varchar(45) default NULL,
  PRIMARY KEY  (eye_id)
)    ;


INSERT INTO eye VALUES(1, 'gris clair');
INSERT INTO eye VALUES(2, 'gris-bleu');
INSERT INTO eye VALUES(3, 'bleu');
INSERT INTO eye VALUES(4, 'pers');
INSERT INTO eye VALUES(5, 'vert');
INSERT INTO eye VALUES(6, 'noisette');
INSERT INTO eye VALUES(7, 'marron clair');
INSERT INTO eye VALUES(8, 'marron');
INSERT INTO eye VALUES(9, 'marron fonc');
INSERT INTO eye VALUES(10, 'violet');
INSERT INTO eye VALUES(11, 'cuivre');
INSERT INTO eye VALUES(12, 'indigo');
INSERT INTO eye VALUES(13, 'argent');
INSERT INTO eye VALUES(14, 'gris-vert');
INSERT INTO eye VALUES(15, 'noir');



DROP TABLE IF EXISTS follower;
CREATE TABLE IF NOT EXISTS follower (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;





DROP TABLE IF EXISTS food;
CREATE TABLE IF NOT EXISTS food (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;





DROP TABLE IF EXISTS hair;
CREATE TABLE IF NOT EXISTS hair (
  hair_id int(10) unsigned NOT NULL auto_increment,
  hair_name varchar(45) default NULL,
  PRIMARY KEY  (hair_id)
)    ;


INSERT INTO hair VALUES(1, 'blanc');
INSERT INTO hair VALUES(2, 'argent');
INSERT INTO hair VALUES(3, 'blond-cendr');
INSERT INTO hair VALUES(4, 'blond');
INSERT INTO hair VALUES(5, 'mordor');
INSERT INTO hair VALUES(6, 'roux');
INSERT INTO hair VALUES(7, 'ocre');
INSERT INTO hair VALUES(8, 'auburn');
INSERT INTO hair VALUES(9, 'cuivr');
INSERT INTO hair VALUES(10, 'ch?tain clair');
INSERT INTO hair VALUES(11, 'ch?tain fonc');
INSERT INTO hair VALUES(12, 'brun');
INSERT INTO hair VALUES(13, 'noir');
INSERT INTO hair VALUES(14, 'bleu-noir');
INSERT INTO hair VALUES(15, 'noir de jais');



DROP TABLE IF EXISTS image;
CREATE TABLE IF NOT EXISTS image (
  image_id int(10) unsigned NOT NULL auto_increment,
  directory_id int(10) unsigned NOT NULL default '0',
  copyright_id int(10) unsigned NOT NULL default '1',
  image_name varchar(45) default NULL,
  image_desc text,
  image_src varchar(255) default NULL,
  small_image_src varchar(50) default NULL,
  image_height int(11) default '0',
  image_width int(11) default '0',
  PRIMARY KEY  (image_id)
)    ;


INSERT INTO image VALUES(1, 2, 1, 'career default', 'image par d?faut pour les carri?res', 'career_default.gif', NULL, 0, 0);
INSERT INTO image VALUES(2, 2, 1, 'agitateur', '', 'agitateur.gif', NULL, 0, 0);
INSERT INTO image VALUES(3, 2, 1, 'apprenti alchimiste', '', 'apprenti_alchimiste.gif', NULL, 0, 0);
INSERT INTO image VALUES(4, 2, 1, 'apothicaire', '', 'apothicaire.gif', NULL, 0, 0);
INSERT INTO image VALUES(5, 2, 1, 'apprenti artisan', '', 'apprenti_artisan.gif', NULL, 0, 0);
INSERT INTO image VALUES(6, 2, 1, 'apprenti sorcier', '', 'apprenti_sorcier.gif', NULL, 0, 0);
INSERT INTO image VALUES(7, 2, 1, 'batelier', '', 'batelier.gif', NULL, 0, 0);
INSERT INTO image VALUES(8, 2, 1, 'bateleur', '', 'bateleur.gif', NULL, 0, 0);
INSERT INTO image VALUES(9, 2, 1, 'brigand', '', 'brigand.gif', NULL, 0, 0);
INSERT INTO image VALUES(10, 2, 1, 'b?cheron', '', 'bucheron.gif', NULL, 0, 0);
INSERT INTO image VALUES(11, 2, 1, 'chasseur', '', 'chasseur.gif', NULL, 0, 0);
INSERT INTO image VALUES(12, 2, 1, 'chasseur de primes', '', 'chasseur_de_primes.gif', NULL, 0, 0);
INSERT INTO image VALUES(13, 2, 1, 'cocher', '', 'cocher.gif', NULL, 0, 0);
INSERT INTO image VALUES(14, 2, 1, 'collecteur d''imp?ts', '', 'collecteur_d_impots.gif', NULL, 0, 0);
INSERT INTO image VALUES(15, 2, 1, 'colporteur', '', 'colporteur.gif', NULL, 0, 0);
INSERT INTO image VALUES(16, 2, 1, 'combattant des tunnels', '', 'combattant_des_tunnels.gif', NULL, 0, 0);
INSERT INTO image VALUES(17, 2, 1, 'combattant embarqu', '', 'combattant_embarque.gif', NULL, 0, 0);
INSERT INTO image VALUES(18, 2, 1, 'commer?ant', '', 'commercant.gif', NULL, 0, 0);
INSERT INTO image VALUES(19, 2, 1, 'contrebandier', '', 'contrebandier.gif', NULL, 0, 0);
INSERT INTO image VALUES(20, 2, 1, 'courrier', '', 'courrier.gif', NULL, 0, 0);
INSERT INTO image VALUES(21, 2, 1, 'domestique', '', 'domestique.gif', NULL, 0, 0);
INSERT INTO image VALUES(22, 2, 1, 'engingneur', '', 'engingneur.gif', NULL, 0, 0);
INSERT INTO image VALUES(23, 2, 1, '?cuyer', '', 'ecuyer.gif', NULL, 0, 0);
INSERT INTO image VALUES(24, 2, 1, '?tudiant', '', 'etudiant.gif', NULL, 0, 0);
INSERT INTO image VALUES(25, 2, 1, '?tudiant en m?decine', '', 'etudiant_en_medecine.gif', NULL, 0, 0);
INSERT INTO image VALUES(26, 2, 1, 'garde', '', 'garde.gif', NULL, 0, 0);
INSERT INTO image VALUES(27, 2, 1, 'garde du corps', '', 'garde_du_corps.gif', NULL, 0, 0);
INSERT INTO image VALUES(28, 2, 1, 'garde chasse', '', 'garde_chasse.gif', NULL, 0, 0);
INSERT INTO image VALUES(29, 2, 1, 'gentilhomme', '', 'gentilhomme.gif', NULL, 0, 0);
INSERT INTO image VALUES(30, 2, 1, 'ge?lier', '', 'geolier.gif', NULL, 0, 0);
INSERT INTO image VALUES(31, 2, 1, 'gladiateur', '', 'gladiateur.gif', NULL, 0, 0);
INSERT INTO image VALUES(32, 2, 1, 'guide convoyeur', '', 'guide_convoyeur.gif', NULL, 0, 0);
INSERT INTO image VALUES(33, 2, 1, 'guide racoleur', '', 'guide_racoleur.gif', NULL, 0, 0);
INSERT INTO image VALUES(34, 2, 1, 'herboriste', '', 'herboriste.gif', NULL, 0, 0);
INSERT INTO image VALUES(35, 2, 1, 'hors-la-loi', '', 'hors_la_loi.gif', NULL, 0, 0);
INSERT INTO image VALUES(36, 2, 1, 'initi', '', 'initie.gif', NULL, 0, 0);
INSERT INTO image VALUES(37, 2, 1, 'pr?dicateur', '', 'predicateur.gif', NULL, 0, 0);
INSERT INTO image VALUES(38, 2, 1, 'joueur professionnel', '', 'joueur_professionnel.gif', NULL, 0, 0);
INSERT INTO image VALUES(39, 2, 1, 'magn?tiseur', '', 'magnetiseur.gif', NULL, 0, 0);
INSERT INTO image VALUES(40, 2, 1, 'manouvrier', '', 'manouvrier.gif', NULL, 0, 0);
INSERT INTO image VALUES(41, 2, 1, 'matelot', '', 'matelot.gif', NULL, 0, 0);
INSERT INTO image VALUES(42, 2, 1, 'mendiant', '', 'mendiant.gif', NULL, 0, 0);
INSERT INTO image VALUES(43, 2, 1, 'm?nestrel', '', 'menestrel.gif', NULL, 0, 0);
INSERT INTO image VALUES(44, 2, 1, 'mercenaire', '', 'mercenaire.gif', NULL, 0, 0);
INSERT INTO image VALUES(45, 2, 1, 'milicien', '', 'milicien.gif', NULL, 0, 0);
INSERT INTO image VALUES(46, 2, 1, 'muletier', '', 'muletier.gif', NULL, 0, 0);
INSERT INTO image VALUES(47, 2, 1, 'ovate', '', 'ovate.gif', NULL, 0, 0);
INSERT INTO image VALUES(48, 2, 1, 'p?tre', '', 'patre.gif', NULL, 0, 0);
INSERT INTO image VALUES(49, 2, 1, 'patrouilleur rural', '', 'patrouilleur_rural.gif', NULL, 0, 0);
INSERT INTO image VALUES(50, 2, 1, 'p?ager', '', 'peager.gif', NULL, 0, 0);
INSERT INTO image VALUES(51, 2, 1, 'p?cheur', '', 'pecheur.gif', NULL, 0, 0);
INSERT INTO image VALUES(52, 2, 1, 'pilleur de tombes', '', 'pilleur_de_tombes.gif', NULL, 0, 0);
INSERT INTO image VALUES(53, 2, 1, 'pilote', '', 'pilote.gif', NULL, 0, 0);
INSERT INTO image VALUES(54, 2, 1, 'pourfendeur de trolls', '', 'pourfendeur_de_trolls.gif', NULL, 0, 0);
INSERT INTO image VALUES(55, 2, 1, 'prospecteur', '', 'prospecteur.gif', NULL, 0, 0);
INSERT INTO image VALUES(56, 2, 1, 'raconteur', '', 'raconteur.gif', NULL, 0, 0);
INSERT INTO image VALUES(57, 2, 1, 'ratier', '', 'ratier.gif', NULL, 0, 0);
INSERT INTO image VALUES(58, 2, 1, 'scribe', '', 'scribe.gif', NULL, 0, 0);
INSERT INTO image VALUES(59, 2, 1, 'soldat', '', 'soldat.gif', NULL, 0, 0);
INSERT INTO image VALUES(60, 2, 1, 'spadassin', '', 'spadassin.gif', NULL, 0, 0);
INSERT INTO image VALUES(61, 2, 1, 'trafiquant de cadavres', '', 'trafiquant_de_cadavres.gif', NULL, 0, 0);
INSERT INTO image VALUES(62, 2, 1, 'trappeur', '', 'trappeur.gif', NULL, 0, 0);
INSERT INTO image VALUES(63, 2, 1, 'voleur de b?tail', '', 'voleur_de_betail.gif', NULL, 0, 0);
INSERT INTO image VALUES(64, 2, 1, 'voleur', '', 'voleur.gif', NULL, 0, 0);
INSERT INTO image VALUES(65, 2, 1, 'alchimiste', '', 'alchimiste.gif', NULL, 0, 0);
INSERT INTO image VALUES(66, 2, 1, 'assassin', '', 'assassin.gif', NULL, 0, 0);
INSERT INTO image VALUES(67, 2, 1, 'avou', '', 'avoue.gif', NULL, 0, 0);
INSERT INTO image VALUES(68, 2, 1, 'bandit de grand chemin', '', 'bandit_de_grand_chemin.gif', NULL, 0, 0);
INSERT INTO image VALUES(69, 2, 1, 'bourreau', '', 'bourreau.gif', NULL, 0, 0);
INSERT INTO image VALUES(70, 2, 1, 'capitaine de  navire', '', 'capitaine_de_navire.gif', NULL, 0, 0);
INSERT INTO image VALUES(71, 2, 1, 'sergent mercenaire', '', 'sergent_mercenaire.gif', NULL, 0, 0);
INSERT INTO image VALUES(72, 2, 1, 'capitaine mercenaire', '', 'capitaine_mercenaire.gif', NULL, 0, 0);
INSERT INTO image VALUES(73, 2, 1, 'champion de justice', '', 'champion_de_justice.gif', NULL, 0, 0);
INSERT INTO image VALUES(74, 2, 1, 'charlatan', '', 'charlatan.gif', NULL, 0, 0);
INSERT INTO image VALUES(75, 2, 1, 'chef rebelle', '', 'chef_rebelle.gif', NULL, 0, 0);
INSERT INTO image VALUES(76, 2, 1, 'chef balistaire', '', 'chef_balistaire.gif', NULL, 0, 0);
INSERT INTO image VALUES(77, 2, 1, 'chef canonnier', '', 'chef_canonnier.gif', NULL, 0, 0);
INSERT INTO image VALUES(78, 2, 1, 'chef sapeur', '', 'chef_sapeur.gif', NULL, 0, 0);
INSERT INTO image VALUES(79, 2, 1, 'chevalier errant', '', 'chevalier_errant.gif', NULL, 0, 0);
INSERT INTO image VALUES(80, 2, 1, 'clerc', '', 'clerc.gif', NULL, 0, 0);
INSERT INTO image VALUES(81, 2, 1, 'druide', '', 'druide.gif', NULL, 0, 0);
INSERT INTO image VALUES(82, 2, 1, 'duelliste', '', 'duelliste.gif', NULL, 0, 0);
INSERT INTO image VALUES(83, 2, 1, '?claireur', '', 'eclaireur.gif', NULL, 0, 0);
INSERT INTO image VALUES(84, 2, 1, '?rudit', '', 'erudit.gif', NULL, 0, 0);
INSERT INTO image VALUES(85, 2, 1, 'espion', '', 'espion.gif', NULL, 0, 0);
INSERT INTO image VALUES(86, 2, 1, 'explorateur', '', 'explorateur.gif', NULL, 0, 0);
INSERT INTO image VALUES(87, 2, 1, 'faussaire', '', 'faussaire.gif', NULL, 0, 0);
INSERT INTO image VALUES(88, 2, 1, 'faux-monnayeur', '', 'faux_monnayeur.gif', NULL, 0, 0);
INSERT INTO image VALUES(89, 2, 1, 'franc-archer', '', 'franc_archer.gif', NULL, 0, 0);
INSERT INTO image VALUES(90, 2, 1, 'ma?tre-artisan', '', 'maitre_artisan.gif', NULL, 0, 0);
INSERT INTO image VALUES(91, 2, 1, 'marchand', '', 'marchand.gif', NULL, 0, 0);
INSERT INTO image VALUES(92, 2, 1, 'marchand d''exclaves', '', 'marchand_d_esclaves.gif', NULL, 0, 0);
INSERT INTO image VALUES(93, 2, 1, 'massacreur de g?ants', '', 'massacreur_de_geants.gif', NULL, 0, 0);
INSERT INTO image VALUES(94, 2, 1, 'm?decin', '', 'medecin.gif', NULL, 0, 0);
INSERT INTO image VALUES(95, 2, 1, 'navigateur', '', 'navigateur.gif', NULL, 0, 0);
INSERT INTO image VALUES(96, 2, 1, 'racketteur', '', 'racketteur.gif', NULL, 0, 0);
INSERT INTO image VALUES(97, 2, 1, 'receleur', '', 'receleur.gif', NULL, 0, 0);
INSERT INTO image VALUES(98, 2, 1, 'r?purgateur', '', 'repurgateur.gif', NULL, 0, 0);
INSERT INTO image VALUES(99, 2, 1, 'sorcier', '', 'sorcier.gif', NULL, 0, 0);
INSERT INTO image VALUES(100, 2, 1, 'templier', '', 'templier.gif', NULL, 0, 0);
INSERT INTO image VALUES(101, 3, 1, 'feuille de personnage', '', 'basic_sheet_front.jpg', NULL, 0, 0);
INSERT INTO image VALUES(102, 2, 1, 'sorcier', '', 'sorcier1.gif', NULL, 0, 0);
INSERT INTO image VALUES(103, 2, 1, 'alchimiste', '', 'alchimiste1.gif', NULL, 0, 0);
INSERT INTO image VALUES(104, 2, 1, 'druide', '', 'druide1.gif', NULL, 0, 0);
INSERT INTO image VALUES(105, 2, 1, 'n?cromant', '', 'necromant.gif', NULL, 0, 0);
INSERT INTO image VALUES(106, 2, 1, '?l?mentaliste', '', 'elementaliste.gif', NULL, 0, 0);
INSERT INTO image VALUES(107, 2, 1, 'illusionniste', '', 'illusionniste.gif', NULL, 0, 0);
INSERT INTO image VALUES(108, 2, 1, 'd?moniste', '', 'demoniste.gif', NULL, 0, 0);
INSERT INTO image VALUES(109, 7, 1, 'world10.jpg', NULL, 'world/world10.jpg', NULL, 0, 0);
INSERT INTO image VALUES(110, 7, 1, 'world11.jpg', NULL, 'world/world11.jpg', NULL, 0, 0);
INSERT INTO image VALUES(111, 7, 1, 'world1.jpg', NULL, 'world/world1.jpg', NULL, 0, 0);
INSERT INTO image VALUES(112, 7, 1, 'world2.gif', NULL, 'world/world2.gif', NULL, 0, 0);
INSERT INTO image VALUES(113, 7, 1, 'world3.jpg', NULL, 'world/world3.jpg', NULL, 0, 0);
INSERT INTO image VALUES(114, 7, 1, 'world4.jpg', NULL, 'world/world4.jpg', NULL, 0, 0);
INSERT INTO image VALUES(115, 7, 1, 'world5.jpg', NULL, 'world/world5.jpg', NULL, 0, 0);
INSERT INTO image VALUES(116, 7, 1, 'world6.gif', NULL, 'world/world6.gif', NULL, 0, 0);
INSERT INTO image VALUES(117, 7, 1, 'world7.jpg', NULL, 'world/world7.jpg', NULL, 0, 0);
INSERT INTO image VALUES(118, 7, 1, 'world8_small.jpg', NULL, 'world/world8_small.jpg', NULL, 0, 0);
INSERT INTO image VALUES(119, 7, 1, 'world8_big.jpg', NULL, 'world/world8_big.jpg', NULL, 0, 0);
INSERT INTO image VALUES(120, 7, 1, 'world9.jpg', NULL, 'world/world9.jpg', NULL, 0, 0);
INSERT INTO image VALUES(121, 7, 1, 'albion1.jpg', NULL, 'albion/albion1.jpg', NULL, 0, 0);
INSERT INTO image VALUES(122, 7, 1, 'albion2.jpg', NULL, 'albion/albion2.jpg', NULL, 0, 0);
INSERT INTO image VALUES(123, 7, 1, 'albion3.jpg', NULL, 'albion/albion3.jpg', NULL, 0, 0);
INSERT INTO image VALUES(124, 7, 1, 'altdorf1.jpg', NULL, 'altdorf/altdorf1.jpg', NULL, 0, 0);
INSERT INTO image VALUES(125, 7, 1, 'altdorf2.jpg', NULL, 'altdorf/altdorf2.jpg', NULL, 0, 0);
INSERT INTO image VALUES(126, 0, 1, 'arabie1.jpg', NULL, 'arabie/arabie1.jpg', NULL, 0, 0);
INSERT INTO image VALUES(127, 7, 1, 'arabie2.jpg', NULL, 'arabie/arabie2.jpg', NULL, 0, 0);
INSERT INTO image VALUES(128, 7, 1, 'arabie3.jpg', NULL, 'iarabie/arabie3.jpg', NULL, 0, 0);
INSERT INTO image VALUES(129, 7, 1, 'arabie4.jpg', NULL, 'arabie/arabie4.jpg', NULL, 0, 0);
INSERT INTO image VALUES(130, 7, 1, 'arabie5.jpg', NULL, 'arabie/arabie5.jpg', NULL, 0, 0);
INSERT INTO image VALUES(131, 7, 1, 'arabie6.jpg', NULL, 'arabie/arabie6.jpg', NULL, 0, 0);
INSERT INTO image VALUES(132, 7, 1, 'arabie7.jpg', NULL, 'arabie/arabie7.jpg', NULL, 0, 0);
INSERT INTO image VALUES(133, 7, 1, 'borderprinces1.jpg', NULL, 'borderprinces/borderprinces1.jpg', NULL, 0, 0);
INSERT INTO image VALUES(134, 7, 1, 'altdorf3.gif', NULL, 'altdorf/altdorf3.gif', NULL, 0, 0);
INSERT INTO image VALUES(135, 7, 1, 'bretonnie1.jpg', NULL, 'bretonnie/bretonnie1.jpg', NULL, 0, 0);
INSERT INTO image VALUES(136, 7, 1, 'bretonnie2.gif', NULL, 'bretonnie/bretonnie2.gif', NULL, 0, 0);
INSERT INTO image VALUES(137, 7, 1, 'bretonnie3.gif', NULL, 'bretonnie/bretonnie3.gif', NULL, 0, 0);
INSERT INTO image VALUES(138, 7, 1, 'bretonnie4.jpg', NULL, 'bretonnie/bretonnie4.jpg', NULL, 0, 0);



DROP TABLE IF EXISTS image_for_pdf_sheet;
CREATE TABLE IF NOT EXISTS image_for_pdf_sheet (
  pdf_sheet_id int(10) unsigned NOT NULL auto_increment,
  image_id_back int(10) unsigned NOT NULL default '0',
  image_id_front int(10) unsigned NOT NULL default '0',
  name_x int(10) unsigned default NULL,
  name_y int(10) unsigned default NULL,
  name_w int(10) unsigned default NULL,
  name_h int(10) unsigned default NULL,
  PRIMARY KEY  (pdf_sheet_id)
)   ;







DROP TABLE IF EXISTS initial_skill;
CREATE TABLE IF NOT EXISTS initial_skill (
  race_id int(11) NOT NULL default '0',
  de_id int(10) unsigned NOT NULL default '0',
  multiplicateur int(10) unsigned default '1',
  modificateur int(10) unsigned default '0',
  PRIMARY KEY  (race_id,de_id)
) ;


INSERT INTO initial_skill VALUES(1, 4, 1, 0);
INSERT INTO initial_skill VALUES(2, 4, 1, 0);
INSERT INTO initial_skill VALUES(3, 4, 1, 0);
INSERT INTO initial_skill VALUES(4, 4, 1, 0);
INSERT INTO initial_skill VALUES(5, 4, 1, 0);



DROP TABLE IF EXISTS joueur;
CREATE TABLE IF NOT EXISTS joueur (
  user_id int(11) NOT NULL default '0',
  PRIMARY KEY  (user_id)
) ;


INSERT INTO joueur VALUES(3);





DROP TABLE IF EXISTS language;
CREATE TABLE IF NOT EXISTS `language` (
  language_id int(10) unsigned NOT NULL default '0',
  language_name varchar(45) default NULL,
  language_desc text,
  PRIMARY KEY  (language_id)
) ;


INSERT INTO language VALUES(1, 'occidental', 'description de langue occidentale');
INSERT INTO language VALUES(2, 'eltharin', 'langue elfique');
INSERT INTO language VALUES(3, 'khazalide', 'langue naine');
INSERT INTO language VALUES(4, 'ghassalie', 'langue gnome');



DROP TABLE IF EXISTS lighting;
CREATE TABLE IF NOT EXISTS lighting (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO lighting VALUES(37);
INSERT INTO lighting VALUES(38);
INSERT INTO lighting VALUES(39);
INSERT INTO lighting VALUES(40);
INSERT INTO lighting VALUES(41);
INSERT INTO lighting VALUES(42);
INSERT INTO lighting VALUES(43);
INSERT INTO lighting VALUES(44);



DROP TABLE IF EXISTS link;
CREATE TABLE IF NOT EXISTS link (
  link_id int(4) NOT NULL auto_increment,
  image_id int(4) NOT NULL,
  linx_url varchar(75) NOT NULL,
  PRIMARY KEY  (link_id,image_id,linx_url)
)   ;





DROP TABLE IF EXISTS magic_field;
CREATE TABLE IF NOT EXISTS magic_field (
  magic_field_id int(10) unsigned NOT NULL auto_increment,
  magic_field_name varchar(255) default NULL,
  magic_field_desc text,
  PRIMARY KEY  (magic_field_id)
)    ;


INSERT INTO magic_field VALUES(1, 'magie de bataille', '');
INSERT INTO magic_field VALUES(2, 'alchimie', '');
INSERT INTO magic_field VALUES(3, 'n?cromancie', '');
INSERT INTO magic_field VALUES(4, 'd?monisme', '');
INSERT INTO magic_field VALUES(5, 'pr?trise', '');
INSERT INTO magic_field VALUES(6, 'druidique', '');
INSERT INTO magic_field VALUES(7, 'magie mineure', '');



DROP TABLE IF EXISTS magic_level;
CREATE TABLE IF NOT EXISTS magic_level (
  magic_level_id int(10) unsigned NOT NULL auto_increment,
  magic_level_name varchar(255) default NULL,
  magic_level_desc text,
  PRIMARY KEY  (magic_level_id)
)    ;


INSERT INTO magic_level VALUES(1, 'niveau 1', '');
INSERT INTO magic_level VALUES(2, 'niveau 2', '');
INSERT INTO magic_level VALUES(3, 'niveau 3', '');
INSERT INTO magic_level VALUES(4, 'niveau 4', '');
INSERT INTO magic_level VALUES(5, 'archimage', '');



DROP TABLE IF EXISTS maitre;
CREATE TABLE IF NOT EXISTS maitre (
  user_id int(11) NOT NULL default '0',
  PRIMARY KEY  (user_id)
) ;








DROP TABLE IF EXISTS map;
CREATE TABLE IF NOT EXISTS map (
  map_id int(11) NOT NULL default '0',
  map_name varchar(45) NOT NULL default '',
  map_desc text,
  image_id int(10) unsigned NOT NULL,
  PRIMARY KEY  (map_id)
) ;


INSERT INTO map VALUES(1, 'nom de la carte', 'description de la carte', 109);
INSERT INTO map VALUES(2, 'nom de la carte', 'description', 110);
INSERT INTO map VALUES(3, 'nom de la carte', 'description', 111);
INSERT INTO map VALUES(4, 'nom de la carte', 'description', 112);
INSERT INTO map VALUES(5, 'nom de la carte', 'description', 113);
INSERT INTO map VALUES(6, 'nom de la carte', 'description', 114);
INSERT INTO map VALUES(7, 'nom de la carte', 'description', 115);
INSERT INTO map VALUES(8, 'nom de la carte', 'description', 116);
INSERT INTO map VALUES(9, 'nom de la carte', 'description', 117);
INSERT INTO map VALUES(10, 'nom de la carte', 'description', 118);
INSERT INTO map VALUES(11, 'nom de la carte', 'description', 119);
INSERT INTO map VALUES(12, 'nom de la carte', 'description', 120);
INSERT INTO map VALUES(13, 'Albion 1', 'description', 121);
INSERT INTO map VALUES(14, 'Albion 2', 'description', 122);
INSERT INTO map VALUES(15, 'Albion 3', 'description', 123);
INSERT INTO map VALUES(16, 'Altdorf 1', 'description', 124);
INSERT INTO map VALUES(17, 'Altdorf 2', 'description', 125);
INSERT INTO map VALUES(18, 'Arabie 1', 'description', 126);
INSERT INTO map VALUES(19, 'Arabie 2', 'description', 127);
INSERT INTO map VALUES(20, 'Arabie 3', 'description', 128);
INSERT INTO map VALUES(21, 'Arabie 4', 'description', 129);
INSERT INTO map VALUES(22, 'Arabie 5', 'description', 130);
INSERT INTO map VALUES(23, 'Arabie 6', 'description', 131);
INSERT INTO map VALUES(24, 'Arabie 7', 'description', 132);
INSERT INTO map VALUES(25, 'border princes 1', 'description', 133);
INSERT INTO map VALUES(26, 'Altdorf 3', 'description', 134);
INSERT INTO map VALUES(27, 'bretonnie 1', 'description', 135);
INSERT INTO map VALUES(28, 'bretonnie 2', 'description', 136);
INSERT INTO map VALUES(29, 'bretonnie 3', 'description', 137);
INSERT INTO map VALUES(30, 'bretonnie 4', 'description', 138);
INSERT INTO map VALUES(31, 'bretonnie 5', 'description', 0);
INSERT INTO map VALUES(32, 'bretonnie 6', 'description', 0);
INSERT INTO map VALUES(33, 'bretonnie 7', 'description', 0);
INSERT INTO map VALUES(34, 'bretonnie 8', 'description', 0);
INSERT INTO map VALUES(35, 'bretonnie 9', 'description', 0);
INSERT INTO map VALUES(36, 'cathay 1', 'description', 0);
INSERT INTO map VALUES(37, 'nippon 1', 'description', 0);
INSERT INTO map VALUES(38, 'nippon 2', 'description', 0);
INSERT INTO map VALUES(39, 'nippon 3', 'description', 0);
INSERT INTO map VALUES(40, 'chaos dwarves 1', 'description', 0);
INSERT INTO map VALUES(41, 'darkland 1', 'description', 0);
INSERT INTO map VALUES(42, 'dwarf 1', 'description', 0);
INSERT INTO map VALUES(43, 'dwarf 2', 'description', 0);
INSERT INTO map VALUES(44, 'dwarf 3', 'description', 0);
INSERT INTO map VALUES(45, 'dwarf 4', 'description', 0);
INSERT INTO map VALUES(46, 'empire 1', 'description', 0);
INSERT INTO map VALUES(47, 'empire 2', 'description', 0);
INSERT INTO map VALUES(48, 'empire 3', 'description', 0);
INSERT INTO map VALUES(49, 'empire 4', 'description', 0);
INSERT INTO map VALUES(50, 'empire 5', 'description', 0);
INSERT INTO map VALUES(51, 'empire 6', 'description', 0);
INSERT INTO map VALUES(52, 'empire 7', 'description', 0);
INSERT INTO map VALUES(53, 'empire 8', 'description', 0);
INSERT INTO map VALUES(54, 'empire 9', 'description', 0);
INSERT INTO map VALUES(55, 'estalie 1', 'description', 0);
INSERT INTO map VALUES(56, 'estalie 2', 'description', 0);
INSERT INTO map VALUES(57, 'estalie 3', 'description', 0);
INSERT INTO map VALUES(58, 'estalie 4', 'description', 0);
INSERT INTO map VALUES(59, 'east province 1', 'description', 0);
INSERT INTO map VALUES(60, 'hochland 1', 'description', 0);
INSERT INTO map VALUES(61, 'kislev 1', 'description', 0);
INSERT INTO map VALUES(62, 'kislev 2', 'description', 0);
INSERT INTO map VALUES(63, 'kislev 3', 'description', 0);
INSERT INTO map VALUES(64, 'lustrianie 1', 'description', 0);
INSERT INTO map VALUES(65, 'lustrianie 2', 'description', 0);
INSERT INTO map VALUES(66, 'lustrianie 3', 'description', 0);
INSERT INTO map VALUES(67, 'lustrianie 4', 'description', 0);
INSERT INTO map VALUES(68, 'marienburg 1', 'description', 0);
INSERT INTO map VALUES(69, 'middenheim 1', 'description', 0);
INSERT INTO map VALUES(70, 'middenland 1', 'description', 0);
INSERT INTO map VALUES(71, 'middenland 2', 'description', 0);
INSERT INTO map VALUES(72, 'naggaroth 1', 'description', 0);
INSERT INTO map VALUES(73, 'naggaroth 2', 'description', 0);
INSERT INTO map VALUES(74, 'nordland 1', 'description', 0);
INSERT INTO map VALUES(75, 'norsca 1', 'description', 0);
INSERT INTO map VALUES(76, 'norsca 2', 'description', 0);
INSERT INTO map VALUES(77, 'norsca 3', 'description', 0);
INSERT INTO map VALUES(78, 'nuln 1', 'description', 0);
INSERT INTO map VALUES(79, 'nuln 2', 'description', 0);
INSERT INTO map VALUES(80, 'old world 1', 'description', 0);
INSERT INTO map VALUES(81, 'old world 2', 'description', 0);
INSERT INTO map VALUES(82, 'old world 3', 'description', 0);
INSERT INTO map VALUES(83, 'old world 4', 'description', 0);
INSERT INTO map VALUES(84, 'ostland 1', 'description', 0);
INSERT INTO map VALUES(85, 'reikland 1', 'description', 0);
INSERT INTO map VALUES(86, 'reikland 2', 'description', 0);
INSERT INTO map VALUES(87, 'sartosa 1', 'description', 0);
INSERT INTO map VALUES(88, 'sartosa 2', 'description', 0);
INSERT INTO map VALUES(89, 'sartosa 3', 'description', 0);
INSERT INTO map VALUES(90, 'skaven 1', 'description', 0);
INSERT INTO map VALUES(91, 'south province 1', 'description', 0);
INSERT INTO map VALUES(92, 'talabheim 1', 'description', 0);
INSERT INTO map VALUES(93, 'tilee 1', 'description', 0);
INSERT INTO map VALUES(94, 'tilee 2', 'description', 0);
INSERT INTO map VALUES(95, 'tilee 3', 'description', 0);
INSERT INTO map VALUES(96, 'tilee 4', 'description', 0);
INSERT INTO map VALUES(97, 'tilee 5', 'description', 0);
INSERT INTO map VALUES(98, 'ulthuan 1', 'description', 0);
INSERT INTO map VALUES(99, 'ulthuan 2', 'description', 0);
INSERT INTO map VALUES(100, 'ulthuan 3', 'description', 0);
INSERT INTO map VALUES(101, 'ulthuan 4', 'description', 0);
INSERT INTO map VALUES(102, 'wastelands 1', 'description', 0);
INSERT INTO map VALUES(103, 'wastelands 2', 'description', 0);
INSERT INTO map VALUES(104, 'albion 4', 'description', 0);



DROP TABLE IF EXISTS menu;
CREATE TABLE IF NOT EXISTS menu (
  menu_id int(11) unsigned NOT NULL auto_increment,
  webpage_id int(10) unsigned NOT NULL default '0',
  menu_name varchar(45) NOT NULL default '',
  menu_desc text,
  menu_right varchar(45) NOT NULL default 'all',
  PRIMARY KEY  (menu_id)
)    ;


INSERT INTO menu VALUES(1, 0, 'Accueil', 'Page principale du site HammerForge d''oÃ¹ vous pouvez accÃ©der Ã  tous les menus et qui contient Ã©galement les derniÃ¨res news.', 'all');
INSERT INTO menu VALUES(2, 1, 'PJs/PNJs', 'Ce menu vous permettra de gÃ©rer vos personnages warhammer et d''en consulter d''autres.', 'all');
INSERT INTO menu VALUES(3, 2, 'GÃ©ographie', 'AccÃ©dez au monde de warhammer en suivant toutes les cartes dÃ©taillÃ©es disponibles.', 'all');
INSERT INTO menu VALUES(4, 3, 'CarriÃ¨res', 'Consulter toutes les carriÃ¨res disponibles dans le monde de warhammer.', 'all');
INSERT INTO menu VALUES(5, 4, 'Achats', 'Listes des achats possibles dans le monde de warhammer.', 'all');
INSERT INTO menu VALUES(6, 5, 'Magie', 'La Magie dans le monde de warhammer.', 'all');
INSERT INTO menu VALUES(7, 6, 'Bestiaire', 'DÃ©couvrez toutes les crÃ©atures que recÃ¨le le monde de warhammer.', 'all');
INSERT INTO menu VALUES(8, 7, 'Aides de jeu', 'DiffÃ©rentes aides de jeu pour warhammer, de la simple feuille de personnage au logiciel de crÃ©ation automatique, en passant par de nouvelles rÃ¨gles.', 'all');
INSERT INTO menu VALUES(9, 8, 'Scenarii', 'Liste de tous les scenarios que vous avez toujours voulu cr?er pour vos joueurs.', 'all');
INSERT INTO menu VALUES(10, 9, 'Religion', 'La Religion dans le monde de warhammer.', 'all');
INSERT INTO menu VALUES(11, 10, 'CompÃ©tences', 'AccÃ©dez Ã  la liste des compÃ©tences disponibles.', 'all');
INSERT INTO menu VALUES(12, 20, 'Ã©quipement de transport', 'sacs, gourdes, ...', 'all');
INSERT INTO menu VALUES(13, 21, 'objets domestiques personnels', 'divers Ã©quipements d''intÃ©rieur ou personnels', 'all');
INSERT INTO menu VALUES(14, 22, 'Ã©clairage', '', 'all');
INSERT INTO menu VALUES(15, 23, 'instruments de musique', '', 'all');
INSERT INTO menu VALUES(16, 24, 'lecture/Ã©criture', '', 'all');
INSERT INTO menu VALUES(17, 15, 'outillage', '', 'all');
INSERT INTO menu VALUES(18, 17, 'animaux', '', 'all');
INSERT INTO menu VALUES(19, 14, 'moyens de transport', '', 'all');
INSERT INTO menu VALUES(20, 25, 'voyages', '', 'all');
INSERT INTO menu VALUES(21, 26, 'habitations', '', 'all');
INSERT INTO menu VALUES(22, 27, 'soins', '', 'all');
INSERT INTO menu VALUES(23, 28, 'location de services', '', 'all');
INSERT INTO menu VALUES(24, 31, 'crÃ©ation de personnage', 'gÃ©nÃ©rateur automatique de personnage incluant toutes les rÃ¨gles officielles', 'all');
INSERT INTO menu VALUES(25, 32, 'dÃ©tails sur la crÃ©ation de personnage', 'tous les tableaux utilisÃ©s pour crÃ©er un personnage', 'all');
INSERT INTO menu VALUES(26, 33, 'liste de personnages', 'liste de personnages non-joueurs ou joueur (si l''accord des joueurs a ?t? donn', 'all');
INSERT INTO menu VALUES(27, 34, 'cimetiÃ¨re', 'cimetiÃ¨re des personnages dÃ©clarÃ©s morts, avec des explications sur la faÃ§on dont ils sont morts', 'all');
INSERT INTO menu VALUES(28, 30, 'gÃ©rer son compte', 'pour gÃ©rer les persos, les scÃ©narios, etc...', 'joueur');
INSERT INTO menu VALUES(29, 35, 'consulter vos personnages', '', 'joueur');
INSERT INTO menu VALUES(30, 38, 'sortilÃ¨ges', 'consultez tous les sortilÃ¨ges disponibles', 'all');
INSERT INTO menu VALUES(31, 40, 'modifier vos personnages', '', 'joueur');
INSERT INTO menu VALUES(32, 41, 'Administration', NULL, 'admin');
INSERT INTO menu VALUES(33, 42, 'GÃ©rer pages Web', '', 'admin');
INSERT INTO menu VALUES(34, 43, 'Gestion des menus', NULL, 'admin');
INSERT INTO menu VALUES(35, 44, 'CrÃ©ation d''un menu', NULL, 'admin');
INSERT INTO menu VALUES(43, 46, 'Gestion des carriÃ¨res', '', 'admin');
INSERT INTO menu VALUES(44, 45, 'Ajouter une carriÃ¨re', '', 'admin');
INSERT INTO menu VALUES(45, 47, 'Ajouter une page Web', '', 'admin');
INSERT INTO menu VALUES(46, 48, 'Supprimer un menu', 'pour supprimer un menu', 'admin');
INSERT INTO menu VALUES(47, 49, 'Supprimer page Web', '', 'admin');
INSERT INTO menu VALUES(48, 50, 'Modifier page Web', '', 'admin');
INSERT INTO menu VALUES(49, 51, 'Modifier menu', '', 'admin');
INSERT INTO menu VALUES(51, 52, 'Modifier une carriÃ¨re', '', 'admin');
INSERT INTO menu VALUES(52, 53, 'Ajouter une compÃ©tence', '', 'admin');
INSERT INTO menu VALUES(54, 54, 'Modifier une compÃ©tence', '', 'admin');
INSERT INTO menu VALUES(56, 55, 'Suppression d''une compÃ©tence', '', 'admin');
INSERT INTO menu VALUES(57, 56, 'Gestion des compÃ©tences', '', 'admin');
INSERT INTO menu VALUES(61, 57, 'Supprimer une carriÃ¨re', '', 'admin');
INSERT INTO menu VALUES(67, 61, 'TÃ©lÃ©chargements', 'Rubrique de tÃ©lÃ©chargements', 'all');
INSERT INTO menu VALUES(65, 59, 'CrÃ©er un personnage', '', 'joueur');
INSERT INTO menu VALUES(66, 60, 'Ajouter un animal', 'Ajout d''un nouvel animal', 'admin');



DROP TABLE IF EXISTS menu_parent;
CREATE TABLE IF NOT EXISTS menu_parent (
  menu_id int(11) NOT NULL,
  menu_id_parent int(11) NOT NULL,
  PRIMARY KEY  (menu_id,menu_id_parent)
) ;


INSERT INTO menu_parent VALUES(1, -1);
INSERT INTO menu_parent VALUES(2, -1);
INSERT INTO menu_parent VALUES(3, -1);
INSERT INTO menu_parent VALUES(4, -1);
INSERT INTO menu_parent VALUES(6, -1);
INSERT INTO menu_parent VALUES(7, -1);
INSERT INTO menu_parent VALUES(8, -1);
INSERT INTO menu_parent VALUES(9, -1);
INSERT INTO menu_parent VALUES(10, -1);
INSERT INTO menu_parent VALUES(11, -1);
INSERT INTO menu_parent VALUES(28, -1);
INSERT INTO menu_parent VALUES(29, -1);
INSERT INTO menu_parent VALUES(32, -1);
INSERT INTO menu_parent VALUES(33, 32);
INSERT INTO menu_parent VALUES(34, 32);
INSERT INTO menu_parent VALUES(35, 34);
INSERT INTO menu_parent VALUES(43, 32);
INSERT INTO menu_parent VALUES(44, 4);
INSERT INTO menu_parent VALUES(44, 43);
INSERT INTO menu_parent VALUES(44, 51);
INSERT INTO menu_parent VALUES(44, 61);
INSERT INTO menu_parent VALUES(45, 33);
INSERT INTO menu_parent VALUES(46, 34);
INSERT INTO menu_parent VALUES(47, 33);
INSERT INTO menu_parent VALUES(48, 33);
INSERT INTO menu_parent VALUES(49, 34);
INSERT INTO menu_parent VALUES(51, 4);
INSERT INTO menu_parent VALUES(51, 43);
INSERT INTO menu_parent VALUES(51, 44);
INSERT INTO menu_parent VALUES(51, 61);
INSERT INTO menu_parent VALUES(52, 57);
INSERT INTO menu_parent VALUES(54, 57);
INSERT INTO menu_parent VALUES(56, 57);
INSERT INTO menu_parent VALUES(57, 11);
INSERT INTO menu_parent VALUES(57, 32);
INSERT INTO menu_parent VALUES(57, 52);
INSERT INTO menu_parent VALUES(57, 54);
INSERT INTO menu_parent VALUES(57, 56);
INSERT INTO menu_parent VALUES(67, -1);



DROP TABLE IF EXISTS menu_right;
CREATE TABLE IF NOT EXISTS menu_right (
  menu_right_id int(10) NOT NULL auto_increment,
  menu_right_name varchar(10) NOT NULL default 'all',
  PRIMARY KEY  (menu_right_id)
)    ;


INSERT INTO menu_right VALUES(1, 'admin');
INSERT INTO menu_right VALUES(2, 'joueur');
INSERT INTO menu_right VALUES(3, 'maitre');
INSERT INTO menu_right VALUES(4, 'all');



DROP TABLE IF EXISTS misc;
CREATE TABLE IF NOT EXISTS misc (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO misc VALUES(191);
INSERT INTO misc VALUES(192);
INSERT INTO misc VALUES(193);
INSERT INTO misc VALUES(194);
INSERT INTO misc VALUES(195);
INSERT INTO misc VALUES(196);
INSERT INTO misc VALUES(197);
INSERT INTO misc VALUES(198);
INSERT INTO misc VALUES(199);
INSERT INTO misc VALUES(200);
INSERT INTO misc VALUES(201);
INSERT INTO misc VALUES(202);
INSERT INTO misc VALUES(203);
INSERT INTO misc VALUES(204);
INSERT INTO misc VALUES(205);
INSERT INTO misc VALUES(206);
INSERT INTO misc VALUES(207);
INSERT INTO misc VALUES(208);
INSERT INTO misc VALUES(209);
INSERT INTO misc VALUES(210);
INSERT INTO misc VALUES(211);
INSERT INTO misc VALUES(212);
INSERT INTO misc VALUES(213);
INSERT INTO misc VALUES(214);
INSERT INTO misc VALUES(215);



DROP TABLE IF EXISTS music;
CREATE TABLE IF NOT EXISTS music (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO music VALUES(176);
INSERT INTO music VALUES(177);
INSERT INTO music VALUES(178);
INSERT INTO music VALUES(179);
INSERT INTO music VALUES(180);
INSERT INTO music VALUES(181);
INSERT INTO music VALUES(182);
INSERT INTO music VALUES(183);
INSERT INTO music VALUES(184);
INSERT INTO music VALUES(185);
INSERT INTO music VALUES(186);
INSERT INTO music VALUES(187);



DROP TABLE IF EXISTS nomtable;
CREATE TABLE IF NOT EXISTS nomtable (
  nomtable_id int(10) unsigned NOT NULL auto_increment,
  webpage_id int(10) unsigned NOT NULL default '0',
  nomtable_name varchar(45) NOT NULL default '',
  nomtable_idvar varchar(20) default NULL,
  nomtable_aref varchar(20) default NULL,
  PRIMARY KEY  (nomtable_id)
)    ;


INSERT INTO nomtable VALUES(1, 10, 'skill', 'skillID', 'skill');
INSERT INTO nomtable VALUES(2, 11, 'weapon', 'weaponID', 'weapon');
INSERT INTO nomtable VALUES(3, 12, 'armor', 'armorID', 'armor');
INSERT INTO nomtable VALUES(4, 13, 'misc', 'miscID', 'misc');
INSERT INTO nomtable VALUES(5, 3, 'career', 'careerID', 'career');
INSERT INTO nomtable VALUES(6, 14, 'transport', 'transportID', 'transport');
INSERT INTO nomtable VALUES(7, 15, 'tool', 'toolID', 'tool');
INSERT INTO nomtable VALUES(8, 16, 'drink', 'drinkID', 'drink');
INSERT INTO nomtable VALUES(9, 17, 'animal', 'animalID', 'animal');
INSERT INTO nomtable VALUES(10, 18, 'creature', 'creatureID', 'creature');
INSERT INTO nomtable VALUES(11, 19, 'music', 'musicID', 'music');
INSERT INTO nomtable VALUES(12, 21, 'domestic', 'domesticID', 'domestic');
INSERT INTO nomtable VALUES(13, 22, 'lighting', 'lightingID', 'lighting');
INSERT INTO nomtable VALUES(14, 20, 'bag', 'bagID', 'bag');
INSERT INTO nomtable VALUES(15, 29, 'dress', 'dressID', 'dress');
INSERT INTO nomtable VALUES(16, 36, 'continent', 'continentID', 'continent');
INSERT INTO nomtable VALUES(17, 37, 'country', 'countryID', 'country');
INSERT INTO nomtable VALUES(18, 38, 'casting', 'castingID', 'casting');
INSERT INTO nomtable VALUES(19, 39, 'personnage', 'personnageID', 'personnage');



DROP TABLE IF EXISTS objet;
CREATE TABLE IF NOT EXISTS objet (
  objet_id int(10) unsigned NOT NULL auto_increment,
  nomtable_id int(10) unsigned NOT NULL default '0',
  disponibility_id int(10) unsigned NOT NULL default '0',
  objet_name varchar(255) default NULL,
  objet_desc text,
  objet_cost varchar(20) default NULL,
  objet_space int(10) unsigned default NULL,
  image_id int(11) NOT NULL,
  PRIMARY KEY  (objet_id,nomtable_id,disponibility_id,image_id),
  FOREIGN KEY (nomtable_id) REFERENCES nomtable(nomtable_id),
  FOREIGN KEY (disponibility_id) REFERENCES disponibility(disponibility_id)
)    ;


INSERT INTO objet VALUES(1, 4, 1, 'bois de chauffage', 'par fagot', '2/-', 5, 0);
INSERT INTO objet VALUES(2, 4, 1, 'bouilloire', 'contenance 1/2 litre', '30/-', 10, 0);
INSERT INTO objet VALUES(3, 4, 1, 'briquet', '', '30/-', 5, 0);
INSERT INTO objet VALUES(4, 4, 1, 'chope', 'en Ã©tain', '1 CO', 5, 0);
INSERT INTO objet VALUES(5, 12, 1, 'couverts individuels', 'en bois', '5/-', 2, 0);
INSERT INTO objet VALUES(6, 12, 2, 'couverts individuels', 'en mÃ©tal', '3 CO', 4, 0);
INSERT INTO objet VALUES(7, 12, 4, 'couverts individuels', 'en argent', '15 CO', 3, 0);
INSERT INTO objet VALUES(8, 12, 1, 'couverture', '', '2 CO', 10, 0);
INSERT INTO objet VALUES(9, 4, 2, 'Ã©pingles Ã  habits', 'la douzaine', '2/-', 2, 0);
INSERT INTO objet VALUES(10, 12, 1, 'gamelle', '', '1 CO', 20, 0);
INSERT INTO objet VALUES(11, 4, 1, 'jeu de cartes (tarots)', '', '1 CO', 1, 0);
INSERT INTO objet VALUES(12, 12, 3, 'matelas de bourre', 'de bourre', '8 CO', 400, 0);
INSERT INTO objet VALUES(13, 12, 4, 'matelas de plumes', 'de plumes', '12 CO', 350, 0);
INSERT INTO objet VALUES(14, 4, 1, 'paire de dÃ©s en os', 'en os', '6/-', 0, 0);
INSERT INTO objet VALUES(15, 12, 1, 'pichet en terre', 'en terre', '3/6', 10, 0);
INSERT INTO objet VALUES(16, 12, 1, 'casserole', '', '?', 0, 0);
INSERT INTO objet VALUES(17, 12, 1, 'couteau de cuisine', '', '?', 0, 0);
INSERT INTO objet VALUES(18, 3, 2, 'gilet en cuir', 'description du gilet en cuir', '12 CO', 40, 0);
INSERT INTO objet VALUES(19, 3, 2, 'veste en cuir', 'description de veste en cuir', '17 CO', 50, 0);
INSERT INTO objet VALUES(20, 3, 2, 'cagoule en cuir', 'description de cagoule en cuir', '6 CO', 10, 0);
INSERT INTO objet VALUES(21, 3, 3, 'chemise de mailles', 'description de chemise de mailles', '80 CO', 60, 0);
INSERT INTO objet VALUES(22, 3, 3, 'cotte de mailles', 'description de cotte de mailles', '115 CO', 80, 0);
INSERT INTO objet VALUES(23, 3, 3, 'chemise de mailles (manches longues)', 'description de chemise de mailles (manches longues)', '95 CO', 80, 0);
INSERT INTO objet VALUES(24, 3, 3, 'cotte de mailles (manches longues)', 'description de cotte de mailles (manches longues)', '130 CO', 100, 0);
INSERT INTO objet VALUES(25, 3, 3, 'cagoule de mailles', 'description de cagoule de mailles', '25 CO', 30, 0);
INSERT INTO objet VALUES(26, 3, 4, 'jambiÃ¨res de mailles', 'description de jambiÃ¨res de mailles', '55 CO', 60, 0);
INSERT INTO objet VALUES(27, 3, 5, 'manches de mailles', 'description de manches de mailles', '20 CO', 40, 0);
INSERT INTO objet VALUES(28, 3, 4, 'plastron de cuirasse (+braconniÃ¨res et tasset', 'description de plastron de cuirasse', '70 CO', 75, 0);
INSERT INTO objet VALUES(29, 3, 4, 'dossiÃ¨re de cuirasse (+garde-reins et spalli', 'description de dossiÃ¨re de cuirasse', '50 CO', 75, 0);
INSERT INTO objet VALUES(30, 3, 4, 'jambiÃ¨res de fer (cuissards, grÃ¨ves, ...)', 'description de jambiÃ¨res de fer', '70 CO', 60, 0);
INSERT INTO objet VALUES(31, 3, 4, 'manches de fer (brassards, cubiti?res, ...)', 'description de manches de fer', '60 CO', 30, 0);
INSERT INTO objet VALUES(32, 3, 4, 'gantelets', 'description de gantelets', '30 CO', 10, 0);
INSERT INTO objet VALUES(33, 3, 4, 'casque complet (heaume ou armet)', 'description de casque complet', '20 + 1D10 CO', 40, 0);
INSERT INTO objet VALUES(34, 3, 2, 'casque partiel (bassinet, barbute, salade, ..', 'description de casque partiel', '2 CO', 30, 0);
INSERT INTO objet VALUES(35, 3, 2, 'bouclier (?cu, ...)', 'description de bouclier', '2D8 + 2 CO', 50, 0);
INSERT INTO objet VALUES(36, 3, 1, 'bouclier improvis? (dure le temps de l''aventu', 'description de bouclier improvis', '10/-', 50, 0);
INSERT INTO objet VALUES(37, 13, 1, 'chandelle de suif', '3 H d''utilisation. La douzaine', '6/-', 5, 0);
INSERT INTO objet VALUES(38, 13, 3, 'chandelle de cire', '4 H d''utilisation. La douzaine', '36/-', 5, 0);
INSERT INTO objet VALUES(39, 13, 1, 'huile de lampe', 'la pinte', '8/-', 5, 0);
INSERT INTO objet VALUES(40, 13, 4, 'lampe-temp?te', '', '20 CO', 30, 0);
INSERT INTO objet VALUES(41, 13, 1, 'lampion', '', '5/-', 20, 0);
INSERT INTO objet VALUES(42, 13, 3, 'lanterne', '', '12 CO', 20, 0);
INSERT INTO objet VALUES(43, 13, 1, 'torche', '', '1/-', 5, 0);
INSERT INTO objet VALUES(44, 13, 1, 'perche', 'porte-lanterne', '?', 0, 0);
INSERT INTO objet VALUES(45, 2, 1, 'arme simple', 'arme de base style Ã©pÃ©e simple ou hachette', '', 0, 0);
INSERT INTO objet VALUES(46, 2, 3, 'couteau de lancer', '', '4 CO', 10, 0);
INSERT INTO objet VALUES(47, 2, 2, 'arc', 'Arc normal. Arme de jet composÃ©e d''une verge de bois plus ?paisse au milieu qu''aux extrÃ©mitÃ©s, d''une longueur variant de 1,90 m Ã  1,50m, courbÃ©e au moyen d''une corde fixÃ©e aux deux extrÃ©mitÃ©s, et lanÃ§ant des flÃ¨ches.', '11 CO', 80, 0);
INSERT INTO objet VALUES(48, 2, 3, 'arbalÃ¨te', 'Arme de jet, dÃ©rivÃ©e de l''arc (arc-baliste), composÃ©e d''un arc fait de nerf, de corne ou de mÃ©tal, d''un arbrier ou corps de bois destinÃ© Ã  fixer l''arc et Ã  recevoir le projectile, et d''une noix avec sa dÃ©tente. L''arbalÃ¨te est une arme excellente tant par la justesse de son tir que par sa puissance de projection. Elle n''a contre elle que son poids et la lenteur du tir.', '16 CO', 120, 0);
INSERT INTO objet VALUES(49, 2, 1, 'gourdin', '', '2/-', 40, 0);
INSERT INTO objet VALUES(50, 2, 1, 'hache de bÃ»cheron', '', '7 CO', 75, 0);
INSERT INTO objet VALUES(51, 2, 5, 'filet (rets)', '', '30/-', 30, 0);
INSERT INTO objet VALUES(52, 2, 4, 'balle', 'vendues par 10', '1 CO', 10, 0);
INSERT INTO objet VALUES(53, 2, 6, 'bombe explosive', '', '75 CO', 20, 0);
INSERT INTO objet VALUES(54, 2, 6, 'pistolet', '', '150 CO', 25, 0);
INSERT INTO objet VALUES(55, 2, 5, 'poudre', 'prix d''une charge', '5 CO', 1, 0);
INSERT INTO objet VALUES(56, 2, 6, 'tromblon', '', '75 CO', 50, 0);
INSERT INTO objet VALUES(57, 2, 1, 'bÃ¢ton lestÃ©', '', '3/-', 50, 0);
INSERT INTO objet VALUES(58, 2, 4, 'brise-lames', '', '5 CO', 40, 0);
INSERT INTO objet VALUES(59, 2, 2, 'coup-de-poing', '', '1 CO', 1, 0);
INSERT INTO objet VALUES(60, 2, 4, 'coutelas', '', '14 CO', 50, 0);
INSERT INTO objet VALUES(61, 2, 4, 'sabre', '', '14 CO', 50, 0);
INSERT INTO objet VALUES(62, 2, 3, 'crochet', '', '1 CO', 1, 0);
INSERT INTO objet VALUES(63, 2, 2, 'dague', '', '3 CO', 10, 0);
INSERT INTO objet VALUES(64, 2, 2, 'poignard', '', '3 CO', 10, 0);
INSERT INTO objet VALUES(65, 2, 2, 'Ã©pÃ©e', '', '14 CO', 60, 0);
INSERT INTO objet VALUES(66, 2, 3, 'Ã©pÃ©e Ã  deux mains', '', '35 CO', 250, 0);
INSERT INTO objet VALUES(67, 2, 2, 'Ã©pÃ©e bÃ¢tarde', '', '20 CO', 100, 0);
INSERT INTO objet VALUES(68, 2, 5, 'Ã©toile du matin (morgenstern)', '', '14 CO', 125, 0);
INSERT INTO objet VALUES(69, 2, 5, 'flÃ©au Ã  deux mains', '', '20 CO', 120, 0);
INSERT INTO objet VALUES(70, 2, 4, 'flÃ©au d''armes', '', '10 CO', 60, 0);
INSERT INTO objet VALUES(71, 2, 4, 'fleuret', '', '18 CO', 40, 0);
INSERT INTO objet VALUES(72, 2, 3, 'fouet', '', '15/-', 30, 0);
INSERT INTO objet VALUES(73, 2, 2, 'fourreau', '', '1-10 CO', 20, 0);
INSERT INTO objet VALUES(74, 2, 2, 'gaine', '', '1-10 CO', 20, 0);
INSERT INTO objet VALUES(75, 2, 5, 'garrot', '', '1 CO', 1, 0);
INSERT INTO objet VALUES(76, 2, 3, 'hache de bataille', '', '12 CO', 75, 0);
INSERT INTO objet VALUES(77, 2, 4, 'hache de cavalerie', '', '7 CO', 75, 0);
INSERT INTO objet VALUES(78, 2, 2, 'hachette', '', '6 CO', 50, 0);
INSERT INTO objet VALUES(79, 2, 2, 'hallebarde', '', '8 CO', 175, 0);
INSERT INTO objet VALUES(80, 2, 2, 'lance', '', '35/-', 50, 0);
INSERT INTO objet VALUES(81, 2, 2, 'Ã©pieu', '', '35/-', 50, 0);
INSERT INTO objet VALUES(82, 2, 2, 'pique', '', '35/-', 50, 0);
INSERT INTO objet VALUES(83, 2, 5, 'lance de cavalerie', '', '50/-', 100, 0);
INSERT INTO objet VALUES(84, 2, 3, 'main gauche', '', '5 CO', 25, 0);
INSERT INTO objet VALUES(85, 2, 5, 'marteau Ã  deux mains', '', '15 CO', 200, 0);
INSERT INTO objet VALUES(86, 2, 4, 'marteau de guerre', '', '8 CO', 75, 0);
INSERT INTO objet VALUES(87, 2, 4, 'masse Ã  deux mains', '', '15 CO', 100, 0);
INSERT INTO objet VALUES(88, 2, 5, 'pic de guerre', '', '9 CO', 60, 0);
INSERT INTO objet VALUES(89, 2, 4, 'rapiÃ¨re', '', '20 CO', 40, 0);
INSERT INTO objet VALUES(90, 3, 3, 'rondache', '', '2 CO', 10, 0);
INSERT INTO objet VALUES(91, 2, 2, 'carquois', '30 traits', '15/-', 15, 0);
INSERT INTO objet VALUES(92, 2, 2, 'flÃ¨ches', 'vendues par 5', '30/-', 10, 0);
INSERT INTO objet VALUES(93, 2, 3, 'carreaux d''arbalÃ¨te', 'vendus par 5', '2 CO', 10, 0);
INSERT INTO objet VALUES(94, 2, 6, 'arbalÃ¨te Ã  rÃ©pÃ©tition', '', '100 CO', 150, 0);
INSERT INTO objet VALUES(95, 2, 5, 'arbalÃ¨te de poing', '', '10 CO', 25, 0);
INSERT INTO objet VALUES(96, 2, 2, 'arc court', '', '7 CO', 75, 0);
INSERT INTO objet VALUES(97, 2, 3, 'arc long', '', '15 CO', 90, 0);
INSERT INTO objet VALUES(98, 2, 6, 'arc elfique', '', '30 CO', 100, 0);
INSERT INTO objet VALUES(99, 2, 4, 'bolas', '', '7/-', 20, 0);
INSERT INTO objet VALUES(100, 2, 4, 'dard', '', '2 CO', 10, 0);
INSERT INTO objet VALUES(101, 2, 2, 'fronde', '', '2/-', 10, 0);
INSERT INTO objet VALUES(102, 2, 5, 'fustibale', 'fronde Ã  bÃ¢ton', '6/-', 30, 0);
INSERT INTO objet VALUES(103, 2, 3, 'hachette de jet', '', '5 CO', 40, 0);
INSERT INTO objet VALUES(104, 2, 3, 'javelot', '', '25/-', 30, 0);
INSERT INTO objet VALUES(105, 2, 2, 'lance', 'simple Ã©pieu', '35/-', 50, 0);
INSERT INTO objet VALUES(106, 2, 1, 'lasso', '', '1 CO', 30, 0);
INSERT INTO objet VALUES(107, 2, 4, 'marteau de guerre', 'marteau de lancer', '8 CO', 75, 0);
INSERT INTO objet VALUES(108, 2, 6, 'sarbacane', '', '10 CO', 15, 0);
INSERT INTO objet VALUES(109, 2, 3, 'arme Ã  deux mains', '', '?', 0, 0);
INSERT INTO objet VALUES(110, 4, 0, 'bouteille de mÃ©lange spÃ©cial pour pratiquer la pyrophilie', '', NULL, NULL, 0);
INSERT INTO objet VALUES(111, 8, 0, 'bouteille d''alcool bon marchÃ©', '', NULL, NULL, 0);
INSERT INTO objet VALUES(112, 7, 3, 'chaÃ®ne (le mÃ¨tre)', '', '30/-', 50, 0);
INSERT INTO objet VALUES(113, 7, 3, 'cadenas', '', '', 0, 0);
INSERT INTO objet VALUES(114, 7, 1, 'corde', 'le mÃ¨tre', '5/-', 5, 0);
INSERT INTO objet VALUES(115, 7, 2, 'bÃªche (lame en fer)', '', '25/-', 20, 0);
INSERT INTO objet VALUES(116, 7, 5, 'caisse Ã  outils d''Artisan', '', '50 CO', 40, 0);
INSERT INTO objet VALUES(117, 7, 5, 'cartes marines (imprimÃ©es)', '', '25 CO', 5, 0);
INSERT INTO objet VALUES(118, 7, 1, 'cale en bois', '', '8s', 2, 0);
INSERT INTO objet VALUES(119, 7, 2, 'collet (mÃ©tallique)', '', '1 CO', 5, 0);
INSERT INTO objet VALUES(120, 7, 2, 'fil de pÃªche et hameÃ§on', '', '3/-', 2, 0);
INSERT INTO objet VALUES(121, 7, 3, 'grappin', '', '4 CO', 20, 0);
INSERT INTO objet VALUES(122, 7, 5, 'instruments de navigation', '', '50 CO', 20, 0);
INSERT INTO objet VALUES(123, 7, 3, 'lingot de vil mÃ©tal (1kg)', '', '26/-', 20, 0);
INSERT INTO objet VALUES(124, 7, 6, 'loupe', '', '75 CO', 5, 0);
INSERT INTO objet VALUES(125, 7, 5, 'matÃ©riel de gravure', '', '50 CO', 20, 0);
INSERT INTO objet VALUES(126, 7, 5, 'matrice de monnaie vierge (la paire)', '', '10 CO', 5, 0);
INSERT INTO objet VALUES(127, 7, 5, 'outils de forgeron (Ã  l''exclusion de la forge et du soufflet)', '', '50 CO', 100, 0);
INSERT INTO objet VALUES(128, 7, 3, 'outils de voleur', '', '10 CO', 20, 0);
INSERT INTO objet VALUES(129, 7, 3, 'paire de menottes', '', '5 CO', 20, 0);
INSERT INTO objet VALUES(130, 7, 1, 'perche/manche en bois (le mÃ¨tre)', '', '1/6s', 10, 0);
INSERT INTO objet VALUES(131, 7, 3, 'pied-de-biche/barre de levier', '', '5 CO', 20, 0);
INSERT INTO objet VALUES(132, 7, 2, 'piÃ¨ge Ã  animaux', '', '5 CO', 30, 0);
INSERT INTO objet VALUES(133, 7, 3, 'piÃ¨ge Ã  ours', '', '8 CO', 100, 0);
INSERT INTO objet VALUES(134, 7, 2, 'pointes de fer (environ 15 cm)', '', '10/-', 5, 0);
INSERT INTO objet VALUES(135, 7, 2, 'scie', '', '7 CO', 10, 0);
INSERT INTO objet VALUES(136, 7, 5, 'trousse de secours (avec instruments)', '', '50 CO', 50, 0);
INSERT INTO objet VALUES(137, 4, 1, 'sac d''outils', 'dotation de la carriÃ¨re de base d''Engingneur', '?', 0, 0);
INSERT INTO objet VALUES(138, 4, 1, 'marteau', 'marteau pour planter des clous', '?', 0, 0);
INSERT INTO objet VALUES(139, 4, 1, 'clou', 'simples clous', '?', 0, 0);
INSERT INTO objet VALUES(140, 4, 1, 'ciseau Ã  froid', '', '?', 0, 0);
INSERT INTO objet VALUES(141, 4, 1, 'pic', '', '?', 0, 0);
INSERT INTO objet VALUES(142, 4, 1, 'tenailles', '', '?', 0, 0);
INSERT INTO objet VALUES(143, 4, 1, 'pinces', '', '?', 0, 0);
INSERT INTO objet VALUES(144, 7, 1, 'filin (mÃ©tallique)', '10 m', '?', 0, 0);
INSERT INTO objet VALUES(145, 7, 1, 'matÃ©riel d''Ã©criture', '', '?', 0, 0);
INSERT INTO objet VALUES(146, 6, 3, 'barque', 'description de barque', '(1D6x10) + 60 CO', 900, 0);
INSERT INTO objet VALUES(147, 9, 2, 'cheval de selle', '', '60-480 CO', 0, 0);
INSERT INTO objet VALUES(148, 9, 4, 'cheval de guerre lÃ©ger', '', '575-1150 CO', 0, 0);
INSERT INTO objet VALUES(149, 9, 5, 'destrier', '', '960-4750 CO', 0, 0);
INSERT INTO objet VALUES(150, 6, 5, 'carosse', '', '1000 CO', 0, 0);
INSERT INTO objet VALUES(151, 6, 2, 'chariot', '', '(1D8x10) + 60 CO', 0, 0);
INSERT INTO objet VALUES(152, 6, 2, 'charrette', '', '(1D6x10) + 40 CO', 0, 0);
INSERT INTO objet VALUES(153, 6, 2, 'carriole', '', '(1D6x10) + 40 CO', 0, 0);
INSERT INTO objet VALUES(154, 6, 5, 'pÃ©niche', '', '600 CO', 0, 0);
INSERT INTO objet VALUES(155, 6, 2, 'cheval de trait', 'cheval pour tirer une charrette', '?', 0, 0);
INSERT INTO objet VALUES(156, 15, 0, 'vÃªtements trÃ¨s amples', '', NULL, NULL, 0);
INSERT INTO objet VALUES(157, 15, 0, 'serre-tÃªte', '', NULL, NULL, 0);
INSERT INTO objet VALUES(158, 15, 0, 'chaussures de course', '', NULL, NULL, 0);
INSERT INTO objet VALUES(159, 15, 0, 'livrÃ©e', 'tenue de bonne qualitÃ© aux armes de son maÃ®tre', NULL, NULL, 0);
INSERT INTO objet VALUES(160, 15, 0, 'bague', 'portant le symbole de la Guilde des Engingneurs Nains', NULL, NULL, 0);
INSERT INTO objet VALUES(161, 15, 0, 'vÃªtements coÃ»teux', '', NULL, NULL, 0);
INSERT INTO objet VALUES(162, 15, 0, 'robes', '', NULL, NULL, 0);
INSERT INTO objet VALUES(163, 14, 1, 'bourse (pour 100 piÃ¨ces)', 'pour 100 piÃ¨ces', '2/-', 1, 0);
INSERT INTO objet VALUES(164, 14, 4, 'Ã©tui cylindrique en cuir', '', '1 CO', 2, 0);
INSERT INTO objet VALUES(165, 14, 1, 'gibeciÃ¨re (contenance 200)', 'contenance 200', '6/-', 5, 0);
INSERT INTO objet VALUES(166, 14, 3, 'gourde en cuir (1/2 litre)', '1/2 litre', '15/-', 5, 0);
INSERT INTO objet VALUES(167, 14, 3, 'flasque de cuir (1/2 litre)', '1/2 litre', '15/-', 5, 0);
INSERT INTO objet VALUES(168, 14, 4, 'gourde en mÃ©tal (1/2 litre)', '1/2 litre', '50/-', 15, 0);
INSERT INTO objet VALUES(169, 14, 4, 'flasque de mÃ©tal (1/2 litre)', '1/2 litre', '50/-', 15, 0);
INSERT INTO objet VALUES(170, 14, 1, 'grand sac (contenance 200)', 'contenance 200', '16/-', 7, 0);
INSERT INTO objet VALUES(171, 14, 1, 'outre de peau (4 litres)', '4 litres. Encombrement 100 si pleine', '8/-', 1, 0);
INSERT INTO objet VALUES(172, 0, 1, 'sac Ã  dos (contenance 250)', 'contenance 250', '30/-', 20, 0);
INSERT INTO objet VALUES(173, 14, 1, 'sacoche', '', '5/-', 1, 0);
INSERT INTO objet VALUES(174, 14, 3, 'sacoches de selle (contenance 150)', 'contenance 150', '2 CO', 5, 0);
INSERT INTO objet VALUES(175, 14, 1, 'ballot (contenance 250)', 'contenance 250', '30 /-', 20, 0);
INSERT INTO objet VALUES(176, 11, 4, 'luth', '', '80 CO', 30, 0);
INSERT INTO objet VALUES(177, 11, 1, 'trompe', '?', '?', 10000, 0);
INSERT INTO objet VALUES(178, 11, 3, 'tambour', '', '30/-', 50, 0);
INSERT INTO objet VALUES(179, 11, 3, 'cornet', '', '10 CO', 30, 0);
INSERT INTO objet VALUES(180, 11, 5, 'clavecin', '', '250 CO', 1200, 0);
INSERT INTO objet VALUES(181, 11, 3, 'flÃ»te Ã  bec', '', '3 CO', 5, 0);
INSERT INTO objet VALUES(182, 11, 5, 'flÃ»te traversiÃ¨re', '', '20 CO', 10, 0);
INSERT INTO objet VALUES(183, 11, 3, 'guimbarde', '', '8/-', 1, 0);
INSERT INTO objet VALUES(184, 11, 5, 'lyre', '', '20 CO', 50, 0);
INSERT INTO objet VALUES(185, 11, 4, 'mandoline', '', '23 CO', 15, 0);
INSERT INTO objet VALUES(186, 11, 3, 'tambourin', '', '1 CO', 5, 0);
INSERT INTO objet VALUES(187, 11, 3, 'viole', '', '25 CO', 30, 0);
INSERT INTO objet VALUES(188, 9, 1, 'chien', '', '1D6 CO', 0, 0);
INSERT INTO objet VALUES(189, 9, 1, 'cheval d''attelage', '', '50-75 CO', 0, 0);
INSERT INTO objet VALUES(190, 9, 1, 'sangsue', 'utilisÃ©es en mÃ©decine', '?', 0, 0);
INSERT INTO objet VALUES(191, 4, 0, 'prospectus pour diverses causes', 'description d''un prospectus', NULL, NULL, 0);
INSERT INTO objet VALUES(192, 4, 0, 'pilon', 'pilon qui va avec un mortier', NULL, NULL, 0);
INSERT INTO objet VALUES(193, 4, 0, 'mortier', 'mortier qui va avec un pilon', NULL, NULL, 0);
INSERT INTO objet VALUES(194, 4, 0, 'petit pot en verre contenant poudre ou solut', '', NULL, NULL, 0);
INSERT INTO objet VALUES(195, 4, 0, 'morceau de craie', '', NULL, NULL, 0);
INSERT INTO objet VALUES(196, 4, 0, 'amulette en argent', '', NULL, NULL, 0);
INSERT INTO objet VALUES(197, 4, 0, 'balle en bois', '', NULL, NULL, 0);
INSERT INTO objet VALUES(198, 4, 0, 'livre', '', NULL, NULL, 0);
INSERT INTO objet VALUES(199, 4, 0, 'gobelet en bois', '', NULL, NULL, 0);
INSERT INTO objet VALUES(200, 4, 0, 'balle', '', NULL, NULL, 0);
INSERT INTO objet VALUES(201, 4, 0, 'jeu de carte', '', NULL, NULL, 0);
INSERT INTO objet VALUES(202, 4, 0, 'poupÃ©e de chiffon', '', NULL, NULL, 0);
INSERT INTO objet VALUES(203, 4, 0, 'masque', 'masque de bandit', NULL, NULL, 0);
INSERT INTO objet VALUES(204, 4, 0, 'corde', '', NULL, NULL, 0);
INSERT INTO objet VALUES(205, 4, 0, 'rouleau de tissu de couleur', '', NULL, NULL, 0);
INSERT INTO objet VALUES(206, 4, 0, 'boulier', '', NULL, NULL, 0);
INSERT INTO objet VALUES(207, 4, 0, 'matÃ©riel d''Ã©criture', '', NULL, NULL, 0);
INSERT INTO objet VALUES(208, 4, 0, 'jarre', '', NULL, NULL, 0);
INSERT INTO objet VALUES(209, 4, 0, 'Ã©cornifleur', '', NULL, NULL, 0);
INSERT INTO objet VALUES(210, 4, 0, 'bijoux', '', NULL, NULL, 0);
INSERT INTO objet VALUES(211, 4, 0, 'Ã©quipement de divination (osselets, tamis, dÃ©s, etc...)', '', NULL, NULL, 0);
INSERT INTO objet VALUES(212, 4, 0, 'paire de dÃ©s', '', NULL, NULL, 0);
INSERT INTO objet VALUES(213, 4, 0, 'paire de dÃ©s pip', 'qui font toujours 6', NULL, NULL, 0);
INSERT INTO objet VALUES(214, 4, 0, 'amulette en argent', 'en pendentif ; utilisÃ©e par le MagnÃ©tiseur', NULL, NULL, 0);
INSERT INTO objet VALUES(215, 4, 0, 'sachet d''herbes Ã  infuser', '', NULL, NULL, 0);
INSERT INTO objet VALUES(216, 9, 0, 'ours', 'description de ours', NULL, NULL, 0);
INSERT INTO objet VALUES(217, 9, 0, 'cheval', 'description de cheval', NULL, NULL, 0);



DROP TABLE IF EXISTS personnage;
CREATE TABLE IF NOT EXISTS personnage (
  personnage_id int(10) unsigned NOT NULL auto_increment,
  image_id int(10) unsigned default NULL,
  eye_id int(10) unsigned default NULL,
  hair_id int(10) unsigned default NULL,
  career_id int(10) unsigned NOT NULL default '0',
  alignment_id int(10) unsigned NOT NULL default '0',
  vocation_id int(10) unsigned NOT NULL default '0',
  sex_id int(10) unsigned NOT NULL default '0',
  race_id int(11) NOT NULL default '0',
  personnage_name varchar(255) default NULL,
  personnage_desc text,
  personnage_age int(10) unsigned default NULL,
  personnage_taille int(10) unsigned default NULL,
  personnage_xp int(10) unsigned default NULL,
  personnage_poids double default NULL,
  PRIMARY KEY  (personnage_id)
)    ;


INSERT INTO personnage VALUES(1, NULL, 5, 12, 97, 3, 1, 1, 1, 'Wiliam Mac Craft', '', 23, 177, 35, NULL);







DROP TABLE IF EXISTS poids;
CREATE TABLE IF NOT EXISTS poids (
  poids double NOT NULL default '0',
  race_id int(11) NOT NULL default '0',
  mini int(10) unsigned default NULL,
  maxi int(10) unsigned default NULL,
  PRIMARY KEY  (poids,race_id)
) ;


INSERT INTO poids VALUES(45, 1, 1, 2);
INSERT INTO poids VALUES(47.5, 1, 3, 5);
INSERT INTO poids VALUES(50, 1, 6, 10);
INSERT INTO poids VALUES(55, 1, 11, 15);
INSERT INTO poids VALUES(60, 1, 16, 25);
INSERT INTO poids VALUES(65, 1, 26, 35);
INSERT INTO poids VALUES(70, 1, 36, 50);
INSERT INTO poids VALUES(75, 1, 51, 65);
INSERT INTO poids VALUES(80, 1, 66, 75);
INSERT INTO poids VALUES(85, 1, 76, 85);
INSERT INTO poids VALUES(90, 1, 86, 90);
INSERT INTO poids VALUES(95, 1, 91, 95);
INSERT INTO poids VALUES(100, 1, 96, 98);
INSERT INTO poids VALUES(110, 1, 99, 100);
INSERT INTO poids VALUES(35, 2, 1, 2);
INSERT INTO poids VALUES(37.5, 2, 3, 5);
INSERT INTO poids VALUES(40, 2, 6, 10);
INSERT INTO poids VALUES(42.5, 2, 11, 15);
INSERT INTO poids VALUES(45, 2, 16, 25);
INSERT INTO poids VALUES(47.5, 2, 26, 35);
INSERT INTO poids VALUES(50, 2, 36, 50);
INSERT INTO poids VALUES(52.5, 2, 51, 65);
INSERT INTO poids VALUES(55, 2, 66, 75);
INSERT INTO poids VALUES(57.5, 2, 76, 85);
INSERT INTO poids VALUES(60, 2, 86, 90);
INSERT INTO poids VALUES(65, 2, 91, 95);
INSERT INTO poids VALUES(70, 2, 96, 98);
INSERT INTO poids VALUES(80, 2, 99, 100);
INSERT INTO poids VALUES(40, 3, 1, 2);
INSERT INTO poids VALUES(42.5, 3, 3, 5);
INSERT INTO poids VALUES(45, 3, 6, 10);
INSERT INTO poids VALUES(47.5, 3, 11, 15);
INSERT INTO poids VALUES(50, 3, 16, 25);
INSERT INTO poids VALUES(52.5, 3, 26, 35);
INSERT INTO poids VALUES(55, 3, 36, 50);
INSERT INTO poids VALUES(60, 3, 51, 65);
INSERT INTO poids VALUES(65, 3, 66, 75);
INSERT INTO poids VALUES(70, 3, 76, 85);
INSERT INTO poids VALUES(75, 3, 86, 90);
INSERT INTO poids VALUES(80, 3, 91, 95);
INSERT INTO poids VALUES(85, 3, 96, 98);
INSERT INTO poids VALUES(95, 3, 99, 100);
INSERT INTO poids VALUES(30, 4, 1, 2);
INSERT INTO poids VALUES(32.5, 4, 3, 5);
INSERT INTO poids VALUES(35, 4, 6, 10);
INSERT INTO poids VALUES(37.5, 4, 11, 15);
INSERT INTO poids VALUES(40, 4, 16, 25);
INSERT INTO poids VALUES(42.5, 4, 26, 35);
INSERT INTO poids VALUES(45, 4, 36, 50);
INSERT INTO poids VALUES(47.5, 4, 51, 65);
INSERT INTO poids VALUES(50, 4, 66, 75);
INSERT INTO poids VALUES(52.5, 4, 76, 85);
INSERT INTO poids VALUES(55, 4, 86, 90);
INSERT INTO poids VALUES(57.5, 4, 91, 95);
INSERT INTO poids VALUES(60, 4, 96, 98);
INSERT INTO poids VALUES(65, 4, 99, 100);
INSERT INTO poids VALUES(30, 5, 1, 2);
INSERT INTO poids VALUES(32.5, 5, 3, 5);
INSERT INTO poids VALUES(35, 5, 6, 10);
INSERT INTO poids VALUES(37.5, 5, 11, 15);
INSERT INTO poids VALUES(40, 5, 16, 25);
INSERT INTO poids VALUES(42.5, 5, 26, 35);
INSERT INTO poids VALUES(45, 5, 36, 50);
INSERT INTO poids VALUES(47.5, 5, 51, 65);
INSERT INTO poids VALUES(50, 5, 66, 75);
INSERT INTO poids VALUES(52.5, 5, 76, 85);
INSERT INTO poids VALUES(55, 5, 86, 90);
INSERT INTO poids VALUES(57.5, 5, 91, 95);
INSERT INTO poids VALUES(60, 5, 96, 98);
INSERT INTO poids VALUES(65, 5, 99, 100);



DROP TABLE IF EXISTS race;
CREATE TABLE IF NOT EXISTS race (
  race_id int(11) NOT NULL auto_increment,
  race_name varchar(45) NOT NULL default '',
  race_desc text NOT NULL,
  race_baseheight int(10) unsigned default NULL,
  race_heightdemodif int(10) unsigned default NULL,
  race_heightmultiplicateur int(10) unsigned default NULL,
  race_heightfemale int(11) default NULL,
  race_agede1 int(10) unsigned default NULL,
  race_agede2 int(10) unsigned default NULL,
  race_agemultiplicateur1 int(10) unsigned default NULL,
  race_agemultiplicateur2 int(10) unsigned default NULL,
  PRIMARY KEY  (race_id)
)    ;


INSERT INTO race VALUES(1, 'humain', 'Les Humains, ou Hommes, sont les plus nombreux des quatres races du Vieux Monde ; les plus heureux aussi. Souvent on les appelle tout simplement les ''Occidentaux'', par r?f?rence ? la situation g?ographique de leur r?gion. Les Humains sont assez semblables ? nous, quoique plus vigoureux ; il faut dire qu''ils vivent dans une ?poque plus exigente.', 160, 10, 3, -10, 6, 10, 6, 6);
INSERT INTO race VALUES(2, 'elfe sylvain', 'Les Elfes sont un peuple rare et merveilleux. Ils vivent dans les profondeurs des for?ts du Vieux Monde et ne se montrent que rarement dans la soci?t? des Hommes. Ils ressemblent aux Humains, tout en ?tant d''une beaut? sup?rieure quoique diff?rente, avec leurs visages ? l''ovale parfait et leurs yeux bleu toujours rieurs. Les Elfes ont tendance ? avoir une taille svelte et quelque peu fragile. Leurs oreilles sont g?n?ralement finement pointues. Ils vivent en harmonie avec la Nature, entretenant les arbres et prot?geant les bois des cr?atures malignes telles que les Gobelins. Ils sont d?licats et poss?dent des sens  des plus raffin?s ainsi qu''un go?t certain pour la musique et la bonne ch?re. Ils consid?rent la plupart des Humains comme brutaux et r?pugnants. Pourtant ils r?servent la majeure partie de leur d?dain pour les Nains qui ne sont, pour eux, que des ?tres vulgaires et destructeurs. Malgr? leur temp?rament pacifique, ils s''av?rent de tr?s bons archers et les intr?pides Guerriers qui furent leurs adversaires peuvent en t?moigner.', 165, 10, 3, -5, 12, 20, 10, 10);
INSERT INTO race VALUES(3, 'nain', 'Les Nains sont de petites cr?atures robustes, facilement identifiables ? la longueur de leur barbe. Les montagnes sont leur ?l?ment naturel ; ils vivent dans des cavernes et dans des mines creus?es dans le roc. Les Nains sont des experts dans le travail de la pierre et g?n?ralement habiles ? tous les m?tiers manuels, comme le travail du fer, l''ouvrage de belles armes ou la confection de superbes bijoux. Certains Nains vivent parmi les Humains comme travailleurs de m?taux ou artisans de tout poil. Leurs travaux sont tr?s recherch?s. Physiquement, ils sont assez souples, tr?s forts et plut?t laids. Ils sont quelque peu cupides, bourrus, inamicaux, irritables et antisociaux. Ils tol?rent les Humains car ils commercent souvent avec eux, mais d?testent les Elfes, qu''ils trouvent arrogants et irritants et avec qui ils n''ont que peu de choses en commun. Ils font de robustes Guerriers qui affectionnent tout particuli?rement la hache comme arme de bataille. Ils sont peu familiers avec tout ce qui touche ? la magie et ils font de bien pi?tres Lettr?s.', 130, 10, 3, -5, 12, 20, 9, 9);
INSERT INTO race VALUES(4, 'halfeling', 'Malgr? leur petitesse et la faiblesse de leur ossature, les Halfelings sont plut?t bedonnants avec des traits arrondis. Ils ne portent pas la barbe et sont plus petits que les Nains, aussi les deux races sont-elles facilement diff?renciables. Leurs mains et leurs pieds sont assez velus et ils pr?f?rent marcher pieds nus. Ce n''est pas un peuple tr?s nombreux. Ils vivent dans une r?gion ?loign?e du Vieux Monde, prot?g?e des Hommes par les pays environnants. En cons?quence, la vie pour un jeune Halfeling est souvent des plus ennuyeuse et beaucoup partent en qu?te d''aventure dans les contr?es ext?rieures. Ils ont les doigts agiles et sont naturellement discrets dans leurs actions, c''est pourquoi ils font d''excellents Voleurs. Les Halfelings sont extr?mement sympathiques et faciles ? vivre. Ils adorent se divertir et appr?cient  tout particuli?rement une bonne table (ils sont habituellement les premiers ? sugg?rer de ''visiter'' l''auberge locale ou ? proposer une halte en voyage).', 100, 10, 3, -5, 6, 12, 10, 10);
INSERT INTO race VALUES(5, 'gnome', 'description des gnomes', 108, 10, 2, -5, 10, 20, 8, 8);



DROP TABLE IF EXISTS race_characteristic;
CREATE TABLE IF NOT EXISTS race_characteristic (
  race_id int(11) NOT NULL default '0',
  characteristic_id int(11) NOT NULL default '0',
  de_id int(10) unsigned NOT NULL default '0',
  modificateur int(10) unsigned NOT NULL default '0',
  multiplicateur int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (race_id,characteristic_id)
) ;


INSERT INTO race_characteristic VALUES(1, 1, 3, 2, 1);
INSERT INTO race_characteristic VALUES(1, 2, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 3, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 4, 3, 1, 1);
INSERT INTO race_characteristic VALUES(1, 5, 3, 1, 1);
INSERT INTO race_characteristic VALUES(1, 6, 3, 4, 1);
INSERT INTO race_characteristic VALUES(1, 7, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 8, 1, 0, 1);
INSERT INTO race_characteristic VALUES(1, 9, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 10, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 11, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 12, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 13, 10, 20, 2);
INSERT INTO race_characteristic VALUES(1, 14, 10, 20, 2);
INSERT INTO race_characteristic VALUES(2, 1, 3, 2, 1);
INSERT INTO race_characteristic VALUES(2, 2, 10, 30, 2);
INSERT INTO race_characteristic VALUES(2, 3, 10, 20, 2);
INSERT INTO race_characteristic VALUES(2, 4, 3, 1, 1);
INSERT INTO race_characteristic VALUES(2, 5, 3, 1, 1);
INSERT INTO race_characteristic VALUES(2, 6, 3, 3, 1);
INSERT INTO race_characteristic VALUES(2, 7, 10, 50, 2);
INSERT INTO race_characteristic VALUES(2, 8, 1, 0, 1);
INSERT INTO race_characteristic VALUES(2, 9, 10, 30, 2);
INSERT INTO race_characteristic VALUES(2, 10, 10, 30, 2);
INSERT INTO race_characteristic VALUES(2, 11, 10, 40, 2);
INSERT INTO race_characteristic VALUES(2, 12, 10, 40, 2);
INSERT INTO race_characteristic VALUES(2, 13, 10, 30, 2);
INSERT INTO race_characteristic VALUES(2, 14, 10, 30, 2);
INSERT INTO race_characteristic VALUES(3, 1, 2, 2, 1);
INSERT INTO race_characteristic VALUES(3, 2, 10, 30, 2);
INSERT INTO race_characteristic VALUES(3, 3, 10, 10, 2);
INSERT INTO race_characteristic VALUES(3, 4, 3, 1, 1);
INSERT INTO race_characteristic VALUES(3, 5, 3, 2, 1);
INSERT INTO race_characteristic VALUES(3, 6, 3, 5, 1);
INSERT INTO race_characteristic VALUES(3, 7, 10, 10, 2);
INSERT INTO race_characteristic VALUES(3, 8, 1, 0, 1);
INSERT INTO race_characteristic VALUES(3, 9, 10, 10, 2);
INSERT INTO race_characteristic VALUES(3, 10, 10, 40, 2);
INSERT INTO race_characteristic VALUES(3, 11, 10, 20, 2);
INSERT INTO race_characteristic VALUES(3, 12, 10, 40, 2);
INSERT INTO race_characteristic VALUES(3, 13, 10, 40, 2);
INSERT INTO race_characteristic VALUES(3, 14, 10, 10, 2);
INSERT INTO race_characteristic VALUES(4, 1, 2, 2, 1);
INSERT INTO race_characteristic VALUES(4, 2, 10, 10, 2);
INSERT INTO race_characteristic VALUES(4, 3, 10, 20, 2);
INSERT INTO race_characteristic VALUES(4, 4, 3, 0, 1);
INSERT INTO race_characteristic VALUES(4, 5, 3, 0, 1);
INSERT INTO race_characteristic VALUES(4, 6, 3, 3, 1);
INSERT INTO race_characteristic VALUES(4, 7, 10, 40, 2);
INSERT INTO race_characteristic VALUES(4, 8, 1, 0, 1);
INSERT INTO race_characteristic VALUES(4, 9, 10, 30, 2);
INSERT INTO race_characteristic VALUES(4, 10, 10, 10, 2);
INSERT INTO race_characteristic VALUES(4, 11, 10, 20, 2);
INSERT INTO race_characteristic VALUES(4, 12, 10, 10, 2);
INSERT INTO race_characteristic VALUES(4, 13, 10, 30, 2);
INSERT INTO race_characteristic VALUES(4, 14, 10, 30, 2);
INSERT INTO race_characteristic VALUES(5, 1, 3, 2, 1);
INSERT INTO race_characteristic VALUES(5, 2, 10, 30, 2);
INSERT INTO race_characteristic VALUES(5, 3, 10, 10, 2);
INSERT INTO race_characteristic VALUES(5, 4, 3, 1, 1);
INSERT INTO race_characteristic VALUES(5, 5, 3, 0, 1);
INSERT INTO race_characteristic VALUES(5, 6, 3, 4, 1);
INSERT INTO race_characteristic VALUES(5, 7, 10, 20, 2);
INSERT INTO race_characteristic VALUES(5, 8, 1, 0, 1);
INSERT INTO race_characteristic VALUES(5, 9, 10, 20, 2);
INSERT INTO race_characteristic VALUES(5, 10, 10, 30, 2);
INSERT INTO race_characteristic VALUES(5, 11, 10, 20, 2);
INSERT INTO race_characteristic VALUES(5, 12, 10, 20, 2);
INSERT INTO race_characteristic VALUES(5, 13, 10, 30, 2);
INSERT INTO race_characteristic VALUES(5, 14, 10, 20, 2);



DROP TABLE IF EXISTS race_destin;
CREATE TABLE IF NOT EXISTS race_destin (
  race_id int(11) NOT NULL default '0',
  de_id int(10) unsigned NOT NULL default '0',
  modificateur int(11) default NULL,
  minimum int(10) unsigned default NULL,
  multiplicateur int(10) unsigned default NULL,
  PRIMARY KEY  (race_id,de_id)
) ;


INSERT INTO race_destin VALUES(1, 3, 1, 2, 1);
INSERT INTO race_destin VALUES(2, 3, -1, 1, 1);
INSERT INTO race_destin VALUES(3, 3, 0, 1, 1);
INSERT INTO race_destin VALUES(4, 4, 0, 1, 1);
INSERT INTO race_destin VALUES(5, 4, 0, 1, 1);






DROP TABLE IF EXISTS reagent;
CREATE TABLE IF NOT EXISTS reagent (
  reagent_id int(10) unsigned NOT NULL auto_increment,
  disponibility_id int(10) unsigned NOT NULL default '1',
  reagent_type_id int(10) unsigned NOT NULL default '1',
  reagent_name varchar(255) default NULL,
  reagent_desc text,
  reagent_cost varchar(45) default NULL,
  PRIMARY KEY  (reagent_id)
)    ;


INSERT INTO reagent VALUES(1, 1, 1, 'clochette', '', '');



DROP TABLE IF EXISTS reagent_type;
CREATE TABLE IF NOT EXISTS reagent_type (
  reagent_type_id int(10) unsigned NOT NULL auto_increment,
  reagent_type_name varchar(255) default NULL,
  reagent_type_desc text,
  PRIMARY KEY  (reagent_type_id)
)    ;


INSERT INTO reagent_type VALUES(1, 'common', '');



DROP TABLE IF EXISTS sex;
CREATE TABLE IF NOT EXISTS sex (
  sex_id int(10) unsigned NOT NULL default '0',
  sex_name varchar(45) NOT NULL default '',
  sex_desc text,
  PRIMARY KEY  (sex_id)
) ;


INSERT INTO sex VALUES(1, 'homme', 'Description des hommes');
INSERT INTO sex VALUES(2, 'femme', 'Description des femmes');



DROP TABLE IF EXISTS skill;
CREATE TABLE IF NOT EXISTS skill (
  skill_id int(10) unsigned NOT NULL auto_increment,
  main_skill int(10) unsigned default '0',
  copyright_id int(10) unsigned NOT NULL default '1',
  skill_name varchar(255) default NULL,
  skill_desc text,
  cumulable int(1) default '0',
  PRIMARY KEY  (skill_id)
)    ;


INSERT INTO skill VALUES(1, 0, 1, 'acrobatie', 'Cette comp?tence indique que le personnage est un athl?te confirm?, capable d''ex?cuter des chutes, bonds, rebonds, sauts, etc... Il doit aussi ajouter deux m?tres ? toutes les distances de Bonds et un modificateur de +2 ? tous les jets de d? de dommages dus aux Chutes et aux Sauts. En plus, il peut grimper des pentes raisonnables sans pour cela faire un Test de Risque. Bien que les personnages puissent, avec ce talent, faire des sauts p?rilleux arri?res, des ?quilibres sur les mains, la roue sans aucun risque, ils ne peuvent faire des acrobaties pendant qu''ils combattent ou qu''ils tentent une manipulation comme, par exemple, ouvrir une porte. S''ils cherchent ? travailler comme Bateleur ils auront un modificateur de +10% sur le Test d''Emba?che ; ils peuvent aussi se livrer au Qu?mandage avec un Test ? +10%', NULL);
INSERT INTO skill VALUES(2, 0, 1, 'acrobatie Ã©questre', 'Cette comp?tence peut ?tre acquise par les gens du cirque, les voyageurs ou les nomades. Ils sont alors capables d''effectuer toutes sortes d''acrobaties ? cheval comme tenir en ?quilibre, bondir sur son dos, etc... En pratique, lorsqu''ils montent ? cheval ils n''auront jamais ? faire de Tests de Risque, sauf s''ils souhaitent sauter ? tr?s grande vitesse (sup?rieure ? 8 m?tres/Round) et ils auront, dans ce cas, un modificateur de +30%. En outreils n''ont aucun malus lorsqu''ils utilisent des armes de jet sur un cheval en d?placement.', NULL);
INSERT INTO skill VALUES(3, 0, 1, 'acuitÃ© auditive', 'Les personnages avec ce talent sont pourvus d''une excellente ouÃ¯e. Ils feront leurs Tests d''Ecoute Ã  +10%. Ils additionnent aussi 2 mÃ¨tres aux distances normales d''Ecoute.', NULL);
INSERT INTO skill VALUES(4, 0, 1, 'acuitÃ© visuelle', 'Le personnage, douÃ© d''une vision exceptionnelle, peut voir un objet Ã  une distance de 50% supÃ©rieure Ã  la normale. Cela n''affecte pas la compÃ©tence Vision Nocturne mais, par contre, modifie ce qu''il est possible de voir avec une torche, une lanterne, etc...', NULL);
INSERT INTO skill VALUES(5, 0, 1, 'adresse au tir', 'Les personnages adroits au tir sont naturellement de bons tireurs et gagnent un bonus de +10% ? tous les Tests de Capacit? de Tir. Les personnages comp?tents en armes lance-projectiles gagnent +20% dans ces comp?tences.', NULL);
INSERT INTO skill VALUES(6, 0, 1, 'alphabÃ©tisation', 'Les personnages sont capables de lire et d''Ã©crire leur langue natale. S''ils sont originaires du Vieux Monde, ce sera l''Occidental. S''ils sont polyglotes d''origine comme les Nains et les Elfes du Vieux Monde, ils sauront lire et Ã©crire toutes les langues qu''ils parlent.', 0);
INSERT INTO skill VALUES(7, 0, 1, 'ambidextrie', 'Les personnages ambidextres peuvent utiliser leurs deux mains avec la m?me habilet?, sans malus. Ils ne sont pas d?savantag?s s''ils combattent avec leur ''mauvaise'' main. Ils b?n?ficient d''un bonus de +10% ? tous les Tests de Risque bas?s sur la Dext?rit', NULL);
INSERT INTO skill VALUES(8, 186, 1, 'arbalÃ¨te Ã  rÃ©pÃ©tition', 'ArbalÃ¨tes Ã  rÃ©pÃ©tition.', 0);
INSERT INTO skill VALUES(9, 186, 1, 'arbalÃ¨tes de poing', 'ArbalÃ¨tes de poing et autres armes Ã  ressort.', 0);
INSERT INTO skill VALUES(10, 186, 1, 'arbalÃ¨te gÃ©ante', 'ArbalÃ¨tes gÃ©antes.', 0);
INSERT INTO skill VALUES(11, 186, 1, 'arc long', 'Arcs Longs.', NULL);
INSERT INTO skill VALUES(12, 186, 1, 'armes articul?es', 'Fl?aux ; Fouets ; Morgenstern.', NULL);
INSERT INTO skill VALUES(13, 186, 1, 'armes ? deux mains', 'Ep?es b?tardes ; Haches, Gourdins, Masses, Marteaux, Pics, Ep?es ? deux mains ; B?tons lest?s ; Fl?aux ? deux mains (si le personnage a d?j? la comp?tence Armes Articul?es).', NULL);
INSERT INTO skill VALUES(14, 186, 1, 'armes d''hasts', 'Hallebardes et autres armes d''hasts.', NULL);
INSERT INTO skill VALUES(15, 186, 1, 'armes de jet', 'Couteaux et Haches de jet.', NULL);
INSERT INTO skill VALUES(16, 186, 1, 'armes de parade', 'Mains-gauches ; Brise-lames ; Boucliers.', NULL);
INSERT INTO skill VALUES(17, 186, 1, 'armes de poing', 'Gantelets ; Coups-de-poing ; Crochets ; Fils d''?tranglement ; Garrots.', NULL);
INSERT INTO skill VALUES(18, 186, 1, 'bombarde', 'Bombardes.', NULL);
INSERT INTO skill VALUES(19, 186, 1, 'bombes incendiaires', 'Bombes incendiaires.', NULL);
INSERT INTO skill VALUES(20, 186, 1, 'catapulte', 'Catapultes.', NULL);
INSERT INTO skill VALUES(21, 186, 1, 'escrime', 'Fleurets ; Rapi?res.', NULL);
INSERT INTO skill VALUES(22, 186, 1, 'explosifs', 'Lancer et poser des bombes explosives, y compris la fabrication et la pr?paration.', NULL);
INSERT INTO skill VALUES(23, 186, 1, 'filets', 'Filets ; Rets.', NULL);
INSERT INTO skill VALUES(24, 186, 1, 'frondes', 'Frondes ; Fustibales.', NULL);
INSERT INTO skill VALUES(25, 186, 1, 'lance de cavalerie', 'Lances de cavalerie.', NULL);
INSERT INTO skill VALUES(26, 186, 1, 'lasso', 'Lassos ; Bolas.', NULL);
INSERT INTO skill VALUES(27, 186, 1, 'pistolet', 'Pistolets ? poudre.', NULL);
INSERT INTO skill VALUES(28, 186, 1, 'sarbacane', 'Sarbacanes.', NULL);
INSERT INTO skill VALUES(29, 186, 1, 'tromblon', 'Tromblons.', NULL);
INSERT INTO skill VALUES(30, 0, 1, 'art', 'Un artiste peut peindre, sculpter ou produire toutes autres sortes d''oeuvres d''art. Certains sont limit?s dans leur travail comme il est pr?cis? dans leur Carri?re. Quel que soit leur talent, ils peuvent fabriquer des objets utiles ou vendables (vendables ? la d?cision du MJ naturellement). Cela comprend des copies convaincantes d''oeuvres d?j? existantes. Pour d?terminer la valeur de l''oeuvre, on peut prendre comme base 10D12 CO par semaine pass?e ? la fabrication, avec un maximum de 2 mois pour une oeuvre moyenne. La d?tection du faux se fait sur la base de l''Intelligence de l''acheteur avec un malus de -10% par semaine de fabrication (maximum : -90%). Les oeuvres plus grandes ou plus soign?es sont ? la discr?tion du MJ. La valeur d?pend aussi de ce que pense l''acheteur. Tout le monde n''est pas forc?ment grand amateur d''art dans le Vieux Monde et le MJ doit d?terminer si ce que fait le personnage s''accorde avec le go?t des gens. De plus, l''artiste a un bonus de +10% pour le Qu?mandage. Les artistes sont les plus qualifi?s en mati?re d''expertise et ajoutent 15% ? leur Intelligence pour ce qui est de la d?tection des faux.', NULL);
INSERT INTO skill VALUES(31, 0, 1, 'astronomie', 'Les personnages avec cette comp?tence sont familiaris?s avec les cieux et les cycles des corps c?lestes. Ils savent reconna?tre les constellations, les plan?tes et les corps inhabituels tels que les com?tes, novae, etc... Sur un Test r?ussi d''Intelligence, le personnage peut naviguer ? l''aide des ?toiles avec une pr?cision raisonnable. Il peut aussi pr?dire des ?v?nements astraux et cycliques tels que les ?clipses et chutes de m?t?ores.', NULL);
INSERT INTO skill VALUES(32, 0, 1, 'bagarre', 'Les bagarreurs sont exp?riment?s dans l''art de se d?fendre avec leurs mains, leurs pieds, des v?tements ou ce qui se passe ? port?e de leurs mains. Les personnes qui pratiquent ces techniques ne sont pas concern?es par le malus de -20% et le modificateur de -2 aux dommages dans les combats sans arme.', NULL);
INSERT INTO skill VALUES(33, 0, 1, 'baratin', 'Le personnage dou? de cette comp?tence peut essayer de baratiner des individus parlant la m?me langue que lui. Elle est utilisable dans la plupart des situations, lorsque l''on veut gagner du temps. Le personnage invente simplement un discours extravagant qu''il ''sert'' ? sa victime, ce qui a pour effet de l''?bahir, la laissant m?me se demander si son interlocuteur n''est pas fou, intoxiqu? ou ?ventuellement dangereux. Cela n''a jamais de sens ; ce n''est pas une tentative de Bluff, mais un artifice detin? ? plonger l''auditeur dans la confusion, ? le subjuguer. Le baratineur doit faire un Test sous sa Sociabilit?. S''il r?ussit cela indique que les effets dureront pendant ce Round de 10 secondes. Si la marge de succ?s est sup?rieure ou ?gale ? 10%, les effets seront prolong?s de 1D6 Rounds suppl?mentaires. Apr?s cette p?riode, la victime reprendra ses esprits et le personnage ferait bien de courir au plus vite. Les PNJ ne resteront pas subjuqu?s par un baratineur s''il est flagrant qu''ils sont en danger ou bien si l''on se pr?pare ostensiblement ? leur nuire. Bien que le nombre de personnes subjugu?es ne soit pas limit?, le baratineur ne devrait pas r?ussir ? en influencer plus d''un seul si des ?v?nements se produisent ? proximit?, en particulier s''il s''agit de combat.', NULL);
INSERT INTO skill VALUES(34, 0, 1, 'bouffonneries', 'Les personnages sont vers?s dans l''art ''traditionnel'' de l''humour paillard, obsc?ne, sarcastique et irritant. La raison pour laquelle cette activit? est consid?r?e comme divertissante reste tr?s myst?rieuse. Au sein de la noblesse, la pr?sence d''un Bouffon attach? ? la famille est garante d''un certain niveau de statut social. Les Personnages ont un bonus de +10% aux Tests de Bluff et de Qu?mandage.', NULL);
INSERT INTO skill VALUES(35, 0, 1, 'calcul mental', 'Les personnages dou?s de ce talent ont le don de l''arithm?tique, avec une incroyable - et profond?ment irritante - facult? de r?soudre des probl?mes de calcul quasi-instantan?ment. Quand de tels personnages sont confront?s ? un probl?me math?matique, le MJ devra admettre qu''ils sont en mesure de le r?soudre, quelqu''en soit la difficult?. Le MJ devra alors r?aliser un Test sous l''Intelligence du Personnage, tous les Tours, jusqu''? ce que la r?ussite indique que le probl?me est r?solu dans ce Tour de jeu ; il pourra alors lui r?v?ler la solution. Ces calculateurs prodiges ont aussi un modificateur de +20% aux Tests d''Estimation et de +10% aux Tests de Jeu.', NULL);
INSERT INTO skill VALUES(36, 0, 1, 'camouflage rural', 'Un personnage avec cette comp?tence peut se dissimuler parfaitement dans un environnement rural, utilisant les arbres, les branches et le feuillage comme couverture. Le Test de Dissimulation doit ?tre effectu? ? +20% si le personnage est immobile et ? +5% s''il se d?place Prudemment. Par environnements ruraux, on entend toutes les zones qui ne sont pas essentiellement urbaines : fermes, campagnes, for?ts, champs, bords de rivi?res, parcs, jardins, jungles, marais, etc... La distinction entre le rural et l''urbain peut parfois ne pas ?tre ?vidente, comme par exemple le petit jardin d''une maison en ville. Ce sera alors au MJ de d?cider de la zone d''appartenance. Evidemment, il est n?cessaire que le personnage trouve quelque chose pour se cacher. Le MJ devra demander au joueur ce que son personnage fait pour se camoufler et modifier les chances en cons?quence.', NULL);
INSERT INTO skill VALUES(37, 0, 1, 'camouflage urbain', 'Le personnage dou? de cette comp?tence peut se dissimuler parfaitement en milieu urbain, utilisant les pas de portes, les petites traverses, les murs et les fentes pour se camoufler. Le Test de Dissimulation doit ?tre effectu? ? +20% si le personnage est immobile et ? +5% s''il se d?place Prudemment. L''environnement urbain est essentiellement une zone construite. Ce talent peut ?tre utilis? aussi bien ? l''int?rieure qu''? l''ext?rieure des constructions. La diff?rence entre le milieu urbain et rural peut parfois ne pas ?tre ?vidente comme par exemple une ferme. Il est laiss? libre choix au MJ de d?terminer dans quel environnement l''action se situe. Ce talent s''applique aussi aux constructions souterraines comme les tunnels ou les caves. Evidemment il est n?cessaire que le personnage trouve quelque chose pour se cacher. Le MJ devra demander au joueur ce que son personnage fait pour se camoufler et modifier les chances en cons?quences.', NULL);
INSERT INTO skill VALUES(38, 0, 1, 'canotage', 'Les personnages sont exp?riment?s dans le maniement de la rame et instruments assimil?s. Ils peuvent conduire de petites embarcations efficacement et sans danger.', NULL);
INSERT INTO skill VALUES(39, 0, 1, 'cartographie', 'Les personnages, avec cette comp?tence, sont familiaris?s avec la conception et l''utilisation de cartes. Ils lisent les cartes m?me si elles sont trac?es de fa?on archa?que ou non-conventionnelle, ou encore d?peignant une r?gion inconnue. Ils peuvent aussi reconna?tre des c?tes ou autres ?l?ments g?ographiques, m?me d?form?s, mal dessin?s, ou pr?sent?s d''une mani?re camoufl?e. En utilisant un plan, le cartographe peut de diriger ou conduire d''autres personnes ? un endroit pr?cis ou suivre une certaine direction. Les cartographes se rappellent tr?s bien des directions ou des points de rep?res. Ce qui est extr?mement utile dans les donjons et peut servir ? retrouver son chemin ou retourner ? un endroit pr?cis. Les Tests sont li?s ? l''Intelligence.', NULL);
INSERT INTO skill VALUES(40, 0, 1, 'chance', 'Les personnages qui sont ''n?s sous une bonne ?toile'' trouvent toujours ce qu''ils cherchent et tout semble leur sourire. Ils peuvent utiliser leur chance pour ajouter ou soustraire 1 ? tous les D6, ou 10% ? tous les D100 et ceci ? n''importe quel moment. Ce modificateur peut ?tre appliqu? ? un jet de d?s, apr?s que le r?sultat soit connu, afin de pouvoir transformer un ?chec en r?ussite. Les personnages peuvent utiliser leur Chance un certain nombre de fois par jour. La premi?re fois que le personnage y fait appel, dans une journ?e de jeu, le MJ doit faire un jet secret de 1D6. Le r?sultat de ce jet repr?sente le nombre de ''coups de chance'' que le personnage pourra conna?tre dans cette journ?e. Ce nombre doit ?tre not? et gard? secret par leMJ: le joueur ne saura pas combien de fois il pourra y faire appel ce jour-l?... jusqu''au moment o? cela ?chouera pour la premi?re fois.', NULL);
INSERT INTO skill VALUES(41, 0, 1, 'chant', 'Avec cette comp?tence les personnages ont la facult? de chanter et connaissent une grande vari?t? de chansons populaires ou plus formelles. Cela peut leur permettre de gagner un peu d''argent lorsqu''ils exercent en public. Ils disposent d''un modificateur de +10% aux Tests d''Emba?che comme Bateleur et aussi quand ils Qu?mandent.', NULL);
INSERT INTO skill VALUES(42, 0, 1, 'charisme', 'Les personnages dou?s de charisme ont cette qualit? ind?finissable qui leur permet d''avoir des rapports exceptionnellement bons avec les gens qui se montreront ?galement amicaux envers eux et les aideront. Les personnages charismatiques peuvent persuader d''autres individus de pratiquement n''importe quoi. Ils peuvent avoir ''recours au charme'' ? volont?, en b?n?ficiant d''un modificateur de +10% ? tous les Tests d?pendants de la Sociabilit', NULL);
INSERT INTO skill VALUES(43, 0, 1, 'chasse', 'Les chasseurs exp?riment?s savent o? aller pour pratiquer la chasse et o? trouver du gibier. Le MJ devra d?cider ? quel endroit se situe un type d''animal bien pr?cis et il indiquera au joueur ce qu''il peut esp?rer rencontrer dans une r?gion donn?e. Un Test sous l''Intelligence du personnage pourra donner au MJ une id?e du gibier qui a ?t? chass?. Un ?chec indique qu''il n''y avait rien. La marge de r?ussite peut ?tre consid?r?e comme un guide en ce qui concerne la quantit? d''animaux tu?s et l''esp?ce du gibier, qui r?pondra plus ou moins aux voeux du chasseur selon la qualit? de la r?ussite. En fonction du terrain de chasse, le Test pourra ?tre r?alis? plus ou moins souvent ; en moyenne, une fois par jour.', NULL);
INSERT INTO skill VALUES(44, 0, 1, 'chimie', 'Les personnages poss?dant cette comp?tence ont une compr?hension raisonnable des principes de chimie, bien que leurs connaissances seront souvent sous une forme mystique ou magique. Comme chimistes, ils ont la possibilit? de reconna?tre les diff?rents types de min?raux, dans la composition desquels entrent, tout naturellement, des ?l?ments et des compos?s chimiques. Ils savent aussi o? chercher de tels composants (par exemple, que le souffre peut ?tre trouv? pr?s des crat?res volcaniques, etc...). Les chimistes savent aussi comment extraire et raffiner des produits chimiques ? partir des min?raux, ou des compos?s, qui les contiennent. Ils peuvent isoler un ?l?ment d''une roche pour produire du fer, du cuivre, de l''argent, etc... C''est au MJ de guider les joueurs dont les personnages pratiquent cette comp?tence. Ils peuvent permetre la fabrication de certains composants, mais doivent limiter les tentatives de choses trop complexes ou inacceptables. Le T.N.T. est cat?goriquement inacceptable ! La poudre ? canon et autres mixtures inflammables pourront ?tre autoris?es. La poudre ? canon comprend un m?lange de souffre, de salp?tre et de charbon. Le feu gr?gois, mixture des temps anciens, contenait de la naphte et divers sulfure ainsi que de l''huile et d''autres substances ? base de goudron. Le Test d''Intelligence devra ?tre utilis? pour ce talent, assorti de modificateurs que le MJ d?cidera pour refl?ter la complexit? du travail. Certains ?checs peuvent co?ter tr?s cher, ?tre salissants et... douloureux.', NULL);
INSERT INTO skill VALUES(45, 0, 1, 'chiromancie', 'Les personnages ont acquis le talent de lire dans les lignes de la main, certainement en voyageant avec les gens du cirque. La chiromancie permet aux personnages de se faire un peu d''argent, plus qu''un musicien des rues. Les chiromanciens ont un modificateur de +10% aux Tests de Qu?mandage. Plus pratiquement, ils peuvent acqu?rir des informations sur le autres personnages. Le MJ d?terminera quelles informations ils peuvent d?couvrir, en ayant ?ventuellement recours ? un Test d''Intelligence pour en d?terminer la pr?cision. Le MJ devrait pr?senter ces informations sous une forme assez ambig?e, n''offrant des d?tails utiles que si les circonstances sont favorables. Ces informations peuvent concerner la personnalit?, la famille ou les intentions du sujet.', NULL);
INSERT INTO skill VALUES(46, 0, 1, 'chirurgie', 'Les chirurgiens ont les connaissances m?dicales requises pour ''racommoder'' les personnages en piteux ?tat. Pour ?viter les risques d''infections, un traitement approfondi devra ?tre effectu? hors de l''environnement d''aventures ; avec le mat?riel appropri? et au calme. Le MJ devra imposer des modificateurs s''ils essaient d''op?rer sans l''?quipement ou les commodit?s n?cessaires. Ainsi, par exemple, si un personnage essaie de traiter un amput?, dans une cave obscure et humide, alors qu''une m?l?e fait rage aux alentours, ses chances seront r?duites de 5 ? 10%. Il y a six types principaux de traitements : Traitement des Blessures S?rieuses : Au prix d''un Test d''Intelligence r?ussi, le chirurgien pourra restituer 1D3 points de Blessures ? des personnes S?rieusement Bless?es, qui seront alors consid?r?es comme L?g?rement Bless?es. Cela prend un Tour de jeu. Arr?t des pertes de points de Blessures : Sur un test d''Intelligence r?ussi, le chirurgien pourra intervenir pour endiguer la forte H?morragie, stoppant ainsi la perte de points de Blessures. C''est la seule intervention qui puisse ?tre tent?e ''sur le terrain'' sans p?nalit?. Elle prend un Round de combat et peut ?tre r?p?t?e tant que le patient est en vie. Notez qu''? moins qu''il ne b?n?ficie d''un Traitement des Blessures Graves par la suite, il mourra. Traitement des Blessures Graves : Si un Test d''Intelligence est r?ussi, le chirurgien pourra pr?venir la mort d''un personnage qui a ?t? trait? avec succ?s pour une forte H?morragie. L''op?ration dure deux heures. Si elle r?ussit, le patient dormira pendant 24 heures, ? la suite de quoi il sera consid?r? comme ayant 1 point de Blessures et L?g?rement Bless?. Si elle ?choue, le personnage meurt. R?duction des Fractures/D?bo?tements : Si un Test d''Intelligence (avec un bonus de +10%) est r?ussi, le personnage sera consid?r?comme L?g?rement Bless? avec un point de Blessures. Le membre sera maintenu immobile et inutilisable 1D4+1 semaines. L''op?ration dure deux heures et peut ?tre r?p?t?e si n?cessaire mais avec une p?nalit? de -10% pour chaque ?chec pr?c?dent. Si une telle intervention n''est pas r?ussie dans la semaine qui suit la blessure, le membre sera d?finitivement perdu. Traitement des Amputations : En aucun cas un chirurgien ne peut remplacer un membre tranch?. L''H?morragie de la victime devra ?tre stopp?e en premier et il faudra caut?riser ensuite la blessure. Le personnage devra r?ussir un Test d''Intelligence pour sauver la vie de son patient. Celui-ci sera alors consid?r? comme L?g?rement Bless? (1 point de Blessures) au bout de 1D6+6 jours seulement. Si le Test ?choue, le patient meurt. Acc?l?rer la r?cup?ration : Les personnages poss?dant la comp?tence Chirurgie et qui administrent des soins au moins une demi-heure par jour ? leurs patients, r?duisent le temps de r?cup?ration d''un tiers purvu qu''ils r?ussissent un Test d''Intelligence. Si le Test ?choue, la r?cup?ration ne se fera que deux fois plus vite. Par exemple, les personnages L?g?rement Bless?s regagneront 3 fois leur Endurance par jour de repos s''ils sont trait?s avec succ?s par un chirurgien.', NULL);
INSERT INTO skill VALUES(47, 0, 1, 'com?die', 'Les personnages capables de jouer la com?die peuvent assumer ou feindre d''autres identit?s, ainsi que se produire devant un public. Leurs Tests de Bluff et de Comm?rage se feront  avec un modificateur de +15%. Les com?diens ont un grand r?pertoire de discours. et un bon com?dien sera capable de les r?citer ? la moindre occasion, ce qui lui conf?re un modificateur de +10% aux Test de Qu?mandage.', NULL);
INSERT INTO skill VALUES(48, 0, 1, 'commerce', 'Les marchandeurs confirm?s peuvent obtenir des marchandises bien en dessous du cours du march?. Leurs Test de Marchandage sont modifi?s d''un +10.', NULL);
INSERT INTO skill VALUES(49, 0, 1, 'conduite d''attelages', 'Les personnages avec cette comp?tence ont l''habitude de conduire des charrettes ou des chariots. Ils sont capables de conduire toutes sortes de v?hicules attel?s, en toute confiance. Ils contr?lent aussi automatiquement les chevaux et autres b?tes d''attelage sans avoir ? faire de Test de Risque, et sans attirer malencontreusement l''attention ni causer d''accidents.', NULL);
INSERT INTO skill VALUES(50, 0, 1, 'confection', 'Les personnages comp?tents en Confection, en fabrication de voiles ou m?me en pr?paration de costumes de sc?ne, peuvent r?parer des v?tements, tentes, voiles et autres objets en tissus, s''ils ont le mat?riel ad?quat. Ils sont aussi capable de confectionner des d?guisements donnant +10% aux Tests de Bluff du personnage qui les portent.', NULL);
INSERT INTO skill VALUES(51, 0, 1, 'connaissance des d?mons', 'Les personnages avec cette comp?tences peuvent reconna?tre un D?mon lorsqu''ils en voient et distinguer son type au premier coup d''oeil (Majeur, Mineur ou Servant). Ils sont sensibles aussi ? l''odeur et l''aura de ceux-ci et peuvent d?terminer s''il y en a un ? 48 m?tres ? la ronde m?me s''ils ne l''aper?oivent pas. Sans cette comp?tence, ils ne pourraient se douter qu''un D?mon se dresse ddevant eux. Le MJ pourrait leur venir en aide en d?crivant l''apparence hostile et impresionnante de l''?tre qu''ils observent. Lorsqu''ils sont confront?s ? un D?mon, les personnages peuvent ?tre conscients de ses capacit?s, ses faiblesses et ses intentions. Pour d?terminer cela, le MJ peut leur accorder un Test d''Intelligence lorsqu''ils n''ont jamais rencontr? un D?mon de ce type. S''ils ont d?j? eu affaire ? un type particulier de D?mons, ils en connaissent automatiquement tous les d?tais.', NULL);
INSERT INTO skill VALUES(52, 0, 1, 'connaissance des parchemins', 'Les personnages peuvent, avec cette comp?tence, reconna?tre un parchemin magique lorsqu''ils en voient un. En admettant qu''ils comprennent la Langue Herm?tique dans laquelle il est ?crit, ils pourront en d?finir le type et et utiliser la Magie qu''il contient.', NULL);
INSERT INTO skill VALUES(53, 0, 1, 'connaissance des plantes', 'Les personnages ayant cette comp?tence peuvent reconna?tre les diff?rentes vari?t?s de plantes. Ils connaissent aussi les propri?t?s des plantes et les p?riodes de r?colte (jours, ann?es, circonstances sp?ciales). Sur un Test d''Intelligence r?ussi, le MJ pourra indiquer aux joueurs les endroits possibles o? trouver ce qu''ils cherchent.', NULL);
INSERT INTO skill VALUES(54, 0, 1, 'connaissance des runes', 'Tout le monde sait que les Runes existent ; et la plupart des gens acceptent leur pouvoir, bien qu''ils ne soient pas capables de faire la diff?rence entre une vraie Rune, un pictogramme et une fausse Rune sans magie. Un personnage avec cette comp?tence peut dire ? quelle cat?gorie elles appartiennent.', NULL);
INSERT INTO skill VALUES(55, 0, 1, 'conscience de la magie', 'Cette comp?tence est r?serv?e aux Enchanteurs. Son utilisation rend le personnage inactif pendant un Tour de jeu (1 minute). Il prendra alors conscience de la pr?sence et de la situation approximative de tout personnage ou cr?ature Enchanteresse dans un rayon de 100 m?tres. La concentration doit ?tre absolue ; parler, se d?placer, combattre ou essayer de faire autre chose rendrait la comp?tence inutilisable.', NULL);
INSERT INTO skill VALUES(56, 0, 1, 'construction naval', 'Les personnages avec cette comp?tence peuvent travailler ? la construction de bateaux et comprendre les principes et les besoins ?l?mentaires lors de la fabrication de navires marins ou fluviaux. Ils sont familiaris?s avec la technologie nautique et avec les outils de travail du bois et de confection des voiles. Avec du temps et du mat?riel, ils seraient capables de r?parer ou de construire un bateau. Les radeaux et autres embarcations improvis?es peuvent ?tre construites au rythme de 10 heures de travail d''un homme par passager transport?. Les personnages ont un +10% aux Tests de construction lorsqu''ils emploient du bois ou autres mat?riaux de base relatifs aux bateaux.', NULL);
INSERT INTO skill VALUES(57, 0, 1, 'contortionnisme', 'Les Contortionnistes re?oivent leur entra?nement des gens du cirque ou ? travers d''?tranges disciplines religieuses. Ce talent leur donne la possibilit? de contr?ler leur corps au-del? des limites d''une personne normale, d?pla?ant leurs os hors des articulations ou disloquant leur corps de mani?re horrible ou, du moins, r?voltante. Ils peuvent se d?barrasser des cordes, cha?nes et autres liens sur un Test r?ussi sous la Dext?rit?, moins la moiti? de l''Intelligence de celui qui a fait les liens. Ils peuvent aussi se faufiler ? travers des passages ridiculement ?troits tels que des barreaux de cellules ou de conduits d''a?ration. 15cm x 30 cm est le plus ?troit des passages praticable par ces personnages. Malgr? que la plupart des gens trouvent leurs singeries r?pugnantes, les contortionnismes ont +10% aux Tests de Qu?mandage.', NULL);
INSERT INTO skill VALUES(58, 0, 1, 'corruption', 'Le personnage avec cette comp?tence ma?trise l''art d''acheter des faveurs. Il sait qui soudoyer, ce qu''il faut offrir et comment le faire. Il a +20% aux Tests pour Corrompre. Notez que l''argent n''est pas le seul moyen utiliser pour une corruption.', NULL);
INSERT INTO skill VALUES(59, 0, 1, 'coups assommants', 'Les personnages qui ont cette comp?tence gagnent un bonus de +20% ? leur chance d''?tourdir un adversaire et n''ont pas le malus habituel de -20% au combat. Les chances d''?tourdir sont ?gales aux dommages modifi?s (1D6+F-E-protection de la t?te) multipli?s par 5. Notez que la comp?tence est plus efficace lorsque la cible est immobile. Il y a alors un Toucher automatique et les dommages modifi?s sont doubl?s.', NULL);
INSERT INTO skill VALUES(60, 0, 1, 'coups pr?cis', 'Les personnages qui ont cette comp?tence et qui r?ussissent un Coup Critique sur leur adversaire peuvent modifier la localisation de +/-10% suivant la partie du corps qu''ils d?sirent frapper. Ainsi une localisation de 82 (jambe droite) pourra ?tre modifi?e en 72 (tronc) ou 92 (jambe gauche), au choix du joueur.', NULL);
INSERT INTO skill VALUES(61, 0, 1, 'coups puissants', 'Les personnages qui ont cette comp?tence augmentent les dommages caus?s de 1 point.', NULL);
INSERT INTO skill VALUES(62, 0, 1, 'course ? pieds', 'Les personnages, avec ce talent, sont de rapides coureurs, tr?s lestes sur leurs jambes. Ils rajoutent 1 ? leur score de Mouvement (M).', NULL);
INSERT INTO skill VALUES(63, 0, 1, 'crochetage des serrures', 'Un personnage peut, avec ce talent, crocheter des serrures ; cela d?pend alors d''une r?ussite au Test de Crochetage. Cette comp?tence peut ?tre acquise plus d''une fois, donnant ainsi une plus grande chance de succ?s. Pour chaque achat suppl?mentaire, il est accord? +10% de modificateur.', NULL);
INSERT INTO skill VALUES(64, 0, 1, 'cryptographie', 'Avec cette comp?tence, les personnages sont capables d''inventer et de percer des codes ou des cl?s de chiffrement. Ils peuvent imaginer un nouveau code sur un Test d''Intelligence r?ussi. Ils ont +10% pour tout Test d''Intelligence destin? ? d?chiffrer un code inconnu. Le MJ peut assigner un modificateur en fonction de la facilit? du code.', NULL);
INSERT INTO skill VALUES(65, 0, 1, 'cuisine', 'Les personnages pouvant cuisiner savent aussi pr?parer la nourriture fine, juger de la qualit? des ingr?dients et de la finition du produit. Ils ont aussi un modificateur de +10% pour d?celer de la drogue ou du poison dans leurs repas. Si cela est r?ussi, la pr?sence d''une substance ?trang?re est d?tect?e mais sa nature reste inconnue.', NULL);
INSERT INTO skill VALUES(66, 0, 1, 'danse', 'Les personnages qui ont cette comp?tence peuvent danser exceptionnellement bien, de fa?on formelle ou informelle. Ils peuvent ajouter 10% aux Tests d''Emba?che ou de Qu?mandage s''ils cherchent un emploi de Bateleur ou exercent dans la rue.', NULL);
INSERT INTO skill VALUES(67, 0, 1, 'd?guisement', 'Avec ce talent, les personnages sont aptes ? confectionner ou utiliser des d?guisements. Ceux-ci peuvent ?tre simples ou tr?s ?labor?s. Le MJ doit garder en t?te tous les efforts qui ont ?t? fait lors de sa r?alisation pour savoir si cela marche ou non. Un individu peut alors passer inaper?u aux yeux de personnes peu soup?onneuses. Dans le cas d''un examen fortuit, un Test de Sociabilit? est requis pour le personnage d?guis?. Un examen attentif r?v?lera toujours un d?guisement quoiqu''un personnage pourra anticiper la chose et tenter par tous les moyens de r?ussir un Bluff. Le MJ devra alors prendre en compte la nature de ce Bluff. Une phrase du genre : ''Ne me fouillez pas si brutalement... j''ai une sant? d?licate depuis que j''ai attrap? la Putr?factose...'' devrait ?tre suffisante dans la plupart des cas.', NULL);
INSERT INTO skill VALUES(68, 0, 1, 'd?placement silencieux (rural)', 'Les personnages peuvent, avec cette comp?tence, se d?placer pratiquement silencieusement dans un environnement rural. Elle donne ? celui qui Ecoute un malus de -10% ? son Test. Exemple : en temps normal, la chance d''entendre un bruit dans un rayon de 4 m?tres est de 30%, si l''individu se d?place Prudemment, dans ce cas elle sera r?duite ? 20%. Par environnements ruraux, on entend toutes les zones qui ne sont pas essentiellement urbaines : fermes, campagnes, for?ts, champs, bords de rivi?res, parcs, jardins, jungles, marais, etc... La distinction entre le rural et l''urbain peut parfois ne pas ?tre ?vidente, comme par exemple le petit jardin d''une maison en ville. Ce sera alors au MJ de d?cider de la zone d''appartenance.', NULL);
INSERT INTO skill VALUES(69, 0, 1, 'd?placement silencieux (urbain)', 'Les personnages peuvent, avec cette comp?tence, se d?placer pratiquement silencieusement dans un environnement urbain. Elle donne ? celui qui Ecoute un malus de -10% ? son Test. Cela s''applique ? toutes les actions  fournies dans la Table d''Ecoute, y compris ouvrir les portes, parler, etc... Les environnements urbains sont essentiellement les zones construites. Cette comp?tence s''applique aussi ? l''int?rieur des constructions en g?n?ral, y compris les b?timents de ferme. Au gr? du MJ, elle pourra aussi s''appliquer ? certaines situations souterraines, sp?cialement dans le cas de salles et de passages artificiellement b?tis.', NULL);
INSERT INTO skill VALUES(70, 0, 1, 'd?sarmement', 'Les personnages peuvent choisir , avec cette comp?tence, de d?sarmer un adversaire plut?t que de le blesser. Le joueur doit d?clarer que son personnage va tenter de d?sarmer son adversaire. Il tire alors un jet d''attaque, suivi d''un autre. Si les deux jets sont r?ussis, l''adversaire est d?sarm?, sinon rien ne se passe. Les armes arrach?es des mains de l''ennemi sont alors ?ject?es dans une direction al?atoire de 2D6 m?tres. Cette m?thode ne peut pas ?tre utilis?e contre des cr?atures qui b?n?ficient d''attaques naturelles (morsures, attaques caudales et autres).', NULL);
INSERT INTO skill VALUES(71, 0, 1, 'd?tection des alarmes magiques', 'Les personnages peuvent avec cette comp?tence sentir lorsqu''un objet ou une zone est prot?g?e par le sort Alarme Magique (Magie Mineure). Un Test d''Intelligence est n?cessaire pour pressentir l''alarme, et le personnage devra ?tre ? moins de 2 m?tres de la zone prot?g?e afin de d?tecter le sort. Notez que la Comp?tence ne permet pas aux personnages de d?sactiver l''Alarme magique.', NULL);
INSERT INTO skill VALUES(72, 0, 1, 'd?tournement de fonds', 'La Comp?tence D?tournement de fonds est tr?s utile puisqu''elle permet aux personnages d''acqu?rir des sommes d''argent sans origine apparente. S''il est plac? dans un emploi impliquant le contact direct avec l''argent (et seulement dans ce cas), le personnage peut utiliser ce talent. Le MJ devra faire un Test sous l''Intelligence de celui-ci pour d?terminer s''il r?ussit ou non. Un d?tournement r?ussi rapporte 1D6 CO et ne sera jamais d?couvert ; m?me si - par miracle - on devait d?couvrir le d?tournement, l''escroc ne pourrait pas ?tre soup?onn?. S''il ?choue, le personnage ne gagne rien et peut ?tre suspect?. Sur un ?chec de plus de 40%, l''escroc sera pris la main dans le sac. Le personnage peut essayer de d?tourner des fonds autant de fois qu''il le souhaite. Il est alors sujet ? un modificateur de -10% (cumulatif) pour chaque tentative suppl?mentaire dans une m?me journ?e et un m?me lieu. Le MJ devrait ajuster le montant du d?tournement en fonction du contexte de chaque essai. Il peut varier aussi selon la grandeur de la compagnie qui l''emploie (par exemple, de l''ordre de 1D6/- chez un petit boutiquier, et beaucoup plus de 1D6 CO aux d?pends d''une tr?sorerie d''?tat).', NULL);
INSERT INTO skill VALUES(73, 0, 1, 'divination', 'Cette Comp?tence peut ?tre utilis?e pour d?couvrir des informations qui, normalement, ne sont pas accessibles ? un personnage. Par exemple, elle peut r?v?ler l''endroit o? se trouve un joyau perdu, la date projet?e de couronnement du prochain monarque ou le num?ro gagnant ? la loterie de la ville. Le MJ devra ?tre prudent lorsqu''il donne de tels renseignements ; les r?ponses ne doivent pas ?tre trop tranch?es. Soyez ?quivoque - laissez place aux interpr?tations erron?es, aux ambiguit?s. Le MJ pourra ?tablir la r?ussite de la divination par un Test bas? sur l''Intelligence du personnage. Les divinations peuvent avoir divers focus : boule de cristal, tarots, osselets, etc... Mais dans tous les cas un support est indispensable. Un personnage peut ?tablir sa propre m?thode et s''y tenir mais, s''il le veut, il pourra par la suite acqu?rir une nouvelle fois cette Comp?tence et pratiquer ainsi une autre forme de divination.', NULL);
INSERT INTO skill VALUES(74, 0, 1, 'dressage', 'Le personnage, avec cette comp?tence, peut entra?ner des animaux ? faire certains travaux ou des tours pr?cis. Ce talent est g?n?ral et s''applique aussi bien aux chevaux, chiens, faucons et autres animaux de compagnie qu''aux animaux sauvages (dans la limite du raisonnable). Tous les animaux non-fantastiques peuvent ?tre dress?s (sauf si cela est sp?cifi? dans le Bestiaire), mais seulement s''ils ont une Intelligence de 6 ou plus. La dur?e du dressage d?pend de la difficult? de la t?che, comme indiqu? ci-dessous : Ob?ir ? un simple mot en pr?sence du personnage : 1 semaine ; Compter, tenir en ?quilibre sur une balle, faire un encha?nement de tours : 3 semaines ; Aller chercher un objet ou ex?cuter un ordre en dehors de la pr?sence du personnage : 10 semaines ; Entra?ner un cheval, un faucon, un chien, etc... ? combattre : 12 semaines. L''entra?nement doit ?tre appropri? ? l''animal. Un cheval de guerre pourra ?tre habitu? ? rester calme au milieu d''un vacarme ou ? l''odeur du sang. Un faucon r?pondra aux ordres ''attaque'' et ''reviens'' ou reviendra au leurre. La loyaut? d''un animal ne peut pas toujours ?tre tranf?r?e ? un nouveau ma?tre. Le MJ devra d?terminer si c''est le cas. Un cheval acceptera mieux un nouveau propri?taire qu''un chien. Cette comp?tence donne aussi un bonus de +10% aux Tests d''Emba?che pour travailler comme ma?tre-chien, palefrenier, fauconnier ou tout autre emploi pour lequel cette Comp?tence est utile.', NULL);
INSERT INTO skill VALUES(75, 0, 1, 'Ã©loquence', 'Avec cette comp?tence, les personnages sont capables de manipuler des assembl?es ou des foules enti?res de personnes, uniquement par persuasion verbale. Cela est repr?sent? par les r?gles normales de Bluff et de Comm?rages, mais le nombre de personnes affect?es est bien sup?rieur au maximum normal.  La valeur de la Caract?ristique Commandement du personnage en fixe le nombre maximum. Le MJ pourra faire le Test appropri? pour d?terminer la r?action de l''auditoire ; appliquant des modificateurs en fonction de la nature du Bluff ou du Comm?rage, et en fonction de l''humeur de la foule. Il devra toujours ?tre conscient qu''une fois la foule dispers?e, chacun aura le temps de penser ? ce qu''il a entendu et que le doute pourrait l''assaillir.', 0);
INSERT INTO skill VALUES(76, 0, 1, 'emprise sur les animaux', 'Les personnages, avec cette comp?tence, s''entendent ? merveille avec les animaux et re?oivent leur totale confiance pour plusieurs raisons. D?s qu''ils seront ? moins de 12 m?tres du personnage, les animaux domestiques avec une Intelligence de 10 ou plus seront affect?s. Ils r?agiront en agitant la queue, en miaulant, enroronnant ou d''une autre fa?on amicale et, ? moins qu''ils soient retenus par un collier, une laisse ou toute autre chose, se mettront ? suivre le personnage. Un ordre simple peut ?tre donn? ? un animal d''une Intelligence sup?rieure ou ?gale ? 5 et ceci aussi longtemps qu''il sera ? moins de 12 m?tres. Un Test contre lma volont? de l''animal doit ?tre fait pour d?terminer le succ?s. Cet ordre doit ?tre tr?s simple du genre ''suis-moi'', ''halte'', ''vas-t''en'', etc... Les personnages peuvent aussi tenter d''influencer les animaux qui menaceraient de les attaquer. Dans ce cas, l''animal pourrait ob?ir ? un simple ''vas t''en'' mais ne montrera aucun signe ext?rieur d''affection. Le MJ peut ?gayer le processus en introduisant un animal au caract?re joueur et, par l? m?me, irritant.', NULL);
INSERT INTO skill VALUES(77, 0, 1, 'Ã©quitation', 'Des cavaliers accomplis peuvent monter Ã  cheval, au trot ou au galop, sans avoir Ã  craindre les situations embarrassantes que sont les chutes par exemple. Ils n''ont pas de Test de Risque lorsqu''ils agissent normalement, montent ou descendent de cheval sans aide, dÃ©passe l''allure Prudente, etc... Ils peuvent tenter de sauter de ou sur un cheval en mouvement en effectuant un Test de Risque avec un bonus de +10%. Bien que cette compÃ©tence s''applique  principalement aux chevaux et autres Ã©quidÃ©s, dans certaines parties du monde, d''autres animaux peuvent Ãªtre maÃ®trisÃ©s et montÃ©s par des personnages douÃ©s de cette compÃ©tence.', 0);
INSERT INTO skill VALUES(78, 0, 1, 'escalade', 'Les personnages ayant cette comp?tence peuvent grimper sur tous les murs ou autres surfaces verticales (m?me les plus tra?tres), mais pour cela ils doivent avoir mains et pieds libres. Ils n''ont pas ? faire un Test de Risque sauf si la surface est lisse ou particuli?rement glissante. Le MJ doit alors estimer les modificateurs en fonction des circonstances.', NULL);
INSERT INTO skill VALUES(79, 0, 1, 'escamotage', 'C''est une comp?tence tr?s utile, permettant au personnage de cacher un petit objet dans les poches, les manches ou simplement dans les paumes des mains. La plus grande des choses pouvant ?tre dissimul?e ne devra pas d?passer la taille d''un poing ferm?. Bien que tout le monde puisse tenter d''Escamoter un objet, le personnage comp?tent aura un bonus de +15% au Test de Dext?rit?. L''objet ? Escamoter devra ?tre tenu dans la main. Par exemple en distribuant des cartes, en comptant de l''argent ou en examinant des l?gumes au march?, l''individu pourra essayer de d?rober l''objet en question (carte, pi?ce, carotte). Le MJ peut v?rifier le succ?s en testant la Dext?rit? de l''escamoteur, avec les modificateurs qu''il juge appropri?s. La r?ussite signifie que l''objet a pu ?tre subtilis?. Un ?chec au Test parle de lui-m?me (peut-?tre le personnage ?tait-il surveill? de trop pr?s, peut-?tre a-t-il gliss?, etc...). Mais ce simple ?chec ne le fais pas rep?rer. Par contre une marge d''?chec sup?rieure ou ?gale ? 40% indique que le personnage a ?t? pris en flagrant d?lit.', NULL);
INSERT INTO skill VALUES(80, 0, 1, 'esquive', 'Le personnage, gr?ce ? cette comp?tence, est sp?cialement entra?n? ? ?viter les coups en combat au contact. Ceci en s''abaissant ou en s''?cartant. Un test d''Initiative r?ussi signifie que l''Esquive r?ussit et que tous les dommages du coup sont ignor?s. Une seule esquive peut ?tre tent?e dans un m?me Round de combat. L''on ne peut esquiver que les coups que l''on voit venir. Les attaqueq surprises ne peuvent pas ?tre esquiv?es, pas plus que les projectiles venant d''un arc, d''une arbal?te, ou d''une arme ? feu.', NULL);
INSERT INTO skill VALUES(81, 0, 1, 'Ã©tiquette', 'Avec ce talent, les personnages sont pleinement au courant des conventions sociales, connaissent le moyen de se comporter dans la plupart des situations. Ils ont un bonus g?n?ral de +10% ? tous les tests standards et aux Tests de Caract?ristiques lorsqu''ils sont plong?s dans la haute soci?t', 0);
INSERT INTO skill VALUES(82, 0, 1, 'Ã©valuation', 'Le personnage, muni de ce talent, a des yeux d''expert et peut juger de la valeur  de la marchandise avec un haut degr? de pr?cision. Il a un modificateur de +10% ? tous les Tests d''Estimation et une marge d''erreur r?duite ? 5% dans tous les cas.', 0);
INSERT INTO skill VALUES(83, 0, 1, 'Ã©vasion', 'Le personnage, avec cette comp?tence, a re?u un entra?nement soit dans un cirque soit dans une corporation religieuse. Il ne peut pas ?tre retenu prisonnier par des moyens normaux ; t?t ou tard il finira par se d?faire de ses liens et ce, m?me s''il est encord? ou encha?n?. L''?vasion s''effectue apr?s un Test r?ussi sous la Dext?rit? qui peut ?tre tent? une fois par Tour de jeu. Les personnages avec ce talent ont un modificateur de +10% aux Tests de Qu?mandage.', 0);
INSERT INTO skill VALUES(84, 0, 1, 'exploitation mini?re', 'Cette comp?tence est acquise par exp?rience du travail dans les mines et autres excavations. Avec elle, les personnages gagnent certains avantages lors de d?placements en environnement souterrain. Ils sont capables de creuser des tunnels s''ils ont des outils ad?quats et de construire des ?tais, des passerelles et des planchers lorsque la terre est meuble. Ils ont +10% aux Tests de Construction en milieu souterrain. Une fois sous terre, ils savent reconna?tre les minerais, les cristaux et les diff?rents types de roches. Ils peuvent d?tecter des filons de m?taux ou autres. Pour d?terminer le succ?s, le MJ peut tester l''Intelligence. Ces personnes ont aussi +10% de bonus pour d?tecter des portes ou des passages secrets dans les complexes souterrains. Tant qu''ils sont dans ce milieu, ils ont le sens de l''orientation, des inclinaisons et ont conscience de la temp?rature et du degr? d''humidit?. Le MJ peut utiliser ceci pour aider ses joueurs lorsqu''ils se trouvent dans ces conditions.', NULL);
INSERT INTO skill VALUES(85, 0, 1, 'fabrication d''objets magiques', 'Les personnages dou?s de cette comp?tence sont des sorciers tr?s exp?riment?s, parfaitement capables de fabriquer et d''utiliser des objets magiques.', NULL);
INSERT INTO skill VALUES(86, 0, 1, 'fabrication de drogues', 'Les personnages sont capables avec cette comp?tence de fabriquer des drogues ? base de produits naturels ou chimiques. S''ils veulent acqu?rir les deux m?thodes, ils devront acheter deux fois la comp?tence. Pour r?ussir, un Test d''Intelligence est requis. Une drogue ? base de plantes en garde les propri?t?s mais sous une forme plus pratique (tablettes, liquides). Elles peuvent avoir des vertues curatives ou ?tre des poisons de type Toxines ou Stup?fiants.', NULL);
INSERT INTO skill VALUES(87, 0, 1, 'fabrication de parchemins', 'Les personnages dou?s de cette comp?tence sont des sorciers tr?s exp?riment?s, parfaitement capables de fabriquer et d''utiliser des parchemins magiques.', NULL);
INSERT INTO skill VALUES(88, 0, 1, 'fabrication de potions', 'Les personnages dou?s de cette comp?tence sont des sorciers tr?s exp?riment?s, parfaitement capables de fabriquer et d''utiliser des potions magiques.', NULL);
INSERT INTO skill VALUES(89, 0, 1, 'fermentation', 'Le personnage dou? de ce talent comprend les principes fondamentaux de la fermentation et conna?t les techniques de fabrication de la bi?re et du vin. Il peut juger de la qualit? des ingr?dients et du produit fini, estimer le temps de fermentation dans un certain environnement et juger si un breuvage est pr?t. Il a aussi +10% pour d?terminer si de la bi?re ou du vin contient une drogue ou du poison. Si cela est r?ussi, la pr?sence d''une substance ?trang?re est d?tect?e mais sa nature reste inconnue.', NULL);
INSERT INTO skill VALUES(90, 0, 1, 'filature', 'Un personnage avec cette comp?tence peut suivre quelqu''un sans ?tre rep?r?. Il a un modificateur de +10% pour les Tests de Dissimulation afin de passer inaper?u.', NULL);
INSERT INTO skill VALUES(91, 0, 1, 'force accrue', 'Les personnages tr?s forts augmentent leur Force de +1.', NULL);
INSERT INTO skill VALUES(92, 0, 1, 'fuite', 'Les personnages poss?dant cette comp?tence sont de bons et agiles coureurs. Ils multiplient par 1,5 leur caract?ristique de mouvement lorsqu''ils fuient un combat ou autres menaces.', NULL);
INSERT INTO skill VALUES(93, 0, 1, 'h?raldique', 'Les personnages sont instruits ? lire les blasons sur des boucliers ou autres objets, savent ? qui ils appartiennent et disposent d''un minimum d''?l?ments sur l''histoire et la g?n?alogie des d?tenteurs. Ceci au prix d''un Test d''Intelligence r?ussi.', NULL);
INSERT INTO skill VALUES(94, 0, 1, 'histoire', 'Avec cette comp?tence, les personnages ont une connaissance consid?rable de l''histoire locale et une bonne id?e de l''Histoire en g?n?ral. Ils sont au courant de tous les ?v?nements importants des 100 derni?res ann?es, dans la r?gion o? ils vivent. Ce qui constitue un ?v?nement important est laiss? ? l''appr?ciation du MJ qui pourra fournir les informations au joueur quand les circonstances le permettent. Un Test d''Intelligence est requis pour ?tablir l''?tendue ou la pr?cision des connaissances sur un ?v?nement particulier. Les histoires plus anciennes ou ?trang?res sont aussi connues mais avec beaucoup moins de d?tails.', NULL);
INSERT INTO skill VALUES(95, 0, 1, 'humour', 'Les personnages poss?dant cette comp?tence ont g?n?ralement travaill? comme Bateleur, racontant des histoires dr?les, des anecdotes et des plaisanteries. A la diff?rence des pitres, ils s''ent tiennent ? l''humour verbal. Bien qu''ils puissent d?velopper un v?ritable talent de com?dien et travailler dans des troupes avec des acterus et des Bateleurs. Ils ont un r?pertoire d''histoires amusantes, qui rend leurs conversations int?ressantes et qui leur conf?re un bonus de +10% sur les Tests de Qu?mandage.Les personnages poss?dant cette comp?tence ont aussi un modificateur de +15% aux Tests de Comm?rages.', NULL);
INSERT INTO skill VALUES(96, 0, 1, 'hypnotisme', 'Ce talent peut ?tre enseign? par des Bateleurs itin?rants et quelques mystiques. Pour hypnotiser un individu, le personnage doit retenir son attention pendant au moins un Tour de jeu. Durant ce Tour, il place le sujet en transe, en utilisant pour cela un pendule ou une psalmodie appropri?e. Si le sujet r?siste, il lui est accord? un Test de Volont? par Tour qui ?tablit si la r?sistance a ?t? ou non efficace. L''hypnotiseur pourra alors poser des questions ? l''hypnotis? qui lui r?pondra par la stricte v?rit?. L''hypnotiseur devra alors faire un Test de Volont? et pourra poser une question de toute fa?on ; si son Test r?ussit, il aura le droit de poser 1D4 questions suppl?mentaires. Une fois qu''il aura fourni la derni?re r?ponse, le sujet ?mergera de sa transe naturellement en 1D6 Tours ou plus t?t si l''hypnotiseur le r?veille.', NULL);
INSERT INTO skill VALUES(97, 0, 1, 'identification des mort-vivants', 'La plupart des Morts-Vivants ou des Cr?atures Eth?r?es apparaissent sous la forme d''humains ou d''autres solides, semblant ?tre des cr?atures normales. Les personnages peuvent les reconna?tre chaque fois qu''ils sont en leur pr?sence, s''ils ont cette facult?. Au choix du MJ : un Test d''Intelligence pourrait ?tre n?cessaire pour diff?rencier deux cr?atures d''aspect similaire.', NULL);
INSERT INTO skill VALUES(98, 0, 1, 'identification des objets magiques', 'Les personnages qui ont cette comp?tence peuvent d?tecter la pr?sence d''un objet magique en le touchant, de la m?me fa?on que la comp?tence Sens de la Magie. Quoique cette habilit? ne soit pas magique, elle demande de l''exp?rience et de la connaissance. A chque fois que les personnages rencontreront un objet de type inconnu, ils pourront utiliser cette comp?tence pour essayer d''avoir des informations ? son sujet. Un Test d''Intelligence est alors requis (fait par le MJ). Une r?ussite indiquera que la personne se souvient avoir lu ou entendu quelque chose ayant trait ? l''objet et le MJ lui accordera alors des informations.', NULL);
INSERT INTO skill VALUES(99, 0, 1, 'identification des plantes', 'Les personnages peuvent identifier les plantes courantes et en rep?rer d''inhabituelles. Bien qu''ils soient loin de poss?der toutes les connaissances d''un Herboriste, ils peuvent diff?rencier les diff?rents types de plantes et conna?tre de vagues d?tails sur leurs utilisations. Un Test d''Intelligence est requis pour savoir s''ils sont capables de trouver une plante bien pr?cise.', NULL);
INSERT INTO skill VALUES(100, 0, 1, 'imitation', 'Les imitateurs ont une oreille tr?s d?velopp?e pour les voix et les accents qu''ils peuvent reproduire pratiquement sans erreur. Cette comp?tence peut ?tre combin?e avec les comp?tences Com?die, D?guisement ou Ventriloquie pour accentuer leurs effets. Les r?sultats obtenus sont laiss?s ? l''appr?ciation du MJ. Dans tous les cas, les imitateurs ont +10% aux Tests de Bluff et de Qu?mandage.', NULL);
INSERT INTO skill VALUES(101, 0, 1, 'immunit?s aux maladies', 'Avec cette comp?tence, les personnages ont eu une longue p?riode d''exposition aux maladies et ont d?velopp? une r?sistance inhabituelle ? celles-ci. Ils gagnent un bonus de +10% sur tous les Tests de Contagion.', NULL);
INSERT INTO skill VALUES(102, 0, 1, 'immunit? aux poisons', 'Avec cette comp?tence, les personnages ont l''habitude des produits toxiques et ont d?velopp? une r?sistance inhabituelle aux poisons. Ils ont un bonus de +10% aux Tests contre le Poison. En plus ils sont immunis?s totalement ? 3 poisons ou venins distincts. Les joueurs devront choisir les poisons en question et justifier de la mani?re dont ils ont acquis ces immunit?s. Ainsi il est peu probable que des Occidentaux aient d?velopp? une immunit? aux poisons des Slanns, sauf s''ils sont all?s en Lustrianie.', NULL);
INSERT INTO skill VALUES(103, 0, 1, 'jeu', 'Les personnages dou?s de cette comp?tence sont des statisticiens accomplis et des joueurs exp?riment?s. Ils savent faire les ench?res et tout jeu est bon pour eux. C''est pourquoi tous leurs Tests de Jeu seront avantag?s par la moiti? de leur Intelligence. Les personnages pourront d?cider de perdre intentionnellement pour faire monter les ench?res, auquel cas aucun Test ne sera n?cessaire.', NULL);
INSERT INTO skill VALUES(104, 0, 1, 'joaillerie', 'Les personnages peuvent, s''ils ont ce talent, tailler des pierres pr?cieuses s''ils disposent d''outils ad?quats et du temps suffisant. Le rythme de travail est de 1D6 pierres par jour tant qu''aucune d''elles ne vaut plus de 50 CO. Les pierres d''une valeur comprise entre 51 et 100 CO demandent une journ?e pleine de travail et celles de plus de 100 CO, 1D6 jours de taille. Pour d?terminer la r?ussite, un Test est fait sous la moyenne de l''Intelligence et de la Dext?rit?. Pour chaque point de la marge de r?ussite, il est accord? 5% de plus ? la valeur de la pierre (exemple :  pour Int 50, Dex 40, avec un jet de d?s de 05, la valeur serait augment?e de 200%). Une pierre d?j? taill?e peut ?tre retaill?e, cela diminue sa valeur de 10%. En cas d''?chec du Test, la valeur de la pierre (brute ou d?j? taill?e) est r?duite de 50% et le personnage doit alors commencer ? travailler sur la pierre qui est maintenant plus petite. Les grosses pierres peuvent ?tre fractionn?es en pi?ces plus petites qui totalisent 75% de la valeur de la pierre originale. Les bijoux peuvent ?galement ?tre d?mont?s et les pierres qui les composent, retaill?es ; ils perdent alors 10% de leur valeur.', NULL);
INSERT INTO skill VALUES(105, 0, 1, 'jonglerie', 'Les jongleurs sont des experts de l''?quilibre. Ils sont capables de jongler avec n''importe quels objets ou de les faire tenir en ?qulibre sur leur t?te, nez, etc... Ils peuvent lancer ou attraper avec une tr?s grande pr?cision jusqu''? une distance de 10 m?tres ce qui modifie leur caract?ristique CT de +15% dans ces circonstances. A plus grande distance, ils b?n?ficient encore d''un bonus de +10% ? la CT lorsqu''ils lancent des armes de jet ; ce bonus s''appliquant jusqu''? la gamme de distance qui constitue la port?e normale de l''arme. Leurs Tests de Qu?mandage sont aussi modifi?s par +10%.', NULL);
INSERT INTO skill VALUES(106, 185, 1, 'jargon des batailles', 'Certains guerriers peuvent le parler. C''est un m?lange d''abbr?viations, de mots coup?s et autres choses inintelligibles. Il est utilis? le plus souvent pour donner des ordres en combat. Il peut ?tre parl? deux fois plus vite que tout autre langage.', NULL);
INSERT INTO skill VALUES(107, 185, 1, 'jargon des forestiers', 'C''est un dialecte traditionnel des bois, transmis de p?re en fils et enseign?, occasionnellement, ? des privil?gi?s.', NULL);
INSERT INTO skill VALUES(108, 185, 1, 'jargon des voleurs', 'Certains Filous peuvent parler le jargon des voleurs. C''est un langage inhabituel en cela qu''il est constitu? uniquement d''inflexions et de gestes et peut donc  ?tre ''pratiqu?'' en m?me temps qu''une autre langue. Ainsi par exemple un ''pratiquant'' peut dire, en Occidental, ''Bien le bonjour ? vous, Monsieur'' tout en clignant trois fois de l''oeil gauche et en se grattant le nez, ce qui voudra dire en r?alit? : ''rejoins-moi - endroit habituel - trois heures'' pour tous ceux qui connaissent le jargon des voleurs.', NULL);
INSERT INTO skill VALUES(109, 185, 1, 'classique', 'Certains Lettr?s parlent encore l''Occidental Classique. C''est une langue morte que l''on pourrait comparer au Grec et au Latin anciens de notre propre monde. Cette langue est utilis?e dans beaucoup de textes acad?miques et religieux.', NULL);
INSERT INTO skill VALUES(110, 185, 1, 'guilde', 'Cette langue aussi secr?te que puissante est enseign?e aux membres d''une guilde. On ne l''utilise pratiquement pas, sauf pour les rituels les plus secrets de la Guilde. Ce langage - qui varie d''une guilde ? l''autre - n''est jamais enseign?e ? des ?trangers ? cette guilde.', NULL);
INSERT INTO skill VALUES(111, 0, 1, 'langue ?trang?re', 'Les personnages dou?s de cette comp?tence ont appris une langue ?trang?re ; que ce soit lors de voyages, ou par des contacts commerciaux, ou personnels avec des ?trangers. Les joueurs peuvent choisir une seconde langue pour leurs personnages, dans laquelle on admet qu''il parlent avec une raisonnable facilit?. Le MJ pourra imposer un Test d''Intelligence ? un personnage lorsque sa pratique de la langue sera observ?e de pr?s. Ce sera le cas lors d''un interrogatoire, par exemple, ou dans les situations o? un quiproquo embarrassant peut se produire.', NULL);
INSERT INTO skill VALUES(112, 188, 1, 'magikane', 'C''est le langage humain usuel utilis? pour la magie dans le Vieux Monde. La plupart des parchemins sont ?crits en Magikane et tous les sorciers ainsi que quelques personnages privil?gi?s peuvent l''employer.', NULL);
INSERT INTO skill VALUES(113, 188, 1, 'slann ancien', 'Un tr?s ancien langage rencontr? uniquement dans des livres et sur des objets tr?s vieux et tr?s rares.', NULL);
INSERT INTO skill VALUES(114, 188, 1, 'arcane naine', 'Connue seulement des magiciens Nains. Elle ressemble beaucoup au Nain mais elle est, en fait, beaucoup plus subtile. Elle est extr?mement rare car, le plus souvent, les Nains pratiquant la magie utilisent le Magikane.', NULL);
INSERT INTO skill VALUES(115, 188, 1, 'arcane elfe', 'Connue seulement par les magiciens Elfes. Comme l''Arcane Naine, cette langue est bas?e sur une forme ancienne de la langue elfique actuelle, mais elle est bien plus puissante. Elle est utilis?e uniquement dans les Royaumes Elfiques et par des Elfes Hauts ou des Elfes des Mers vagabonds. Elle n''est pas connue de tous les Elfes du Vieux Monde qui emploient le Magikane pour leur propre usage.', NULL);
INSERT INTO skill VALUES(116, 188, 1, 'druidique', 'C''est la langage des anciens druides et aussi le plus ancien parl? par les hommes, ceux qui peuplaient le Vieux Monde dans les temps oubli?s, ? sa naissance. Il est extr?mement rare, bien que l''on puisse le trouver sur d''anciennes tombes ou objets du Vieux Monde.', NULL);
INSERT INTO skill VALUES(117, 188, 1, 'd?monique', 'C''est le langage des D?mons, celui que l''on utilise lors des Evocations d?moniques.', NULL);
INSERT INTO skill VALUES(118, 0, 1, 'lecture sur les l?vres', 'Les personnages ont apris ? comprendre ce que les gens disent en observant le mouvement de leur l?vres. Ils peuvent suivre une conversation chuchot?e s''ils sont en position de voir la bouche des interlocuteurs. Pour r?ussir cela, un Test d''Intelligence est requis. Le MJ devra appliquer des modificateurs en fonction des distances et d''autres consid?rations. Si le personnage ne comprend pas la langue parl?e, il lui sera impossible de lire quoi que ce soit sur les l?vres.', NULL);
INSERT INTO skill VALUES(119, 0, 1, 'l?gislations', 'Le comp?tence L?gislation refl?te la capacit? d''un personnage ? manipuler des syst?mes et des arguments l?gaux. Le personnage comp?tent a b?n?fici? d''un enseignement dans le domaine du droit, ou au minimum, a v?cu quelques exp?riences en rapport avec les lois. En quelque endroit que ce soit, le joueur peut toujours invoquer cette comp?tence pour que son personnage, confront? ? un syst?me l?gal, puisse s''?viter une incarc?ration, un ch?timent ; ou pour r?duire l''importance d''une peine. Le MJ pourra ?tablir le succ?s de l''intervention suivant le r?sultat d''un Test d''Intelligence.', NULL);
INSERT INTO skill VALUES(120, 0, 1, 'linguistique', 'Les personnages dou?s de cette comp?tence ont une affinit? naturelle avec les langues, qui va bien au-del? de la pratique et de l''exp?rience. Ils saisissent les langages tr?s rapidement et peuvent ''se d?brouiller'' dans la semaine o? ils rencontrent cette langue pour la premi?re fois. Ils peuvent aussi communiquer avec des gens, m?me s''ils parlent un langage diff?rent ; bien entendu, cette communication sera tr?s sommaire. Ces personnages ont un bonus de +10% aux Tests de Communication. S''ils savent lire et ?crire, ils sont aussi capables de traduire des textes r?dig?s en langage inconnu. Au MJ de d?terminer dans quelles circonstances ils peuvent le faire. Noter que cette comp?tence ne s''applique pas aux parchemins magiques et aux Langues Herm?tiques.', NULL);
INSERT INTO skill VALUES(121, 0, 1, 'lutte', 'Les personnages ont appris ? lutter dans le style traditionnel du Vieux Monde. La lutte est un sport ; les prises sont suppos?es ?tre stopp?es avant qu''il y ait mort ou blessure grave. Cela n''emp?che pas les personnages comp?tents d''ignorer le malus de -20% lors des combats sans arme. Au lieu de causer des dommages lors d''une attaque r?ussie, le personnage peut choisir de faire une Immobilisation. Avec cette comp?tence, le personnage peut s''engager dans des comp?titions de lutte ou lancer des d?fis int?ress?s ? la cantonnade, sur une place publique.', NULL);
INSERT INTO skill VALUES(122, 0, 1, 'ma?trise des runes', 'Les personnages qui disposent de cette comp?tence sont des sorciers exp?riment?s, parfaitement capables de tracer et d''utiliser des Runes magiques.', NULL);
INSERT INTO skill VALUES(123, 0, 1, 'manoeuvres nautiques', 'Les personnages comp?tents en Manoeuvres Nautiques sont familiaris?s avec toutes les t?ches nautiques et la terminologie marine. Ils sont habitu?s ? la rude vie en mer et aux responsabilit?s d''une existence de marin. Capables d''utiliser de petits bateaux ? voiles et d''ex?cuter les diverses t?ches maritime avec aisance et s?ret?, ils peuvent s''enr?ler comme hommes d''?quipages sur de grands navires.', NULL);
INSERT INTO skill VALUES(124, 0, 1, 'm?ditation', 'Cette comp?tence est utilis?e par les Enchanteurs qui sont alors capables de puiser dans les r?serves mentales cach?es pour r?cup?rer leur constitution magique. Le joueur devra indiquer combien de Points de magie le personnage veut r?cup?rer, (ce qui ne doit pas d?passer son maximum) et lance 1D6 pour chaque point. La somme des r?sultats indique le temps - en Tours de jeu (minutes) - pendant lequel le personnage doit m?diter. Une fois ceci termin?, il peut incr?menter ses Points de Magie du nombre demand?. La m?ditation est un ?tat similaire ? la transe. Pendant la M?ditation, le personnage n''a pas conscience de son environnement et il ne peut r?agir m?me s''il est attaqu? ou frapp? (consid?r? comme Cible Inerte). Il ne peut, bien s?r, ni se d?placer, ni parler.', NULL);
INSERT INTO skill VALUES(125, 0, 1, 'mendicit', 'C''est une comp?tence apprise sur le tas et habituellement par pure n?cessit?. Le personnage conna?t alors toutes les astuces de mendiant : supplier, se prosterner, pleurnicher, pr?tendre ?tre un h?ros de guerre, etc... Cette comp?tence permet de gagner un peu d''argent. Sur un Test r?ussi, bas? sur la moyenne Volont? et Sociabilit?, on peut obtenir 1D3/-. Un Test pourra ?tre tent? toutes les heures de mendicit?. Tout le succ?s de la chose d?pend du bon endroit et de la bonne heure : le MJ peut modifier le chances de succ?s et la somme r?colt?e, selon les circonstances.', NULL);
INSERT INTO skill VALUES(126, 0, 1, 'm?tallurgie', 'Avec cette comp?tence, les personnages peuvent reconna?tre la plupart des minerais (principalement le fer, le cuivre, l''?tain et l''argent) et peuvent en extraire les m?taux s''ils disposent de l''?quipement ad?quat. Ils savent aussi calculer les m?langes exacts pour obtenir des alliages de diverses qualit?s, comme l''acier, le bronze et l''?lectrum. La M?tallurgie ne conf?re pas la capacit? de travailler les m?taux bruts, ce domaine est ouvert ? la comp?tence Travail du M?tal.', NULL);
INSERT INTO skill VALUES(127, 0, 1, 'musculation', 'La musculation est la comp?tence qu''ont d?velopp?e les hommes-forts, ceux qui ont travaill? dans un cirque ou comme Bateleurs itin?rants. Ils composent eux-m?mes leur propre r?gime ? base d''oeufs, de viandes crues et d''autres ingr?dients. Cela rendrait malade n''importe quel individu moins solide. Tout cela leur conf?re un bonus de +1 ? la Force et 1D4 Points de Blessures suppl?mentaires. Ils ont aussi un modificateur de +10% aux Tests d''Emba?che comme Bateleur. Leur r?gime particulier est tout sp?cialement on?reux. Leurs d?penses courantes en sont accrues de 50%. S''ils n''y peuvent subvenir pendant plus de 10 jours, ils perdront tous leurs avantages et il leur faudra alors 30 jours de r?gime intensif pour les r?cup?rer.', NULL);
INSERT INTO skill VALUES(128, 0, 1, 'musique', 'Les personnages dot?s de cette comp?tence peuvent jouer de diff?rents instruments de musique. Il y a trois champs de comp?tence : les instruments ? vent, ? corde et ? percussion. Les musiciens sont en principe sp?cialis?s dans un seul type mais ils peuvent, par la suite, acqu?rir ancore une ou deux fois cette comp?te,ce et l''?tendre ainsi ? plusieurs types d''instruments. Les musiciens choisissent un instrument bien pr?cis comme la mandoline ou le tambour. Certaine carri?res indiquent l''instrument ma?tris?. Par la suite, le personnage pourra improviser sur n''importe quel instrument du m?me type. Ils ont un modificateur de +10% aux Tests d''Emba?che et de Qu?mandage.', NULL);
INSERT INTO skill VALUES(129, 0, 1, 'narration', 'C''est une comp?tence ? moiti? naturelle qui conf?re aux personnages le don d''entortiller les histoires pour les rendre attrayantes. Cette comp?tence peut s''appliquer aux ancedotes, blagues, histoires religieuses ou autres. Les personnages peuvent gagner un peu d''argent en racontant des histoires ; le plus souvent ils y gagneront l''int?r?t de l''auditoire et quelques bi?res. Ils ont un modificateur de +10% aux Tests de Comm?rage et de Qu?mandage.', NULL);
INSERT INTO skill VALUES(130, 0, 1, 'natation', 'Les personnages qui savent nager le font au 2/3 de leur D?placement ? Allure Prudente. Ils b?n?ficient de +20% ? tous les Tests de Risque en milieu aquatique.', NULL);
INSERT INTO skill VALUES(131, 0, 1, 'numismatique', 'Les personnages dot?s de cette comp?tence sont familiaris?s avec les pi?ces de monnaie venues de tous les coins du monde. Peut-?tre ont-ils travaill? comme commer?ants, ou toute autre profession en liaison ?troite avec la monnaie. Ils connaissent toutes les pi?ces qui sont couramment en circulation, ainsi que leurs origines, leurs noms, les types d''alliages qui les composent et leur valeur ; ils sont capables de rep?rer celles qui sont ''all?g?es'', etc... Dans le Vieux Monde, il existe de nombreuses monnaies frapp?es par les nations, les villes, les guildes de marchand, et ce tout au long des ann?es. Certaines d''entre elles sont plus populaires que d''autres mais, dans tous les cas, c''est leur poids en or ou en argent qui fixe leur v?ritable valeur. Les numismates sont capables d''identifier les pi?ces contrefaites, ou rogn?es, au prix de la r?ussite d''un Test d''Intelligence. Le m?me Test r?ussi leur permettra toujours de reconna?tre l''origine de pi?ces anciennes, inhabituelles, ou ?trang?res. Lorsqu''un personnage est confront? ? une monnaie inhabituelle, le MJ pourra faire un Test d''Intelligence. Le r?sultat de ce Test lui permettra de savoir si le personnage concern? conna?t cette monnaie et ce qu''il en sait. De cette mani?re, le numismate pourra d?couvrir des indices relatifs ? l''existence possible d''une cache de tr?sor, ou au passage de marchands ?trangers.', NULL);
INSERT INTO skill VALUES(132, 0, 1, 'orientation', 'Les personnages dot?s de cette comp?tence ont un sens intuitif de la direction. Ils sont capables de trouver le nord dans n''importe quel environnement et peuvent naviguer en ayant tr?s peu de chance de se perdre. Dans des circonstances difficiles, le MJ peut imposer un Test d''Intelligence.', NULL);
INSERT INTO skill VALUES(133, 0, 1, 'pantomime', 'Les personnages qui ont ce talent sont capables de communiquer une situation ou une histoire uniquement par la gestuelle, sans un son et sans autre artifice. Ils peuvent ?tre Emba?ch?s comme Bateleurs avec un modificateur de +10% au Test ou Qu?mander avec le m?me bonus. ils peuvent aussi franchir la barri?re des langues pour communiquer plus efficacement. Le MJ peut, ? son gr?, d?cider de l''efficacit? du mime et laquantit? d''informations du ''message'' original qui est effectivement comprise. Mais, dans la plupart des cas, la r?ussite d''un Test d''Intelligence indiquera le succ?s.', NULL);
INSERT INTO skill VALUES(134, 0, 1, 'pathologie', 'Avec ce talent les personnages peuvent essayer de soigner n''importe quelle maladie. Ils peuvent reconna?tre automatiquement les maladies les plus courantes. Les plus rares n?cessitent la r?ussite d''un Test d''Intelligence. Une fois la maladie reconnue, le MJ peut indiquer au personnage quel est le traitement ? administrer ainsi que les autres exigences sp?ciales comme les potions, les plantes, etc... Lorsque le traitement est administr?, le personnage comp?tent doit r?ussir un Test d''Intelligence avec un bonus ?gal ? l''Edurance du patient. S''il r?ussit, le malade ne souffrira plus des effets de la maladie et la p?riode de r?cup?ration commencera imm?diatement. S''il ?choue, le traitement n''aura eu aucun effet, mais un autre Test pourra ?tre tent?, le jour suivant. Un ?chec critique pourrait avoir des r?sultats d?sastreux, voir m?me occasionner la mort du patient. Le personnage peut aussi prodiguer des Soins M?dicaux pour ?courter le temps de r?cup?ration.', NULL);
INSERT INTO skill VALUES(135, 0, 1, 'p?che', 'P?cher n''est pas un sport mais une n?cessit? pour beaucoup de gens ; le poisson prend une part importante de leur alimentation. Un personnage avec cette comp?tence sait tr?s bien se servir de lignes et de filets. S''il est bien ?quip?, il peut attraper du poisson dans n''importe quelle eau, mail le MJ devra d?cider du temps pass? pour p?cher la quantit? d?sir?e ; cela d?pend de l''endroit et du moment choisis. On peut raisonnablement consid?rer qu''il faut 1D4 heures pour prendre assez de poisson pour subvenir aux stricts besoins journaliers d''une personne. Les p?cheurs savent o? trouver une esp?ce bien pr?cise de poissons et l''habitat pr?f?r? pour chaque esp?ce. Le MJ d?cidera, ? son gr?, de la quantit? de prises et des chances de r?ussite de la p?che ; ainsi, par exemple, p?cher en hiver peut ?tre tr?s difficile, voire impossible.', NULL);
INSERT INTO skill VALUES(136, 0, 1, 'pictographie', 'Les pictogrammes sont des signes secrets li?s ? des carri?res sp?cifiques, Voleur ou B?cheron par exemple. Ces signes ne p?uvent ?tre compris que par des personnages de la m?me carri?re (active ou pass?e). Ce sont des signes abstraits, repr?sentant un concept ou une chose. Les pictogrammes ne peuvent pas ?tre assimil?s ? un langage. Le plus souvent, chaque signe trac? correspond plus ou moins ? deux ou trois mots ; du genre ''Danger Gobelins'' ou ''Pas Gardien Ici''. Il est possible de tracer plusieurs pictogrammes mais il est impossible de les lier entre eux grammaticalement.', NULL);
INSERT INTO skill VALUES(137, 0, 1, 'pi?geage', 'Les personnages comp?tents ont la capacit? d''installer des pi?ges ? animaux, de toutes formes et de toutes tailles, pour capturer ou tuer leurs victimes. Les pi?ges doivent ?tre app?t?s et amorc?s correctement si l''on veut qu''ils fonctionnent. Les poseurs de pi?ges comp?tents connaissent le meilleur endroit pour installer les collets et les filets, quels app?ts utiliser et comment les positionner. Toute pose de pi?ge par un personnage comp?tent modifie le Test d''Initiative de la victime par un malus de de -20%. Les collets et autres pi?ges ? animaux, pos?s par des personnages comp?tents ont (50 + Int)% de chance par jour de prendre un petit animal.', NULL);
INSERT INTO skill VALUES(138, 0, 1, 'pistage', 'Les personnages peuvent, avec cette comp?tence, suivre toutes les traces laiss?es par des animaux ou des voyageurs. Une piste effac?e ou difficile demande un Test d''Intelligence, au gr? du MJ. La piste peut ?tre suivie sans que le poursuivant soit forc? de ralentir son allure. D''apr?s des traces de sabots, les cendres d''un feu et d''autres indices, les personnages arrivent ? estimer la distance entre eux et leurs proies (en temps et en distance) avec un bonus de +10%. Ils b?n?ficient ?galement de ce modificateur pour les Tests d''Estimation du nombre de proies, et, parfois, de leur race. Les pisteurs comp?tents peuvent identifier un animal ? partir des traces qu''il laisse.', NULL);
INSERT INTO skill VALUES(139, 0, 1, 'pitreries', 'Les personnages ayant cette comp?tence ont habituellement travaill? dans un cirque ambulant ou une troupe d''acteurs. Les pitres sont sp?cialis?s dans l''humour visuel, les farces et les plaisanteries grossi?res. M?me des compagnies sp?cialis?es dans le drame et les trag?dies emba?chent des pitres durant leurs repr?sentations pour des interm?des comiques pendant la repr?sentation, ne serait-ce que pour plaire ? la fraction de public compos?e d''ivrognes et d''idiots. ils ont un bonus de +1 aux dommages d?s ? une Chute ou un Saut. ils ont aussi un modificateur de +10%aux Tests de Bluff. Leur r?pertoire comique peut ?tre servi sur commande, ce qui leur accorde +10% aux Tests de Qu?mandage.', NULL);
INSERT INTO skill VALUES(140, 0, 1, 'potamologie', 'Cette connaissance des rivi?res permet aux personnages comp?tents d''?tre familiaris?s avec les al?as des voyages sur les cours d''eau. Ils peuvent reconna?tre les signes de turbulences, l''approche de chutes, de rapides et autres ph?nom?nes plus ou moins dangereux. Ils peuvent aussi savoir si l''eau de la rivi?re est potable, s''il y a des animaux hostiles ou autre chose d''anormal.', NULL);
INSERT INTO skill VALUES(141, 0, 1, 'pr?paration de poisons', 'Le personnage est, avec cette comp?tence, un expert dans la pr?paration des poisons et il est capable d''en reconna?tre les diff?rents types. Un Test d''Intelligence est requis dans les deux cas. Avec le mat?riel ad?quat, il peut en fabriquer une dose de n''importe quel type, le premier jour, et 1D6 doses ? chaque jour suivant tant qu''il n''entrepend rien d''autre. il gagne aussi un bonus de +10% ? toutes les d?tections de poisons dans la nourriture ou la boisson.', NULL);
INSERT INTO skill VALUES(142, 0, 1, 'pyrophilie', 'Les personnages dot?s de cette comp?tence ont souvent travaill? comme Cracheurs de Feu dans un cirque, ou comme Bateleurs itin?rants. Ils peuvent ?teindre des b?tonnets enflammm?s en les mettant dans leur bouche, jongler avec des objets enflamm?s et m?me cracher du feu. Ils sont aussi r?put?s pour c?toyer le feu qui leur cause un point de Blessure de moins qu''? toute autre personne. Ces individus peuvent allumer des feux dans les conditions les plus d?favorables. Les pyrophiles peuvent cracher des flammes en utilisant un alcool sp?cial qu''ils peuvent fabriquer eux-m?mes ? partir d''alcools standards. ils le transportent g?n?ralement dans de petites flasques. Cet alcool sp?cial peut ?tre bu sans causer de dommages ? longs termes ; toutefois, la plupart des autres personnages en seraient malades pendant longtemps. Ils avalent une gorg?e de ce breuvage chaque fois qu''ils veulent cracher du feu. Cela leur prend un Tour. Les flammes doivent ?tre crach?es sur une cible unique, et l''on r?soudra cette situation soit comme un projectile (improvis?), soit comme une Attaque normale. La port?e est de 2 m?tres au maximum. L''attaque peut causer 1D4 points de d?g?ts avec une Force de 3 et 1D4 Dommages Suppl?mentaires avec une Force de 3 sur des cibles inflammables. Les Cracheurs de Feu ont un bonus de +10% aux Tests de Qu?mandage.', NULL);
INSERT INTO skill VALUES(143, 0, 1, 'radiesth?sie', 'Les personnages poss?dant ce talent sont capables de localiser une source souterraine en utilisant leur instinct natureln repr?sent? par un Test d''Intelligence. Le MJ d?terminera la probabilit? qu''il y ait de l''eau dans une zone. Dans les r?gions d?sertiques, lmes personnages seront aptes ? survivre sauf dans les pires conditions.', NULL);
INSERT INTO skill VALUES(144, 0, 1, 'reconnaissance des pi?ges', 'Le personnage dot? de cette comp?tence peut ?viter de se faire prendre par un pi?ge, une fosse ? animaux, un pi?ge ? ours et autres syst?mes m?caniques. Ils ont un bonus de +10% pour les ?viter. Si un individu examine un Attrape-Nigaud il peut, normalement, d?couvrir comment il est d?clench?. Le MJ peut alors faire un Test de Recherche pour savoir s''il l''identifie. Sur un Test de Dext?rit? r?ussi, le personnage comp?tent est capable de d?samorcer n''importe quel pi?ge en toute s?curit?. Dans la plupart des cas, un ?chec d?clenchera le pi?ge et pourra m?me nuire au personnage, ou le blesser.', NULL);
INSERT INTO skill VALUES(145, 0, 1, 'r?flexes ?clairs', 'Ces personnages ont des r?flexes naturellement rapides, ou ils se sont entra?n?s pendant des ann?es pour en arriver l?. Ils ont un avantage de +10% au score d''Initiative de leur Profil.', NULL);
INSERT INTO skill VALUES(146, 0, 1, 'r?sistance ? l''alcool', 'Les personnages avec cette facult? ont d?velopp? une haute et inhabituelle r?sistance ? l''alcool, ?tant capables d''en ing?rer de grandes quantit?s sans souffrir d''effets visibles. ils peuvent continuer ? boire alors que d''autres individus auraient d?j? roul? sous la table. Ils subissent uniquement la moiti? des r?ductions des Caract?ristiques d?es ? l''absorption d''alcool. Leur Test de Volont?, requis pour r?sister ? l''attrait d''un nouveau verre, est effectu? ? - 10%.', NULL);
INSERT INTO skill VALUES(147, 0, 1, 'r?sistance accrue', 'Ces personnages tr?s robustes augmentent leur Endurance de +1.', NULL);
INSERT INTO skill VALUES(148, 0, 1, 's?duction', 'Cette comp?tence est bas?e sur une combinaison de charme naturel et d''attrait physique. Elle autorise un bonus de 10% aux Tests de Bluff, Marchandage et Comm?rage face ? des personnes du sexe oppos? et, ? partir de l?, elle conduit ? certaines autres activit?s, si le personnage ? s?duire ?choue ? un Test de Volont', NULL);
INSERT INTO skill VALUES(149, 0, 1, 'sens de la magie', 'Cette comp?tence est r?serv?e aux Echanteurs. Un personnage dot? de cette comp?tence est capable, au toucher, de sentir si un objet ?met de la magie ou s''il a ?t? affect? par elle. Le fonction ou les types de magie ne sont pas r?v?l?s ; c''est uniquement la certitude que la Magie est pr?sente. Un sorcier est capable de sentir qu''un autre personnage a des facult?s magiques simplement en lui serrant la main.', NULL);
INSERT INTO skill VALUES(150, 0, 1, 'sens de la r?partie', 'cette comp?tence fait que le personnage est un ?tre spirituel qui a de la r?partie, toujours pr?t ? amuser les gens ou ? argumenter par des commentaires grin?ants ou des observations pertinentes. Cette facult? lui permet aussi de se montrer charmant lorsqu''il le d?sire. Avec cette comp?tence, les Tests de Bluff et de Comm?rage sont modifi?s par +10%.', NULL);
INSERT INTO skill VALUES(151, 0, 1, 'sixi?me sens', 'Les personnages ont la facult? naturelle de savoir s''ils sont suivis ou observ?s. Le MJ devra, en secret, effectuer un Test sous leur Intelligence lorsque la situation l''imposera. Si le r?sultat est un succ?s, il pourra alors informer le joueur que son personnage a l''?trange sensation d''?tre fil?, ou observ', NULL);
INSERT INTO skill VALUES(152, 0, 1, 'soins des animaux', 'Les personnage qui poss?dent cette comp?tence sont habitu?s ? s''occuper des animaux domestiques, y compris les animaux de monte et les b?tes de somme. Ils ont connaissance des besoins de ceux-ci, de leur alimentation, de leur entretien et des exercices ? leur faire faire. Ils savent aussi d?celer tout sympt?me de maladie ou de g?ne. Cette comp?tence s''applique typiquement aux chevaux, autres ?quid?s et bestiaux.', NULL);
INSERT INTO skill VALUES(153, 0, 1, 'technologie', 'Ces personnages ont une bonne compr?hension des principes de la m?canique et des m?thodes de construction. Bien qu''ils soient habitu?s ? travailler avec d''autres personnes, ils sont tout ? fait capables d''ex?cuter eux-m?mes la plupart des travaux ; avec un modificateur de +20 sur les Tests de Construction. Ils sont familiaris?s avec les outils et la terminologie du travail du bois et du m?tal. Ils sont aussi capables de tracer des plans et peuvent interpr?ter les dessins techniques quelque soit leur niveau de complexit? ou leur manque de clart', NULL);
INSERT INTO skill VALUES(154, 0, 1, 'th?ologie', 'Les th?ologiens ont une connaissance de toutes les pratiques des Religions majeures, des cultes et des symboles, alli?e ? une connaissance approfondie des doctrines de leur propre foi. Ils peuvent automatiquement reconna?tre les noms et les symboles de la plupart des dieux et, sur un Test d''Intelligence r?ussi, ils peuvent reconna?tre et comprendre de br?ves citations des ?crits sacr?s des religions ?trang?res ? la leur. Le MJ pourra assiqner des modificateurs en fonction de la notori?t? des religions rencontr?es.', NULL);
INSERT INTO skill VALUES(155, 0, 1, 'torture', 'Les personnages qui disposent de cette comp?tence sont exp?riment?s dans l''art de l''interrogation et sp?cialement dans l''application soigneuse de souffrances destin?es ? encourager la victime ? parler, sans lui infliger de dommages fatals. La Volont? de la victime est r?duite de 10% pour tous les Tests d''Interrogation et les dommages caus?s lors de la torture sont diminu?s de moiti', NULL);
INSERT INTO skill VALUES(156, 0, 1, 'travail de la pierre', 'Le personnage a l''habitude de ce type de travail et peut construire toutes sortes de choses en pierre comme des piliers ou autres ?l?ments de construction. Il peut aussi graver de petites pi?ces de d?coration telles des frises ou des gargouilles. Ils sont familiaris?s avec les outils, les techniques de travail de la pierre et connaissent toutes les cat?gories de pierres de construction. Ils gagnent un modificateur de +10% ? tous les Tests de Construction lorsqu''il s''agit de pierre.', NULL);
INSERT INTO skill VALUES(157, 0, 1, 'travail du bois', 'Les personnages ont une exp?rience du travail du bois, fabrication d''objets comme des meubles, des installations domestiques, des coffres, des wagons, etc... Ils sont familiaris?s avec les outils et les techniques du travail du bois, et connaissent toutes les cat?gories de bois de construction. Ilsont +10% de modificateur aux Tests de Construction lorsqu''il s''agit de bois.', NULL);
INSERT INTO skill VALUES(158, 0, 1, 'travail du m?tal', 'Les personnages ont la capacit? de travailler les m?taux usuels, principalement le fer et l''acier et peuvent aussi pr?parer la fonte en utilisant des lingots raffin?s ou de la r?cup?ration. Ils ne peuvent pas, g?n?ralement, raffiner eux-m?mes les minerais, mais cela pourrait ?tre tent? si le MJ l''accepte. Ils fabriquent ou r?parent des articles d''usage courant : comme les fers ? chevaux, barreaux, clous, chaudrons, etc... Ils peuvent aussi fabriquer ou r?parer des armes et des boucliers. Ces personnagesont un bonus de +10% aux Tests de Construction lorsqu''il s''agit de m?taux.', NULL);
INSERT INTO skill VALUES(159, 0, 1, 'traumatologie', 'Le personnage dot? de cette comp?tence peut administrer des soins ? tout individu bless? et ceci de deux mani?res : Sur le terrain il peut prodiguer des soins - bander des blessures, arr?ter une h?morragie, etc... Les effets peuvent varier en fontion de la gravit? de la blessure. Le traumatologiste devra alors r?ussir un Test d''Intelligence. Si le patient est L?g?rement Bless?, le traitement prendra 1 Tour de jeu et restituera 1D3 Points de Blessure. S''il est S?rieusement Bless?, cela prendra aussi 1 Tour de jeu mais 1 seul point sera r?cup?r?. Toutefois, le personnage sera alors consid?r? comme L?g?rement Bless?. Il n''est pas possible, avec cette comp?tence, de traiter un personnage S?rieusement Bless? et, une fois remis en ?tat de Bless? L?ger, de le soigner une seconde fois afin de lui restituer d''autres Points de Blessure. Des soins pourront encore ?tre prodigu?s mais seulement si le personnage est ? nouveau bless?. Si le patient est Gravement Bless?, s''il souffre d''une perte de Points de Blessure, cette comp?tence ne permettra que de stopper l''H?morragie et pr?venir d''autres pertes de Points de Blessure. Ceci prendra 1 Round et d''autres tentatives pourront ?tre faites, tant que le bless? restera en vie. Toutefois, le patient ne r?cup?rera aucun Point de Blessure et s''il n''est pas soign? avec la comp?tence Chirurgie il mourra dans les 24 heures. Cette comp?tence peut aussi ?tre utilis?e pour acc?l?rer le processus de gu?rison d''un Bless? L?ger. Le traumatologiste aura alors un bonus de 20% ? son Test d''Intelligence. Puis, pourvu qu''il passe au moins une demi-heure par jour ? lui prodiguer des soins, il permettra ? son patient de r?cup?rer un nombre de Points de Blessure ?gal ? son Endurance, une fois par jour seulement. Si le Test ?choue, le patient regagne quant m?me un nombre de Points de Blessure quotidien ?gal ? la moiti? de son Endurance.', NULL);
INSERT INTO skill VALUES(160, 0, 1, 'ventriloquie', 'Les ventriloques apprennent ? parler sans bouger leur l?vres. Lorsque les ventriloques sont soigneusement observ?s, le MJ peut faire un Test sous leur Volont? pour savoir si l''on peut percevoir un mouvement de leurs l?vres.', NULL);
INSERT INTO skill VALUES(161, 0, 1, 'violence forcen', 'Certains personnages sont quelque peu instables mentalement et sont enclins ? des acc?s de violence aveugle. Ce qui les rend sujets ? le Fr?n?sie.', NULL);
INSERT INTO skill VALUES(162, 0, 1, 'vision nocturne', 'Les personnages dou?s de cette facult? naturelle peuvent voir extr?mement bien dans le noir. L''obscurit? ne devra pas ?tre totale, comme dans les profondeurs de la terre ou les souterrains d''un ch?teau. Mais le talent op?rerait m?me ? la lueur des ?toiles. Les individus dont la race conf?re d?j? une Vision Nocturne augmentent la port?e de 2D6 m?tres. Pour les humains qui n''ont pas cette facult?, normalement, le r?sultat des 2D6 sera le total de la distance effective.', NULL);
INSERT INTO skill VALUES(163, 0, 1, 'vol ? la tire', 'Cette comp?tence permet ? un personnage de d?rober des objets personnels aux gens. Une r?ussite est d?termin?e par un Test de Vol ? la tire. Cette comp?tence peut ?tre acquise plus d''une fois, donnant ainsi une plus grande chance de succ?s. Pour chaque acquisition suppl?mentaire de la comp?tence, il est accord? un modificateur de +10%.', NULL);
INSERT INTO skill VALUES(164, 162, 1, '30m', '', NULL);
INSERT INTO skill VALUES(165, 162, 1, '20m', '', NULL);
INSERT INTO skill VALUES(166, 141, 1, 'v?g?taux', '', NULL);
INSERT INTO skill VALUES(167, 158, 1, 'fer', '', NULL);
INSERT INTO skill VALUES(168, 86, 1, 'chimiques', '', NULL);
INSERT INTO skill VALUES(169, 187, 1, 'magie mineure', '', NULL);
INSERT INTO skill VALUES(170, 136, 1, 'b?cheron', '', NULL);
INSERT INTO skill VALUES(171, 128, 1, 'cornet', '', NULL);
INSERT INTO skill VALUES(172, 136, 1, 'colporteur', '', NULL);
INSERT INTO skill VALUES(173, 132, 1, 'sous terre', '', NULL);
INSERT INTO skill VALUES(174, 136, 1, 'guilde des engingneurs nains', '', NULL);
INSERT INTO skill VALUES(175, 74, 1, 'faucon', '', NULL);
INSERT INTO skill VALUES(176, 136, 1, 'braconnier', '', NULL);
INSERT INTO skill VALUES(177, 136, 1, 'Ã©claireur ou bÃ»cheron', '', 0);
INSERT INTO skill VALUES(178, 86, 1, 'naturelles', '', NULL);
INSERT INTO skill VALUES(179, 185, 1, 'jargon des batailles ou des voleurs', '', NULL);
INSERT INTO skill VALUES(180, 136, 1, 'voleur', '', NULL);
INSERT INTO skill VALUES(181, 128, 1, 'instruments ? corde', '', NULL);
INSERT INTO skill VALUES(182, 136, 1, 'druide', '', NULL);
INSERT INTO skill VALUES(183, 128, 1, 'instruments ? vent', '', NULL);
INSERT INTO skill VALUES(184, 74, 1, 'chien', '', NULL);
INSERT INTO skill VALUES(185, 0, 1, 'langage secret', 'Il y a cinq langages secrets, de base, parl?s ? travers le Vieux Monde. Le personnage peut en conna?tre un s''il poss?de cette comp?tence.', NULL);
INSERT INTO skill VALUES(186, 0, 1, 'armes de spÃ©cialisation', 'Les Armes de Sp?cialisation sont les armes dont l''utilisation demande une connaissance ou un entra?nement sp?cial. Un personnage sans la comp?tence appropri?e utilisera une arme de Sp?cialisation avec seulement 10% en CC ou CT. Le Ma?tre de Jeu devra faire un Test de Risque pour savoir si cet individu incomp?tent n''en arrive pas ? se blesser.', 0);
INSERT INTO skill VALUES(187, 0, 1, 'incantations', 'Les personnages avec cette comp?tence peuvent incanter des sortil?ges appropri?s ? leur carri?re et ? leur niveau de ma?trise.', NULL);
INSERT INTO skill VALUES(188, 0, 1, 'langue herm?tique', 'Le personnage avec cette comp?tence peut parler, ?crire et lire une langue herm?tique. Celles-ci sont utilis?es uniquement dans le cadre de la magie et ne sont jamais employ?es pour communiquer ; en fait, cela s''av?rerait pratiquement impossible. Tous les livres, parchemins et autres inscriptions de nature v?ritablement magique sont ?crits dans une de ces langues herm?tiques. Un livre magique, ou une inscription magique, peuvent ?tre ?crit en langage ordinaire, mais ils n''auraient alors aucun pouvoir d''enseigner un sortil?ge et ne seraient pas, eux-m?mes, magiques.Ils ne sauraient ?tre que de simples curiosit?s. Il y a six langues herm?tiques diff?rentes. Le personnage conna?t celle que sa carri?re indique.', NULL);
INSERT INTO skill VALUES(189, 77, 1, 'cheval', '', NULL);
INSERT INTO skill VALUES(190, 187, 1, 'magie de bataille, niveau 1', '', NULL);
INSERT INTO skill VALUES(191, 187, 1, 'magie de bataille, niveau 2', '', NULL);
INSERT INTO skill VALUES(192, 187, 1, 'magie de bataille, niveau 3', '', NULL);
INSERT INTO skill VALUES(193, 187, 1, 'magie de bataille, niveau 4', '', NULL);
INSERT INTO skill VALUES(194, 136, 1, 'juriste', '', NULL);
INSERT INTO skill VALUES(195, 152, 1, 'cheval', '', NULL);
INSERT INTO skill VALUES(196, 74, 1, 'perroquet', '', NULL);
INSERT INTO skill VALUES(197, 74, 1, 'singe', '', NULL);
INSERT INTO skill VALUES(198, 187, 1, 'cl?ricales 1', '', NULL);
INSERT INTO skill VALUES(199, 187, 1, 'cl?ricales 2', '', NULL);
INSERT INTO skill VALUES(200, 187, 1, 'cl?ricales 3', '', NULL);
INSERT INTO skill VALUES(201, 187, 1, 'cl?ricales 4', '', NULL);
INSERT INTO skill VALUES(202, 187, 1, 'druidiques 1', '', NULL);
INSERT INTO skill VALUES(203, 187, 1, 'druidiques 2', '', NULL);
INSERT INTO skill VALUES(204, 187, 1, 'druidiques 3', '', NULL);
INSERT INTO skill VALUES(205, 187, 1, 'druidiques 4', '', NULL);
INSERT INTO skill VALUES(206, 136, 1, 'Ã©claireur', '', 0);
INSERT INTO skill VALUES(207, 136, 1, 'templier', '', NULL);
INSERT INTO skill VALUES(208, 187, 1, 'magie d?monique, niveau 1', '', NULL);
INSERT INTO skill VALUES(209, 187, 1, 'magie d?monique, niveau 2', '', NULL);
INSERT INTO skill VALUES(210, 187, 1, 'magie d?monique, niveau 3', '', NULL);
INSERT INTO skill VALUES(211, 187, 1, 'magie d?monique, niveau 4', '', NULL);
INSERT INTO skill VALUES(212, 187, 1, 'magie n?cromantique, niveau 1', '', NULL);
INSERT INTO skill VALUES(213, 187, 1, 'magie n?cromantique, niveau 2', '', NULL);
INSERT INTO skill VALUES(214, 187, 1, 'magie n?cromantique, niveau 3', '', NULL);
INSERT INTO skill VALUES(215, 187, 1, 'magie n?cromantique, niveau 4', '', NULL);
INSERT INTO skill VALUES(216, 187, 1, 'magie ?l?mentaire, niveau 1', '', NULL);
INSERT INTO skill VALUES(217, 187, 1, 'magie ?l?mentaire, niveau 2', '', NULL);
INSERT INTO skill VALUES(218, 187, 1, 'magie ?l?mentaire, niveau 3', '', NULL);
INSERT INTO skill VALUES(219, 187, 1, 'magie ?l?mentaire, niveau 4', '', NULL);
INSERT INTO skill VALUES(220, 187, 1, 'magie illusoire, niveau 1', '', NULL);
INSERT INTO skill VALUES(221, 187, 1, 'magie illusoire, niveau 2', '', NULL);
INSERT INTO skill VALUES(222, 187, 1, 'magie illusoire, niveau 3', '', NULL);
INSERT INTO skill VALUES(223, 187, 1, 'magie illusoire, niveau 4', '', NULL);



DROP TABLE IF EXISTS skill_affecte_characteristic;
CREATE TABLE IF NOT EXISTS skill_affecte_characteristic (
  skill_id int(10) unsigned NOT NULL default '0',
  characteristic_id int(11) NOT NULL default '0',
  operateur char(1) default NULL,
  operande int(10) unsigned default NULL,
  minimum int(10) unsigned default '0',
  PRIMARY KEY  (skill_id,characteristic_id)
) ;


INSERT INTO skill_affecte_characteristic VALUES(5, 3, '+', 10, 0);
INSERT INTO skill_affecte_characteristic VALUES(42, 14, '+', 10, 0);
INSERT INTO skill_affecte_characteristic VALUES(62, 1, '+', 1, 0);
INSERT INTO skill_affecte_characteristic VALUES(91, 4, '+', 1, 0);
INSERT INTO skill_affecte_characteristic VALUES(145, 7, '+', 10, 0);
INSERT INTO skill_affecte_characteristic VALUES(147, 5, '+', 1, 0);











DROP TABLE IF EXISTS tool;
CREATE TABLE IF NOT EXISTS tool (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO tool VALUES(112);
INSERT INTO tool VALUES(113);
INSERT INTO tool VALUES(114);
INSERT INTO tool VALUES(115);
INSERT INTO tool VALUES(116);
INSERT INTO tool VALUES(117);
INSERT INTO tool VALUES(118);
INSERT INTO tool VALUES(119);
INSERT INTO tool VALUES(120);
INSERT INTO tool VALUES(121);
INSERT INTO tool VALUES(122);
INSERT INTO tool VALUES(123);
INSERT INTO tool VALUES(124);
INSERT INTO tool VALUES(125);
INSERT INTO tool VALUES(126);
INSERT INTO tool VALUES(127);
INSERT INTO tool VALUES(128);
INSERT INTO tool VALUES(129);
INSERT INTO tool VALUES(130);
INSERT INTO tool VALUES(131);
INSERT INTO tool VALUES(132);
INSERT INTO tool VALUES(133);
INSERT INTO tool VALUES(134);
INSERT INTO tool VALUES(135);
INSERT INTO tool VALUES(136);
INSERT INTO tool VALUES(137);
INSERT INTO tool VALUES(138);
INSERT INTO tool VALUES(139);
INSERT INTO tool VALUES(140);
INSERT INTO tool VALUES(141);
INSERT INTO tool VALUES(142);
INSERT INTO tool VALUES(143);
INSERT INTO tool VALUES(144);
INSERT INTO tool VALUES(145);



DROP TABLE IF EXISTS trait;
CREATE TABLE IF NOT EXISTS trait (
  trait_id int(10) unsigned NOT NULL auto_increment,
  trait_name varchar(45) default NULL,
  trait_desc text,
  mini int(10) unsigned default NULL,
  maxi int(10) unsigned default NULL,
  PRIMARY KEY  (trait_id)
)    ;


INSERT INTO trait VALUES(1, 'accent prononc', '-5% sur les comp?tences de communication', 1, 2);
INSERT INTO trait VALUES(2, 'balafre', 'Soc -10', 3, 5);
INSERT INTO trait VALUES(3, 'barbe ''volumineuse''', '', 6, 7);
INSERT INTO trait VALUES(4, 'b?gaiement', '-10% sur les comp?tences de communication', 8, 10);
INSERT INTO trait VALUES(5, 'borgne', 'CT x 1/2', 11, 12);
INSERT INTO trait VALUES(6, 'calvitie', '', 13, 15);
INSERT INTO trait VALUES(7, 'carrure ch?tive', 'implique la plus faible corpulence de la race', 16, 17);
INSERT INTO trait VALUES(8, 'carrure imposante', 'implique la plus forte corpulence de la race', 18, 20);
INSERT INTO trait VALUES(9, 'chevelure tr?s courte', '', 21, 22);
INSERT INTO trait VALUES(10, 'chevelure tr?s longue', '', 23, 25);
INSERT INTO trait VALUES(11, 'cheveux fris', '', 26, 27);
INSERT INTO trait VALUES(12, 'chicots', 'Soc -10', 28, 30);
INSERT INTO trait VALUES(13, 'claudication', 'M -1 (minimum 2)', 31, 32);
INSERT INTO trait VALUES(14, 'corps couvert de cicatrices', 'Soc -10 ; Devient Soc +10 envers les races ou les personnages ? temp?rament guerrier.', 33, 35);
INSERT INTO trait VALUES(15, 'dents tr?s blanches', 'Soc +5', 36, 37);
INSERT INTO trait VALUES(16, 'dos vo?t', '', 38, 40);
INSERT INTO trait VALUES(17, 'expression hautaine', 'Soc -5 ; Cd +5', 41, 42);
INSERT INTO trait VALUES(18, 'forte pilosit', '', 43, 45);
INSERT INTO trait VALUES(19, 'grande taille', 'Cd +5 ; Au lieu des +3D10 pour le calcul de la taille, prenez la base minimum et ajoutez 25+1D5cm', 46, 47);
INSERT INTO trait VALUES(20, 'grandes oreilles', '', 48, 50);
INSERT INTO trait VALUES(21, 'jambes courtes', 'M -1 (minimum 2)', 51, 52);
INSERT INTO trait VALUES(22, 'mains botes', 'Dex -10', 53, 55);
INSERT INTO trait VALUES(23, 'manchot', 'Dex -10', 56, 57);
INSERT INTO trait VALUES(24, 'marque de naissance', '', 58, 60);
INSERT INTO trait VALUES(25, 'moustache', '', 61, 62);
INSERT INTO trait VALUES(26, 'nez aplati', '', 63, 65);
INSERT INTO trait VALUES(27, 'nez crochu', '', 66, 67);
INSERT INTO trait VALUES(28, 'nez ''volumineux''', '', 68, 70);
INSERT INTO trait VALUES(29, 'ongles longs', '', 71, 72);
INSERT INTO trait VALUES(30, 'peau bl?me', '', 73, 75);
INSERT INTO trait VALUES(31, 'pectoraux pro?minents', 'F +1', 76, 77);
INSERT INTO trait VALUES(32, 'petite taille', 'Cd -5 ; Au lieu des +3D10 pour le calcul de la taille, prenez la base minimum et ajoutez 1D5cm', 78, 80);
INSERT INTO trait VALUES(33, 'regard charismatique', 'Soc +10', 81, 82);
INSERT INTO trait VALUES(34, 'sourcils broussailleux', '', 83, 85);
INSERT INTO trait VALUES(35, 'sourire narquois', 'Soc -5', 86, 87);
INSERT INTO trait VALUES(36, 'ventre bedonnant', '+10% au tirage du poids de base', 88, 90);
INSERT INTO trait VALUES(37, 'visage attirant', 'Soc +10', 91, 92);
INSERT INTO trait VALUES(38, 'voix forte', 'Cd +10 ; Soc -5', 93, 95);
INSERT INTO trait VALUES(39, 'voix intelligible', '+5% sur les comp?tences de communication', 96, 97);
INSERT INTO trait VALUES(40, 'z?zaiement', 'Soc -10', 98, 100);



DROP TABLE IF EXISTS trait_affecte_characteristic;
CREATE TABLE IF NOT EXISTS trait_affecte_characteristic (
  trait_id int(10) unsigned NOT NULL default '0',
  characteristic_id int(11) NOT NULL default '0',
  operateur char(1) default NULL,
  operande int(10) unsigned default NULL,
  minimum int(10) unsigned default '0',
  PRIMARY KEY  (trait_id,characteristic_id)
) ;


INSERT INTO trait_affecte_characteristic VALUES(2, 14, '-', 10, 0);
INSERT INTO trait_affecte_characteristic VALUES(5, 3, '/', 2, 0);
INSERT INTO trait_affecte_characteristic VALUES(12, 14, '-', 10, 0);
INSERT INTO trait_affecte_characteristic VALUES(13, 1, '-', 1, 2);
INSERT INTO trait_affecte_characteristic VALUES(14, 14, '-', 10, 0);
INSERT INTO trait_affecte_characteristic VALUES(15, 14, '+', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(17, 14, '-', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(17, 10, '+', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(19, 10, '+', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(21, 1, '-', 1, 2);
INSERT INTO trait_affecte_characteristic VALUES(22, 9, '-', 10, 0);
INSERT INTO trait_affecte_characteristic VALUES(23, 9, '-', 10, 0);
INSERT INTO trait_affecte_characteristic VALUES(31, 4, '+', 1, 0);
INSERT INTO trait_affecte_characteristic VALUES(32, 10, '-', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(33, 14, '+', 10, 0);
INSERT INTO trait_affecte_characteristic VALUES(35, 14, '-', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(37, 14, '+', 10, 0);
INSERT INTO trait_affecte_characteristic VALUES(38, 10, '+', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(38, 14, '-', 5, 0);
INSERT INTO trait_affecte_characteristic VALUES(40, 14, '-', 10, 0);



DROP TABLE IF EXISTS trait_affecte_corpulence;
CREATE TABLE IF NOT EXISTS trait_affecte_corpulence (
  trait_id int(10) unsigned NOT NULL default '0',
  corpulence_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (trait_id,corpulence_id)
) ;





DROP TABLE IF EXISTS translation;
CREATE TABLE IF NOT EXISTS translation (
  translation_id int(4) NOT NULL auto_increment,
  fr text,
  en text,
  PRIMARY KEY  (translation_id)
)   ;





DROP TABLE IF EXISTS transport;
CREATE TABLE IF NOT EXISTS transport (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO transport VALUES(146);
INSERT INTO transport VALUES(147);
INSERT INTO transport VALUES(148);
INSERT INTO transport VALUES(149);
INSERT INTO transport VALUES(150);
INSERT INTO transport VALUES(151);
INSERT INTO transport VALUES(152);
INSERT INTO transport VALUES(153);
INSERT INTO transport VALUES(154);
INSERT INTO transport VALUES(155);



DROP TABLE IF EXISTS travel;
CREATE TABLE IF NOT EXISTS travel (
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;





DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  user_id int(11) NOT NULL default '0',
  user_name varchar(45) NOT NULL default '',
  user_desc text,
  user_login varchar(20) NOT NULL default '',
  user_password varchar(255) NOT NULL default '',
  PRIMARY KEY  (user_id)
) ;


INSERT INTO users VALUES(1, 'Arnaud GILLET', 'Ing?nieur ESIAL 3A', 'gille8', 'a9c4cef5735770e657b7c25b9dcb807b');
INSERT INTO users VALUES(2, 'GUEST', 'compte visiteur', 'guest', '084e0343a0486ff05530df6c705c8bb4');
INSERT INTO users VALUES(3, 'j?r?mie mercier', '', 'jim', '5e027396789a18c37aeda616e3d7991b');



DROP TABLE IF EXISTS vocation;
CREATE TABLE IF NOT EXISTS vocation (
  vocation_id int(10) unsigned NOT NULL auto_increment,
  vocation_name varchar(45) NOT NULL default '',
  vocation_desc text,
  PRIMARY KEY  (vocation_id)
)    ;


INSERT INTO vocation VALUES(1, 'guerrier', 'description des guerriers');
INSERT INTO vocation VALUES(2, 'forestier', '');
INSERT INTO vocation VALUES(3, 'filou', '');
INSERT INTO vocation VALUES(4, 'lettr', '');



DROP TABLE IF EXISTS vocation_restriction;
CREATE TABLE IF NOT EXISTS vocation_restriction (
  vocation_id int(10) unsigned NOT NULL default '0',
  race_id int(11) NOT NULL default '0',
  characteristic_id int(11) NOT NULL default '0',
  minimum int(10) unsigned default NULL,
  description text,
  PRIMARY KEY  (vocation_id,race_id,characteristic_id)
) ;


INSERT INTO vocation_restriction VALUES(1, 1, 2, 30, 'minimum de 30 en CC');
INSERT INTO vocation_restriction VALUES(1, 2, 2, 30, 'minimum de 30 en CC');
INSERT INTO vocation_restriction VALUES(1, 3, 2, 30, 'minimum de 30 en CC');
INSERT INTO vocation_restriction VALUES(1, 4, 2, 30, 'minimum de 30 en CC');
INSERT INTO vocation_restriction VALUES(1, 5, 2, 30, 'minimum de 30 en CC');
INSERT INTO vocation_restriction VALUES(2, 1, 3, 30, 'minimum de 30 en CT');
INSERT INTO vocation_restriction VALUES(2, 2, 3, 30, 'minimum de 30 en CT');
INSERT INTO vocation_restriction VALUES(2, 3, 3, 30, 'minimum de 30 en CT');
INSERT INTO vocation_restriction VALUES(2, 4, 3, 30, 'minimum de 30 en CT');
INSERT INTO vocation_restriction VALUES(2, 5, 3, 30, 'minimum de 30 en CT');
INSERT INTO vocation_restriction VALUES(3, 1, 7, 30, 'minimum de 30 en I');
INSERT INTO vocation_restriction VALUES(3, 2, 7, 65, 'minimum de 65 en I (car les elfes sont bons de nature)');
INSERT INTO vocation_restriction VALUES(3, 3, 7, 30, 'minimum de 30 en I');
INSERT INTO vocation_restriction VALUES(3, 4, 7, 30, 'minimum de 30 en I');
INSERT INTO vocation_restriction VALUES(3, 5, 7, 30, 'minimum de 30 en I');
INSERT INTO vocation_restriction VALUES(4, 1, 11, 30, 'minimum de 30 en Int');
INSERT INTO vocation_restriction VALUES(4, 2, 11, 30, 'minimum de 30 en Int');
INSERT INTO vocation_restriction VALUES(4, 3, 11, 30, 'minimum de 30 en Int');
INSERT INTO vocation_restriction VALUES(4, 4, 11, 30, 'minimum de 30 en Int');
INSERT INTO vocation_restriction VALUES(4, 5, 11, 30, 'minimum de 30 en Int');
INSERT INTO vocation_restriction VALUES(4, 1, 13, 30, 'minimum de 30 en FM');
INSERT INTO vocation_restriction VALUES(4, 2, 13, 30, 'minimum de 30 en FM');
INSERT INTO vocation_restriction VALUES(4, 3, 13, 30, 'minimum de 30 en FM');
INSERT INTO vocation_restriction VALUES(4, 4, 13, 30, 'minimum de 30 en FM');
INSERT INTO vocation_restriction VALUES(4, 5, 13, 30, 'minimum de 30 en FM');



DROP TABLE IF EXISTS weapon;
CREATE TABLE IF NOT EXISTS weapon (
  objet_id int(10) unsigned NOT NULL default '0',
  weapontype_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (objet_id)
) ;


INSERT INTO weapon VALUES(45, 0);
INSERT INTO weapon VALUES(46, 0);
INSERT INTO weapon VALUES(47, 0);
INSERT INTO weapon VALUES(48, 0);
INSERT INTO weapon VALUES(49, 0);
INSERT INTO weapon VALUES(50, 0);
INSERT INTO weapon VALUES(51, 0);
INSERT INTO weapon VALUES(52, 0);
INSERT INTO weapon VALUES(53, 0);
INSERT INTO weapon VALUES(54, 0);
INSERT INTO weapon VALUES(55, 0);
INSERT INTO weapon VALUES(56, 0);
INSERT INTO weapon VALUES(57, 0);
INSERT INTO weapon VALUES(58, 0);
INSERT INTO weapon VALUES(59, 0);
INSERT INTO weapon VALUES(60, 0);
INSERT INTO weapon VALUES(61, 0);
INSERT INTO weapon VALUES(62, 0);
INSERT INTO weapon VALUES(63, 0);
INSERT INTO weapon VALUES(64, 0);
INSERT INTO weapon VALUES(65, 0);
INSERT INTO weapon VALUES(66, 0);
INSERT INTO weapon VALUES(67, 0);
INSERT INTO weapon VALUES(68, 0);
INSERT INTO weapon VALUES(69, 0);
INSERT INTO weapon VALUES(70, 0);
INSERT INTO weapon VALUES(71, 0);
INSERT INTO weapon VALUES(72, 0);
INSERT INTO weapon VALUES(73, 0);
INSERT INTO weapon VALUES(74, 0);
INSERT INTO weapon VALUES(75, 0);
INSERT INTO weapon VALUES(76, 0);
INSERT INTO weapon VALUES(77, 0);
INSERT INTO weapon VALUES(78, 0);
INSERT INTO weapon VALUES(79, 0);
INSERT INTO weapon VALUES(80, 0);
INSERT INTO weapon VALUES(81, 0);
INSERT INTO weapon VALUES(82, 0);
INSERT INTO weapon VALUES(83, 0);
INSERT INTO weapon VALUES(84, 0);
INSERT INTO weapon VALUES(85, 0);
INSERT INTO weapon VALUES(86, 0);
INSERT INTO weapon VALUES(87, 0);
INSERT INTO weapon VALUES(88, 0);
INSERT INTO weapon VALUES(89, 0);
INSERT INTO weapon VALUES(90, 0);
INSERT INTO weapon VALUES(91, 0);
INSERT INTO weapon VALUES(92, 0);
INSERT INTO weapon VALUES(93, 0);
INSERT INTO weapon VALUES(94, 0);
INSERT INTO weapon VALUES(95, 0);
INSERT INTO weapon VALUES(96, 0);
INSERT INTO weapon VALUES(97, 0);
INSERT INTO weapon VALUES(98, 0);
INSERT INTO weapon VALUES(99, 0);
INSERT INTO weapon VALUES(100, 0);
INSERT INTO weapon VALUES(101, 0);
INSERT INTO weapon VALUES(102, 0);
INSERT INTO weapon VALUES(103, 0);
INSERT INTO weapon VALUES(104, 0);
INSERT INTO weapon VALUES(105, 0);
INSERT INTO weapon VALUES(106, 0);
INSERT INTO weapon VALUES(107, 0);
INSERT INTO weapon VALUES(108, 0);
INSERT INTO weapon VALUES(109, 0);



DROP TABLE IF EXISTS weapontype;
CREATE TABLE IF NOT EXISTS weapontype (
  weapontype_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (weapontype_id)
) ;









DROP TABLE IF EXISTS webpage;
CREATE TABLE IF NOT EXISTS webpage (
  webpage_id int(10) unsigned NOT NULL auto_increment,
  webpage_name varchar(45) NOT NULL default '',
  webpage_desc text,
  directory_id int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (webpage_id),
  FOREIGN KEY (directory_id) REFERENCES directory(directory_id)
)    ;


INSERT INTO webpage VALUES(1, 'characters.php5', 'pj/pnj', 5);
INSERT INTO webpage VALUES(2, 'geography.php5', 'r?pertoire g?ographique', 5);
INSERT INTO webpage VALUES(3, 'careers.php5', 'carri?res', 5);
INSERT INTO webpage VALUES(4, 'consumer.php5', 'guide du consommateur', 5);
INSERT INTO webpage VALUES(5, 'magick.php5', 'magie', 5);
INSERT INTO webpage VALUES(6, 'bestiary.php5', 'bestiaire', 5);
INSERT INTO webpage VALUES(7, 'help.php5', 'aides de jeu', 5);
INSERT INTO webpage VALUES(8, 'scenarii.php5', 'sc?narios', 5);
INSERT INTO webpage VALUES(9, 'religion.php5', 'religion', 5);
INSERT INTO webpage VALUES(10, 'skills.php5', 'comp?tences', 5);
INSERT INTO webpage VALUES(11, 'weapons.php5', 'armes dans warhammer', 5);
INSERT INTO webpage VALUES(12, 'armors.php5', 'armures dans warhammer', 5);
INSERT INTO webpage VALUES(13, 'miscs.php5', 'objet divers', 5);
INSERT INTO webpage VALUES(14, 'transports.php5', 'diff?rents moyens de transport dans Warhammer', 5);
INSERT INTO webpage VALUES(15, 'tools.php5', 'outillage', 5);
INSERT INTO webpage VALUES(16, 'drinks.php5', 'la boisson dans le monde de warhammer', 5);
INSERT INTO webpage VALUES(17, 'animals.php5', 'animaux domestiques achetables', 5);
INSERT INTO webpage VALUES(18, 'creatures.php5', 'crÃ©atures dans warhammer', 5);
INSERT INTO webpage VALUES(19, 'musics.php5', 'instruments de musique...', 5);
INSERT INTO webpage VALUES(20, 'bags.php5', 'Ã©quipement de transport', 5);
INSERT INTO webpage VALUES(21, 'domestics.php5', 'objets domestiques personnels', 5);
INSERT INTO webpage VALUES(22, 'lightings.php5', 'Ã©clairage', 5);
INSERT INTO webpage VALUES(23, 'musics.php5', '', 5);
INSERT INTO webpage VALUES(24, 'writings.php5', '', 5);
INSERT INTO webpage VALUES(25, 'travels.php5', '', 5);
INSERT INTO webpage VALUES(26, 'houses.php5', '', 5);
INSERT INTO webpage VALUES(27, 'cures.php5', '', 5);
INSERT INTO webpage VALUES(28, 'services.php5', '', 5);
INSERT INTO webpage VALUES(29, 'dresses.php5', '', 5);
INSERT INTO webpage VALUES(30, 'gerer_compte.php5', '', 5);
INSERT INTO webpage VALUES(31, 'creation.php', 'pour crÃ©er un personnage', 5);
INSERT INTO webpage VALUES(32, 'detailcreationperso.php5', 'explications sur la fa?on dont est cr?? un personnage', 5);
INSERT INTO webpage VALUES(33, 'liste_de_persos.php5', 'listes de personnages en activit', 5);
INSERT INTO webpage VALUES(34, 'cemetery.php5', 'personnages morts', 5);
INSERT INTO webpage VALUES(35, 'mes_persos.php5', 'mes personnages', 5);
INSERT INTO webpage VALUES(36, 'continents.php5', 'continents', 5);
INSERT INTO webpage VALUES(37, 'countries.php5', 'pays', 5);
INSERT INTO webpage VALUES(38, 'castings.php5', 'sortilÃ¨ges', 5);
INSERT INTO webpage VALUES(39, 'mes_persos.php5', 'consultation de ses personnages', 5);
INSERT INTO webpage VALUES(40, 'modifier_persos.php5', 'modification de ses personnages', 5);
INSERT INTO webpage VALUES(41, 'administration.php5', NULL, 6);
INSERT INTO webpage VALUES(42, 'webpage_management.php5', 'ce menu permet de dÃ©clarer les pages web utilisÃ©es', 6);
INSERT INTO webpage VALUES(43, 'menu_management.php5', NULL, 6);
INSERT INTO webpage VALUES(44, 'menu_create.php5', NULL, 6);
INSERT INTO webpage VALUES(45, 'career_create.php5', 'pour ajouter des carriÃ¨res', 6);
INSERT INTO webpage VALUES(46, 'career_management.php5', 'Gestion des carriÃ¨res', 6);
INSERT INTO webpage VALUES(47, 'webpage_create.php5', NULL, 6);
INSERT INTO webpage VALUES(48, 'menu_delete.php5', 'pour supprimer un menu', 6);
INSERT INTO webpage VALUES(49, 'webpage_delete.php5', '', 6);
INSERT INTO webpage VALUES(50, 'webpage_modify.php5', '', 6);
INSERT INTO webpage VALUES(51, 'menu_modify.php5', '', 6);
INSERT INTO webpage VALUES(52, 'career_modify.php5', '', 6);
INSERT INTO webpage VALUES(53, 'skill_create.php5', '', 6);
INSERT INTO webpage VALUES(54, 'skill_modify.php5', '', 6);
INSERT INTO webpage VALUES(55, 'skill_delete.php5', '', 6);
INSERT INTO webpage VALUES(56, 'skills_management.php5', '', 6);
INSERT INTO webpage VALUES(57, 'career_delete.php5', 'Suppression d\\''une carriÃ¨re', 6);
INSERT INTO webpage VALUES(59, 'personnage_create.php5', '', 5);
INSERT INTO webpage VALUES(60, 'animal_create.php5', 'Ajout d\\''un nouvel animal', 6);
INSERT INTO webpage VALUES(61, 'download.php5', 'Page des tÃ©lÃ©chargements possibles sur le site.', 5);



DROP TABLE IF EXISTS world;
CREATE TABLE IF NOT EXISTS world (
  world_id int(11) NOT NULL default '0',
  world_name varchar(45) NOT NULL default '',
  world_desc text,
  PRIMARY KEY  (world_id)
) ;


INSERT INTO world VALUES(1, 'Le monde de Warhammer', 'description du monde de warhammer');



DROP TABLE IF EXISTS world_has_map;
CREATE TABLE IF NOT EXISTS world_has_map (
  world_id int(11) NOT NULL default '0',
  map_id int(11) NOT NULL default '0',
  PRIMARY KEY  (world_id,map_id),
  FOREIGN KEY (world_id) REFERENCES world(world_id),
  FOREIGN KEY (map_id) REFERENCES map(map_id)
) ;


INSERT INTO world_has_map VALUES(1, 1);
INSERT INTO world_has_map VALUES(1, 2);
INSERT INTO world_has_map VALUES(1, 3);
INSERT INTO world_has_map VALUES(1, 4);
INSERT INTO world_has_map VALUES(1, 5);
INSERT INTO world_has_map VALUES(1, 6);
INSERT INTO world_has_map VALUES(1, 7);
INSERT INTO world_has_map VALUES(1, 8);
INSERT INTO world_has_map VALUES(1, 9);
INSERT INTO world_has_map VALUES(1, 10);
INSERT INTO world_has_map VALUES(1, 11);
INSERT INTO world_has_map VALUES(1, 12);

DROP TABLE IF EXISTS administrateur_has_personnage;
CREATE TABLE IF NOT EXISTS administrateur_has_personnage (
  user_id int(11) NOT NULL default '0',
  personnage_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (user_id,personnage_id)
) ;

DROP TABLE IF EXISTS career_has_characteristic;
CREATE TABLE IF NOT EXISTS career_has_characteristic (
  career_id int(10) unsigned NOT NULL default '0',
  characteristic_id int(11) unsigned NOT NULL default '0',
  `value` int(11) default '0',
  PRIMARY KEY  (career_id,characteristic_id)
) ;


INSERT INTO career_has_characteristic VALUES(1, 2, 10);
INSERT INTO career_has_characteristic VALUES(1, 3, 10);
INSERT INTO career_has_characteristic VALUES(1, 6, 2);
INSERT INTO career_has_characteristic VALUES(1, 7, 10);
INSERT INTO career_has_characteristic VALUES(1, 10, 10);
INSERT INTO career_has_characteristic VALUES(1, 14, 10);
INSERT INTO career_has_characteristic VALUES(2, 6, 1);
INSERT INTO career_has_characteristic VALUES(2, 9, 10);
INSERT INTO career_has_characteristic VALUES(2, 11, 10);
INSERT INTO career_has_characteristic VALUES(3, 6, 1);
INSERT INTO career_has_characteristic VALUES(3, 9, 10);
INSERT INTO career_has_characteristic VALUES(3, 11, 10);
INSERT INTO career_has_characteristic VALUES(4, 6, 1);
INSERT INTO career_has_characteristic VALUES(4, 7, 10);
INSERT INTO career_has_characteristic VALUES(4, 9, 10);
INSERT INTO career_has_characteristic VALUES(4, 12, 10);
INSERT INTO career_has_characteristic VALUES(5, 6, 1);
INSERT INTO career_has_characteristic VALUES(5, 9, 10);
INSERT INTO career_has_characteristic VALUES(5, 11, 10);
INSERT INTO career_has_characteristic VALUES(5, 13, 10);
INSERT INTO career_has_characteristic VALUES(6, 2, 10);
INSERT INTO career_has_characteristic VALUES(6, 3, 10);
INSERT INTO career_has_characteristic VALUES(6, 6, 2);
INSERT INTO career_has_characteristic VALUES(6, 7, 10);
INSERT INTO career_has_characteristic VALUES(6, 12, 10);
INSERT INTO career_has_characteristic VALUES(7, 2, 10);
INSERT INTO career_has_characteristic VALUES(7, 3, 10);
INSERT INTO career_has_characteristic VALUES(7, 6, 2);
INSERT INTO career_has_characteristic VALUES(7, 9, 10);
INSERT INTO career_has_characteristic VALUES(7, 14, 10);
INSERT INTO career_has_characteristic VALUES(8, 2, 10);
INSERT INTO career_has_characteristic VALUES(8, 3, 10);
INSERT INTO career_has_characteristic VALUES(8, 6, 2);
INSERT INTO career_has_characteristic VALUES(8, 9, 10);
INSERT INTO career_has_characteristic VALUES(8, 14, 10);
INSERT INTO career_has_characteristic VALUES(9, 2, 10);
INSERT INTO career_has_characteristic VALUES(9, 3, 10);
INSERT INTO career_has_characteristic VALUES(9, 6, 2);
INSERT INTO career_has_characteristic VALUES(9, 9, 10);
INSERT INTO career_has_characteristic VALUES(9, 14, 10);
INSERT INTO career_has_characteristic VALUES(10, 2, 10);
INSERT INTO career_has_characteristic VALUES(10, 3, 10);
INSERT INTO career_has_characteristic VALUES(10, 6, 2);
INSERT INTO career_has_characteristic VALUES(10, 9, 10);
INSERT INTO career_has_characteristic VALUES(10, 14, 10);
INSERT INTO career_has_characteristic VALUES(11, 2, 10);
INSERT INTO career_has_characteristic VALUES(11, 3, 10);
INSERT INTO career_has_characteristic VALUES(11, 6, 2);
INSERT INTO career_has_characteristic VALUES(11, 9, 10);
INSERT INTO career_has_characteristic VALUES(11, 14, 10);
INSERT INTO career_has_characteristic VALUES(12, 2, 10);
INSERT INTO career_has_characteristic VALUES(12, 3, 10);
INSERT INTO career_has_characteristic VALUES(12, 6, 2);
INSERT INTO career_has_characteristic VALUES(12, 9, 10);
INSERT INTO career_has_characteristic VALUES(12, 14, 10);
INSERT INTO career_has_characteristic VALUES(13, 2, 10);
INSERT INTO career_has_characteristic VALUES(13, 3, 10);
INSERT INTO career_has_characteristic VALUES(13, 6, 2);
INSERT INTO career_has_characteristic VALUES(13, 9, 10);
INSERT INTO career_has_characteristic VALUES(13, 14, 10);
INSERT INTO career_has_characteristic VALUES(14, 2, 10);
INSERT INTO career_has_characteristic VALUES(14, 3, 10);
INSERT INTO career_has_characteristic VALUES(14, 6, 2);
INSERT INTO career_has_characteristic VALUES(14, 9, 10);
INSERT INTO career_has_characteristic VALUES(14, 14, 10);
INSERT INTO career_has_characteristic VALUES(15, 2, 10);
INSERT INTO career_has_characteristic VALUES(15, 3, 10);
INSERT INTO career_has_characteristic VALUES(15, 6, 2);
INSERT INTO career_has_characteristic VALUES(15, 9, 10);
INSERT INTO career_has_characteristic VALUES(15, 14, 10);
INSERT INTO career_has_characteristic VALUES(16, 2, 10);
INSERT INTO career_has_characteristic VALUES(16, 3, 10);
INSERT INTO career_has_characteristic VALUES(16, 6, 2);
INSERT INTO career_has_characteristic VALUES(16, 9, 10);
INSERT INTO career_has_characteristic VALUES(16, 14, 10);
INSERT INTO career_has_characteristic VALUES(17, 2, 10);
INSERT INTO career_has_characteristic VALUES(17, 3, 10);
INSERT INTO career_has_characteristic VALUES(17, 6, 2);
INSERT INTO career_has_characteristic VALUES(17, 9, 10);
INSERT INTO career_has_characteristic VALUES(17, 14, 10);
INSERT INTO career_has_characteristic VALUES(18, 2, 10);
INSERT INTO career_has_characteristic VALUES(18, 3, 10);
INSERT INTO career_has_characteristic VALUES(18, 6, 2);
INSERT INTO career_has_characteristic VALUES(18, 9, 10);
INSERT INTO career_has_characteristic VALUES(18, 14, 10);
INSERT INTO career_has_characteristic VALUES(19, 2, 10);
INSERT INTO career_has_characteristic VALUES(19, 3, 10);
INSERT INTO career_has_characteristic VALUES(19, 6, 2);
INSERT INTO career_has_characteristic VALUES(19, 9, 10);
INSERT INTO career_has_characteristic VALUES(19, 14, 10);
INSERT INTO career_has_characteristic VALUES(20, 2, 10);
INSERT INTO career_has_characteristic VALUES(20, 3, 10);
INSERT INTO career_has_characteristic VALUES(20, 6, 2);
INSERT INTO career_has_characteristic VALUES(20, 9, 10);
INSERT INTO career_has_characteristic VALUES(20, 14, 10);
INSERT INTO career_has_characteristic VALUES(21, 2, 10);
INSERT INTO career_has_characteristic VALUES(21, 3, 10);
INSERT INTO career_has_characteristic VALUES(21, 6, 2);
INSERT INTO career_has_characteristic VALUES(21, 9, 10);
INSERT INTO career_has_characteristic VALUES(21, 14, 10);
INSERT INTO career_has_characteristic VALUES(22, 2, 10);
INSERT INTO career_has_characteristic VALUES(22, 3, 10);
INSERT INTO career_has_characteristic VALUES(22, 6, 2);
INSERT INTO career_has_characteristic VALUES(22, 9, 10);
INSERT INTO career_has_characteristic VALUES(22, 14, 10);
INSERT INTO career_has_characteristic VALUES(23, 2, 10);
INSERT INTO career_has_characteristic VALUES(23, 3, 10);
INSERT INTO career_has_characteristic VALUES(23, 6, 2);
INSERT INTO career_has_characteristic VALUES(23, 9, 10);
INSERT INTO career_has_characteristic VALUES(23, 14, 10);
INSERT INTO career_has_characteristic VALUES(24, 2, 10);
INSERT INTO career_has_characteristic VALUES(24, 3, 10);
INSERT INTO career_has_characteristic VALUES(24, 6, 2);
INSERT INTO career_has_characteristic VALUES(24, 9, 10);
INSERT INTO career_has_characteristic VALUES(24, 14, 10);
INSERT INTO career_has_characteristic VALUES(25, 2, 10);
INSERT INTO career_has_characteristic VALUES(25, 3, 10);
INSERT INTO career_has_characteristic VALUES(25, 6, 2);
INSERT INTO career_has_characteristic VALUES(25, 9, 10);
INSERT INTO career_has_characteristic VALUES(25, 14, 10);
INSERT INTO career_has_characteristic VALUES(26, 2, 10);
INSERT INTO career_has_characteristic VALUES(26, 3, 10);
INSERT INTO career_has_characteristic VALUES(26, 6, 2);
INSERT INTO career_has_characteristic VALUES(26, 9, 10);
INSERT INTO career_has_characteristic VALUES(26, 14, 10);
INSERT INTO career_has_characteristic VALUES(27, 2, 10);
INSERT INTO career_has_characteristic VALUES(27, 3, 10);
INSERT INTO career_has_characteristic VALUES(27, 6, 2);
INSERT INTO career_has_characteristic VALUES(27, 9, 10);
INSERT INTO career_has_characteristic VALUES(27, 14, 10);
INSERT INTO career_has_characteristic VALUES(28, 2, 10);
INSERT INTO career_has_characteristic VALUES(28, 3, 10);
INSERT INTO career_has_characteristic VALUES(28, 4, 1);
INSERT INTO career_has_characteristic VALUES(28, 6, 2);
INSERT INTO career_has_characteristic VALUES(28, 7, 10);
INSERT INTO career_has_characteristic VALUES(29, 2, 10);
INSERT INTO career_has_characteristic VALUES(29, 3, 10);
INSERT INTO career_has_characteristic VALUES(29, 4, 1);
INSERT INTO career_has_characteristic VALUES(29, 6, 2);
INSERT INTO career_has_characteristic VALUES(29, 7, 10);
INSERT INTO career_has_characteristic VALUES(29, 12, 10);
INSERT INTO career_has_characteristic VALUES(30, 3, 20);
INSERT INTO career_has_characteristic VALUES(30, 4, 1);
INSERT INTO career_has_characteristic VALUES(30, 6, 2);
INSERT INTO career_has_characteristic VALUES(30, 7, 10);
INSERT INTO career_has_characteristic VALUES(30, 13, 10);
INSERT INTO career_has_characteristic VALUES(31, 2, 10);
INSERT INTO career_has_characteristic VALUES(31, 3, 10);
INSERT INTO career_has_characteristic VALUES(31, 4, 1);
INSERT INTO career_has_characteristic VALUES(31, 6, 2);
INSERT INTO career_has_characteristic VALUES(31, 7, 10);
INSERT INTO career_has_characteristic VALUES(31, 12, 10);
INSERT INTO career_has_characteristic VALUES(32, 2, 10);
INSERT INTO career_has_characteristic VALUES(32, 3, 10);
INSERT INTO career_has_characteristic VALUES(32, 6, 2);
INSERT INTO career_has_characteristic VALUES(32, 7, 10);
INSERT INTO career_has_characteristic VALUES(32, 12, 10);
INSERT INTO career_has_characteristic VALUES(33, 2, 10);
INSERT INTO career_has_characteristic VALUES(33, 6, 2);
INSERT INTO career_has_characteristic VALUES(33, 7, 10);
INSERT INTO career_has_characteristic VALUES(33, 11, 10);
INSERT INTO career_has_characteristic VALUES(33, 12, 10);
INSERT INTO career_has_characteristic VALUES(34, 2, 10);
INSERT INTO career_has_characteristic VALUES(34, 3, 10);
INSERT INTO career_has_characteristic VALUES(34, 4, 1);
INSERT INTO career_has_characteristic VALUES(34, 6, 2);
INSERT INTO career_has_characteristic VALUES(34, 7, 10);
INSERT INTO career_has_characteristic VALUES(34, 14, 10);
INSERT INTO career_has_characteristic VALUES(35, 2, 10);
INSERT INTO career_has_characteristic VALUES(35, 4, 1);
INSERT INTO career_has_characteristic VALUES(35, 5, 1);
INSERT INTO career_has_characteristic VALUES(35, 6, 2);
INSERT INTO career_has_characteristic VALUES(35, 7, 10);
INSERT INTO career_has_characteristic VALUES(35, 8, 1);
INSERT INTO career_has_characteristic VALUES(35, 10, 10);
INSERT INTO career_has_characteristic VALUES(35, 12, 10);
INSERT INTO career_has_characteristic VALUES(36, 2, 10);
INSERT INTO career_has_characteristic VALUES(36, 3, 10);
INSERT INTO career_has_characteristic VALUES(36, 4, 1);
INSERT INTO career_has_characteristic VALUES(36, 6, 2);
INSERT INTO career_has_characteristic VALUES(36, 7, 10);
INSERT INTO career_has_characteristic VALUES(36, 8, 1);
INSERT INTO career_has_characteristic VALUES(36, 12, 10);
INSERT INTO career_has_characteristic VALUES(37, 2, 10);
INSERT INTO career_has_characteristic VALUES(37, 6, 1);
INSERT INTO career_has_characteristic VALUES(37, 11, 10);
INSERT INTO career_has_characteristic VALUES(37, 14, 10);
INSERT INTO career_has_characteristic VALUES(38, 2, 10);
INSERT INTO career_has_characteristic VALUES(38, 3, 10);
INSERT INTO career_has_characteristic VALUES(38, 6, 2);
INSERT INTO career_has_characteristic VALUES(38, 7, 10);
INSERT INTO career_has_characteristic VALUES(38, 14, 10);
INSERT INTO career_has_characteristic VALUES(39, 1, 1);
INSERT INTO career_has_characteristic VALUES(39, 2, 20);
INSERT INTO career_has_characteristic VALUES(39, 4, 1);
INSERT INTO career_has_characteristic VALUES(39, 5, 1);
INSERT INTO career_has_characteristic VALUES(39, 6, 1);
INSERT INTO career_has_characteristic VALUES(39, 7, 10);
INSERT INTO career_has_characteristic VALUES(39, 9, 10);
INSERT INTO career_has_characteristic VALUES(39, 12, 10);
INSERT INTO career_has_characteristic VALUES(40, 2, 10);
INSERT INTO career_has_characteristic VALUES(40, 6, 2);
INSERT INTO career_has_characteristic VALUES(40, 7, 10);
INSERT INTO career_has_characteristic VALUES(40, 13, 10);
INSERT INTO career_has_characteristic VALUES(41, 2, 10);
INSERT INTO career_has_characteristic VALUES(41, 3, 10);
INSERT INTO career_has_characteristic VALUES(41, 6, 2);
INSERT INTO career_has_characteristic VALUES(41, 9, 10);
INSERT INTO career_has_characteristic VALUES(41, 11, 10);
INSERT INTO career_has_characteristic VALUES(42, 2, 10);
INSERT INTO career_has_characteristic VALUES(42, 3, 10);
INSERT INTO career_has_characteristic VALUES(42, 6, 2);
INSERT INTO career_has_characteristic VALUES(42, 7, 10);
INSERT INTO career_has_characteristic VALUES(42, 8, 1);
INSERT INTO career_has_characteristic VALUES(42, 10, 10);
INSERT INTO career_has_characteristic VALUES(42, 14, 10);
INSERT INTO career_has_characteristic VALUES(43, 6, 1);
INSERT INTO career_has_characteristic VALUES(43, 7, 10);
INSERT INTO career_has_characteristic VALUES(43, 11, 10);
INSERT INTO career_has_characteristic VALUES(43, 12, 10);
INSERT INTO career_has_characteristic VALUES(43, 14, 10);
INSERT INTO career_has_characteristic VALUES(44, 6, 1);
INSERT INTO career_has_characteristic VALUES(44, 7, 10);
INSERT INTO career_has_characteristic VALUES(44, 11, 10);
INSERT INTO career_has_characteristic VALUES(44, 12, 10);
INSERT INTO career_has_characteristic VALUES(45, 2, 10);
INSERT INTO career_has_characteristic VALUES(45, 3, 10);
INSERT INTO career_has_characteristic VALUES(45, 4, 1);
INSERT INTO career_has_characteristic VALUES(45, 6, 2);
INSERT INTO career_has_characteristic VALUES(45, 7, 10);
INSERT INTO career_has_characteristic VALUES(45, 8, 1);
INSERT INTO career_has_characteristic VALUES(46, 2, 20);
INSERT INTO career_has_characteristic VALUES(46, 4, 1);
INSERT INTO career_has_characteristic VALUES(46, 6, 2);
INSERT INTO career_has_characteristic VALUES(46, 7, 10);
INSERT INTO career_has_characteristic VALUES(46, 8, 1);
INSERT INTO career_has_characteristic VALUES(47, 3, 20);
INSERT INTO career_has_characteristic VALUES(47, 4, 1);
INSERT INTO career_has_characteristic VALUES(47, 6, 2);
INSERT INTO career_has_characteristic VALUES(47, 12, 10);
INSERT INTO career_has_characteristic VALUES(48, 3, 20);
INSERT INTO career_has_characteristic VALUES(48, 4, 1);
INSERT INTO career_has_characteristic VALUES(48, 6, 2);
INSERT INTO career_has_characteristic VALUES(48, 12, 10);
INSERT INTO career_has_characteristic VALUES(49, 2, 10);
INSERT INTO career_has_characteristic VALUES(49, 3, 10);
INSERT INTO career_has_characteristic VALUES(49, 6, 2);
INSERT INTO career_has_characteristic VALUES(49, 7, 10);
INSERT INTO career_has_characteristic VALUES(49, 9, 10);
INSERT INTO career_has_characteristic VALUES(49, 10, 20);
INSERT INTO career_has_characteristic VALUES(49, 12, 10);
INSERT INTO career_has_characteristic VALUES(49, 14, 10);
INSERT INTO career_has_characteristic VALUES(50, 2, 10);
INSERT INTO career_has_characteristic VALUES(50, 4, 1);
INSERT INTO career_has_characteristic VALUES(50, 5, 1);
INSERT INTO career_has_characteristic VALUES(50, 6, 2);
INSERT INTO career_has_characteristic VALUES(50, 13, 10);
INSERT INTO career_has_characteristic VALUES(51, 2, 20);
INSERT INTO career_has_characteristic VALUES(51, 5, 1);
INSERT INTO career_has_characteristic VALUES(51, 6, 2);
INSERT INTO career_has_characteristic VALUES(51, 7, 10);
INSERT INTO career_has_characteristic VALUES(51, 9, 10);
INSERT INTO career_has_characteristic VALUES(51, 12, 10);
INSERT INTO career_has_characteristic VALUES(52, 2, 10);
INSERT INTO career_has_characteristic VALUES(52, 3, 10);
INSERT INTO career_has_characteristic VALUES(52, 4, 1);
INSERT INTO career_has_characteristic VALUES(52, 6, 2);
INSERT INTO career_has_characteristic VALUES(52, 7, 10);
INSERT INTO career_has_characteristic VALUES(52, 11, 10);
INSERT INTO career_has_characteristic VALUES(52, 12, 10);
INSERT INTO career_has_characteristic VALUES(53, 2, 10);
INSERT INTO career_has_characteristic VALUES(53, 3, 10);
INSERT INTO career_has_characteristic VALUES(53, 6, 2);
INSERT INTO career_has_characteristic VALUES(53, 7, 10);
INSERT INTO career_has_characteristic VALUES(53, 14, 10);
INSERT INTO career_has_characteristic VALUES(54, 6, 1);
INSERT INTO career_has_characteristic VALUES(54, 9, 10);
INSERT INTO career_has_characteristic VALUES(54, 11, 10);
INSERT INTO career_has_characteristic VALUES(55, 2, 10);
INSERT INTO career_has_characteristic VALUES(55, 3, 10);
INSERT INTO career_has_characteristic VALUES(55, 6, 2);
INSERT INTO career_has_characteristic VALUES(55, 7, 10);
INSERT INTO career_has_characteristic VALUES(55, 8, 1);
INSERT INTO career_has_characteristic VALUES(55, 12, 10);
INSERT INTO career_has_characteristic VALUES(56, 6, 1);
INSERT INTO career_has_characteristic VALUES(56, 7, 10);
INSERT INTO career_has_characteristic VALUES(56, 12, 10);
INSERT INTO career_has_characteristic VALUES(56, 13, 10);
INSERT INTO career_has_characteristic VALUES(56, 14, 10);
INSERT INTO career_has_characteristic VALUES(57, 3, 10);
INSERT INTO career_has_characteristic VALUES(57, 6, 2);
INSERT INTO career_has_characteristic VALUES(57, 7, 10);
INSERT INTO career_has_characteristic VALUES(57, 9, 10);
INSERT INTO career_has_characteristic VALUES(57, 11, 10);
INSERT INTO career_has_characteristic VALUES(57, 14, 10);
INSERT INTO career_has_characteristic VALUES(58, 6, 1);
INSERT INTO career_has_characteristic VALUES(58, 7, 10);
INSERT INTO career_has_characteristic VALUES(58, 9, 10);
INSERT INTO career_has_characteristic VALUES(58, 11, 10);
INSERT INTO career_has_characteristic VALUES(59, 5, 1);
INSERT INTO career_has_characteristic VALUES(59, 6, 1);
INSERT INTO career_has_characteristic VALUES(60, 2, 10);
INSERT INTO career_has_characteristic VALUES(60, 3, 10);
INSERT INTO career_has_characteristic VALUES(60, 4, 1);
INSERT INTO career_has_characteristic VALUES(60, 6, 2);
INSERT INTO career_has_characteristic VALUES(60, 7, 10);
INSERT INTO career_has_characteristic VALUES(60, 8, 1);
INSERT INTO career_has_characteristic VALUES(61, 2, 10);
INSERT INTO career_has_characteristic VALUES(61, 3, 10);
INSERT INTO career_has_characteristic VALUES(61, 5, 1);
INSERT INTO career_has_characteristic VALUES(61, 6, 2);
INSERT INTO career_has_characteristic VALUES(62, 2, 10);
INSERT INTO career_has_characteristic VALUES(62, 3, 10);
INSERT INTO career_has_characteristic VALUES(62, 6, 2);
INSERT INTO career_has_characteristic VALUES(62, 7, 10);
INSERT INTO career_has_characteristic VALUES(62, 9, 20);
INSERT INTO career_has_characteristic VALUES(62, 10, 10);
INSERT INTO career_has_characteristic VALUES(62, 11, 10);
INSERT INTO career_has_characteristic VALUES(62, 14, 10);
INSERT INTO career_has_characteristic VALUES(63, 2, 10);
INSERT INTO career_has_characteristic VALUES(63, 3, 10);
INSERT INTO career_has_characteristic VALUES(63, 4, 1);
INSERT INTO career_has_characteristic VALUES(63, 6, 2);
INSERT INTO career_has_characteristic VALUES(63, 7, 10);
INSERT INTO career_has_characteristic VALUES(63, 8, 1);
INSERT INTO career_has_characteristic VALUES(63, 10, 10);
INSERT INTO career_has_characteristic VALUES(63, 12, 10);
INSERT INTO career_has_characteristic VALUES(64, 2, 10);
INSERT INTO career_has_characteristic VALUES(64, 3, 10);
INSERT INTO career_has_characteristic VALUES(64, 4, 1);
INSERT INTO career_has_characteristic VALUES(64, 6, 2);
INSERT INTO career_has_characteristic VALUES(64, 7, 10);
INSERT INTO career_has_characteristic VALUES(64, 8, 1);
INSERT INTO career_has_characteristic VALUES(65, 2, 10);
INSERT INTO career_has_characteristic VALUES(65, 6, 2);
INSERT INTO career_has_characteristic VALUES(65, 11, 10);
INSERT INTO career_has_characteristic VALUES(65, 12, 10);
INSERT INTO career_has_characteristic VALUES(66, 2, 10);
INSERT INTO career_has_characteristic VALUES(66, 3, 10);
INSERT INTO career_has_characteristic VALUES(66, 6, 1);
INSERT INTO career_has_characteristic VALUES(66, 7, 10);
INSERT INTO career_has_characteristic VALUES(66, 11, 10);
INSERT INTO career_has_characteristic VALUES(66, 12, 10);
INSERT INTO career_has_characteristic VALUES(66, 13, 10);
INSERT INTO career_has_characteristic VALUES(67, 3, 20);
INSERT INTO career_has_characteristic VALUES(67, 4, 1);
INSERT INTO career_has_characteristic VALUES(67, 6, 2);
INSERT INTO career_has_characteristic VALUES(67, 7, 10);
INSERT INTO career_has_characteristic VALUES(68, 2, 10);
INSERT INTO career_has_characteristic VALUES(68, 3, 10);
INSERT INTO career_has_characteristic VALUES(68, 4, 1);
INSERT INTO career_has_characteristic VALUES(68, 6, 2);
INSERT INTO career_has_characteristic VALUES(68, 7, 10);
INSERT INTO career_has_characteristic VALUES(68, 10, 10);
INSERT INTO career_has_characteristic VALUES(69, 2, 10);
INSERT INTO career_has_characteristic VALUES(69, 3, 10);
INSERT INTO career_has_characteristic VALUES(69, 6, 2);
INSERT INTO career_has_characteristic VALUES(69, 7, 10);
INSERT INTO career_has_characteristic VALUES(70, 4, 1);
INSERT INTO career_has_characteristic VALUES(70, 6, 1);
INSERT INTO career_has_characteristic VALUES(70, 9, 10);
INSERT INTO career_has_characteristic VALUES(71, 2, 10);
INSERT INTO career_has_characteristic VALUES(71, 6, 2);
INSERT INTO career_has_characteristic VALUES(71, 7, 10);
INSERT INTO career_has_characteristic VALUES(71, 9, 10);
INSERT INTO career_has_characteristic VALUES(71, 12, 10);
INSERT INTO career_has_characteristic VALUES(71, 13, 10);
INSERT INTO career_has_characteristic VALUES(72, 6, 1);
INSERT INTO career_has_characteristic VALUES(72, 7, 10);
INSERT INTO career_has_characteristic VALUES(72, 9, 10);
INSERT INTO career_has_characteristic VALUES(72, 12, 10);
INSERT INTO career_has_characteristic VALUES(72, 14, 10);
INSERT INTO career_has_characteristic VALUES(73, 2, 10);
INSERT INTO career_has_characteristic VALUES(73, 3, 10);
INSERT INTO career_has_characteristic VALUES(73, 4, 1);
INSERT INTO career_has_characteristic VALUES(73, 6, 4);
INSERT INTO career_has_characteristic VALUES(73, 7, 10);
INSERT INTO career_has_characteristic VALUES(73, 8, 1);
INSERT INTO career_has_characteristic VALUES(73, 9, 10);
INSERT INTO career_has_characteristic VALUES(73, 12, 20);
INSERT INTO career_has_characteristic VALUES(74, 6, 1);
INSERT INTO career_has_characteristic VALUES(74, 10, 10);
INSERT INTO career_has_characteristic VALUES(74, 12, 10);
INSERT INTO career_has_characteristic VALUES(74, 13, 10);
INSERT INTO career_has_characteristic VALUES(74, 14, 10);
INSERT INTO career_has_characteristic VALUES(75, 2, 10);
INSERT INTO career_has_characteristic VALUES(75, 3, 10);
INSERT INTO career_has_characteristic VALUES(75, 4, 1);
INSERT INTO career_has_characteristic VALUES(75, 5, 1);
INSERT INTO career_has_characteristic VALUES(75, 6, 2);
INSERT INTO career_has_characteristic VALUES(75, 8, 1);
INSERT INTO career_has_characteristic VALUES(75, 12, 10);
INSERT INTO career_has_characteristic VALUES(76, 2, 10);
INSERT INTO career_has_characteristic VALUES(76, 6, 1);
INSERT INTO career_has_characteristic VALUES(76, 10, 10);
INSERT INTO career_has_characteristic VALUES(76, 11, 10);
INSERT INTO career_has_characteristic VALUES(76, 12, 10);
INSERT INTO career_has_characteristic VALUES(76, 14, 10);
INSERT INTO career_has_characteristic VALUES(77, 2, 10);
INSERT INTO career_has_characteristic VALUES(77, 3, 10);
INSERT INTO career_has_characteristic VALUES(77, 6, 1);
INSERT INTO career_has_characteristic VALUES(77, 9, 10);
INSERT INTO career_has_characteristic VALUES(77, 12, 10);
INSERT INTO career_has_characteristic VALUES(78, 6, 1);
INSERT INTO career_has_characteristic VALUES(78, 7, 10);
INSERT INTO career_has_characteristic VALUES(78, 10, 10);
INSERT INTO career_has_characteristic VALUES(78, 13, 10);
INSERT INTO career_has_characteristic VALUES(78, 14, 10);
INSERT INTO career_has_characteristic VALUES(79, 2, 10);
INSERT INTO career_has_characteristic VALUES(79, 3, 10);
INSERT INTO career_has_characteristic VALUES(79, 6, 2);
INSERT INTO career_has_characteristic VALUES(79, 7, 10);
INSERT INTO career_has_characteristic VALUES(79, 8, 1);
INSERT INTO career_has_characteristic VALUES(79, 10, 10);
INSERT INTO career_has_characteristic VALUES(80, 2, 10);
INSERT INTO career_has_characteristic VALUES(80, 4, 1);
INSERT INTO career_has_characteristic VALUES(80, 6, 2);
INSERT INTO career_has_characteristic VALUES(80, 7, 10);
INSERT INTO career_has_characteristic VALUES(80, 8, 1);
INSERT INTO career_has_characteristic VALUES(80, 12, 10);
INSERT INTO career_has_characteristic VALUES(81, 2, 10);
INSERT INTO career_has_characteristic VALUES(81, 3, 10);
INSERT INTO career_has_characteristic VALUES(81, 6, 2);
INSERT INTO career_has_characteristic VALUES(81, 7, 10);
INSERT INTO career_has_characteristic VALUES(81, 12, 10);
INSERT INTO career_has_characteristic VALUES(82, 2, 10);
INSERT INTO career_has_characteristic VALUES(82, 3, 10);
INSERT INTO career_has_characteristic VALUES(82, 4, 1);
INSERT INTO career_has_characteristic VALUES(82, 6, 2);
INSERT INTO career_has_characteristic VALUES(82, 7, 10);
INSERT INTO career_has_characteristic VALUES(82, 9, 10);
INSERT INTO career_has_characteristic VALUES(83, 2, 10);
INSERT INTO career_has_characteristic VALUES(83, 3, 10);
INSERT INTO career_has_characteristic VALUES(83, 4, 1);
INSERT INTO career_has_characteristic VALUES(83, 6, 2);
INSERT INTO career_has_characteristic VALUES(83, 7, 10);
INSERT INTO career_has_characteristic VALUES(84, 2, 10);
INSERT INTO career_has_characteristic VALUES(84, 3, 10);
INSERT INTO career_has_characteristic VALUES(84, 6, 2);
INSERT INTO career_has_characteristic VALUES(84, 7, 10);
INSERT INTO career_has_characteristic VALUES(84, 9, 10);
INSERT INTO career_has_characteristic VALUES(84, 14, 10);
INSERT INTO career_has_characteristic VALUES(85, 2, 10);
INSERT INTO career_has_characteristic VALUES(85, 3, 10);
INSERT INTO career_has_characteristic VALUES(85, 6, 2);
INSERT INTO career_has_characteristic VALUES(85, 7, 10);
INSERT INTO career_has_characteristic VALUES(85, 9, 10);
INSERT INTO career_has_characteristic VALUES(85, 14, 10);
INSERT INTO career_has_characteristic VALUES(86, 2, 10);
INSERT INTO career_has_characteristic VALUES(86, 3, 10);
INSERT INTO career_has_characteristic VALUES(86, 6, 2);
INSERT INTO career_has_characteristic VALUES(86, 7, 10);
INSERT INTO career_has_characteristic VALUES(86, 9, 10);
INSERT INTO career_has_characteristic VALUES(86, 14, 10);
INSERT INTO career_has_characteristic VALUES(87, 2, 10);
INSERT INTO career_has_characteristic VALUES(87, 3, 10);
INSERT INTO career_has_characteristic VALUES(87, 6, 2);
INSERT INTO career_has_characteristic VALUES(87, 7, 10);
INSERT INTO career_has_characteristic VALUES(87, 9, 10);
INSERT INTO career_has_characteristic VALUES(87, 14, 10);
INSERT INTO career_has_characteristic VALUES(88, 2, 10);
INSERT INTO career_has_characteristic VALUES(88, 3, 10);
INSERT INTO career_has_characteristic VALUES(88, 6, 2);
INSERT INTO career_has_characteristic VALUES(88, 7, 10);
INSERT INTO career_has_characteristic VALUES(88, 9, 10);
INSERT INTO career_has_characteristic VALUES(88, 14, 10);
INSERT INTO career_has_characteristic VALUES(145, 6, 1);
INSERT INTO career_has_characteristic VALUES(145, 7, 10);
INSERT INTO career_has_characteristic VALUES(145, 9, 10);
INSERT INTO career_has_characteristic VALUES(145, 12, 10);
INSERT INTO career_has_characteristic VALUES(146, 6, 1);
INSERT INTO career_has_characteristic VALUES(146, 7, 10);
INSERT INTO career_has_characteristic VALUES(146, 9, 10);
INSERT INTO career_has_characteristic VALUES(146, 12, 10);
INSERT INTO career_has_characteristic VALUES(147, 6, 1);
INSERT INTO career_has_characteristic VALUES(147, 7, 10);
INSERT INTO career_has_characteristic VALUES(147, 9, 10);
INSERT INTO career_has_characteristic VALUES(147, 12, 10);
INSERT INTO career_has_characteristic VALUES(148, 6, 1);
INSERT INTO career_has_characteristic VALUES(148, 7, 10);
INSERT INTO career_has_characteristic VALUES(148, 9, 10);
INSERT INTO career_has_characteristic VALUES(148, 12, 10);
INSERT INTO career_has_characteristic VALUES(149, 6, 1);
INSERT INTO career_has_characteristic VALUES(149, 7, 10);
INSERT INTO career_has_characteristic VALUES(149, 9, 10);
INSERT INTO career_has_characteristic VALUES(149, 12, 10);
INSERT INTO career_has_characteristic VALUES(150, 6, 1);
INSERT INTO career_has_characteristic VALUES(150, 7, 10);
INSERT INTO career_has_characteristic VALUES(150, 9, 10);
INSERT INTO career_has_characteristic VALUES(150, 12, 10);
INSERT INTO career_has_characteristic VALUES(151, 6, 1);
INSERT INTO career_has_characteristic VALUES(151, 7, 10);
INSERT INTO career_has_characteristic VALUES(151, 9, 10);
INSERT INTO career_has_characteristic VALUES(151, 12, 10);
INSERT INTO career_has_characteristic VALUES(152, 6, 1);
INSERT INTO career_has_characteristic VALUES(152, 7, 10);
INSERT INTO career_has_characteristic VALUES(152, 9, 10);
INSERT INTO career_has_characteristic VALUES(152, 12, 10);
INSERT INTO career_has_characteristic VALUES(153, 6, 1);
INSERT INTO career_has_characteristic VALUES(153, 7, 10);
INSERT INTO career_has_characteristic VALUES(153, 9, 10);
INSERT INTO career_has_characteristic VALUES(153, 12, 10);
INSERT INTO career_has_characteristic VALUES(154, 6, 1);
INSERT INTO career_has_characteristic VALUES(154, 7, 10);
INSERT INTO career_has_characteristic VALUES(154, 9, 10);
INSERT INTO career_has_characteristic VALUES(154, 12, 10);
INSERT INTO career_has_characteristic VALUES(155, 6, 1);
INSERT INTO career_has_characteristic VALUES(155, 7, 10);
INSERT INTO career_has_characteristic VALUES(155, 9, 10);
INSERT INTO career_has_characteristic VALUES(155, 12, 10);
INSERT INTO career_has_characteristic VALUES(156, 6, 1);
INSERT INTO career_has_characteristic VALUES(156, 7, 10);
INSERT INTO career_has_characteristic VALUES(156, 9, 10);
INSERT INTO career_has_characteristic VALUES(156, 12, 10);
INSERT INTO career_has_characteristic VALUES(157, 6, 1);
INSERT INTO career_has_characteristic VALUES(157, 7, 10);
INSERT INTO career_has_characteristic VALUES(157, 9, 10);
INSERT INTO career_has_characteristic VALUES(157, 12, 10);
INSERT INTO career_has_characteristic VALUES(158, 6, 1);
INSERT INTO career_has_characteristic VALUES(158, 7, 10);
INSERT INTO career_has_characteristic VALUES(158, 9, 10);
INSERT INTO career_has_characteristic VALUES(158, 12, 10);
INSERT INTO career_has_characteristic VALUES(159, 6, 1);
INSERT INTO career_has_characteristic VALUES(159, 7, 10);
INSERT INTO career_has_characteristic VALUES(159, 9, 10);
INSERT INTO career_has_characteristic VALUES(159, 12, 10);
INSERT INTO career_has_characteristic VALUES(160, 6, 1);
INSERT INTO career_has_characteristic VALUES(160, 7, 10);
INSERT INTO career_has_characteristic VALUES(160, 9, 10);
INSERT INTO career_has_characteristic VALUES(160, 12, 10);
INSERT INTO career_has_characteristic VALUES(161, 6, 1);
INSERT INTO career_has_characteristic VALUES(161, 7, 10);
INSERT INTO career_has_characteristic VALUES(161, 9, 10);
INSERT INTO career_has_characteristic VALUES(161, 12, 10);
INSERT INTO career_has_characteristic VALUES(162, 6, 1);
INSERT INTO career_has_characteristic VALUES(162, 7, 10);
INSERT INTO career_has_characteristic VALUES(162, 9, 10);
INSERT INTO career_has_characteristic VALUES(162, 12, 10);
INSERT INTO career_has_characteristic VALUES(163, 6, 1);
INSERT INTO career_has_characteristic VALUES(163, 7, 10);
INSERT INTO career_has_characteristic VALUES(163, 9, 10);
INSERT INTO career_has_characteristic VALUES(163, 12, 10);
INSERT INTO career_has_characteristic VALUES(166, 2, 10);
INSERT INTO career_has_characteristic VALUES(166, 3, 10);
INSERT INTO career_has_characteristic VALUES(166, 6, 2);
INSERT INTO career_has_characteristic VALUES(166, 9, 10);
INSERT INTO career_has_characteristic VALUES(166, 14, 10);
INSERT INTO career_has_characteristic VALUES(175, 6, 2);
INSERT INTO career_has_characteristic VALUES(175, 7, 10);
INSERT INTO career_has_characteristic VALUES(175, 9, 10);
INSERT INTO career_has_characteristic VALUES(175, 11, 10);
INSERT INTO career_has_characteristic VALUES(176, 2, 10);
INSERT INTO career_has_characteristic VALUES(176, 3, 10);
INSERT INTO career_has_characteristic VALUES(176, 4, 1);
INSERT INTO career_has_characteristic VALUES(176, 5, 1);
INSERT INTO career_has_characteristic VALUES(176, 6, 3);
INSERT INTO career_has_characteristic VALUES(176, 7, 20);
INSERT INTO career_has_characteristic VALUES(176, 9, 20);
INSERT INTO career_has_characteristic VALUES(176, 10, 10);
INSERT INTO career_has_characteristic VALUES(176, 11, 20);
INSERT INTO career_has_characteristic VALUES(176, 12, 10);
INSERT INTO career_has_characteristic VALUES(176, 13, 10);
INSERT INTO career_has_characteristic VALUES(177, 2, 10);
INSERT INTO career_has_characteristic VALUES(177, 3, 10);
INSERT INTO career_has_characteristic VALUES(177, 4, 1);
INSERT INTO career_has_characteristic VALUES(177, 5, 1);
INSERT INTO career_has_characteristic VALUES(177, 6, 4);
INSERT INTO career_has_characteristic VALUES(177, 7, 30);
INSERT INTO career_has_characteristic VALUES(177, 9, 30);
INSERT INTO career_has_characteristic VALUES(177, 10, 20);
INSERT INTO career_has_characteristic VALUES(177, 11, 30);
INSERT INTO career_has_characteristic VALUES(177, 12, 20);
INSERT INTO career_has_characteristic VALUES(177, 13, 20);
INSERT INTO career_has_characteristic VALUES(178, 2, 10);
INSERT INTO career_has_characteristic VALUES(178, 3, 10);
INSERT INTO career_has_characteristic VALUES(178, 4, 1);
INSERT INTO career_has_characteristic VALUES(178, 5, 1);
INSERT INTO career_has_characteristic VALUES(178, 6, 4);
INSERT INTO career_has_characteristic VALUES(178, 7, 40);
INSERT INTO career_has_characteristic VALUES(178, 9, 40);
INSERT INTO career_has_characteristic VALUES(178, 10, 30);
INSERT INTO career_has_characteristic VALUES(178, 11, 30);
INSERT INTO career_has_characteristic VALUES(178, 12, 30);
INSERT INTO career_has_characteristic VALUES(178, 13, 30);
INSERT INTO career_has_characteristic VALUES(89, 2, 30);
INSERT INTO career_has_characteristic VALUES(89, 3, 30);
INSERT INTO career_has_characteristic VALUES(89, 4, 1);
INSERT INTO career_has_characteristic VALUES(89, 5, 1);
INSERT INTO career_has_characteristic VALUES(89, 6, 6);
INSERT INTO career_has_characteristic VALUES(89, 7, 30);
INSERT INTO career_has_characteristic VALUES(89, 8, 3);
INSERT INTO career_has_characteristic VALUES(89, 9, 30);
INSERT INTO career_has_characteristic VALUES(89, 10, 20);
INSERT INTO career_has_characteristic VALUES(89, 11, 20);
INSERT INTO career_has_characteristic VALUES(89, 12, 20);
INSERT INTO career_has_characteristic VALUES(89, 13, 20);
INSERT INTO career_has_characteristic VALUES(89, 14, 20);
INSERT INTO career_has_characteristic VALUES(90, 5, 1);
INSERT INTO career_has_characteristic VALUES(90, 6, 2);
INSERT INTO career_has_characteristic VALUES(90, 7, 10);
INSERT INTO career_has_characteristic VALUES(90, 9, 10);
INSERT INTO career_has_characteristic VALUES(90, 10, 30);
INSERT INTO career_has_characteristic VALUES(90, 11, 40);
INSERT INTO career_has_characteristic VALUES(90, 12, 30);
INSERT INTO career_has_characteristic VALUES(90, 13, 30);
INSERT INTO career_has_characteristic VALUES(90, 14, 10);
INSERT INTO career_has_characteristic VALUES(91, 2, 20);
INSERT INTO career_has_characteristic VALUES(91, 3, 20);
INSERT INTO career_has_characteristic VALUES(91, 4, 1);
INSERT INTO career_has_characteristic VALUES(91, 5, 1);
INSERT INTO career_has_characteristic VALUES(91, 6, 2);
INSERT INTO career_has_characteristic VALUES(91, 7, 40);
INSERT INTO career_has_characteristic VALUES(91, 8, 1);
INSERT INTO career_has_characteristic VALUES(91, 9, 30);
INSERT INTO career_has_characteristic VALUES(91, 11, 20);
INSERT INTO career_has_characteristic VALUES(91, 12, 20);
INSERT INTO career_has_characteristic VALUES(91, 13, 20);
INSERT INTO career_has_characteristic VALUES(91, 14, 30);
INSERT INTO career_has_characteristic VALUES(92, 2, 10);
INSERT INTO career_has_characteristic VALUES(92, 4, 2);
INSERT INTO career_has_characteristic VALUES(92, 6, 4);
INSERT INTO career_has_characteristic VALUES(92, 7, 10);
INSERT INTO career_has_characteristic VALUES(92, 9, 10);
INSERT INTO career_has_characteristic VALUES(92, 10, 10);
INSERT INTO career_has_characteristic VALUES(92, 11, 10);
INSERT INTO career_has_characteristic VALUES(92, 12, 10);
INSERT INTO career_has_characteristic VALUES(92, 13, 20);
INSERT INTO career_has_characteristic VALUES(93, 2, 30);
INSERT INTO career_has_characteristic VALUES(93, 3, 20);
INSERT INTO career_has_characteristic VALUES(93, 4, 1);
INSERT INTO career_has_characteristic VALUES(93, 5, 1);
INSERT INTO career_has_characteristic VALUES(93, 6, 6);
INSERT INTO career_has_characteristic VALUES(93, 7, 20);
INSERT INTO career_has_characteristic VALUES(93, 8, 2);
INSERT INTO career_has_characteristic VALUES(93, 9, 30);
INSERT INTO career_has_characteristic VALUES(93, 10, 30);
INSERT INTO career_has_characteristic VALUES(93, 11, 20);
INSERT INTO career_has_characteristic VALUES(93, 12, 30);
INSERT INTO career_has_characteristic VALUES(93, 13, 20);
INSERT INTO career_has_characteristic VALUES(93, 14, 30);
INSERT INTO career_has_characteristic VALUES(95, 2, 30);
INSERT INTO career_has_characteristic VALUES(95, 3, 30);
INSERT INTO career_has_characteristic VALUES(95, 4, 2);
INSERT INTO career_has_characteristic VALUES(95, 5, 2);
INSERT INTO career_has_characteristic VALUES(95, 6, 6);
INSERT INTO career_has_characteristic VALUES(95, 7, 20);
INSERT INTO career_has_characteristic VALUES(95, 8, 2);
INSERT INTO career_has_characteristic VALUES(95, 9, 10);
INSERT INTO career_has_characteristic VALUES(95, 10, 40);
INSERT INTO career_has_characteristic VALUES(95, 11, 10);
INSERT INTO career_has_characteristic VALUES(95, 12, 30);
INSERT INTO career_has_characteristic VALUES(95, 13, 10);
INSERT INTO career_has_characteristic VALUES(95, 14, 20);
INSERT INTO career_has_characteristic VALUES(94, 2, 20);
INSERT INTO career_has_characteristic VALUES(94, 3, 10);
INSERT INTO career_has_characteristic VALUES(94, 4, 1);
INSERT INTO career_has_characteristic VALUES(94, 5, 1);
INSERT INTO career_has_characteristic VALUES(94, 6, 4);
INSERT INTO career_has_characteristic VALUES(94, 7, 10);
INSERT INTO career_has_characteristic VALUES(94, 8, 1);
INSERT INTO career_has_characteristic VALUES(94, 9, 10);
INSERT INTO career_has_characteristic VALUES(94, 10, 10);
INSERT INTO career_has_characteristic VALUES(94, 11, 10);
INSERT INTO career_has_characteristic VALUES(94, 12, 10);
INSERT INTO career_has_characteristic VALUES(94, 13, 10);
INSERT INTO career_has_characteristic VALUES(94, 14, 10);
INSERT INTO career_has_characteristic VALUES(96, 2, 20);
INSERT INTO career_has_characteristic VALUES(96, 3, 20);
INSERT INTO career_has_characteristic VALUES(96, 4, 1);
INSERT INTO career_has_characteristic VALUES(96, 5, 1);
INSERT INTO career_has_characteristic VALUES(96, 6, 4);
INSERT INTO career_has_characteristic VALUES(96, 7, 20);
INSERT INTO career_has_characteristic VALUES(96, 8, 1);
INSERT INTO career_has_characteristic VALUES(96, 9, 10);
INSERT INTO career_has_characteristic VALUES(96, 10, 10);
INSERT INTO career_has_characteristic VALUES(96, 11, 10);
INSERT INTO career_has_characteristic VALUES(96, 12, 10);
INSERT INTO career_has_characteristic VALUES(96, 13, 10);
INSERT INTO career_has_characteristic VALUES(96, 14, 10);
INSERT INTO career_has_characteristic VALUES(97, 2, 40);
INSERT INTO career_has_characteristic VALUES(97, 4, 1);
INSERT INTO career_has_characteristic VALUES(97, 5, 1);
INSERT INTO career_has_characteristic VALUES(97, 6, 6);
INSERT INTO career_has_characteristic VALUES(97, 7, 20);
INSERT INTO career_has_characteristic VALUES(97, 8, 2);
INSERT INTO career_has_characteristic VALUES(97, 9, 10);
INSERT INTO career_has_characteristic VALUES(97, 11, 10);
INSERT INTO career_has_characteristic VALUES(97, 12, 10);
INSERT INTO career_has_characteristic VALUES(98, 2, 10);
INSERT INTO career_has_characteristic VALUES(98, 3, 10);
INSERT INTO career_has_characteristic VALUES(98, 5, 1);
INSERT INTO career_has_characteristic VALUES(98, 6, 4);
INSERT INTO career_has_characteristic VALUES(98, 7, 20);
INSERT INTO career_has_characteristic VALUES(98, 9, 20);
INSERT INTO career_has_characteristic VALUES(98, 10, 20);
INSERT INTO career_has_characteristic VALUES(98, 11, 20);
INSERT INTO career_has_characteristic VALUES(98, 12, 20);
INSERT INTO career_has_characteristic VALUES(98, 13, 20);
INSERT INTO career_has_characteristic VALUES(98, 14, 30);
INSERT INTO career_has_characteristic VALUES(99, 2, 20);
INSERT INTO career_has_characteristic VALUES(99, 3, 30);
INSERT INTO career_has_characteristic VALUES(99, 4, 1);
INSERT INTO career_has_characteristic VALUES(99, 5, 3);
INSERT INTO career_has_characteristic VALUES(99, 6, 5);
INSERT INTO career_has_characteristic VALUES(99, 7, 20);
INSERT INTO career_has_characteristic VALUES(99, 8, 2);
INSERT INTO career_has_characteristic VALUES(99, 9, 10);
INSERT INTO career_has_characteristic VALUES(99, 10, 30);
INSERT INTO career_has_characteristic VALUES(99, 11, 10);
INSERT INTO career_has_characteristic VALUES(99, 12, 10);
INSERT INTO career_has_characteristic VALUES(99, 14, 10);
INSERT INTO career_has_characteristic VALUES(100, 2, 10);
INSERT INTO career_has_characteristic VALUES(100, 3, 20);
INSERT INTO career_has_characteristic VALUES(100, 4, 1);
INSERT INTO career_has_characteristic VALUES(100, 5, 1);
INSERT INTO career_has_characteristic VALUES(100, 6, 2);
INSERT INTO career_has_characteristic VALUES(100, 7, 20);
INSERT INTO career_has_characteristic VALUES(100, 9, 10);
INSERT INTO career_has_characteristic VALUES(100, 10, 10);
INSERT INTO career_has_characteristic VALUES(100, 11, 20);
INSERT INTO career_has_characteristic VALUES(100, 12, 10);
INSERT INTO career_has_characteristic VALUES(100, 13, 10);
INSERT INTO career_has_characteristic VALUES(101, 2, 10);
INSERT INTO career_has_characteristic VALUES(101, 3, 20);
INSERT INTO career_has_characteristic VALUES(101, 4, 1);
INSERT INTO career_has_characteristic VALUES(101, 5, 1);
INSERT INTO career_has_characteristic VALUES(101, 6, 2);
INSERT INTO career_has_characteristic VALUES(101, 7, 20);
INSERT INTO career_has_characteristic VALUES(101, 9, 10);
INSERT INTO career_has_characteristic VALUES(101, 10, 30);
INSERT INTO career_has_characteristic VALUES(101, 11, 10);
INSERT INTO career_has_characteristic VALUES(101, 12, 20);
INSERT INTO career_has_characteristic VALUES(101, 13, 10);
INSERT INTO career_has_characteristic VALUES(101, 14, 10);
INSERT INTO career_has_characteristic VALUES(102, 2, 10);
INSERT INTO career_has_characteristic VALUES(102, 3, 10);
INSERT INTO career_has_characteristic VALUES(102, 4, 1);
INSERT INTO career_has_characteristic VALUES(102, 5, 1);
INSERT INTO career_has_characteristic VALUES(102, 6, 2);
INSERT INTO career_has_characteristic VALUES(102, 9, 10);
INSERT INTO career_has_characteristic VALUES(102, 10, 20);
INSERT INTO career_has_characteristic VALUES(102, 11, 10);
INSERT INTO career_has_characteristic VALUES(102, 12, 10);
INSERT INTO career_has_characteristic VALUES(103, 2, 30);
INSERT INTO career_has_characteristic VALUES(103, 4, 3);
INSERT INTO career_has_characteristic VALUES(103, 5, 1);
INSERT INTO career_has_characteristic VALUES(103, 6, 4);
INSERT INTO career_has_characteristic VALUES(103, 7, 20);
INSERT INTO career_has_characteristic VALUES(103, 8, 2);
INSERT INTO career_has_characteristic VALUES(103, 10, 30);
INSERT INTO career_has_characteristic VALUES(103, 11, 10);
INSERT INTO career_has_characteristic VALUES(103, 12, 30);
INSERT INTO career_has_characteristic VALUES(103, 14, 10);
INSERT INTO career_has_characteristic VALUES(168, 6, 2);
INSERT INTO career_has_characteristic VALUES(168, 7, 10);
INSERT INTO career_has_characteristic VALUES(168, 13, 10);
INSERT INTO career_has_characteristic VALUES(168, 14, 10);
INSERT INTO career_has_characteristic VALUES(169, 2, 10);
INSERT INTO career_has_characteristic VALUES(169, 3, 10);
INSERT INTO career_has_characteristic VALUES(169, 4, 1);
INSERT INTO career_has_characteristic VALUES(169, 5, 1);
INSERT INTO career_has_characteristic VALUES(169, 6, 3);
INSERT INTO career_has_characteristic VALUES(169, 7, 20);
INSERT INTO career_has_characteristic VALUES(169, 9, 10);
INSERT INTO career_has_characteristic VALUES(169, 10, 10);
INSERT INTO career_has_characteristic VALUES(169, 11, 10);
INSERT INTO career_has_characteristic VALUES(169, 12, 10);
INSERT INTO career_has_characteristic VALUES(169, 13, 20);
INSERT INTO career_has_characteristic VALUES(169, 14, 10);
INSERT INTO career_has_characteristic VALUES(170, 2, 10);
INSERT INTO career_has_characteristic VALUES(170, 3, 10);
INSERT INTO career_has_characteristic VALUES(170, 4, 1);
INSERT INTO career_has_characteristic VALUES(170, 5, 1);
INSERT INTO career_has_characteristic VALUES(170, 6, 4);
INSERT INTO career_has_characteristic VALUES(170, 7, 20);
INSERT INTO career_has_characteristic VALUES(170, 9, 20);
INSERT INTO career_has_characteristic VALUES(170, 10, 20);
INSERT INTO career_has_characteristic VALUES(170, 11, 20);
INSERT INTO career_has_characteristic VALUES(170, 12, 20);
INSERT INTO career_has_characteristic VALUES(170, 13, 30);
INSERT INTO career_has_characteristic VALUES(170, 14, 20);
INSERT INTO career_has_characteristic VALUES(171, 2, 10);
INSERT INTO career_has_characteristic VALUES(171, 3, 10);
INSERT INTO career_has_characteristic VALUES(171, 4, 1);
INSERT INTO career_has_characteristic VALUES(171, 5, 1);
INSERT INTO career_has_characteristic VALUES(171, 6, 4);
INSERT INTO career_has_characteristic VALUES(171, 7, 30);
INSERT INTO career_has_characteristic VALUES(171, 9, 30);
INSERT INTO career_has_characteristic VALUES(171, 10, 30);
INSERT INTO career_has_characteristic VALUES(171, 11, 30);
INSERT INTO career_has_characteristic VALUES(171, 12, 30);
INSERT INTO career_has_characteristic VALUES(171, 13, 30);
INSERT INTO career_has_characteristic VALUES(171, 14, 30);
INSERT INTO career_has_characteristic VALUES(105, 2, 10);
INSERT INTO career_has_characteristic VALUES(105, 3, 10);
INSERT INTO career_has_characteristic VALUES(105, 5, 1);
INSERT INTO career_has_characteristic VALUES(105, 6, 3);
INSERT INTO career_has_characteristic VALUES(105, 7, 20);
INSERT INTO career_has_characteristic VALUES(105, 8, 1);
INSERT INTO career_has_characteristic VALUES(105, 10, 30);
INSERT INTO career_has_characteristic VALUES(105, 11, 10);
INSERT INTO career_has_characteristic VALUES(105, 12, 20);
INSERT INTO career_has_characteristic VALUES(105, 13, 20);
INSERT INTO career_has_characteristic VALUES(105, 14, 40);
INSERT INTO career_has_characteristic VALUES(179, 6, 2);
INSERT INTO career_has_characteristic VALUES(179, 7, 10);
INSERT INTO career_has_characteristic VALUES(179, 13, 10);
INSERT INTO career_has_characteristic VALUES(180, 2, 10);
INSERT INTO career_has_characteristic VALUES(180, 3, 10);
INSERT INTO career_has_characteristic VALUES(180, 4, 1);
INSERT INTO career_has_characteristic VALUES(180, 5, 1);
INSERT INTO career_has_characteristic VALUES(180, 6, 3);
INSERT INTO career_has_characteristic VALUES(180, 7, 20);
INSERT INTO career_has_characteristic VALUES(180, 9, 10);
INSERT INTO career_has_characteristic VALUES(180, 10, 10);
INSERT INTO career_has_characteristic VALUES(180, 11, 10);
INSERT INTO career_has_characteristic VALUES(180, 12, 10);
INSERT INTO career_has_characteristic VALUES(180, 13, 20);
INSERT INTO career_has_characteristic VALUES(180, 14, 10);
INSERT INTO career_has_characteristic VALUES(181, 2, 10);
INSERT INTO career_has_characteristic VALUES(181, 3, 10);
INSERT INTO career_has_characteristic VALUES(181, 4, 1);
INSERT INTO career_has_characteristic VALUES(181, 5, 1);
INSERT INTO career_has_characteristic VALUES(181, 6, 4);
INSERT INTO career_has_characteristic VALUES(181, 7, 20);
INSERT INTO career_has_characteristic VALUES(181, 9, 20);
INSERT INTO career_has_characteristic VALUES(181, 10, 20);
INSERT INTO career_has_characteristic VALUES(181, 11, 30);
INSERT INTO career_has_characteristic VALUES(181, 12, 20);
INSERT INTO career_has_characteristic VALUES(181, 13, 20);
INSERT INTO career_has_characteristic VALUES(181, 14, 20);
INSERT INTO career_has_characteristic VALUES(182, 2, 10);
INSERT INTO career_has_characteristic VALUES(182, 3, 10);
INSERT INTO career_has_characteristic VALUES(182, 4, 1);
INSERT INTO career_has_characteristic VALUES(182, 5, 1);
INSERT INTO career_has_characteristic VALUES(182, 6, 4);
INSERT INTO career_has_characteristic VALUES(182, 7, 30);
INSERT INTO career_has_characteristic VALUES(182, 9, 30);
INSERT INTO career_has_characteristic VALUES(182, 10, 30);
INSERT INTO career_has_characteristic VALUES(182, 11, 30);
INSERT INTO career_has_characteristic VALUES(182, 12, 30);
INSERT INTO career_has_characteristic VALUES(182, 13, 30);
INSERT INTO career_has_characteristic VALUES(182, 14, 30);
INSERT INTO career_has_characteristic VALUES(107, 2, 30);
INSERT INTO career_has_characteristic VALUES(107, 3, 30);
INSERT INTO career_has_characteristic VALUES(107, 4, 1);
INSERT INTO career_has_characteristic VALUES(107, 5, 3);
INSERT INTO career_has_characteristic VALUES(107, 6, 3);
INSERT INTO career_has_characteristic VALUES(107, 7, 20);
INSERT INTO career_has_characteristic VALUES(107, 8, 1);
INSERT INTO career_has_characteristic VALUES(107, 10, 10);
INSERT INTO career_has_characteristic VALUES(107, 11, 30);
INSERT INTO career_has_characteristic VALUES(107, 12, 30);
INSERT INTO career_has_characteristic VALUES(107, 13, 20);
INSERT INTO career_has_characteristic VALUES(108, 2, 20);
INSERT INTO career_has_characteristic VALUES(108, 3, 20);
INSERT INTO career_has_characteristic VALUES(108, 4, 1);
INSERT INTO career_has_characteristic VALUES(108, 5, 1);
INSERT INTO career_has_characteristic VALUES(108, 6, 6);
INSERT INTO career_has_characteristic VALUES(108, 7, 20);
INSERT INTO career_has_characteristic VALUES(108, 8, 1);
INSERT INTO career_has_characteristic VALUES(108, 9, 10);
INSERT INTO career_has_characteristic VALUES(108, 10, 10);
INSERT INTO career_has_characteristic VALUES(108, 11, 10);
INSERT INTO career_has_characteristic VALUES(108, 12, 10);
INSERT INTO career_has_characteristic VALUES(108, 13, 10);
INSERT INTO career_has_characteristic VALUES(109, 2, 10);
INSERT INTO career_has_characteristic VALUES(109, 3, 10);
INSERT INTO career_has_characteristic VALUES(109, 6, 2);
INSERT INTO career_has_characteristic VALUES(109, 7, 30);
INSERT INTO career_has_characteristic VALUES(109, 9, 10);
INSERT INTO career_has_characteristic VALUES(109, 11, 30);
INSERT INTO career_has_characteristic VALUES(109, 12, 10);
INSERT INTO career_has_characteristic VALUES(109, 13, 30);
INSERT INTO career_has_characteristic VALUES(109, 14, 10);
INSERT INTO career_has_characteristic VALUES(110, 2, 20);
INSERT INTO career_has_characteristic VALUES(110, 3, 20);
INSERT INTO career_has_characteristic VALUES(110, 5, 1);
INSERT INTO career_has_characteristic VALUES(110, 6, 4);
INSERT INTO career_has_characteristic VALUES(110, 7, 20);
INSERT INTO career_has_characteristic VALUES(110, 8, 1);
INSERT INTO career_has_characteristic VALUES(110, 9, 20);
INSERT INTO career_has_characteristic VALUES(110, 10, 10);
INSERT INTO career_has_characteristic VALUES(110, 11, 20);
INSERT INTO career_has_characteristic VALUES(110, 12, 40);
INSERT INTO career_has_characteristic VALUES(110, 14, 20);
INSERT INTO career_has_characteristic VALUES(111, 2, 20);
INSERT INTO career_has_characteristic VALUES(111, 3, 20);
INSERT INTO career_has_characteristic VALUES(111, 4, 1);
INSERT INTO career_has_characteristic VALUES(111, 5, 1);
INSERT INTO career_has_characteristic VALUES(111, 6, 6);
INSERT INTO career_has_characteristic VALUES(111, 8, 1);
INSERT INTO career_has_characteristic VALUES(111, 9, 20);
INSERT INTO career_has_characteristic VALUES(111, 10, 20);
INSERT INTO career_has_characteristic VALUES(111, 11, 30);
INSERT INTO career_has_characteristic VALUES(111, 12, 20);
INSERT INTO career_has_characteristic VALUES(111, 13, 20);
INSERT INTO career_has_characteristic VALUES(111, 14, 20);
INSERT INTO career_has_characteristic VALUES(112, 2, 20);
INSERT INTO career_has_characteristic VALUES(112, 3, 20);
INSERT INTO career_has_characteristic VALUES(112, 4, 1);
INSERT INTO career_has_characteristic VALUES(112, 5, 1);
INSERT INTO career_has_characteristic VALUES(112, 6, 3);
INSERT INTO career_has_characteristic VALUES(112, 7, 10);
INSERT INTO career_has_characteristic VALUES(112, 8, 1);
INSERT INTO career_has_characteristic VALUES(112, 9, 40);
INSERT INTO career_has_characteristic VALUES(112, 10, 10);
INSERT INTO career_has_characteristic VALUES(112, 11, 30);
INSERT INTO career_has_characteristic VALUES(112, 12, 30);
INSERT INTO career_has_characteristic VALUES(112, 13, 20);
INSERT INTO career_has_characteristic VALUES(112, 14, 20);
INSERT INTO career_has_characteristic VALUES(113, 2, 20);
INSERT INTO career_has_characteristic VALUES(113, 3, 20);
INSERT INTO career_has_characteristic VALUES(113, 4, 1);
INSERT INTO career_has_characteristic VALUES(113, 6, 3);
INSERT INTO career_has_characteristic VALUES(113, 7, 20);
INSERT INTO career_has_characteristic VALUES(113, 9, 20);
INSERT INTO career_has_characteristic VALUES(113, 10, 10);
INSERT INTO career_has_characteristic VALUES(113, 11, 10);
INSERT INTO career_has_characteristic VALUES(113, 12, 10);
INSERT INTO career_has_characteristic VALUES(113, 13, 10);
INSERT INTO career_has_characteristic VALUES(113, 14, 10);
INSERT INTO career_has_characteristic VALUES(114, 3, 40);
INSERT INTO career_has_characteristic VALUES(114, 4, 1);
INSERT INTO career_has_characteristic VALUES(114, 5, 1);
INSERT INTO career_has_characteristic VALUES(114, 6, 4);
INSERT INTO career_has_characteristic VALUES(114, 7, 20);
INSERT INTO career_has_characteristic VALUES(114, 8, 1);
INSERT INTO career_has_characteristic VALUES(114, 9, 30);
INSERT INTO career_has_characteristic VALUES(114, 10, 10);
INSERT INTO career_has_characteristic VALUES(114, 11, 10);
INSERT INTO career_has_characteristic VALUES(114, 12, 30);
INSERT INTO career_has_characteristic VALUES(114, 13, 10);
INSERT INTO career_has_characteristic VALUES(114, 14, 20);
INSERT INTO career_has_characteristic VALUES(164, 4, 1);
INSERT INTO career_has_characteristic VALUES(164, 5, 1);
INSERT INTO career_has_characteristic VALUES(164, 6, 2);
INSERT INTO career_has_characteristic VALUES(164, 7, 20);
INSERT INTO career_has_characteristic VALUES(164, 9, 20);
INSERT INTO career_has_characteristic VALUES(164, 10, 10);
INSERT INTO career_has_characteristic VALUES(164, 12, 10);
INSERT INTO career_has_characteristic VALUES(164, 13, 10);
INSERT INTO career_has_characteristic VALUES(164, 14, 10);
INSERT INTO career_has_characteristic VALUES(115, 4, 1);
INSERT INTO career_has_characteristic VALUES(115, 5, 1);
INSERT INTO career_has_characteristic VALUES(115, 6, 2);
INSERT INTO career_has_characteristic VALUES(115, 7, 20);
INSERT INTO career_has_characteristic VALUES(115, 9, 20);
INSERT INTO career_has_characteristic VALUES(115, 10, 10);
INSERT INTO career_has_characteristic VALUES(115, 12, 10);
INSERT INTO career_has_characteristic VALUES(115, 13, 10);
INSERT INTO career_has_characteristic VALUES(115, 14, 10);
INSERT INTO career_has_characteristic VALUES(116, 4, 1);
INSERT INTO career_has_characteristic VALUES(116, 5, 1);
INSERT INTO career_has_characteristic VALUES(116, 6, 2);
INSERT INTO career_has_characteristic VALUES(116, 7, 20);
INSERT INTO career_has_characteristic VALUES(116, 9, 20);
INSERT INTO career_has_characteristic VALUES(116, 10, 10);
INSERT INTO career_has_characteristic VALUES(116, 12, 10);
INSERT INTO career_has_characteristic VALUES(116, 13, 10);
INSERT INTO career_has_characteristic VALUES(116, 14, 10);
INSERT INTO career_has_characteristic VALUES(117, 4, 1);
INSERT INTO career_has_characteristic VALUES(117, 5, 1);
INSERT INTO career_has_characteristic VALUES(117, 6, 2);
INSERT INTO career_has_characteristic VALUES(117, 7, 20);
INSERT INTO career_has_characteristic VALUES(117, 9, 20);
INSERT INTO career_has_characteristic VALUES(117, 10, 10);
INSERT INTO career_has_characteristic VALUES(117, 12, 10);
INSERT INTO career_has_characteristic VALUES(117, 13, 10);
INSERT INTO career_has_characteristic VALUES(117, 14, 10);
INSERT INTO career_has_characteristic VALUES(133, 4, 1);
INSERT INTO career_has_characteristic VALUES(133, 5, 1);
INSERT INTO career_has_characteristic VALUES(133, 6, 2);
INSERT INTO career_has_characteristic VALUES(133, 7, 20);
INSERT INTO career_has_characteristic VALUES(133, 9, 20);
INSERT INTO career_has_characteristic VALUES(133, 10, 10);
INSERT INTO career_has_characteristic VALUES(133, 12, 10);
INSERT INTO career_has_characteristic VALUES(133, 13, 10);
INSERT INTO career_has_characteristic VALUES(133, 14, 10);
INSERT INTO career_has_characteristic VALUES(118, 4, 1);
INSERT INTO career_has_characteristic VALUES(118, 5, 1);
INSERT INTO career_has_characteristic VALUES(118, 6, 2);
INSERT INTO career_has_characteristic VALUES(118, 7, 20);
INSERT INTO career_has_characteristic VALUES(118, 9, 20);
INSERT INTO career_has_characteristic VALUES(118, 10, 10);
INSERT INTO career_has_characteristic VALUES(118, 12, 10);
INSERT INTO career_has_characteristic VALUES(118, 13, 10);
INSERT INTO career_has_characteristic VALUES(118, 14, 10);
INSERT INTO career_has_characteristic VALUES(119, 4, 1);
INSERT INTO career_has_characteristic VALUES(119, 5, 1);
INSERT INTO career_has_characteristic VALUES(119, 6, 2);
INSERT INTO career_has_characteristic VALUES(119, 7, 20);
INSERT INTO career_has_characteristic VALUES(119, 9, 20);
INSERT INTO career_has_characteristic VALUES(119, 10, 10);
INSERT INTO career_has_characteristic VALUES(119, 12, 10);
INSERT INTO career_has_characteristic VALUES(119, 13, 10);
INSERT INTO career_has_characteristic VALUES(119, 14, 10);
INSERT INTO career_has_characteristic VALUES(120, 4, 1);
INSERT INTO career_has_characteristic VALUES(120, 5, 1);
INSERT INTO career_has_characteristic VALUES(120, 6, 2);
INSERT INTO career_has_characteristic VALUES(120, 7, 20);
INSERT INTO career_has_characteristic VALUES(120, 9, 20);
INSERT INTO career_has_characteristic VALUES(120, 10, 10);
INSERT INTO career_has_characteristic VALUES(120, 12, 10);
INSERT INTO career_has_characteristic VALUES(120, 13, 10);
INSERT INTO career_has_characteristic VALUES(120, 14, 10);
INSERT INTO career_has_characteristic VALUES(121, 4, 1);
INSERT INTO career_has_characteristic VALUES(121, 5, 1);
INSERT INTO career_has_characteristic VALUES(121, 6, 2);
INSERT INTO career_has_characteristic VALUES(121, 7, 20);
INSERT INTO career_has_characteristic VALUES(121, 9, 20);
INSERT INTO career_has_characteristic VALUES(121, 10, 10);
INSERT INTO career_has_characteristic VALUES(121, 12, 10);
INSERT INTO career_has_characteristic VALUES(121, 13, 10);
INSERT INTO career_has_characteristic VALUES(121, 14, 10);
INSERT INTO career_has_characteristic VALUES(122, 4, 1);
INSERT INTO career_has_characteristic VALUES(122, 5, 1);
INSERT INTO career_has_characteristic VALUES(122, 6, 2);
INSERT INTO career_has_characteristic VALUES(122, 7, 20);
INSERT INTO career_has_characteristic VALUES(122, 9, 20);
INSERT INTO career_has_characteristic VALUES(122, 10, 10);
INSERT INTO career_has_characteristic VALUES(122, 12, 10);
INSERT INTO career_has_characteristic VALUES(122, 13, 10);
INSERT INTO career_has_characteristic VALUES(122, 14, 10);
INSERT INTO career_has_characteristic VALUES(123, 4, 1);
INSERT INTO career_has_characteristic VALUES(123, 5, 1);
INSERT INTO career_has_characteristic VALUES(123, 6, 2);
INSERT INTO career_has_characteristic VALUES(123, 7, 20);
INSERT INTO career_has_characteristic VALUES(123, 9, 20);
INSERT INTO career_has_characteristic VALUES(123, 10, 10);
INSERT INTO career_has_characteristic VALUES(123, 12, 10);
INSERT INTO career_has_characteristic VALUES(123, 13, 10);
INSERT INTO career_has_characteristic VALUES(123, 14, 10);
INSERT INTO career_has_characteristic VALUES(124, 4, 1);
INSERT INTO career_has_characteristic VALUES(124, 5, 1);
INSERT INTO career_has_characteristic VALUES(124, 6, 2);
INSERT INTO career_has_characteristic VALUES(124, 7, 20);
INSERT INTO career_has_characteristic VALUES(124, 9, 20);
INSERT INTO career_has_characteristic VALUES(124, 10, 10);
INSERT INTO career_has_characteristic VALUES(124, 12, 10);
INSERT INTO career_has_characteristic VALUES(124, 13, 10);
INSERT INTO career_has_characteristic VALUES(124, 14, 10);
INSERT INTO career_has_characteristic VALUES(125, 4, 1);
INSERT INTO career_has_characteristic VALUES(125, 5, 1);
INSERT INTO career_has_characteristic VALUES(125, 6, 2);
INSERT INTO career_has_characteristic VALUES(125, 7, 20);
INSERT INTO career_has_characteristic VALUES(125, 9, 20);
INSERT INTO career_has_characteristic VALUES(125, 10, 10);
INSERT INTO career_has_characteristic VALUES(125, 12, 10);
INSERT INTO career_has_characteristic VALUES(125, 13, 10);
INSERT INTO career_has_characteristic VALUES(125, 14, 10);
INSERT INTO career_has_characteristic VALUES(126, 4, 1);
INSERT INTO career_has_characteristic VALUES(126, 5, 1);
INSERT INTO career_has_characteristic VALUES(126, 6, 2);
INSERT INTO career_has_characteristic VALUES(126, 7, 20);
INSERT INTO career_has_characteristic VALUES(126, 9, 20);
INSERT INTO career_has_characteristic VALUES(126, 10, 10);
INSERT INTO career_has_characteristic VALUES(126, 12, 10);
INSERT INTO career_has_characteristic VALUES(126, 13, 10);
INSERT INTO career_has_characteristic VALUES(126, 14, 10);
INSERT INTO career_has_characteristic VALUES(127, 4, 1);
INSERT INTO career_has_characteristic VALUES(127, 5, 1);
INSERT INTO career_has_characteristic VALUES(127, 6, 2);
INSERT INTO career_has_characteristic VALUES(127, 7, 20);
INSERT INTO career_has_characteristic VALUES(127, 9, 20);
INSERT INTO career_has_characteristic VALUES(127, 10, 10);
INSERT INTO career_has_characteristic VALUES(127, 12, 10);
INSERT INTO career_has_characteristic VALUES(127, 13, 10);
INSERT INTO career_has_characteristic VALUES(127, 14, 10);
INSERT INTO career_has_characteristic VALUES(128, 4, 1);
INSERT INTO career_has_characteristic VALUES(128, 5, 1);
INSERT INTO career_has_characteristic VALUES(128, 6, 2);
INSERT INTO career_has_characteristic VALUES(128, 7, 20);
INSERT INTO career_has_characteristic VALUES(128, 9, 20);
INSERT INTO career_has_characteristic VALUES(128, 10, 10);
INSERT INTO career_has_characteristic VALUES(128, 12, 10);
INSERT INTO career_has_characteristic VALUES(128, 13, 10);
INSERT INTO career_has_characteristic VALUES(128, 14, 10);
INSERT INTO career_has_characteristic VALUES(129, 4, 1);
INSERT INTO career_has_characteristic VALUES(129, 5, 1);
INSERT INTO career_has_characteristic VALUES(129, 6, 2);
INSERT INTO career_has_characteristic VALUES(129, 7, 20);
INSERT INTO career_has_characteristic VALUES(129, 9, 20);
INSERT INTO career_has_characteristic VALUES(129, 10, 10);
INSERT INTO career_has_characteristic VALUES(129, 12, 10);
INSERT INTO career_has_characteristic VALUES(129, 13, 10);
INSERT INTO career_has_characteristic VALUES(129, 14, 10);
INSERT INTO career_has_characteristic VALUES(130, 4, 1);
INSERT INTO career_has_characteristic VALUES(130, 5, 1);
INSERT INTO career_has_characteristic VALUES(130, 6, 2);
INSERT INTO career_has_characteristic VALUES(130, 7, 20);
INSERT INTO career_has_characteristic VALUES(130, 9, 20);
INSERT INTO career_has_characteristic VALUES(130, 10, 10);
INSERT INTO career_has_characteristic VALUES(130, 12, 10);
INSERT INTO career_has_characteristic VALUES(130, 13, 10);
INSERT INTO career_has_characteristic VALUES(130, 14, 10);
INSERT INTO career_has_characteristic VALUES(131, 4, 1);
INSERT INTO career_has_characteristic VALUES(131, 5, 1);
INSERT INTO career_has_characteristic VALUES(131, 6, 2);
INSERT INTO career_has_characteristic VALUES(131, 7, 20);
INSERT INTO career_has_characteristic VALUES(131, 9, 20);
INSERT INTO career_has_characteristic VALUES(131, 10, 10);
INSERT INTO career_has_characteristic VALUES(131, 12, 10);
INSERT INTO career_has_characteristic VALUES(131, 13, 10);
INSERT INTO career_has_characteristic VALUES(131, 14, 10);
INSERT INTO career_has_characteristic VALUES(132, 4, 1);
INSERT INTO career_has_characteristic VALUES(132, 5, 1);
INSERT INTO career_has_characteristic VALUES(132, 6, 2);
INSERT INTO career_has_characteristic VALUES(132, 7, 20);
INSERT INTO career_has_characteristic VALUES(132, 9, 20);
INSERT INTO career_has_characteristic VALUES(132, 10, 10);
INSERT INTO career_has_characteristic VALUES(132, 12, 10);
INSERT INTO career_has_characteristic VALUES(132, 13, 10);
INSERT INTO career_has_characteristic VALUES(132, 14, 10);
INSERT INTO career_has_characteristic VALUES(134, 2, 10);
INSERT INTO career_has_characteristic VALUES(134, 3, 10);
INSERT INTO career_has_characteristic VALUES(134, 4, 1);
INSERT INTO career_has_characteristic VALUES(134, 5, 1);
INSERT INTO career_has_characteristic VALUES(134, 6, 2);
INSERT INTO career_has_characteristic VALUES(134, 7, 20);
INSERT INTO career_has_characteristic VALUES(134, 9, 10);
INSERT INTO career_has_characteristic VALUES(134, 10, 30);
INSERT INTO career_has_characteristic VALUES(134, 11, 30);
INSERT INTO career_has_characteristic VALUES(134, 12, 20);
INSERT INTO career_has_characteristic VALUES(134, 13, 20);
INSERT INTO career_has_characteristic VALUES(134, 14, 20);
INSERT INTO career_has_characteristic VALUES(135, 2, 20);
INSERT INTO career_has_characteristic VALUES(135, 3, 20);
INSERT INTO career_has_characteristic VALUES(135, 4, 2);
INSERT INTO career_has_characteristic VALUES(135, 6, 4);
INSERT INTO career_has_characteristic VALUES(135, 7, 20);
INSERT INTO career_has_characteristic VALUES(135, 10, 10);
INSERT INTO career_has_characteristic VALUES(135, 12, 20);
INSERT INTO career_has_characteristic VALUES(135, 13, 10);
INSERT INTO career_has_characteristic VALUES(136, 2, 40);
INSERT INTO career_has_characteristic VALUES(136, 4, 3);
INSERT INTO career_has_characteristic VALUES(136, 5, 3);
INSERT INTO career_has_characteristic VALUES(136, 6, 8);
INSERT INTO career_has_characteristic VALUES(136, 7, 20);
INSERT INTO career_has_characteristic VALUES(136, 8, 2);
INSERT INTO career_has_characteristic VALUES(136, 9, 10);
INSERT INTO career_has_characteristic VALUES(136, 12, 30);
INSERT INTO career_has_characteristic VALUES(137, 4, 1);
INSERT INTO career_has_characteristic VALUES(137, 5, 1);
INSERT INTO career_has_characteristic VALUES(137, 6, 3);
INSERT INTO career_has_characteristic VALUES(137, 7, 10);
INSERT INTO career_has_characteristic VALUES(137, 9, 30);
INSERT INTO career_has_characteristic VALUES(137, 10, 20);
INSERT INTO career_has_characteristic VALUES(137, 11, 30);
INSERT INTO career_has_characteristic VALUES(137, 12, 20);
INSERT INTO career_has_characteristic VALUES(137, 13, 20);
INSERT INTO career_has_characteristic VALUES(137, 14, 10);
INSERT INTO career_has_characteristic VALUES(138, 2, 10);
INSERT INTO career_has_characteristic VALUES(138, 4, 1);
INSERT INTO career_has_characteristic VALUES(138, 5, 1);
INSERT INTO career_has_characteristic VALUES(138, 6, 3);
INSERT INTO career_has_characteristic VALUES(138, 7, 20);
INSERT INTO career_has_characteristic VALUES(138, 9, 10);
INSERT INTO career_has_characteristic VALUES(138, 10, 20);
INSERT INTO career_has_characteristic VALUES(138, 11, 30);
INSERT INTO career_has_characteristic VALUES(138, 12, 10);
INSERT INTO career_has_characteristic VALUES(138, 13, 20);
INSERT INTO career_has_characteristic VALUES(138, 14, 10);
INSERT INTO career_has_characteristic VALUES(139, 2, 20);
INSERT INTO career_has_characteristic VALUES(139, 3, 20);
INSERT INTO career_has_characteristic VALUES(139, 4, 1);
INSERT INTO career_has_characteristic VALUES(139, 5, 1);
INSERT INTO career_has_characteristic VALUES(139, 6, 3);
INSERT INTO career_has_characteristic VALUES(139, 7, 10);
INSERT INTO career_has_characteristic VALUES(139, 8, 1);
INSERT INTO career_has_characteristic VALUES(139, 10, 10);
INSERT INTO career_has_characteristic VALUES(139, 12, 10);
INSERT INTO career_has_characteristic VALUES(140, 2, 20);
INSERT INTO career_has_characteristic VALUES(140, 3, 20);
INSERT INTO career_has_characteristic VALUES(140, 4, 1);
INSERT INTO career_has_characteristic VALUES(140, 6, 4);
INSERT INTO career_has_characteristic VALUES(140, 7, 20);
INSERT INTO career_has_characteristic VALUES(140, 8, 1);
INSERT INTO career_has_characteristic VALUES(140, 9, 10);
INSERT INTO career_has_characteristic VALUES(140, 10, 10);
INSERT INTO career_has_characteristic VALUES(140, 12, 10);
INSERT INTO career_has_characteristic VALUES(140, 13, 10);
INSERT INTO career_has_characteristic VALUES(140, 14, 10);
INSERT INTO career_has_characteristic VALUES(141, 2, 30);
INSERT INTO career_has_characteristic VALUES(141, 3, 30);
INSERT INTO career_has_characteristic VALUES(141, 4, 1);
INSERT INTO career_has_characteristic VALUES(141, 5, 1);
INSERT INTO career_has_characteristic VALUES(141, 6, 6);
INSERT INTO career_has_characteristic VALUES(141, 7, 30);
INSERT INTO career_has_characteristic VALUES(141, 8, 2);
INSERT INTO career_has_characteristic VALUES(141, 9, 20);
INSERT INTO career_has_characteristic VALUES(141, 10, 20);
INSERT INTO career_has_characteristic VALUES(141, 11, 10);
INSERT INTO career_has_characteristic VALUES(141, 12, 10);
INSERT INTO career_has_characteristic VALUES(141, 13, 40);
INSERT INTO career_has_characteristic VALUES(141, 14, 10);
INSERT INTO career_has_characteristic VALUES(143, 2, 30);
INSERT INTO career_has_characteristic VALUES(143, 3, 30);
INSERT INTO career_has_characteristic VALUES(143, 4, 1);
INSERT INTO career_has_characteristic VALUES(143, 5, 2);
INSERT INTO career_has_characteristic VALUES(143, 6, 8);
INSERT INTO career_has_characteristic VALUES(143, 7, 30);
INSERT INTO career_has_characteristic VALUES(143, 8, 2);
INSERT INTO career_has_characteristic VALUES(143, 9, 20);
INSERT INTO career_has_characteristic VALUES(143, 10, 20);
INSERT INTO career_has_characteristic VALUES(143, 11, 20);
INSERT INTO career_has_characteristic VALUES(143, 12, 20);
INSERT INTO career_has_characteristic VALUES(143, 13, 20);
INSERT INTO career_has_characteristic VALUES(143, 14, 20);
INSERT INTO career_has_characteristic VALUES(165, 6, 2);
INSERT INTO career_has_characteristic VALUES(165, 7, 10);
INSERT INTO career_has_characteristic VALUES(165, 9, 10);
INSERT INTO career_has_characteristic VALUES(165, 11, 10);
INSERT INTO career_has_characteristic VALUES(172, 2, 10);
INSERT INTO career_has_characteristic VALUES(172, 3, 10);
INSERT INTO career_has_characteristic VALUES(172, 4, 1);
INSERT INTO career_has_characteristic VALUES(172, 5, 1);
INSERT INTO career_has_characteristic VALUES(172, 6, 3);
INSERT INTO career_has_characteristic VALUES(172, 7, 20);
INSERT INTO career_has_characteristic VALUES(172, 9, 10);
INSERT INTO career_has_characteristic VALUES(172, 10, 10);
INSERT INTO career_has_characteristic VALUES(172, 11, 20);
INSERT INTO career_has_characteristic VALUES(172, 12, 10);
INSERT INTO career_has_characteristic VALUES(172, 13, 10);
INSERT INTO career_has_characteristic VALUES(173, 2, 10);
INSERT INTO career_has_characteristic VALUES(173, 3, 10);
INSERT INTO career_has_characteristic VALUES(173, 4, 1);
INSERT INTO career_has_characteristic VALUES(173, 5, 1);
INSERT INTO career_has_characteristic VALUES(173, 6, 4);
INSERT INTO career_has_characteristic VALUES(173, 7, 30);
INSERT INTO career_has_characteristic VALUES(173, 9, 20);
INSERT INTO career_has_characteristic VALUES(173, 10, 20);
INSERT INTO career_has_characteristic VALUES(173, 11, 30);
INSERT INTO career_has_characteristic VALUES(173, 12, 20);
INSERT INTO career_has_characteristic VALUES(173, 13, 20);
INSERT INTO career_has_characteristic VALUES(174, 2, 10);
INSERT INTO career_has_characteristic VALUES(174, 3, 10);
INSERT INTO career_has_characteristic VALUES(174, 4, 1);
INSERT INTO career_has_characteristic VALUES(174, 5, 1);
INSERT INTO career_has_characteristic VALUES(174, 6, 4);
INSERT INTO career_has_characteristic VALUES(174, 7, 40);
INSERT INTO career_has_characteristic VALUES(174, 9, 30);
INSERT INTO career_has_characteristic VALUES(174, 10, 30);
INSERT INTO career_has_characteristic VALUES(174, 11, 30);
INSERT INTO career_has_characteristic VALUES(174, 12, 30);
INSERT INTO career_has_characteristic VALUES(174, 13, 30);
INSERT INTO career_has_characteristic VALUES(189, 6, 2);
INSERT INTO career_has_characteristic VALUES(189, 7, 10);
INSERT INTO career_has_characteristic VALUES(189, 11, 10);
INSERT INTO career_has_characteristic VALUES(190, 2, 10);
INSERT INTO career_has_characteristic VALUES(190, 3, 10);
INSERT INTO career_has_characteristic VALUES(190, 4, 1);
INSERT INTO career_has_characteristic VALUES(190, 5, 1);
INSERT INTO career_has_characteristic VALUES(190, 6, 3);
INSERT INTO career_has_characteristic VALUES(190, 7, 20);
INSERT INTO career_has_characteristic VALUES(190, 9, 10);
INSERT INTO career_has_characteristic VALUES(190, 10, 10);
INSERT INTO career_has_characteristic VALUES(190, 11, 20);
INSERT INTO career_has_characteristic VALUES(190, 12, 10);
INSERT INTO career_has_characteristic VALUES(190, 13, 10);
INSERT INTO career_has_characteristic VALUES(191, 2, 10);
INSERT INTO career_has_characteristic VALUES(191, 3, 10);
INSERT INTO career_has_characteristic VALUES(191, 4, 1);
INSERT INTO career_has_characteristic VALUES(191, 5, 1);
INSERT INTO career_has_characteristic VALUES(191, 6, 4);
INSERT INTO career_has_characteristic VALUES(191, 7, 30);
INSERT INTO career_has_characteristic VALUES(191, 9, 20);
INSERT INTO career_has_characteristic VALUES(191, 10, 20);
INSERT INTO career_has_characteristic VALUES(191, 11, 30);
INSERT INTO career_has_characteristic VALUES(191, 12, 20);
INSERT INTO career_has_characteristic VALUES(191, 13, 20);
INSERT INTO career_has_characteristic VALUES(192, 2, 10);
INSERT INTO career_has_characteristic VALUES(192, 3, 10);
INSERT INTO career_has_characteristic VALUES(192, 4, 1);
INSERT INTO career_has_characteristic VALUES(192, 5, 1);
INSERT INTO career_has_characteristic VALUES(192, 6, 4);
INSERT INTO career_has_characteristic VALUES(192, 7, 40);
INSERT INTO career_has_characteristic VALUES(192, 9, 30);
INSERT INTO career_has_characteristic VALUES(192, 10, 30);
INSERT INTO career_has_characteristic VALUES(192, 11, 30);
INSERT INTO career_has_characteristic VALUES(192, 12, 30);
INSERT INTO career_has_characteristic VALUES(192, 13, 30);
INSERT INTO career_has_characteristic VALUES(184, 6, 2);
INSERT INTO career_has_characteristic VALUES(184, 7, 10);
INSERT INTO career_has_characteristic VALUES(184, 11, 10);
INSERT INTO career_has_characteristic VALUES(185, 2, 10);
INSERT INTO career_has_characteristic VALUES(185, 3, 10);
INSERT INTO career_has_characteristic VALUES(185, 4, 1);
INSERT INTO career_has_characteristic VALUES(185, 5, 1);
INSERT INTO career_has_characteristic VALUES(185, 6, 3);
INSERT INTO career_has_characteristic VALUES(185, 7, 20);
INSERT INTO career_has_characteristic VALUES(185, 9, 10);
INSERT INTO career_has_characteristic VALUES(185, 10, 10);
INSERT INTO career_has_characteristic VALUES(185, 11, 20);
INSERT INTO career_has_characteristic VALUES(185, 12, 10);
INSERT INTO career_has_characteristic VALUES(185, 13, 10);
INSERT INTO career_has_characteristic VALUES(186, 2, 10);
INSERT INTO career_has_characteristic VALUES(186, 3, 10);
INSERT INTO career_has_characteristic VALUES(186, 4, 1);
INSERT INTO career_has_characteristic VALUES(186, 5, 1);
INSERT INTO career_has_characteristic VALUES(186, 6, 4);
INSERT INTO career_has_characteristic VALUES(186, 7, 30);
INSERT INTO career_has_characteristic VALUES(186, 9, 20);
INSERT INTO career_has_characteristic VALUES(186, 10, 20);
INSERT INTO career_has_characteristic VALUES(186, 11, 30);
INSERT INTO career_has_characteristic VALUES(186, 12, 20);
INSERT INTO career_has_characteristic VALUES(186, 13, 20);
INSERT INTO career_has_characteristic VALUES(187, 2, 10);
INSERT INTO career_has_characteristic VALUES(187, 3, 10);
INSERT INTO career_has_characteristic VALUES(187, 4, 1);
INSERT INTO career_has_characteristic VALUES(187, 5, 1);
INSERT INTO career_has_characteristic VALUES(187, 6, 4);
INSERT INTO career_has_characteristic VALUES(187, 7, 40);
INSERT INTO career_has_characteristic VALUES(187, 9, 30);
INSERT INTO career_has_characteristic VALUES(187, 10, 30);
INSERT INTO career_has_characteristic VALUES(187, 11, 30);
INSERT INTO career_has_characteristic VALUES(187, 12, 30);
INSERT INTO career_has_characteristic VALUES(187, 13, 30);
INSERT INTO career_has_characteristic VALUES(194, 6, 2);
INSERT INTO career_has_characteristic VALUES(194, 7, 10);
INSERT INTO career_has_characteristic VALUES(194, 11, 10);
INSERT INTO career_has_characteristic VALUES(195, 2, 10);
INSERT INTO career_has_characteristic VALUES(195, 3, 10);
INSERT INTO career_has_characteristic VALUES(195, 4, 1);
INSERT INTO career_has_characteristic VALUES(195, 5, 1);
INSERT INTO career_has_characteristic VALUES(195, 6, 3);
INSERT INTO career_has_characteristic VALUES(195, 7, 20);
INSERT INTO career_has_characteristic VALUES(195, 9, 10);
INSERT INTO career_has_characteristic VALUES(195, 10, 10);
INSERT INTO career_has_characteristic VALUES(195, 11, 20);
INSERT INTO career_has_characteristic VALUES(195, 12, 10);
INSERT INTO career_has_characteristic VALUES(195, 13, 10);
INSERT INTO career_has_characteristic VALUES(196, 2, 10);
INSERT INTO career_has_characteristic VALUES(196, 3, 10);
INSERT INTO career_has_characteristic VALUES(196, 4, 1);
INSERT INTO career_has_characteristic VALUES(196, 5, 1);
INSERT INTO career_has_characteristic VALUES(196, 6, 4);
INSERT INTO career_has_characteristic VALUES(196, 7, 30);
INSERT INTO career_has_characteristic VALUES(196, 9, 20);
INSERT INTO career_has_characteristic VALUES(196, 10, 20);
INSERT INTO career_has_characteristic VALUES(196, 11, 30);
INSERT INTO career_has_characteristic VALUES(196, 12, 20);
INSERT INTO career_has_characteristic VALUES(196, 13, 20);
INSERT INTO career_has_characteristic VALUES(197, 2, 10);
INSERT INTO career_has_characteristic VALUES(197, 3, 10);
INSERT INTO career_has_characteristic VALUES(197, 4, 1);
INSERT INTO career_has_characteristic VALUES(197, 5, 1);
INSERT INTO career_has_characteristic VALUES(197, 6, 4);
INSERT INTO career_has_characteristic VALUES(197, 7, 40);
INSERT INTO career_has_characteristic VALUES(197, 9, 30);
INSERT INTO career_has_characteristic VALUES(197, 10, 30);
INSERT INTO career_has_characteristic VALUES(197, 11, 30);
INSERT INTO career_has_characteristic VALUES(197, 12, 30);
INSERT INTO career_has_characteristic VALUES(197, 13, 30);
INSERT INTO career_has_characteristic VALUES(199, 6, 2);
INSERT INTO career_has_characteristic VALUES(199, 7, 10);
INSERT INTO career_has_characteristic VALUES(199, 11, 10);
INSERT INTO career_has_characteristic VALUES(200, 2, 10);
INSERT INTO career_has_characteristic VALUES(200, 3, 10);
INSERT INTO career_has_characteristic VALUES(200, 4, 1);
INSERT INTO career_has_characteristic VALUES(200, 5, 1);
INSERT INTO career_has_characteristic VALUES(200, 6, 3);
INSERT INTO career_has_characteristic VALUES(200, 7, 20);
INSERT INTO career_has_characteristic VALUES(200, 9, 10);
INSERT INTO career_has_characteristic VALUES(200, 10, 10);
INSERT INTO career_has_characteristic VALUES(200, 11, 20);
INSERT INTO career_has_characteristic VALUES(200, 12, 10);
INSERT INTO career_has_characteristic VALUES(200, 13, 10);
INSERT INTO career_has_characteristic VALUES(201, 2, 10);
INSERT INTO career_has_characteristic VALUES(201, 3, 10);
INSERT INTO career_has_characteristic VALUES(201, 4, 1);
INSERT INTO career_has_characteristic VALUES(201, 5, 1);
INSERT INTO career_has_characteristic VALUES(201, 6, 4);
INSERT INTO career_has_characteristic VALUES(201, 7, 30);
INSERT INTO career_has_characteristic VALUES(201, 9, 20);
INSERT INTO career_has_characteristic VALUES(201, 10, 20);
INSERT INTO career_has_characteristic VALUES(201, 11, 30);
INSERT INTO career_has_characteristic VALUES(201, 12, 20);
INSERT INTO career_has_characteristic VALUES(201, 13, 20);
INSERT INTO career_has_characteristic VALUES(202, 2, 10);
INSERT INTO career_has_characteristic VALUES(202, 3, 10);
INSERT INTO career_has_characteristic VALUES(202, 4, 1);
INSERT INTO career_has_characteristic VALUES(202, 5, 1);
INSERT INTO career_has_characteristic VALUES(202, 6, 4);
INSERT INTO career_has_characteristic VALUES(202, 7, 40);
INSERT INTO career_has_characteristic VALUES(202, 9, 30);
INSERT INTO career_has_characteristic VALUES(202, 10, 30);
INSERT INTO career_has_characteristic VALUES(202, 11, 30);
INSERT INTO career_has_characteristic VALUES(202, 12, 30);
INSERT INTO career_has_characteristic VALUES(202, 13, 30);
INSERT INTO career_has_characteristic VALUES(204, 14, 20);
INSERT INTO career_has_characteristic VALUES(204, 13, 20);
INSERT INTO career_has_characteristic VALUES(204, 12, 20);
INSERT INTO career_has_characteristic VALUES(204, 11, 20);
INSERT INTO career_has_characteristic VALUES(204, 10, 20);
INSERT INTO career_has_characteristic VALUES(204, 9, 20);
INSERT INTO career_has_characteristic VALUES(204, 8, 2);
INSERT INTO career_has_characteristic VALUES(204, 7, 20);
INSERT INTO career_has_characteristic VALUES(204, 6, 2);
INSERT INTO career_has_characteristic VALUES(204, 5, 2);
INSERT INTO career_has_characteristic VALUES(204, 4, 2);
INSERT INTO career_has_characteristic VALUES(204, 3, 20);
INSERT INTO career_has_characteristic VALUES(204, 2, 20);
INSERT INTO career_has_characteristic VALUES(204, 1, 2);
INSERT INTO career_has_characteristic VALUES(206, 1, 1);
INSERT INTO career_has_characteristic VALUES(206, 2, 1);
INSERT INTO career_has_characteristic VALUES(206, 3, 1);
INSERT INTO career_has_characteristic VALUES(206, 4, 1);
INSERT INTO career_has_characteristic VALUES(206, 5, 1);
INSERT INTO career_has_characteristic VALUES(206, 6, 1);
INSERT INTO career_has_characteristic VALUES(206, 7, 1);
INSERT INTO career_has_characteristic VALUES(206, 8, 1);
INSERT INTO career_has_characteristic VALUES(206, 9, 1);
INSERT INTO career_has_characteristic VALUES(206, 10, 1);
INSERT INTO career_has_characteristic VALUES(206, 11, 1);
INSERT INTO career_has_characteristic VALUES(206, 12, 1);
INSERT INTO career_has_characteristic VALUES(206, 13, 1);
INSERT INTO career_has_characteristic VALUES(206, 14, 1);

DROP TABLE IF EXISTS career_has_image;
CREATE TABLE IF NOT EXISTS career_has_image (
  career_id int(10) unsigned NOT NULL default '0',
  image_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (career_id,image_id)
) ;


INSERT INTO career_has_image VALUES(1, 2);
INSERT INTO career_has_image VALUES(2, 4);
INSERT INTO career_has_image VALUES(3, 3);
INSERT INTO career_has_image VALUES(4, 5);
INSERT INTO career_has_image VALUES(5, 6);
INSERT INTO career_has_image VALUES(6, 7);
INSERT INTO career_has_image VALUES(7, 8);
INSERT INTO career_has_image VALUES(8, 8);
INSERT INTO career_has_image VALUES(9, 8);
INSERT INTO career_has_image VALUES(10, 8);
INSERT INTO career_has_image VALUES(11, 8);
INSERT INTO career_has_image VALUES(12, 8);
INSERT INTO career_has_image VALUES(13, 8);
INSERT INTO career_has_image VALUES(14, 8);
INSERT INTO career_has_image VALUES(15, 8);
INSERT INTO career_has_image VALUES(16, 8);
INSERT INTO career_has_image VALUES(17, 8);
INSERT INTO career_has_image VALUES(18, 8);
INSERT INTO career_has_image VALUES(19, 8);
INSERT INTO career_has_image VALUES(20, 8);
INSERT INTO career_has_image VALUES(21, 8);
INSERT INTO career_has_image VALUES(22, 8);
INSERT INTO career_has_image VALUES(23, 8);
INSERT INTO career_has_image VALUES(24, 8);
INSERT INTO career_has_image VALUES(25, 8);
INSERT INTO career_has_image VALUES(26, 8);
INSERT INTO career_has_image VALUES(27, 8);
INSERT INTO career_has_image VALUES(28, 9);
INSERT INTO career_has_image VALUES(29, 10);
INSERT INTO career_has_image VALUES(30, 11);
INSERT INTO career_has_image VALUES(31, 12);
INSERT INTO career_has_image VALUES(32, 13);
INSERT INTO career_has_image VALUES(33, 14);
INSERT INTO career_has_image VALUES(34, 15);
INSERT INTO career_has_image VALUES(35, 16);
INSERT INTO career_has_image VALUES(36, 17);
INSERT INTO career_has_image VALUES(37, 18);
INSERT INTO career_has_image VALUES(38, 19);
INSERT INTO career_has_image VALUES(39, 20);
INSERT INTO career_has_image VALUES(40, 21);
INSERT INTO career_has_image VALUES(41, 22);
INSERT INTO career_has_image VALUES(42, 23);
INSERT INTO career_has_image VALUES(43, 24);
INSERT INTO career_has_image VALUES(44, 25);
INSERT INTO career_has_image VALUES(45, 26);
INSERT INTO career_has_image VALUES(46, 27);
INSERT INTO career_has_image VALUES(47, 28);
INSERT INTO career_has_image VALUES(48, 1);
INSERT INTO career_has_image VALUES(49, 29);
INSERT INTO career_has_image VALUES(50, 30);
INSERT INTO career_has_image VALUES(51, 31);
INSERT INTO career_has_image VALUES(52, 32);
INSERT INTO career_has_image VALUES(53, 33);
INSERT INTO career_has_image VALUES(54, 34);
INSERT INTO career_has_image VALUES(55, 35);
INSERT INTO career_has_image VALUES(56, 36);
INSERT INTO career_has_image VALUES(57, 38);
INSERT INTO career_has_image VALUES(58, 39);
INSERT INTO career_has_image VALUES(59, 40);
INSERT INTO career_has_image VALUES(60, 41);
INSERT INTO career_has_image VALUES(61, 42);
INSERT INTO career_has_image VALUES(62, 43);
INSERT INTO career_has_image VALUES(63, 44);
INSERT INTO career_has_image VALUES(64, 45);
INSERT INTO career_has_image VALUES(65, 46);
INSERT INTO career_has_image VALUES(66, 47);
INSERT INTO career_has_image VALUES(67, 48);
INSERT INTO career_has_image VALUES(68, 49);
INSERT INTO career_has_image VALUES(69, 50);
INSERT INTO career_has_image VALUES(70, 51);
INSERT INTO career_has_image VALUES(71, 52);
INSERT INTO career_has_image VALUES(72, 53);
INSERT INTO career_has_image VALUES(73, 54);
INSERT INTO career_has_image VALUES(74, 37);
INSERT INTO career_has_image VALUES(75, 55);
INSERT INTO career_has_image VALUES(76, 56);
INSERT INTO career_has_image VALUES(77, 57);
INSERT INTO career_has_image VALUES(78, 58);
INSERT INTO career_has_image VALUES(79, 59);
INSERT INTO career_has_image VALUES(80, 60);
INSERT INTO career_has_image VALUES(81, 61);
INSERT INTO career_has_image VALUES(82, 62);
INSERT INTO career_has_image VALUES(83, 63);
INSERT INTO career_has_image VALUES(84, 64);
INSERT INTO career_has_image VALUES(85, 64);
INSERT INTO career_has_image VALUES(86, 64);
INSERT INTO career_has_image VALUES(87, 64);
INSERT INTO career_has_image VALUES(88, 64);
INSERT INTO career_has_image VALUES(89, 66);
INSERT INTO career_has_image VALUES(90, 67);
INSERT INTO career_has_image VALUES(91, 68);
INSERT INTO career_has_image VALUES(92, 69);
INSERT INTO career_has_image VALUES(93, 70);
INSERT INTO career_has_image VALUES(94, 1);
INSERT INTO career_has_image VALUES(95, 72);
INSERT INTO career_has_image VALUES(96, 71);
INSERT INTO career_has_image VALUES(97, 73);
INSERT INTO career_has_image VALUES(98, 74);
INSERT INTO career_has_image VALUES(99, 75);
INSERT INTO career_has_image VALUES(100, 76);
INSERT INTO career_has_image VALUES(101, 77);
INSERT INTO career_has_image VALUES(102, 78);
INSERT INTO career_has_image VALUES(103, 79);
INSERT INTO career_has_image VALUES(104, 80);
INSERT INTO career_has_image VALUES(105, 1);
INSERT INTO career_has_image VALUES(106, 81);
INSERT INTO career_has_image VALUES(106, 104);
INSERT INTO career_has_image VALUES(107, 82);
INSERT INTO career_has_image VALUES(108, 83);
INSERT INTO career_has_image VALUES(109, 84);
INSERT INTO career_has_image VALUES(110, 85);
INSERT INTO career_has_image VALUES(111, 86);
INSERT INTO career_has_image VALUES(112, 87);
INSERT INTO career_has_image VALUES(113, 88);
INSERT INTO career_has_image VALUES(114, 89);
INSERT INTO career_has_image VALUES(115, 90);
INSERT INTO career_has_image VALUES(116, 90);
INSERT INTO career_has_image VALUES(117, 90);
INSERT INTO career_has_image VALUES(118, 90);
INSERT INTO career_has_image VALUES(119, 90);
INSERT INTO career_has_image VALUES(120, 90);
INSERT INTO career_has_image VALUES(121, 90);
INSERT INTO career_has_image VALUES(122, 90);
INSERT INTO career_has_image VALUES(123, 90);
INSERT INTO career_has_image VALUES(124, 90);
INSERT INTO career_has_image VALUES(125, 90);
INSERT INTO career_has_image VALUES(126, 90);
INSERT INTO career_has_image VALUES(127, 90);
INSERT INTO career_has_image VALUES(128, 90);
INSERT INTO career_has_image VALUES(129, 90);
INSERT INTO career_has_image VALUES(130, 90);
INSERT INTO career_has_image VALUES(131, 90);
INSERT INTO career_has_image VALUES(132, 90);
INSERT INTO career_has_image VALUES(133, 90);
INSERT INTO career_has_image VALUES(134, 91);
INSERT INTO career_has_image VALUES(135, 92);
INSERT INTO career_has_image VALUES(136, 93);
INSERT INTO career_has_image VALUES(137, 94);
INSERT INTO career_has_image VALUES(138, 95);
INSERT INTO career_has_image VALUES(139, 96);
INSERT INTO career_has_image VALUES(140, 97);
INSERT INTO career_has_image VALUES(141, 98);
INSERT INTO career_has_image VALUES(142, 99);
INSERT INTO career_has_image VALUES(142, 102);
INSERT INTO career_has_image VALUES(143, 100);
INSERT INTO career_has_image VALUES(144, 65);
INSERT INTO career_has_image VALUES(144, 103);
INSERT INTO career_has_image VALUES(145, 5);
INSERT INTO career_has_image VALUES(146, 5);
INSERT INTO career_has_image VALUES(147, 5);
INSERT INTO career_has_image VALUES(148, 5);
INSERT INTO career_has_image VALUES(149, 5);
INSERT INTO career_has_image VALUES(150, 5);
INSERT INTO career_has_image VALUES(151, 5);
INSERT INTO career_has_image VALUES(152, 5);
INSERT INTO career_has_image VALUES(153, 5);
INSERT INTO career_has_image VALUES(154, 5);
INSERT INTO career_has_image VALUES(155, 5);
INSERT INTO career_has_image VALUES(156, 5);
INSERT INTO career_has_image VALUES(157, 5);
INSERT INTO career_has_image VALUES(158, 5);
INSERT INTO career_has_image VALUES(159, 5);
INSERT INTO career_has_image VALUES(160, 5);
INSERT INTO career_has_image VALUES(161, 5);
INSERT INTO career_has_image VALUES(162, 5);
INSERT INTO career_has_image VALUES(163, 5);
INSERT INTO career_has_image VALUES(164, 90);
INSERT INTO career_has_image VALUES(165, 102);
INSERT INTO career_has_image VALUES(166, 8);
INSERT INTO career_has_image VALUES(167, 64);
INSERT INTO career_has_image VALUES(168, 80);
INSERT INTO career_has_image VALUES(169, 80);
INSERT INTO career_has_image VALUES(170, 80);
INSERT INTO career_has_image VALUES(171, 80);
INSERT INTO career_has_image VALUES(172, 102);
INSERT INTO career_has_image VALUES(173, 102);
INSERT INTO career_has_image VALUES(174, 102);
INSERT INTO career_has_image VALUES(175, 65);
INSERT INTO career_has_image VALUES(175, 103);
INSERT INTO career_has_image VALUES(176, 65);
INSERT INTO career_has_image VALUES(176, 103);
INSERT INTO career_has_image VALUES(177, 65);
INSERT INTO career_has_image VALUES(177, 103);
INSERT INTO career_has_image VALUES(178, 65);
INSERT INTO career_has_image VALUES(178, 103);
INSERT INTO career_has_image VALUES(179, 81);
INSERT INTO career_has_image VALUES(179, 104);
INSERT INTO career_has_image VALUES(180, 81);
INSERT INTO career_has_image VALUES(180, 104);
INSERT INTO career_has_image VALUES(181, 81);
INSERT INTO career_has_image VALUES(181, 104);
INSERT INTO career_has_image VALUES(182, 81);
INSERT INTO career_has_image VALUES(182, 104);
INSERT INTO career_has_image VALUES(183, 105);
INSERT INTO career_has_image VALUES(184, 105);
INSERT INTO career_has_image VALUES(185, 105);
INSERT INTO career_has_image VALUES(186, 105);
INSERT INTO career_has_image VALUES(187, 105);
INSERT INTO career_has_image VALUES(188, 108);
INSERT INTO career_has_image VALUES(189, 108);
INSERT INTO career_has_image VALUES(190, 108);
INSERT INTO career_has_image VALUES(191, 108);
INSERT INTO career_has_image VALUES(192, 108);
INSERT INTO career_has_image VALUES(193, 105);
INSERT INTO career_has_image VALUES(194, 106);
INSERT INTO career_has_image VALUES(195, 106);
INSERT INTO career_has_image VALUES(196, 106);
INSERT INTO career_has_image VALUES(197, 106);
INSERT INTO career_has_image VALUES(198, 107);
INSERT INTO career_has_image VALUES(199, 107);
INSERT INTO career_has_image VALUES(200, 107);
INSERT INTO career_has_image VALUES(201, 107);
INSERT INTO career_has_image VALUES(202, 107);

DROP TABLE IF EXISTS career_has_skill;
CREATE TABLE IF NOT EXISTS career_has_skill (
  career_id int(10) unsigned NOT NULL default '0',
  skill_id int(10) unsigned NOT NULL default '0',
  chance int(10) unsigned default '100',
  complement varchar(255) default NULL,
  PRIMARY KEY  (career_id,skill_id)
) ;


INSERT INTO career_has_skill VALUES(1, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(1, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(2, 44, 100, NULL);
INSERT INTO career_has_skill VALUES(2, 168, 100, NULL);
INSERT INTO career_has_skill VALUES(2, 102, 100, NULL);
INSERT INTO career_has_skill VALUES(2, 110, 100, NULL);
INSERT INTO career_has_skill VALUES(2, 134, 100, NULL);
INSERT INTO career_has_skill VALUES(2, 141, 100, NULL);
INSERT INTO career_has_skill VALUES(2, 159, 100, NULL);
INSERT INTO career_has_skill VALUES(3, 44, 50, NULL);
INSERT INTO career_has_skill VALUES(3, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(3, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(3, 89, 100, NULL);
INSERT INTO career_has_skill VALUES(4, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(4, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(4, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(5, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(5, 169, 100, NULL);
INSERT INTO career_has_skill VALUES(5, 109, 100, NULL);
INSERT INTO career_has_skill VALUES(5, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(5, 52, 50, NULL);
INSERT INTO career_has_skill VALUES(6, 38, 100, NULL);
INSERT INTO career_has_skill VALUES(6, 130, 100, NULL);
INSERT INTO career_has_skill VALUES(6, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(6, 135, 100, NULL);
INSERT INTO career_has_skill VALUES(6, 140, 100, NULL);
INSERT INTO career_has_skill VALUES(6, 91, 50, NULL);
INSERT INTO career_has_skill VALUES(6, 56, 25, NULL);
INSERT INTO career_has_skill VALUES(6, 146, 25, NULL);
INSERT INTO career_has_skill VALUES(7, 1, 100, NULL);
INSERT INTO career_has_skill VALUES(8, 47, 100, NULL);
INSERT INTO career_has_skill VALUES(9, 83, 100, NULL);
INSERT INTO career_has_skill VALUES(10, 30, 100, NULL);
INSERT INTO career_has_skill VALUES(11, 34, 100, NULL);
INSERT INTO career_has_skill VALUES(12, 41, 100, NULL);
INSERT INTO career_has_skill VALUES(13, 142, 100, NULL);
INSERT INTO career_has_skill VALUES(14, 45, 100, NULL);
INSERT INTO career_has_skill VALUES(15, 95, 100, NULL);
INSERT INTO career_has_skill VALUES(15, 150, 100, NULL);
INSERT INTO career_has_skill VALUES(16, 1, 100, NULL);
INSERT INTO career_has_skill VALUES(16, 78, 100, NULL);
INSERT INTO career_has_skill VALUES(17, 127, 100, NULL);
INSERT INTO career_has_skill VALUES(18, 96, 100, NULL);
INSERT INTO career_has_skill VALUES(19, 100, 100, NULL);
INSERT INTO career_has_skill VALUES(20, 105, 100, NULL);
INSERT INTO career_has_skill VALUES(21, 15, 100, NULL);
INSERT INTO career_has_skill VALUES(22, 121, 100, NULL);
INSERT INTO career_has_skill VALUES(23, 74, 100, NULL);
INSERT INTO career_has_skill VALUES(23, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(24, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(25, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(25, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(26, 41, 100, NULL);
INSERT INTO career_has_skill VALUES(26, 128, 100, NULL);
INSERT INTO career_has_skill VALUES(27, 160, 100, NULL);
INSERT INTO career_has_skill VALUES(28, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(28, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(28, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 137, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 107, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 99, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 170, 100, NULL);
INSERT INTO career_has_skill VALUES(30, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(30, 43, 100, NULL);
INSERT INTO career_has_skill VALUES(30, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(30, 107, 100, NULL);
INSERT INTO career_has_skill VALUES(30, 170, 100, NULL);
INSERT INTO career_has_skill VALUES(30, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(30, 102, 25, NULL);
INSERT INTO career_has_skill VALUES(31, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(31, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(31, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(31, 90, 100, NULL);
INSERT INTO career_has_skill VALUES(31, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(31, 5, 50, NULL);
INSERT INTO career_has_skill VALUES(31, 23, 100, NULL);
INSERT INTO career_has_skill VALUES(31, 26, 100, NULL);
INSERT INTO career_has_skill VALUES(32, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(32, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(32, 171, 100, NULL);
INSERT INTO career_has_skill VALUES(32, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(32, 29, 100, NULL);
INSERT INTO career_has_skill VALUES(33, 72, 100, NULL);
INSERT INTO career_has_skill VALUES(33, 35, 100, NULL);
INSERT INTO career_has_skill VALUES(33, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(33, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 48, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 53, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 172, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 17, 100, NULL);
INSERT INTO career_has_skill VALUES(34, 31, 10, NULL);
INSERT INTO career_has_skill VALUES(35, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(35, 60, 100, NULL);
INSERT INTO career_has_skill VALUES(35, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(35, 78, 100, NULL);
INSERT INTO career_has_skill VALUES(35, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(35, 173, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 38, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 146, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(36, 130, 25, NULL);
INSERT INTO career_has_skill VALUES(37, 119, 100, NULL);
INSERT INTO career_has_skill VALUES(37, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(37, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(37, 48, 100, NULL);
INSERT INTO career_has_skill VALUES(38, 38, 100, NULL);
INSERT INTO career_has_skill VALUES(38, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(38, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(38, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(38, 146, 50, NULL);
INSERT INTO career_has_skill VALUES(38, 108, 50, NULL);
INSERT INTO career_has_skill VALUES(38, 111, 25, NULL);
INSERT INTO career_has_skill VALUES(39, 62, 100, NULL);
INSERT INTO career_has_skill VALUES(39, 92, 100, NULL);
INSERT INTO career_has_skill VALUES(39, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(39, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(39, 69, 75, NULL);
INSERT INTO career_has_skill VALUES(39, 151, 50, NULL);
INSERT INTO career_has_skill VALUES(39, 138, 25, NULL);
INSERT INTO career_has_skill VALUES(40, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(40, 33, 25, NULL);
INSERT INTO career_has_skill VALUES(40, 49, 25, NULL);
INSERT INTO career_has_skill VALUES(40, 81, 25, NULL);
INSERT INTO career_has_skill VALUES(40, 93, 25, NULL);
INSERT INTO career_has_skill VALUES(40, 152, 25, NULL);
INSERT INTO career_has_skill VALUES(40, 65, 10, NULL);
INSERT INTO career_has_skill VALUES(40, 77, 10, NULL);
INSERT INTO career_has_skill VALUES(41, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 174, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 137, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 153, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 157, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 158, 100, NULL);
INSERT INTO career_has_skill VALUES(41, 126, 50, NULL);
INSERT INTO career_has_skill VALUES(42, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(42, 93, 100, NULL);
INSERT INTO career_has_skill VALUES(42, 81, 100, NULL);
INSERT INTO career_has_skill VALUES(42, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(42, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(42, 74, 100, NULL);
INSERT INTO career_has_skill VALUES(42, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(43, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(43, 109, 100, NULL);
INSERT INTO career_has_skill VALUES(43, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(43, 146, 25, NULL);
INSERT INTO career_has_skill VALUES(43, 94, 20, NULL);
INSERT INTO career_has_skill VALUES(43, 31, 10, NULL);
INSERT INTO career_has_skill VALUES(43, 39, 10, NULL);
INSERT INTO career_has_skill VALUES(43, 99, 10, NULL);
INSERT INTO career_has_skill VALUES(43, 111, 10, NULL);
INSERT INTO career_has_skill VALUES(43, 131, 10, NULL);
INSERT INTO career_has_skill VALUES(44, 141, 100, NULL);
INSERT INTO career_has_skill VALUES(44, 134, 100, NULL);
INSERT INTO career_has_skill VALUES(44, 86, 100, NULL);
INSERT INTO career_has_skill VALUES(44, 52, 100, NULL);
INSERT INTO career_has_skill VALUES(44, 109, 100, NULL);
INSERT INTO career_has_skill VALUES(44, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(45, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(45, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(46, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(46, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(46, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(46, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(46, 17, 100, NULL);
INSERT INTO career_has_skill VALUES(46, 91, 50, NULL);
INSERT INTO career_has_skill VALUES(47, 5, 100, NULL);
INSERT INTO career_has_skill VALUES(47, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(47, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(47, 137, 100, NULL);
INSERT INTO career_has_skill VALUES(47, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(47, 107, 50, NULL);
INSERT INTO career_has_skill VALUES(47, 175, 10, NULL);
INSERT INTO career_has_skill VALUES(48, 5, 100, NULL);
INSERT INTO career_has_skill VALUES(48, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(48, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(48, 176, 100, NULL);
INSERT INTO career_has_skill VALUES(48, 137, 100, NULL);
INSERT INTO career_has_skill VALUES(48, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(48, 175, 10, NULL);
INSERT INTO career_has_skill VALUES(49, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 40, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 42, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 81, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 93, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 150, 100, NULL);
INSERT INTO career_has_skill VALUES(49, 75, 50, NULL);
INSERT INTO career_has_skill VALUES(49, 103, 50, NULL);
INSERT INTO career_has_skill VALUES(49, 146, 25, NULL);
INSERT INTO career_has_skill VALUES(49, 21, 25, NULL);
INSERT INTO career_has_skill VALUES(49, 128, 10, NULL);
INSERT INTO career_has_skill VALUES(50, 101, 100, NULL);
INSERT INTO career_has_skill VALUES(50, 102, 100, NULL);
INSERT INTO career_has_skill VALUES(50, 91, 100, NULL);
INSERT INTO career_has_skill VALUES(50, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(50, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 60, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 16, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 17, 100, NULL);
INSERT INTO career_has_skill VALUES(51, 91, 50, NULL);
INSERT INTO career_has_skill VALUES(51, 147, 50, NULL);
INSERT INTO career_has_skill VALUES(52, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(52, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(52, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(52, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(52, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(52, 26, 100, NULL);
INSERT INTO career_has_skill VALUES(52, 177, 100, NULL);
INSERT INTO career_has_skill VALUES(53, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(53, 58, 100, NULL);
INSERT INTO career_has_skill VALUES(53, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(53, 150, 25, NULL);
INSERT INTO career_has_skill VALUES(54, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 53, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 178, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 99, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 109, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 110, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 116, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 134, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 159, 100, NULL);
INSERT INTO career_has_skill VALUES(54, 141, 20, NULL);
INSERT INTO career_has_skill VALUES(55, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(55, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(55, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(55, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(55, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(55, 78, 100, NULL);
INSERT INTO career_has_skill VALUES(55, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(55, 179, 100, NULL);
INSERT INTO career_has_skill VALUES(56, 154, 100, NULL);
INSERT INTO career_has_skill VALUES(56, 52, 100, NULL);
INSERT INTO career_has_skill VALUES(56, 109, 100, NULL);
INSERT INTO career_has_skill VALUES(56, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(57, 40, 100, NULL);
INSERT INTO career_has_skill VALUES(57, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(57, 103, 100, NULL);
INSERT INTO career_has_skill VALUES(58, 96, 100, NULL);
INSERT INTO career_has_skill VALUES(58, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(59, 78, 100, NULL);
INSERT INTO career_has_skill VALUES(59, 41, 75, NULL);
INSERT INTO career_has_skill VALUES(59, 146, 75, NULL);
INSERT INTO career_has_skill VALUES(59, 49, 50, NULL);
INSERT INTO career_has_skill VALUES(59, 157, 50, NULL);
INSERT INTO career_has_skill VALUES(59, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(59, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(59, 153, 25, NULL);
INSERT INTO career_has_skill VALUES(60, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 38, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 78, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 111, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 123, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 130, 100, NULL);
INSERT INTO career_has_skill VALUES(60, 146, 75, NULL);
INSERT INTO career_has_skill VALUES(61, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(61, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(61, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(61, 125, 100, NULL);
INSERT INTO career_has_skill VALUES(61, 180, 100, NULL);
INSERT INTO career_has_skill VALUES(61, 146, 25, NULL);
INSERT INTO career_has_skill VALUES(62, 181, 100, NULL);
INSERT INTO career_has_skill VALUES(62, 81, 100, NULL);
INSERT INTO career_has_skill VALUES(62, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(62, 42, 100, NULL);
INSERT INTO career_has_skill VALUES(62, 41, 100, NULL);
INSERT INTO career_has_skill VALUES(63, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(63, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(63, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(63, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(63, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(63, 49, 75, NULL);
INSERT INTO career_has_skill VALUES(63, 152, 50, NULL);
INSERT INTO career_has_skill VALUES(63, 77, 25, NULL);
INSERT INTO career_has_skill VALUES(64, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(64, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(64, 49, 50, NULL);
INSERT INTO career_has_skill VALUES(64, 77, 25, NULL);
INSERT INTO career_has_skill VALUES(64, 152, 25, NULL);
INSERT INTO career_has_skill VALUES(65, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(65, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(65, 49, 75, NULL);
INSERT INTO career_has_skill VALUES(65, 74, 25, NULL);
INSERT INTO career_has_skill VALUES(66, 99, 100, NULL);
INSERT INTO career_has_skill VALUES(66, 182, 100, NULL);
INSERT INTO career_has_skill VALUES(66, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(66, 143, 100, NULL);
INSERT INTO career_has_skill VALUES(66, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(67, 76, 100, NULL);
INSERT INTO career_has_skill VALUES(67, 53, 100, NULL);
INSERT INTO career_has_skill VALUES(67, 24, 100, NULL);
INSERT INTO career_has_skill VALUES(67, 74, 100, NULL);
INSERT INTO career_has_skill VALUES(68, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(69, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(69, 48, 100, NULL);
INSERT INTO career_has_skill VALUES(70, 130, 100, NULL);
INSERT INTO career_has_skill VALUES(70, 123, 100, NULL);
INSERT INTO career_has_skill VALUES(70, 56, 100, NULL);
INSERT INTO career_has_skill VALUES(70, 39, 100, NULL);
INSERT INTO career_has_skill VALUES(71, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(71, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(71, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(71, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(71, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(71, 180, 75, NULL);
INSERT INTO career_has_skill VALUES(71, 82, 50, NULL);
INSERT INTO career_has_skill VALUES(71, 108, 50, NULL);
INSERT INTO career_has_skill VALUES(72, 38, 100, NULL);
INSERT INTO career_has_skill VALUES(72, 123, 100, NULL);
INSERT INTO career_has_skill VALUES(72, 130, 100, NULL);
INSERT INTO career_has_skill VALUES(72, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(72, 146, 20, NULL);
INSERT INTO career_has_skill VALUES(73, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(73, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(73, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(73, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(73, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(74, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(74, 42, 100, NULL);
INSERT INTO career_has_skill VALUES(74, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(74, 73, 100, NULL);
INSERT INTO career_has_skill VALUES(75, 126, 100, NULL);
INSERT INTO career_has_skill VALUES(75, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(75, 140, 100, NULL);
INSERT INTO career_has_skill VALUES(75, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(75, 157, 100, NULL);
INSERT INTO career_has_skill VALUES(75, 40, 50, NULL);
INSERT INTO career_has_skill VALUES(75, 43, 50, NULL);
INSERT INTO career_has_skill VALUES(75, 135, 50, NULL);
INSERT INTO career_has_skill VALUES(75, 39, 20, NULL);
INSERT INTO career_has_skill VALUES(76, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(76, 42, 100, NULL);
INSERT INTO career_has_skill VALUES(76, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(76, 129, 100, NULL);
INSERT INTO career_has_skill VALUES(76, 148, 100, NULL);
INSERT INTO career_has_skill VALUES(76, 150, 100, NULL);
INSERT INTO career_has_skill VALUES(76, 81, 25, NULL);
INSERT INTO career_has_skill VALUES(77, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(77, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(77, 184, 100, NULL);
INSERT INTO career_has_skill VALUES(77, 101, 100, NULL);
INSERT INTO career_has_skill VALUES(77, 102, 100, NULL);
INSERT INTO career_has_skill VALUES(77, 137, 100, NULL);
INSERT INTO career_has_skill VALUES(77, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(77, 24, 100, NULL);
INSERT INTO career_has_skill VALUES(78, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(78, 109, 100, NULL);
INSERT INTO career_has_skill VALUES(78, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(78, 111, 50, NULL);
INSERT INTO career_has_skill VALUES(79, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(79, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(79, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(79, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(79, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(79, 152, 50, NULL);
INSERT INTO career_has_skill VALUES(79, 77, 25, NULL);
INSERT INTO career_has_skill VALUES(80, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(80, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(80, 60, 100, NULL);
INSERT INTO career_has_skill VALUES(80, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(80, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(80, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(80, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(81, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(81, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(81, 144, 25, NULL);
INSERT INTO career_has_skill VALUES(82, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(82, 38, 100, NULL);
INSERT INTO career_has_skill VALUES(82, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(82, 107, 100, NULL);
INSERT INTO career_has_skill VALUES(82, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(82, 170, 100, NULL);
INSERT INTO career_has_skill VALUES(82, 137, 100, NULL);
INSERT INTO career_has_skill VALUES(82, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(83, 26, 100, NULL);
INSERT INTO career_has_skill VALUES(83, 107, 100, NULL);
INSERT INTO career_has_skill VALUES(83, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(83, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(84, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(84, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(84, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(84, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(84, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 180, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 63, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 78, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 71, 100, NULL);
INSERT INTO career_has_skill VALUES(85, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 180, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 72, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(86, 6, 50, NULL);
INSERT INTO career_has_skill VALUES(86, 35, 25, NULL);
INSERT INTO career_has_skill VALUES(87, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(87, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(87, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(87, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(87, 180, 100, NULL);
INSERT INTO career_has_skill VALUES(87, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(87, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(87, 131, 50, NULL);
INSERT INTO career_has_skill VALUES(88, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 180, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 92, 100, NULL);
INSERT INTO career_has_skill VALUES(88, 163, 100, NULL);
INSERT INTO career_has_skill VALUES(145, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(145, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(145, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(146, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(146, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(146, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(147, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(147, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(147, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(148, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(148, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(148, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(149, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(149, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(149, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(150, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(150, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(150, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(151, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(151, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(151, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(152, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(152, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(152, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(153, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(153, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(153, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(154, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(154, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(154, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(155, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(155, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(155, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(156, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(156, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(156, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(157, 147, 100, NULL);
INSERT INTO career_has_skill VALUES(157, 91, 100, NULL);
INSERT INTO career_has_skill VALUES(157, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(158, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(158, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(158, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(159, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(159, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(159, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(160, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(160, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(160, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(161, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(161, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(161, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(162, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(162, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(162, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(163, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(163, 91, 25, NULL);
INSERT INTO career_has_skill VALUES(163, 147, 25, NULL);
INSERT INTO career_has_skill VALUES(175, 44, 100, NULL);
INSERT INTO career_has_skill VALUES(175, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(175, 169, 100, NULL);
INSERT INTO career_has_skill VALUES(175, 126, 100, NULL);
INSERT INTO career_has_skill VALUES(176, 52, 100, NULL);
INSERT INTO career_has_skill VALUES(176, 53, 100, NULL);
INSERT INTO career_has_skill VALUES(176, 141, 100, NULL);
INSERT INTO career_has_skill VALUES(176, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(176, 190, 100, NULL);
INSERT INTO career_has_skill VALUES(177, 54, 100, NULL);
INSERT INTO career_has_skill VALUES(177, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(177, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(177, 191, 100, NULL);
INSERT INTO career_has_skill VALUES(177, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(178, 87, 100, NULL);
INSERT INTO career_has_skill VALUES(178, 98, 100, NULL);
INSERT INTO career_has_skill VALUES(178, 192, 100, NULL);
INSERT INTO career_has_skill VALUES(178, 114, 100, 'ou elfique');
INSERT INTO career_has_skill VALUES(178, 115, 100, 'ou naine');
INSERT INTO career_has_skill VALUES(89, 141, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 17, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 16, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 15, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 5, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 26, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 90, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 78, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 67, 100, NULL);
INSERT INTO career_has_skill VALUES(90, 119, 100, NULL);
INSERT INTO career_has_skill VALUES(90, 194, 100, NULL);
INSERT INTO career_has_skill VALUES(90, 81, 100, NULL);
INSERT INTO career_has_skill VALUES(90, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(90, 109, 100, NULL);
INSERT INTO career_has_skill VALUES(90, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 81, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 5, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 195, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 2, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 21, 100, NULL);
INSERT INTO career_has_skill VALUES(92, 159, 100, NULL);
INSERT INTO career_has_skill VALUES(92, 155, 100, NULL);
INSERT INTO career_has_skill VALUES(92, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(93, 131, 100, NULL);
INSERT INTO career_has_skill VALUES(93, 111, 100, NULL);
INSERT INTO career_has_skill VALUES(93, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(93, 56, 100, NULL);
INSERT INTO career_has_skill VALUES(93, 21, 100, NULL);
INSERT INTO career_has_skill VALUES(94, 146, 100, NULL);
INSERT INTO career_has_skill VALUES(94, 130, 100, NULL);
INSERT INTO career_has_skill VALUES(94, 129, 100, NULL);
INSERT INTO career_has_skill VALUES(94, 123, 100, NULL);
INSERT INTO career_has_skill VALUES(94, 56, 100, NULL);
INSERT INTO career_has_skill VALUES(94, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 60, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 93, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 16, 100, NULL);
INSERT INTO career_has_skill VALUES(95, 25, 100, NULL);
INSERT INTO career_has_skill VALUES(96, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(96, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(96, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(96, 103, 100, NULL);
INSERT INTO career_has_skill VALUES(96, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(96, 146, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 16, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 17, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 21, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 23, 100, NULL);
INSERT INTO career_has_skill VALUES(97, 26, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 150, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 148, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 100, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 67, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 42, 100, NULL);
INSERT INTO career_has_skill VALUES(98, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(99, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(99, 108, 100, NULL);
INSERT INTO career_has_skill VALUES(99, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(99, 99, 100, NULL);
INSERT INTO career_has_skill VALUES(100, 157, 100, NULL);
INSERT INTO career_has_skill VALUES(100, 153, 100, NULL);
INSERT INTO career_has_skill VALUES(100, 20, 100, NULL);
INSERT INTO career_has_skill VALUES(100, 10, 100, NULL);
INSERT INTO career_has_skill VALUES(101, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(101, 153, 100, NULL);
INSERT INTO career_has_skill VALUES(101, 27, 100, NULL);
INSERT INTO career_has_skill VALUES(101, 22, 100, NULL);
INSERT INTO career_has_skill VALUES(101, 18, 100, NULL);
INSERT INTO career_has_skill VALUES(102, 157, 100, NULL);
INSERT INTO career_has_skill VALUES(102, 153, 100, NULL);
INSERT INTO career_has_skill VALUES(102, 22, 100, NULL);
INSERT INTO career_has_skill VALUES(102, 20, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 60, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 16, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 93, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 81, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(168, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(168, 198, 100, NULL);
INSERT INTO career_has_skill VALUES(168, 112, 100, 'appropri? ? la religion');
INSERT INTO career_has_skill VALUES(168, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(169, 199, 100, NULL);
INSERT INTO career_has_skill VALUES(169, 97, 100, NULL);
INSERT INTO career_has_skill VALUES(169, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(170, 200, 100, NULL);
INSERT INTO career_has_skill VALUES(170, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(170, 87, 100, NULL);
INSERT INTO career_has_skill VALUES(171, 201, 100, NULL);
INSERT INTO career_has_skill VALUES(171, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(179, 53, 100, NULL);
INSERT INTO career_has_skill VALUES(179, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(179, 202, 100, NULL);
INSERT INTO career_has_skill VALUES(179, 116, 100, NULL);
INSERT INTO career_has_skill VALUES(179, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(179, 159, 100, NULL);
INSERT INTO career_has_skill VALUES(180, 73, 100, NULL);
INSERT INTO career_has_skill VALUES(180, 76, 100, NULL);
INSERT INTO career_has_skill VALUES(180, 203, 100, NULL);
INSERT INTO career_has_skill VALUES(180, 134, 100, NULL);
INSERT INTO career_has_skill VALUES(180, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(181, 31, 100, NULL);
INSERT INTO career_has_skill VALUES(181, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(181, 204, 100, NULL);
INSERT INTO career_has_skill VALUES(181, 141, 100, NULL);
INSERT INTO career_has_skill VALUES(182, 54, 100, NULL);
INSERT INTO career_has_skill VALUES(182, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(182, 205, 100, NULL);
INSERT INTO career_has_skill VALUES(105, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 81, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 60, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 16, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 5, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 21, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 206, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 31, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 39, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 54, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 94, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 99, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 151, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 150, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 148, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 120, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 92, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 90, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 67, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 64, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 63, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 58, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 47, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 37, 100, NULL);
INSERT INTO career_has_skill VALUES(110, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 120, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 119, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 39, 100, NULL);
INSERT INTO career_has_skill VALUES(111, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(137, 141, 100, NULL);
INSERT INTO career_has_skill VALUES(112, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(112, 30, 100, NULL);
INSERT INTO career_has_skill VALUES(113, 131, 100, NULL);
INSERT INTO career_has_skill VALUES(113, 126, 100, NULL);
INSERT INTO career_has_skill VALUES(113, 35, 100, NULL);
INSERT INTO career_has_skill VALUES(113, 30, 100, NULL);
INSERT INTO career_has_skill VALUES(114, 11, 100, NULL);
INSERT INTO career_has_skill VALUES(114, 5, 100, NULL);
INSERT INTO career_has_skill VALUES(115, 126, 100, NULL);
INSERT INTO career_has_skill VALUES(115, 158, 100, NULL);
INSERT INTO career_has_skill VALUES(116, 89, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 131, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 111, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 110, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 48, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 35, 100, NULL);
INSERT INTO career_has_skill VALUES(134, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(135, 111, 100, NULL);
INSERT INTO career_has_skill VALUES(135, 77, 100, NULL);
INSERT INTO career_has_skill VALUES(135, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(135, 49, 100, NULL);
INSERT INTO career_has_skill VALUES(136, 60, 100, NULL);
INSERT INTO career_has_skill VALUES(136, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(136, 12, 100, NULL);
INSERT INTO career_has_skill VALUES(137, 46, 100, NULL);
INSERT INTO career_has_skill VALUES(137, 86, 100, NULL);
INSERT INTO career_has_skill VALUES(137, 134, 100, NULL);
INSERT INTO career_has_skill VALUES(138, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(138, 39, 100, NULL);
INSERT INTO career_has_skill VALUES(138, 31, 100, NULL);
INSERT INTO career_has_skill VALUES(139, 19, 100, NULL);
INSERT INTO career_has_skill VALUES(139, 32, 100, NULL);
INSERT INTO career_has_skill VALUES(139, 17, 100, NULL);
INSERT INTO career_has_skill VALUES(139, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(140, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(140, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(140, 79, 100, NULL);
INSERT INTO career_has_skill VALUES(140, 35, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 15, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 69, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 9, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 70, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 61, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 59, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 6, 100, NULL);
INSERT INTO career_has_skill VALUES(165, 52, 100, NULL);
INSERT INTO career_has_skill VALUES(165, 54, 100, NULL);
INSERT INTO career_has_skill VALUES(165, 99, 100, NULL);
INSERT INTO career_has_skill VALUES(165, 190, 100, NULL);
INSERT INTO career_has_skill VALUES(165, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(172, 191, 100, NULL);
INSERT INTO career_has_skill VALUES(172, 53, 100, NULL);
INSERT INTO career_has_skill VALUES(172, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(172, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(172, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(173, 51, 100, NULL);
INSERT INTO career_has_skill VALUES(173, 97, 100, NULL);
INSERT INTO career_has_skill VALUES(173, 98, 100, NULL);
INSERT INTO career_has_skill VALUES(173, 192, 100, NULL);
INSERT INTO career_has_skill VALUES(173, 141, 100, NULL);
INSERT INTO career_has_skill VALUES(174, 193, 100, NULL);
INSERT INTO career_has_skill VALUES(174, 87, 100, NULL);
INSERT INTO career_has_skill VALUES(174, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(174, 114, 100, 'ou Elfique');
INSERT INTO career_has_skill VALUES(174, 115, 100, 'ou Naine');
INSERT INTO career_has_skill VALUES(189, 51, 100, NULL);
INSERT INTO career_has_skill VALUES(189, 117, 100, NULL);
INSERT INTO career_has_skill VALUES(189, 208, 100, NULL);
INSERT INTO career_has_skill VALUES(190, 209, 100, NULL);
INSERT INTO career_has_skill VALUES(190, 97, 100, NULL);
INSERT INTO career_has_skill VALUES(190, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(191, 210, 100, NULL);
INSERT INTO career_has_skill VALUES(191, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(191, 98, 100, NULL);
INSERT INTO career_has_skill VALUES(192, 211, 100, NULL);
INSERT INTO career_has_skill VALUES(192, 31, 100, NULL);
INSERT INTO career_has_skill VALUES(192, 87, 100, NULL);
INSERT INTO career_has_skill VALUES(192, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(184, 97, 100, NULL);
INSERT INTO career_has_skill VALUES(184, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(184, 212, 100, NULL);
INSERT INTO career_has_skill VALUES(185, 51, 100, NULL);
INSERT INTO career_has_skill VALUES(185, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(185, 213, 100, NULL);
INSERT INTO career_has_skill VALUES(186, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(186, 86, 100, NULL);
INSERT INTO career_has_skill VALUES(186, 214, 100, NULL);
INSERT INTO career_has_skill VALUES(187, 87, 100, NULL);
INSERT INTO career_has_skill VALUES(187, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(187, 215, 100, NULL);
INSERT INTO career_has_skill VALUES(187, 98, 100, NULL);
INSERT INTO career_has_skill VALUES(194, 216, 100, NULL);
INSERT INTO career_has_skill VALUES(194, 53, 100, NULL);
INSERT INTO career_has_skill VALUES(194, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(194, 126, 100, NULL);
INSERT INTO career_has_skill VALUES(194, 143, 100, NULL);
INSERT INTO career_has_skill VALUES(195, 217, 100, NULL);
INSERT INTO career_has_skill VALUES(195, 31, 100, NULL);
INSERT INTO career_has_skill VALUES(195, 97, 100, NULL);
INSERT INTO career_has_skill VALUES(195, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(196, 218, 100, NULL);
INSERT INTO career_has_skill VALUES(196, 51, 100, NULL);
INSERT INTO career_has_skill VALUES(196, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(196, 98, 100, NULL);
INSERT INTO career_has_skill VALUES(196, 116, 100, NULL);
INSERT INTO career_has_skill VALUES(197, 219, 100, NULL);
INSERT INTO career_has_skill VALUES(197, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(197, 114, 100, 'ou Elfique');
INSERT INTO career_has_skill VALUES(197, 115, 100, 'ou Naine');
INSERT INTO career_has_skill VALUES(199, 220, 100, NULL);
INSERT INTO career_has_skill VALUES(199, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(199, 82, 100, NULL);
INSERT INTO career_has_skill VALUES(200, 221, 100, NULL);
INSERT INTO career_has_skill VALUES(200, 124, 100, NULL);
INSERT INTO career_has_skill VALUES(200, 96, 100, NULL);
INSERT INTO career_has_skill VALUES(201, 222, 100, NULL);
INSERT INTO career_has_skill VALUES(201, 97, 100, NULL);
INSERT INTO career_has_skill VALUES(201, 55, 100, NULL);
INSERT INTO career_has_skill VALUES(202, 223, 100, NULL);
INSERT INTO career_has_skill VALUES(202, 87, 100, NULL);
INSERT INTO career_has_skill VALUES(202, 88, 100, NULL);
INSERT INTO career_has_skill VALUES(202, 98, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 189, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 68, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 206, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 107, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(205, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 36, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 132, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 107, 100, NULL);
INSERT INTO career_has_skill VALUES(37, 131, 100, NULL);
INSERT INTO career_has_skill VALUES(33, 119, 100, NULL);
INSERT INTO career_has_skill VALUES(33, 131, 100, NULL);
INSERT INTO career_has_skill VALUES(44, 159, 100, NULL);
INSERT INTO career_has_skill VALUES(83, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 5, 100, NULL);
INSERT INTO career_has_skill VALUES(74, 112, 100, NULL);
INSERT INTO career_has_skill VALUES(74, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(67, 183, 100, NULL);
INSERT INTO career_has_skill VALUES(67, 147, 100, NULL);
INSERT INTO career_has_skill VALUES(67, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(70, 135, 100, NULL);
INSERT INTO career_has_skill VALUES(70, 140, 100, NULL);
INSERT INTO career_has_skill VALUES(136, 13, 100, NULL);
INSERT INTO career_has_skill VALUES(50, 146, 100, NULL);
INSERT INTO career_has_skill VALUES(50, 147, 100, NULL);
INSERT INTO career_has_skill VALUES(84, 180, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(29, 144, 100, NULL);
INSERT INTO career_has_skill VALUES(136, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(89, 28, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 27, 100, NULL);
INSERT INTO career_has_skill VALUES(91, 150, 100, NULL);
INSERT INTO career_has_skill VALUES(93, 196, 100, NULL);
INSERT INTO career_has_skill VALUES(93, 197, 100, NULL);
INSERT INTO career_has_skill VALUES(99, 138, 100, NULL);
INSERT INTO career_has_skill VALUES(101, 29, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 106, 100, NULL);
INSERT INTO career_has_skill VALUES(103, 25, 100, NULL);
INSERT INTO career_has_skill VALUES(105, 33, 100, NULL);
INSERT INTO career_has_skill VALUES(105, 75, 100, NULL);
INSERT INTO career_has_skill VALUES(107, 27, 100, NULL);
INSERT INTO career_has_skill VALUES(108, 152, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 111, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 120, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 131, 100, NULL);
INSERT INTO career_has_skill VALUES(109, 149, 100, NULL);
INSERT INTO career_has_skill VALUES(137, 159, 100, NULL);
INSERT INTO career_has_skill VALUES(139, 80, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 23, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 26, 100, NULL);
INSERT INTO career_has_skill VALUES(141, 151, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 25, 100, NULL);
INSERT INTO career_has_skill VALUES(143, 207, 100, NULL);
INSERT INTO career_has_skill VALUES(206, 165, 25, '');
INSERT INTO career_has_skill VALUES(206, 164, 100, '');
INSERT INTO career_has_skill VALUES(206, 1, 100, '');
INSERT INTO career_has_skill VALUES(206, 2, 100, '');


DROP TABLE IF EXISTS casting_has_reagent;
CREATE TABLE IF NOT EXISTS casting_has_reagent (
  casting_id int(10) unsigned NOT NULL default '0',
  reagent_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (casting_id,reagent_id)
) ;


INSERT INTO casting_has_reagent VALUES(1, 1);

DROP TABLE IF EXISTS city_has_map;
CREATE TABLE IF NOT EXISTS city_has_map (
  city_id int(10) unsigned NOT NULL default '0',
  map_id int(11) NOT NULL default '0',
  PRIMARY KEY  (city_id,map_id),
  FOREIGN KEY (city_id) REFERENCES city(city_id),
  FOREIGN KEY (map_id) REFERENCES map(map_id)
) ;

DROP TABLE IF EXISTS continent_has_map;
CREATE TABLE IF NOT EXISTS continent_has_map (
  continent_id int(11) NOT NULL default '0',
  map_id int(11) NOT NULL default '0',
  PRIMARY KEY  (continent_id,map_id),
  FOREIGN KEY (continent_id) REFERENCES continent(continent_id),
  FOREIGN KEY (map_id) REFERENCES map(map_id)
) ;


DROP TABLE IF EXISTS country_has_map;
CREATE TABLE IF NOT EXISTS country_has_map (
  country_id int(11) NOT NULL default '0',
  map_id int(11) NOT NULL default '0',
  PRIMARY KEY  (country_id,map_id),
  FOREIGN KEY (country_id) REFERENCES country(country_id),
  FOREIGN KEY (map_id) REFERENCES map(map_id)
) ;

INSERT INTO country_has_map VALUES(4, 80);
INSERT INTO country_has_map VALUES(4, 81);
INSERT INTO country_has_map VALUES(4, 82);
INSERT INTO country_has_map VALUES(4, 83);

DROP TABLE IF EXISTS cut_has_webpage;
CREATE TABLE IF NOT EXISTS cut_has_webpage (
  cut_id int(11) NOT NULL default '0',
  webpage_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cut_id,webpage_id),
  FOREIGN KEY (cut_id) REFERENCES cut(cut_id),
  FOREIGN KEY (webpage_id) REFERENCES webpage(webpage_id)
) ;

DROP TABLE IF EXISTS image_has_cut;
CREATE TABLE IF NOT EXISTS image_has_cut (
  image_id int(11) NOT NULL default '0',
  cut_id int(11) NOT NULL default '0',
  PRIMARY KEY  (image_id,cut_id),
  FOREIGN KEY (image_id) REFERENCES image(image_id),
  FOREIGN KEY (cut_id) REFERENCES cut(cut_id)
) ;


INSERT INTO image_has_cut VALUES(109, 1);
INSERT INTO image_has_cut VALUES(109, 2);
INSERT INTO image_has_cut VALUES(109, 3);
INSERT INTO image_has_cut VALUES(109, 4);
INSERT INTO image_has_cut VALUES(109, 5);
INSERT INTO image_has_cut VALUES(109, 6);
INSERT INTO image_has_cut VALUES(109, 7);
INSERT INTO image_has_cut VALUES(109, 8);
INSERT INTO image_has_cut VALUES(109, 9);

DROP TABLE IF EXISTS joueur_has_personnage;
CREATE TABLE IF NOT EXISTS joueur_has_personnage (
  user_id int(11) NOT NULL default '0',
  personnage_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (user_id,personnage_id)
) ;


INSERT INTO joueur_has_personnage VALUES(3, 1);

DROP TABLE IF EXISTS maitre_has_personnage;
CREATE TABLE IF NOT EXISTS maitre_has_personnage (
  user_id int(11) NOT NULL default '0',
  personnage_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (user_id,personnage_id)
) ;

DROP TABLE IF EXISTS personnage_has_characteristic;
CREATE TABLE IF NOT EXISTS personnage_has_characteristic (
  personnage_id int(10) unsigned NOT NULL default '0',
  characteristic_id int(11) NOT NULL default '0',
  PRIMARY KEY  (personnage_id,characteristic_id)
) ;





DROP TABLE IF EXISTS personnage_has_language;
CREATE TABLE IF NOT EXISTS personnage_has_language (
  personnage_id int(10) unsigned NOT NULL default '0',
  language_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (personnage_id,language_id)
) ;





DROP TABLE IF EXISTS personnage_has_skill;
CREATE TABLE IF NOT EXISTS personnage_has_skill (
  personnage_id int(10) unsigned NOT NULL default '0',
  skill_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (personnage_id,skill_id)
) ;





DROP TABLE IF EXISTS personnage_has_trait;
CREATE TABLE IF NOT EXISTS personnage_has_trait (
  personnage_id int(10) unsigned NOT NULL default '0',
  trait_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (personnage_id,trait_id)
) ;


DROP TABLE IF EXISTS race_has_alignment;
CREATE TABLE IF NOT EXISTS race_has_alignment (
  race_id int(11) NOT NULL default '0',
  alignment_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (race_id,alignment_id)
) ;


INSERT INTO race_has_alignment VALUES(1, 1);
INSERT INTO race_has_alignment VALUES(1, 2);
INSERT INTO race_has_alignment VALUES(1, 3);
INSERT INTO race_has_alignment VALUES(1, 4);
INSERT INTO race_has_alignment VALUES(1, 5);
INSERT INTO race_has_alignment VALUES(2, 1);
INSERT INTO race_has_alignment VALUES(2, 2);
INSERT INTO race_has_alignment VALUES(3, 1);
INSERT INTO race_has_alignment VALUES(3, 2);
INSERT INTO race_has_alignment VALUES(3, 3);
INSERT INTO race_has_alignment VALUES(3, 4);
INSERT INTO race_has_alignment VALUES(3, 5);
INSERT INTO race_has_alignment VALUES(4, 3);
INSERT INTO race_has_alignment VALUES(5, 3);



DROP TABLE IF EXISTS race_has_characteristic;
CREATE TABLE IF NOT EXISTS race_has_characteristic (
  race_id int(11) NOT NULL default '0',
  characteristic_id int(11) NOT NULL default '0',
  `value` int(11) default NULL,
  PRIMARY KEY  (race_id,characteristic_id)
) ;





DROP TABLE IF EXISTS race_has_corpulence;
CREATE TABLE IF NOT EXISTS race_has_corpulence (
  race_id int(11) NOT NULL default '0',
  corpulence_id int(10) unsigned NOT NULL default '0',
  chance int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (race_id,corpulence_id,chance)
) ;


INSERT INTO race_has_corpulence VALUES(1, 1, 1);
INSERT INTO race_has_corpulence VALUES(1, 2, 2);
INSERT INTO race_has_corpulence VALUES(1, 3, 3);
INSERT INTO race_has_corpulence VALUES(1, 3, 4);
INSERT INTO race_has_corpulence VALUES(1, 5, 5);
INSERT INTO race_has_corpulence VALUES(1, 6, 6);
INSERT INTO race_has_corpulence VALUES(2, 1, 1);
INSERT INTO race_has_corpulence VALUES(2, 2, 2);
INSERT INTO race_has_corpulence VALUES(2, 2, 3);
INSERT INTO race_has_corpulence VALUES(2, 3, 4);
INSERT INTO race_has_corpulence VALUES(2, 3, 5);
INSERT INTO race_has_corpulence VALUES(2, 3, 6);
INSERT INTO race_has_corpulence VALUES(3, 2, 1);
INSERT INTO race_has_corpulence VALUES(3, 3, 2);
INSERT INTO race_has_corpulence VALUES(3, 3, 3);
INSERT INTO race_has_corpulence VALUES(3, 4, 4);
INSERT INTO race_has_corpulence VALUES(3, 4, 5);
INSERT INTO race_has_corpulence VALUES(3, 5, 6);
INSERT INTO race_has_corpulence VALUES(4, 2, 1);
INSERT INTO race_has_corpulence VALUES(4, 3, 2);
INSERT INTO race_has_corpulence VALUES(4, 3, 3);
INSERT INTO race_has_corpulence VALUES(4, 4, 4);
INSERT INTO race_has_corpulence VALUES(4, 5, 5);
INSERT INTO race_has_corpulence VALUES(4, 5, 6);
INSERT INTO race_has_corpulence VALUES(5, 2, 1);
INSERT INTO race_has_corpulence VALUES(5, 3, 2);
INSERT INTO race_has_corpulence VALUES(5, 3, 3);
INSERT INTO race_has_corpulence VALUES(5, 4, 4);
INSERT INTO race_has_corpulence VALUES(5, 5, 5);
INSERT INTO race_has_corpulence VALUES(5, 5, 6);



DROP TABLE IF EXISTS race_has_eye;
CREATE TABLE IF NOT EXISTS race_has_eye (
  race_id int(11) NOT NULL default '0',
  eye_id int(10) unsigned NOT NULL default '0',
  mini int(10) unsigned NOT NULL default '0',
  maxi int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (race_id,eye_id,mini,maxi)
) ;


INSERT INTO race_has_eye VALUES(1, 1, 1, 5);
INSERT INTO race_has_eye VALUES(1, 1, 6, 10);
INSERT INTO race_has_eye VALUES(1, 2, 11, 15);
INSERT INTO race_has_eye VALUES(1, 2, 16, 20);
INSERT INTO race_has_eye VALUES(1, 3, 21, 25);
INSERT INTO race_has_eye VALUES(1, 3, 26, 30);
INSERT INTO race_has_eye VALUES(1, 4, 31, 35);
INSERT INTO race_has_eye VALUES(1, 5, 36, 40);
INSERT INTO race_has_eye VALUES(1, 6, 41, 45);
INSERT INTO race_has_eye VALUES(1, 6, 46, 50);
INSERT INTO race_has_eye VALUES(1, 7, 51, 55);
INSERT INTO race_has_eye VALUES(1, 7, 56, 60);
INSERT INTO race_has_eye VALUES(1, 7, 61, 65);
INSERT INTO race_has_eye VALUES(1, 7, 66, 70);
INSERT INTO race_has_eye VALUES(1, 8, 71, 75);
INSERT INTO race_has_eye VALUES(1, 8, 76, 80);
INSERT INTO race_has_eye VALUES(1, 8, 81, 85);
INSERT INTO race_has_eye VALUES(1, 9, 86, 90);
INSERT INTO race_has_eye VALUES(1, 9, 91, 95);
INSERT INTO race_has_eye VALUES(1, 10, 96, 100);
INSERT INTO race_has_eye VALUES(2, 1, 6, 10);
INSERT INTO race_has_eye VALUES(2, 2, 11, 15);
INSERT INTO race_has_eye VALUES(2, 3, 21, 25);
INSERT INTO race_has_eye VALUES(2, 3, 26, 30);
INSERT INTO race_has_eye VALUES(2, 4, 31, 35);
INSERT INTO race_has_eye VALUES(2, 5, 36, 40);
INSERT INTO race_has_eye VALUES(2, 5, 41, 45);
INSERT INTO race_has_eye VALUES(2, 7, 46, 50);
INSERT INTO race_has_eye VALUES(2, 7, 51, 55);
INSERT INTO race_has_eye VALUES(2, 8, 61, 65);
INSERT INTO race_has_eye VALUES(2, 8, 66, 70);
INSERT INTO race_has_eye VALUES(2, 8, 71, 75);
INSERT INTO race_has_eye VALUES(2, 8, 76, 80);
INSERT INTO race_has_eye VALUES(2, 9, 81, 85);
INSERT INTO race_has_eye VALUES(2, 9, 86, 90);
INSERT INTO race_has_eye VALUES(2, 11, 56, 60);
INSERT INTO race_has_eye VALUES(2, 12, 91, 95);
INSERT INTO race_has_eye VALUES(2, 13, 1, 5);
INSERT INTO race_has_eye VALUES(2, 14, 16, 20);
INSERT INTO race_has_eye VALUES(2, 15, 96, 100);
INSERT INTO race_has_eye VALUES(3, 1, 1, 5);
INSERT INTO race_has_eye VALUES(3, 1, 6, 10);
INSERT INTO race_has_eye VALUES(3, 3, 11, 15);
INSERT INTO race_has_eye VALUES(3, 3, 16, 20);
INSERT INTO race_has_eye VALUES(3, 6, 21, 25);
INSERT INTO race_has_eye VALUES(3, 7, 26, 30);
INSERT INTO race_has_eye VALUES(3, 7, 31, 35);
INSERT INTO race_has_eye VALUES(3, 7, 36, 40);
INSERT INTO race_has_eye VALUES(3, 7, 41, 45);
INSERT INTO race_has_eye VALUES(3, 8, 56, 60);
INSERT INTO race_has_eye VALUES(3, 8, 61, 65);
INSERT INTO race_has_eye VALUES(3, 8, 66, 70);
INSERT INTO race_has_eye VALUES(3, 8, 71, 75);
INSERT INTO race_has_eye VALUES(3, 8, 76, 80);
INSERT INTO race_has_eye VALUES(3, 9, 81, 85);
INSERT INTO race_has_eye VALUES(3, 9, 86, 90);
INSERT INTO race_has_eye VALUES(3, 10, 96, 100);
INSERT INTO race_has_eye VALUES(3, 11, 46, 50);
INSERT INTO race_has_eye VALUES(3, 11, 51, 55);
INSERT INTO race_has_eye VALUES(3, 12, 91, 95);
INSERT INTO race_has_eye VALUES(4, 1, 1, 5);
INSERT INTO race_has_eye VALUES(4, 3, 6, 10);
INSERT INTO race_has_eye VALUES(4, 3, 11, 15);
INSERT INTO race_has_eye VALUES(4, 6, 16, 20);
INSERT INTO race_has_eye VALUES(4, 6, 21, 25);
INSERT INTO race_has_eye VALUES(4, 6, 26, 30);
INSERT INTO race_has_eye VALUES(4, 7, 31, 35);
INSERT INTO race_has_eye VALUES(4, 7, 36, 40);
INSERT INTO race_has_eye VALUES(4, 8, 46, 50);
INSERT INTO race_has_eye VALUES(4, 8, 51, 55);
INSERT INTO race_has_eye VALUES(4, 8, 56, 60);
INSERT INTO race_has_eye VALUES(4, 8, 61, 65);
INSERT INTO race_has_eye VALUES(4, 8, 66, 70);
INSERT INTO race_has_eye VALUES(4, 8, 71, 75);
INSERT INTO race_has_eye VALUES(4, 8, 76, 80);
INSERT INTO race_has_eye VALUES(4, 9, 81, 85);
INSERT INTO race_has_eye VALUES(4, 9, 86, 90);
INSERT INTO race_has_eye VALUES(4, 9, 91, 95);
INSERT INTO race_has_eye VALUES(4, 9, 96, 100);
INSERT INTO race_has_eye VALUES(4, 11, 41, 45);
INSERT INTO race_has_eye VALUES(5, 1, 1, 5);
INSERT INTO race_has_eye VALUES(5, 3, 6, 10);
INSERT INTO race_has_eye VALUES(5, 3, 11, 15);
INSERT INTO race_has_eye VALUES(5, 6, 16, 20);
INSERT INTO race_has_eye VALUES(5, 6, 21, 25);
INSERT INTO race_has_eye VALUES(5, 6, 26, 30);
INSERT INTO race_has_eye VALUES(5, 7, 31, 35);
INSERT INTO race_has_eye VALUES(5, 7, 36, 40);
INSERT INTO race_has_eye VALUES(5, 8, 46, 50);
INSERT INTO race_has_eye VALUES(5, 8, 51, 55);
INSERT INTO race_has_eye VALUES(5, 8, 56, 60);
INSERT INTO race_has_eye VALUES(5, 8, 61, 65);
INSERT INTO race_has_eye VALUES(5, 8, 66, 70);
INSERT INTO race_has_eye VALUES(5, 8, 71, 75);
INSERT INTO race_has_eye VALUES(5, 8, 76, 80);
INSERT INTO race_has_eye VALUES(5, 9, 81, 85);
INSERT INTO race_has_eye VALUES(5, 9, 86, 90);
INSERT INTO race_has_eye VALUES(5, 9, 91, 95);
INSERT INTO race_has_eye VALUES(5, 9, 96, 100);
INSERT INTO race_has_eye VALUES(5, 11, 41, 45);



DROP TABLE IF EXISTS race_has_hair;
CREATE TABLE IF NOT EXISTS race_has_hair (
  race_id int(11) NOT NULL default '0',
  hair_id int(10) unsigned NOT NULL default '0',
  mini int(10) unsigned NOT NULL default '0',
  maxi int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (race_id,hair_id,mini,maxi)
) ;


INSERT INTO race_has_hair VALUES(1, 1, 1, 5);
INSERT INTO race_has_hair VALUES(1, 1, 6, 10);
INSERT INTO race_has_hair VALUES(1, 2, 11, 15);
INSERT INTO race_has_hair VALUES(1, 2, 16, 20);
INSERT INTO race_has_hair VALUES(1, 3, 21, 25);
INSERT INTO race_has_hair VALUES(1, 4, 26, 30);
INSERT INTO race_has_hair VALUES(1, 5, 31, 35);
INSERT INTO race_has_hair VALUES(1, 5, 36, 40);
INSERT INTO race_has_hair VALUES(1, 5, 41, 45);
INSERT INTO race_has_hair VALUES(1, 6, 46, 50);
INSERT INTO race_has_hair VALUES(1, 7, 51, 55);
INSERT INTO race_has_hair VALUES(1, 8, 56, 60);
INSERT INTO race_has_hair VALUES(1, 9, 61, 65);
INSERT INTO race_has_hair VALUES(1, 10, 66, 70);
INSERT INTO race_has_hair VALUES(1, 10, 71, 75);
INSERT INTO race_has_hair VALUES(1, 11, 76, 80);
INSERT INTO race_has_hair VALUES(1, 11, 81, 85);
INSERT INTO race_has_hair VALUES(1, 12, 86, 90);
INSERT INTO race_has_hair VALUES(1, 12, 91, 95);
INSERT INTO race_has_hair VALUES(1, 13, 96, 100);
INSERT INTO race_has_hair VALUES(2, 1, 1, 5);
INSERT INTO race_has_hair VALUES(2, 2, 6, 10);
INSERT INTO race_has_hair VALUES(2, 2, 11, 15);
INSERT INTO race_has_hair VALUES(2, 3, 16, 20);
INSERT INTO race_has_hair VALUES(2, 3, 21, 25);
INSERT INTO race_has_hair VALUES(2, 4, 26, 30);
INSERT INTO race_has_hair VALUES(2, 4, 31, 35);
INSERT INTO race_has_hair VALUES(2, 5, 36, 40);
INSERT INTO race_has_hair VALUES(2, 5, 41, 45);
INSERT INTO race_has_hair VALUES(2, 7, 46, 50);
INSERT INTO race_has_hair VALUES(2, 8, 51, 55);
INSERT INTO race_has_hair VALUES(2, 10, 56, 60);
INSERT INTO race_has_hair VALUES(2, 10, 61, 65);
INSERT INTO race_has_hair VALUES(2, 11, 66, 70);
INSERT INTO race_has_hair VALUES(2, 11, 71, 75);
INSERT INTO race_has_hair VALUES(2, 12, 76, 80);
INSERT INTO race_has_hair VALUES(2, 12, 81, 85);
INSERT INTO race_has_hair VALUES(2, 13, 91, 95);
INSERT INTO race_has_hair VALUES(2, 13, 96, 100);
INSERT INTO race_has_hair VALUES(2, 14, 86, 90);
INSERT INTO race_has_hair VALUES(3, 1, 1, 5);
INSERT INTO race_has_hair VALUES(3, 1, 6, 10);
INSERT INTO race_has_hair VALUES(3, 3, 11, 15);
INSERT INTO race_has_hair VALUES(3, 3, 16, 20);
INSERT INTO race_has_hair VALUES(3, 4, 21, 25);
INSERT INTO race_has_hair VALUES(3, 4, 26, 30);
INSERT INTO race_has_hair VALUES(3, 5, 31, 35);
INSERT INTO race_has_hair VALUES(3, 6, 36, 40);
INSERT INTO race_has_hair VALUES(3, 6, 41, 45);
INSERT INTO race_has_hair VALUES(3, 9, 46, 50);
INSERT INTO race_has_hair VALUES(3, 9, 51, 55);
INSERT INTO race_has_hair VALUES(3, 10, 56, 60);
INSERT INTO race_has_hair VALUES(3, 10, 61, 65);
INSERT INTO race_has_hair VALUES(3, 11, 66, 70);
INSERT INTO race_has_hair VALUES(3, 11, 71, 75);
INSERT INTO race_has_hair VALUES(3, 11, 76, 80);
INSERT INTO race_has_hair VALUES(3, 12, 81, 85);
INSERT INTO race_has_hair VALUES(3, 12, 86, 90);
INSERT INTO race_has_hair VALUES(3, 14, 91, 95);
INSERT INTO race_has_hair VALUES(3, 15, 96, 100);
INSERT INTO race_has_hair VALUES(4, 1, 1, 5);
INSERT INTO race_has_hair VALUES(4, 3, 6, 10);
INSERT INTO race_has_hair VALUES(4, 3, 11, 15);
INSERT INTO race_has_hair VALUES(4, 4, 16, 20);
INSERT INTO race_has_hair VALUES(4, 4, 21, 25);
INSERT INTO race_has_hair VALUES(4, 5, 26, 30);
INSERT INTO race_has_hair VALUES(4, 5, 31, 35);
INSERT INTO race_has_hair VALUES(4, 5, 36, 40);
INSERT INTO race_has_hair VALUES(4, 6, 41, 45);
INSERT INTO race_has_hair VALUES(4, 7, 46, 50);
INSERT INTO race_has_hair VALUES(4, 8, 51, 55);
INSERT INTO race_has_hair VALUES(4, 10, 56, 60);
INSERT INTO race_has_hair VALUES(4, 10, 61, 65);
INSERT INTO race_has_hair VALUES(4, 10, 66, 70);
INSERT INTO race_has_hair VALUES(4, 11, 71, 75);
INSERT INTO race_has_hair VALUES(4, 11, 76, 80);
INSERT INTO race_has_hair VALUES(4, 11, 81, 85);
INSERT INTO race_has_hair VALUES(4, 12, 86, 90);
INSERT INTO race_has_hair VALUES(4, 12, 91, 95);
INSERT INTO race_has_hair VALUES(4, 15, 96, 100);
INSERT INTO race_has_hair VALUES(5, 1, 1, 5);
INSERT INTO race_has_hair VALUES(5, 3, 6, 10);
INSERT INTO race_has_hair VALUES(5, 3, 11, 15);
INSERT INTO race_has_hair VALUES(5, 4, 16, 20);
INSERT INTO race_has_hair VALUES(5, 4, 21, 25);
INSERT INTO race_has_hair VALUES(5, 5, 26, 30);
INSERT INTO race_has_hair VALUES(5, 5, 31, 35);
INSERT INTO race_has_hair VALUES(5, 5, 36, 40);
INSERT INTO race_has_hair VALUES(5, 6, 41, 45);
INSERT INTO race_has_hair VALUES(5, 7, 46, 50);
INSERT INTO race_has_hair VALUES(5, 8, 51, 55);
INSERT INTO race_has_hair VALUES(5, 10, 56, 60);
INSERT INTO race_has_hair VALUES(5, 10, 61, 65);
INSERT INTO race_has_hair VALUES(5, 10, 66, 70);
INSERT INTO race_has_hair VALUES(5, 11, 71, 75);
INSERT INTO race_has_hair VALUES(5, 11, 76, 80);
INSERT INTO race_has_hair VALUES(5, 11, 81, 85);
INSERT INTO race_has_hair VALUES(5, 12, 86, 90);
INSERT INTO race_has_hair VALUES(5, 12, 91, 95);
INSERT INTO race_has_hair VALUES(5, 15, 96, 100);



DROP TABLE IF EXISTS race_has_initialcareer;
CREATE TABLE IF NOT EXISTS race_has_initialcareer (
  race_id int(11) NOT NULL default '0',
  career_id int(10) unsigned NOT NULL default '0',
  vocation_id int(10) unsigned NOT NULL default '0',
  mini int(10) unsigned default NULL,
  maxi int(10) unsigned default NULL,
  PRIMARY KEY  (race_id,career_id,vocation_id)
) ;


INSERT INTO race_has_initialcareer VALUES(1, 36, 1, 1, 5);
INSERT INTO race_has_initialcareer VALUES(1, 40, 1, 6, 15);
INSERT INTO race_has_initialcareer VALUES(1, 42, 1, 16, 20);
INSERT INTO race_has_initialcareer VALUES(1, 45, 1, 21, 25);
INSERT INTO race_has_initialcareer VALUES(1, 46, 1, 26, 35);
INSERT INTO race_has_initialcareer VALUES(1, 49, 1, 36, 40);
INSERT INTO race_has_initialcareer VALUES(1, 51, 1, 41, 45);
INSERT INTO race_has_initialcareer VALUES(1, 55, 1, 46, 55);
INSERT INTO race_has_initialcareer VALUES(1, 59, 1, 56, 65);
INSERT INTO race_has_initialcareer VALUES(1, 60, 1, 66, 70);
INSERT INTO race_has_initialcareer VALUES(1, 63, 1, 71, 80);
INSERT INTO race_has_initialcareer VALUES(1, 64, 1, 81, 85);
INSERT INTO race_has_initialcareer VALUES(1, 79, 1, 86, 95);
INSERT INTO race_has_initialcareer VALUES(1, 80, 1, 96, 100);
INSERT INTO race_has_initialcareer VALUES(2, 36, 1, 1, 10);
INSERT INTO race_has_initialcareer VALUES(2, 40, 1, 11, 15);
INSERT INTO race_has_initialcareer VALUES(2, 42, 1, 16, 25);
INSERT INTO race_has_initialcareer VALUES(2, 45, 1, 26, 30);
INSERT INTO race_has_initialcareer VALUES(2, 46, 1, 31, 40);
INSERT INTO race_has_initialcareer VALUES(2, 49, 1, 41, 50);
INSERT INTO race_has_initialcareer VALUES(2, 55, 1, 51, 55);
INSERT INTO race_has_initialcareer VALUES(2, 60, 1, 56, 65);
INSERT INTO race_has_initialcareer VALUES(2, 63, 1, 66, 75);
INSERT INTO race_has_initialcareer VALUES(2, 64, 1, 76, 80);
INSERT INTO race_has_initialcareer VALUES(2, 79, 1, 81, 95);
INSERT INTO race_has_initialcareer VALUES(2, 80, 1, 96, 100);
INSERT INTO race_has_initialcareer VALUES(3, 35, 1, 1, 10);
INSERT INTO race_has_initialcareer VALUES(3, 40, 1, 11, 15);
INSERT INTO race_has_initialcareer VALUES(3, 42, 1, 16, 20);
INSERT INTO race_has_initialcareer VALUES(3, 45, 1, 21, 25);
INSERT INTO race_has_initialcareer VALUES(3, 46, 1, 26, 35);
INSERT INTO race_has_initialcareer VALUES(3, 49, 1, 36, 40);
INSERT INTO race_has_initialcareer VALUES(3, 51, 1, 41, 45);
INSERT INTO race_has_initialcareer VALUES(3, 55, 1, 46, 50);
INSERT INTO race_has_initialcareer VALUES(3, 59, 1, 51, 55);
INSERT INTO race_has_initialcareer VALUES(3, 63, 1, 56, 65);
INSERT INTO race_has_initialcareer VALUES(3, 64, 1, 66, 75);
INSERT INTO race_has_initialcareer VALUES(3, 73, 1, 76, 85);
INSERT INTO race_has_initialcareer VALUES(3, 79, 1, 86, 95);
INSERT INTO race_has_initialcareer VALUES(3, 80, 1, 96, 100);
INSERT INTO race_has_initialcareer VALUES(4, 40, 1, 1, 15);
INSERT INTO race_has_initialcareer VALUES(4, 42, 1, 16, 25);
INSERT INTO race_has_initialcareer VALUES(4, 45, 1, 26, 45);
INSERT INTO race_has_initialcareer VALUES(4, 46, 1, 46, 60);
INSERT INTO race_has_initialcareer VALUES(4, 49, 1, 61, 65);
INSERT INTO race_has_initialcareer VALUES(4, 55, 1, 66, 70);
INSERT INTO race_has_initialcareer VALUES(4, 59, 1, 71, 75);
INSERT INTO race_has_initialcareer VALUES(4, 64, 1, 76, 85);
INSERT INTO race_has_initialcareer VALUES(4, 79, 1, 86, 100);
INSERT INTO race_has_initialcareer VALUES(5, 35, 1, 1, 8);
INSERT INTO race_has_initialcareer VALUES(5, 38, 1, 9, 16);
INSERT INTO race_has_initialcareer VALUES(5, 40, 1, 17, 23);
INSERT INTO race_has_initialcareer VALUES(5, 45, 1, 24, 27);
INSERT INTO race_has_initialcareer VALUES(5, 46, 1, 28, 34);
INSERT INTO race_has_initialcareer VALUES(5, 49, 1, 35, 39);
INSERT INTO race_has_initialcareer VALUES(5, 51, 1, 40, 47);
INSERT INTO race_has_initialcareer VALUES(5, 55, 1, 48, 55);
INSERT INTO race_has_initialcareer VALUES(5, 59, 1, 56, 62);
INSERT INTO race_has_initialcareer VALUES(5, 63, 1, 63, 70);
INSERT INTO race_has_initialcareer VALUES(5, 64, 1, 71, 77);
INSERT INTO race_has_initialcareer VALUES(5, 75, 1, 78, 86);
INSERT INTO race_has_initialcareer VALUES(5, 77, 1, 87, 94);
INSERT INTO race_has_initialcareer VALUES(5, 80, 1, 95, 100);
INSERT INTO race_has_initialcareer VALUES(1, 6, 2, 1, 5);
INSERT INTO race_has_initialcareer VALUES(1, 29, 2, 6, 15);
INSERT INTO race_has_initialcareer VALUES(1, 30, 2, 16, 20);
INSERT INTO race_has_initialcareer VALUES(1, 31, 2, 21, 25);
INSERT INTO race_has_initialcareer VALUES(1, 32, 2, 26, 30);
INSERT INTO race_has_initialcareer VALUES(1, 47, 2, 31, 40);
INSERT INTO race_has_initialcareer VALUES(1, 52, 2, 41, 45);
INSERT INTO race_has_initialcareer VALUES(1, 65, 2, 46, 50);
INSERT INTO race_has_initialcareer VALUES(1, 67, 2, 51, 60);
INSERT INTO race_has_initialcareer VALUES(1, 68, 2, 61, 65);
INSERT INTO race_has_initialcareer VALUES(1, 69, 2, 66, 70);
INSERT INTO race_has_initialcareer VALUES(1, 70, 2, 71, 75);
INSERT INTO race_has_initialcareer VALUES(1, 72, 2, 76, 80);
INSERT INTO race_has_initialcareer VALUES(1, 75, 2, 81, 85);
INSERT INTO race_has_initialcareer VALUES(1, 77, 2, 86, 90);
INSERT INTO race_has_initialcareer VALUES(1, 82, 2, 91, 100);
INSERT INTO race_has_initialcareer VALUES(2, 6, 2, 1, 10);
INSERT INTO race_has_initialcareer VALUES(2, 29, 2, 11, 20);
INSERT INTO race_has_initialcareer VALUES(2, 30, 2, 21, 30);
INSERT INTO race_has_initialcareer VALUES(2, 31, 2, 31, 35);
INSERT INTO race_has_initialcareer VALUES(2, 32, 2, 36, 40);
INSERT INTO race_has_initialcareer VALUES(2, 47, 2, 41, 50);
INSERT INTO race_has_initialcareer VALUES(2, 52, 2, 51, 55);
INSERT INTO race_has_initialcareer VALUES(2, 65, 2, 56, 60);
INSERT INTO race_has_initialcareer VALUES(2, 67, 2, 61, 70);
INSERT INTO race_has_initialcareer VALUES(2, 70, 2, 71, 80);
INSERT INTO race_has_initialcareer VALUES(2, 72, 2, 81, 90);
INSERT INTO race_has_initialcareer VALUES(2, 82, 2, 91, 100);
INSERT INTO race_has_initialcareer VALUES(3, 30, 2, 1, 5);
INSERT INTO race_has_initialcareer VALUES(3, 31, 2, 6, 15);
INSERT INTO race_has_initialcareer VALUES(3, 32, 2, 16, 20);
INSERT INTO race_has_initialcareer VALUES(3, 39, 2, 21, 35);
INSERT INTO race_has_initialcareer VALUES(3, 47, 2, 36, 40);
INSERT INTO race_has_initialcareer VALUES(3, 65, 2, 41, 50);
INSERT INTO race_has_initialcareer VALUES(3, 68, 2, 51, 55);
INSERT INTO race_has_initialcareer VALUES(3, 69, 2, 56, 60);
INSERT INTO race_has_initialcareer VALUES(3, 75, 2, 61, 80);
INSERT INTO race_has_initialcareer VALUES(3, 77, 2, 81, 90);
INSERT INTO race_has_initialcareer VALUES(3, 82, 2, 91, 100);
INSERT INTO race_has_initialcareer VALUES(4, 29, 2, 1, 15);
INSERT INTO race_has_initialcareer VALUES(4, 30, 2, 16, 25);
INSERT INTO race_has_initialcareer VALUES(4, 32, 2, 26, 30);
INSERT INTO race_has_initialcareer VALUES(4, 47, 2, 31, 40);
INSERT INTO race_has_initialcareer VALUES(4, 65, 2, 41, 50);
INSERT INTO race_has_initialcareer VALUES(4, 67, 2, 51, 60);
INSERT INTO race_has_initialcareer VALUES(4, 68, 2, 61, 65);
INSERT INTO race_has_initialcareer VALUES(4, 69, 2, 66, 70);
INSERT INTO race_has_initialcareer VALUES(4, 70, 2, 71, 75);
INSERT INTO race_has_initialcareer VALUES(4, 77, 2, 76, 90);
INSERT INTO race_has_initialcareer VALUES(4, 82, 2, 91, 100);
INSERT INTO race_has_initialcareer VALUES(1, 1, 3, 1, 5);
INSERT INTO race_has_initialcareer VALUES(1, 166, 3, 6, 15);
INSERT INTO race_has_initialcareer VALUES(1, 28, 3, 16, 25);
INSERT INTO race_has_initialcareer VALUES(1, 34, 3, 26, 30);
INSERT INTO race_has_initialcareer VALUES(1, 38, 3, 31, 35);
INSERT INTO race_has_initialcareer VALUES(1, 50, 3, 36, 40);
INSERT INTO race_has_initialcareer VALUES(1, 53, 3, 41, 50);
INSERT INTO race_has_initialcareer VALUES(1, 57, 3, 51, 55);
INSERT INTO race_has_initialcareer VALUES(1, 61, 3, 56, 65);
INSERT INTO race_has_initialcareer VALUES(1, 71, 3, 66, 70);
INSERT INTO race_has_initialcareer VALUES(1, 76, 3, 71, 75);
INSERT INTO race_has_initialcareer VALUES(1, 81, 3, 76, 80);
INSERT INTO race_has_initialcareer VALUES(1, 83, 3, 81, 95);
INSERT INTO race_has_initialcareer VALUES(1, 84, 3, 96, 100);
INSERT INTO race_has_initialcareer VALUES(2, 1, 3, 1, 5);
INSERT INTO race_has_initialcareer VALUES(2, 166, 3, 6, 20);
INSERT INTO race_has_initialcareer VALUES(2, 28, 3, 21, 25);
INSERT INTO race_has_initialcareer VALUES(2, 34, 3, 26, 35);
INSERT INTO race_has_initialcareer VALUES(2, 38, 3, 36, 45);
INSERT INTO race_has_initialcareer VALUES(2, 53, 3, 46, 50);
INSERT INTO race_has_initialcareer VALUES(2, 57, 3, 51, 60);
INSERT INTO race_has_initialcareer VALUES(2, 62, 3, 61, 70);
INSERT INTO race_has_initialcareer VALUES(2, 76, 3, 71, 80);
INSERT INTO race_has_initialcareer VALUES(2, 83, 3, 81, 95);
INSERT INTO race_has_initialcareer VALUES(2, 84, 3, 96, 100);
INSERT INTO race_has_initialcareer VALUES(3, 166, 3, 1, 5);
INSERT INTO race_has_initialcareer VALUES(3, 28, 3, 6, 10);
INSERT INTO race_has_initialcareer VALUES(3, 34, 3, 11, 15);
INSERT INTO race_has_initialcareer VALUES(3, 38, 3, 16, 25);
INSERT INTO race_has_initialcareer VALUES(3, 50, 3, 26, 35);
INSERT INTO race_has_initialcareer VALUES(3, 53, 3, 36, 40);
INSERT INTO race_has_initialcareer VALUES(3, 57, 3, 41, 45);
INSERT INTO race_has_initialcareer VALUES(3, 61, 3, 46, 50);
INSERT INTO race_has_initialcareer VALUES(3, 71, 3, 51, 60);
INSERT INTO race_has_initialcareer VALUES(3, 76, 3, 61, 65);
INSERT INTO race_has_initialcareer VALUES(3, 81, 3, 66, 75);
INSERT INTO race_has_initialcareer VALUES(3, 83, 3, 76, 95);
INSERT INTO race_has_initialcareer VALUES(3, 84, 3, 96, 100);
INSERT INTO race_has_initialcareer VALUES(4, 1, 3, 1, 5);
INSERT INTO race_has_initialcareer VALUES(4, 166, 3, 6, 15);
INSERT INTO race_has_initialcareer VALUES(4, 28, 3, 16, 20);
INSERT INTO race_has_initialcareer VALUES(4, 34, 3, 21, 30);
INSERT INTO race_has_initialcareer VALUES(4, 38, 3, 31, 40);
INSERT INTO race_has_initialcareer VALUES(4, 50, 3, 41, 45);
INSERT INTO race_has_initialcareer VALUES(4, 53, 3, 46, 50);
INSERT INTO race_has_initialcareer VALUES(4, 57, 3, 51, 55);
INSERT INTO race_has_initialcareer VALUES(4, 61, 3, 56, 60);
INSERT INTO race_has_initialcareer VALUES(4, 71, 3, 61, 65);
INSERT INTO race_has_initialcareer VALUES(4, 76, 3, 66, 75);
INSERT INTO race_has_initialcareer VALUES(4, 81, 3, 76, 80);
INSERT INTO race_has_initialcareer VALUES(4, 83, 3, 81, 95);
INSERT INTO race_has_initialcareer VALUES(4, 84, 3, 96, 100);
INSERT INTO race_has_initialcareer VALUES(5, 166, 3, 1, 11);
INSERT INTO race_has_initialcareer VALUES(5, 11, 3, 12, 20);
INSERT INTO race_has_initialcareer VALUES(5, 28, 3, 21, 26);
INSERT INTO race_has_initialcareer VALUES(5, 34, 3, 27, 36);
INSERT INTO race_has_initialcareer VALUES(5, 50, 3, 37, 44);
INSERT INTO race_has_initialcareer VALUES(5, 53, 3, 45, 50);
INSERT INTO race_has_initialcareer VALUES(5, 57, 3, 51, 59);
INSERT INTO race_has_initialcareer VALUES(5, 61, 3, 60, 69);
INSERT INTO race_has_initialcareer VALUES(5, 71, 3, 70, 75);
INSERT INTO race_has_initialcareer VALUES(5, 76, 3, 76, 82);
INSERT INTO race_has_initialcareer VALUES(5, 81, 3, 83, 91);
INSERT INTO race_has_initialcareer VALUES(5, 84, 3, 91, 100);
INSERT INTO race_has_initialcareer VALUES(1, 2, 4, 1, 5);
INSERT INTO race_has_initialcareer VALUES(1, 3, 4, 6, 15);
INSERT INTO race_has_initialcareer VALUES(1, 4, 4, 16, 25);
INSERT INTO race_has_initialcareer VALUES(1, 5, 4, 26, 35);
INSERT INTO race_has_initialcareer VALUES(1, 33, 4, 36, 40);
INSERT INTO race_has_initialcareer VALUES(1, 37, 4, 41, 50);
INSERT INTO race_has_initialcareer VALUES(1, 43, 4, 51, 55);
INSERT INTO race_has_initialcareer VALUES(1, 44, 4, 56, 60);
INSERT INTO race_has_initialcareer VALUES(1, 54, 4, 61, 65);
INSERT INTO race_has_initialcareer VALUES(1, 56, 4, 66, 75);
INSERT INTO race_has_initialcareer VALUES(1, 58, 4, 76, 80);
INSERT INTO race_has_initialcareer VALUES(1, 66, 4, 81, 85);
INSERT INTO race_has_initialcareer VALUES(1, 74, 4, 86, 90);
INSERT INTO race_has_initialcareer VALUES(1, 78, 4, 91, 100);
INSERT INTO race_has_initialcareer VALUES(2, 2, 4, 1, 5);
INSERT INTO race_has_initialcareer VALUES(2, 3, 4, 6, 15);
INSERT INTO race_has_initialcareer VALUES(2, 4, 4, 16, 20);
INSERT INTO race_has_initialcareer VALUES(2, 5, 4, 21, 35);
INSERT INTO race_has_initialcareer VALUES(2, 37, 4, 36, 50);
INSERT INTO race_has_initialcareer VALUES(2, 43, 4, 51, 55);
INSERT INTO race_has_initialcareer VALUES(2, 44, 4, 56, 60);
INSERT INTO race_has_initialcareer VALUES(2, 54, 4, 61, 75);
INSERT INTO race_has_initialcareer VALUES(2, 56, 4, 76, 80);
INSERT INTO race_has_initialcareer VALUES(2, 58, 4, 81, 85);
INSERT INTO race_has_initialcareer VALUES(2, 74, 4, 86, 95);
INSERT INTO race_has_initialcareer VALUES(2, 78, 4, 96, 100);
INSERT INTO race_has_initialcareer VALUES(3, 2, 4, 1, 10);
INSERT INTO race_has_initialcareer VALUES(3, 3, 4, 11, 20);
INSERT INTO race_has_initialcareer VALUES(3, 4, 4, 21, 33);
INSERT INTO race_has_initialcareer VALUES(3, 5, 4, 34, 35);
INSERT INTO race_has_initialcareer VALUES(3, 33, 4, 36, 40);
INSERT INTO race_has_initialcareer VALUES(3, 37, 4, 41, 55);
INSERT INTO race_has_initialcareer VALUES(3, 41, 4, 56, 70);
INSERT INTO race_has_initialcareer VALUES(3, 43, 4, 71, 75);
INSERT INTO race_has_initialcareer VALUES(3, 44, 4, 76, 80);
INSERT INTO race_has_initialcareer VALUES(3, 56, 4, 81, 85);
INSERT INTO race_has_initialcareer VALUES(3, 74, 4, 86, 90);
INSERT INTO race_has_initialcareer VALUES(3, 78, 4, 91, 100);
INSERT INTO race_has_initialcareer VALUES(4, 2, 4, 1, 10);
INSERT INTO race_has_initialcareer VALUES(4, 3, 4, 11, 20);
INSERT INTO race_has_initialcareer VALUES(4, 4, 4, 21, 38);
INSERT INTO race_has_initialcareer VALUES(4, 5, 4, 39, 40);
INSERT INTO race_has_initialcareer VALUES(4, 33, 4, 41, 45);
INSERT INTO race_has_initialcareer VALUES(4, 37, 4, 46, 60);
INSERT INTO race_has_initialcareer VALUES(4, 43, 4, 61, 65);
INSERT INTO race_has_initialcareer VALUES(4, 44, 4, 66, 70);
INSERT INTO race_has_initialcareer VALUES(4, 54, 4, 71, 80);
INSERT INTO race_has_initialcareer VALUES(4, 56, 4, 81, 85);
INSERT INTO race_has_initialcareer VALUES(4, 74, 4, 86, 90);
INSERT INTO race_has_initialcareer VALUES(4, 78, 4, 91, 100);
INSERT INTO race_has_initialcareer VALUES(5, 2, 4, 1, 9);
INSERT INTO race_has_initialcareer VALUES(5, 3, 4, 10, 19);
INSERT INTO race_has_initialcareer VALUES(5, 4, 4, 20, 29);
INSERT INTO race_has_initialcareer VALUES(5, 5, 4, 30, 39);
INSERT INTO race_has_initialcareer VALUES(5, 37, 4, 40, 49);
INSERT INTO race_has_initialcareer VALUES(5, 41, 4, 50, 59);
INSERT INTO race_has_initialcareer VALUES(5, 43, 4, 60, 69);
INSERT INTO race_has_initialcareer VALUES(5, 44, 4, 70, 74);
INSERT INTO race_has_initialcareer VALUES(5, 56, 4, 75, 79);
INSERT INTO race_has_initialcareer VALUES(5, 58, 4, 80, 84);
INSERT INTO race_has_initialcareer VALUES(5, 74, 4, 85, 91);
INSERT INTO race_has_initialcareer VALUES(5, 78, 4, 92, 100);



DROP TABLE IF EXISTS race_has_initialskill;
CREATE TABLE IF NOT EXISTS race_has_initialskill (
  race_id int(11) NOT NULL default '0',
  skill_id int(10) unsigned NOT NULL default '0',
  vocation_id int(10) unsigned NOT NULL default '0',
  mini int(10) unsigned default NULL,
  maxi int(10) unsigned default NULL,
  PRIMARY KEY  (race_id,skill_id,vocation_id)
) ;


INSERT INTO race_has_initialskill VALUES(1, 3, 1, 1, 5);
INSERT INTO race_has_initialskill VALUES(1, 4, 1, 6, 10);
INSERT INTO race_has_initialskill VALUES(1, 6, 1, 11, 20);
INSERT INTO race_has_initialskill VALUES(1, 7, 1, 21, 25);
INSERT INTO race_has_initialskill VALUES(1, 40, 1, 26, 30);
INSERT INTO race_has_initialskill VALUES(1, 41, 1, 31, 35);
INSERT INTO race_has_initialskill VALUES(1, 49, 1, 36, 40);
INSERT INTO race_has_initialskill VALUES(1, 62, 1, 41, 45);
INSERT INTO race_has_initialskill VALUES(1, 66, 1, 46, 50);
INSERT INTO race_has_initialskill VALUES(1, 70, 1, 51, 55);
INSERT INTO race_has_initialskill VALUES(1, 77, 1, 56, 65);
INSERT INTO race_has_initialskill VALUES(1, 78, 1, 66, 70);
INSERT INTO race_has_initialskill VALUES(1, 80, 1, 71, 75);
INSERT INTO race_has_initialskill VALUES(1, 91, 1, 76, 80);
INSERT INTO race_has_initialskill VALUES(1, 145, 1, 81, 85);
INSERT INTO race_has_initialskill VALUES(1, 147, 1, 86, 90);
INSERT INTO race_has_initialskill VALUES(1, 151, 1, 91, 95);
INSERT INTO race_has_initialskill VALUES(1, 162, 1, 96, 100);
INSERT INTO race_has_initialskill VALUES(2, 3, 1, 1, 5);
INSERT INTO race_has_initialskill VALUES(2, 4, 1, 6, 10);
INSERT INTO race_has_initialskill VALUES(2, 6, 1, 11, 20);
INSERT INTO race_has_initialskill VALUES(2, 7, 1, 21, 25);
INSERT INTO race_has_initialskill VALUES(2, 40, 1, 26, 30);
INSERT INTO race_has_initialskill VALUES(2, 41, 1, 31, 40);
INSERT INTO race_has_initialskill VALUES(2, 49, 1, 41, 45);
INSERT INTO race_has_initialskill VALUES(2, 62, 1, 46, 50);
INSERT INTO race_has_initialskill VALUES(2, 66, 1, 51, 55);
INSERT INTO race_has_initialskill VALUES(2, 68, 1, 56, 60);
INSERT INTO race_has_initialskill VALUES(2, 70, 1, 61, 65);
INSERT INTO race_has_initialskill VALUES(2, 77, 1, 66, 70);
INSERT INTO race_has_initialskill VALUES(2, 78, 1, 71, 75);
INSERT INTO race_has_initialskill VALUES(2, 80, 1, 76, 80);
INSERT INTO race_has_initialskill VALUES(2, 145, 1, 81, 85);
INSERT INTO race_has_initialskill VALUES(2, 147, 1, 86, 90);
INSERT INTO race_has_initialskill VALUES(2, 151, 1, 91, 95);
INSERT INTO race_has_initialskill VALUES(2, 162, 1, 96, 100);
INSERT INTO race_has_initialskill VALUES(3, 3, 1, 1, 5);
INSERT INTO race_has_initialskill VALUES(3, 4, 1, 6, 10);
INSERT INTO race_has_initialskill VALUES(3, 6, 1, 11, 20);
INSERT INTO race_has_initialskill VALUES(3, 7, 1, 21, 25);
INSERT INTO race_has_initialskill VALUES(3, 41, 1, 26, 30);
INSERT INTO race_has_initialskill VALUES(3, 49, 1, 31, 35);
INSERT INTO race_has_initialskill VALUES(3, 62, 1, 36, 40);
INSERT INTO race_has_initialskill VALUES(3, 66, 1, 41, 45);
INSERT INTO race_has_initialskill VALUES(3, 70, 1, 46, 50);
INSERT INTO race_has_initialskill VALUES(3, 78, 1, 51, 55);
INSERT INTO race_has_initialskill VALUES(3, 80, 1, 56, 60);
INSERT INTO race_has_initialskill VALUES(3, 91, 1, 61, 70);
INSERT INTO race_has_initialskill VALUES(3, 145, 1, 71, 75);
INSERT INTO race_has_initialskill VALUES(3, 147, 1, 76, 90);
INSERT INTO race_has_initialskill VALUES(3, 151, 1, 91, 95);
INSERT INTO race_has_initialskill VALUES(3, 162, 1, 96, 100);
INSERT INTO race_has_initialskill VALUES(4, 3, 1, 1, 5);
INSERT INTO race_has_initialskill VALUES(4, 4, 1, 6, 10);
INSERT INTO race_has_initialskill VALUES(4, 6, 1, 11, 20);
INSERT INTO race_has_initialskill VALUES(4, 7, 1, 21, 25);
INSERT INTO race_has_initialskill VALUES(4, 40, 1, 26, 30);
INSERT INTO race_has_initialskill VALUES(4, 41, 1, 31, 35);
INSERT INTO race_has_initialskill VALUES(4, 49, 1, 36, 40);
INSERT INTO race_has_initialskill VALUES(4, 62, 1, 41, 45);
INSERT INTO race_has_initialskill VALUES(4, 66, 1, 46, 50);
INSERT INTO race_has_initialskill VALUES(4, 68, 1, 51, 55);
INSERT INTO race_has_initialskill VALUES(4, 69, 1, 56, 60);
INSERT INTO race_has_initialskill VALUES(4, 70, 1, 61, 65);
INSERT INTO race_has_initialskill VALUES(4, 78, 1, 66, 70);
INSERT INTO race_has_initialskill VALUES(4, 80, 1, 71, 75);
INSERT INTO race_has_initialskill VALUES(4, 91, 1, 76, 80);
INSERT INTO race_has_initialskill VALUES(4, 145, 1, 81, 85);
INSERT INTO race_has_initialskill VALUES(4, 147, 1, 86, 90);
INSERT INTO race_has_initialskill VALUES(4, 151, 1, 91, 95);
INSERT INTO race_has_initialskill VALUES(4, 162, 1, 96, 100);
INSERT INTO race_has_initialskill VALUES(5, 3, 1, 1, 5);
INSERT INTO race_has_initialskill VALUES(5, 4, 1, 6, 12);
INSERT INTO race_has_initialskill VALUES(5, 6, 1, 13, 16);
INSERT INTO race_has_initialskill VALUES(5, 7, 1, 17, 23);
INSERT INTO race_has_initialskill VALUES(5, 34, 1, 24, 27);
INSERT INTO race_has_initialskill VALUES(5, 41, 1, 28, 33);
INSERT INTO race_has_initialskill VALUES(5, 62, 1, 34, 40);
INSERT INTO race_has_initialskill VALUES(5, 66, 1, 41, 44);
INSERT INTO race_has_initialskill VALUES(5, 70, 1, 45, 52);
INSERT INTO race_has_initialskill VALUES(5, 78, 1, 53, 57);
INSERT INTO race_has_initialskill VALUES(5, 80, 1, 58, 64);
INSERT INTO race_has_initialskill VALUES(5, 91, 1, 65, 70);
INSERT INTO race_has_initialskill VALUES(5, 135, 1, 71, 75);
INSERT INTO race_has_initialskill VALUES(5, 145, 1, 76, 81);
INSERT INTO race_has_initialskill VALUES(5, 147, 1, 82, 88);
INSERT INTO race_has_initialskill VALUES(5, 151, 1, 89, 95);
INSERT INTO race_has_initialskill VALUES(5, 162, 1, 96, 100);
INSERT INTO race_has_initialskill VALUES(1, 3, 2, 1, 5);
INSERT INTO race_has_initialskill VALUES(1, 4, 2, 6, 10);
INSERT INTO race_has_initialskill VALUES(1, 6, 2, 11, 15);
INSERT INTO race_has_initialskill VALUES(1, 7, 2, 16, 20);
INSERT INTO race_has_initialskill VALUES(1, 31, 2, 21, 25);
INSERT INTO race_has_initialskill VALUES(1, 40, 2, 26, 30);
INSERT INTO race_has_initialskill VALUES(1, 41, 2, 31, 35);
INSERT INTO race_has_initialskill VALUES(1, 49, 2, 36, 45);
INSERT INTO race_has_initialskill VALUES(1, 62, 2, 46, 50);
INSERT INTO race_has_initialskill VALUES(1, 66, 2, 51, 55);
INSERT INTO race_has_initialskill VALUES(1, 77, 2, 56, 60);
INSERT INTO race_has_initialskill VALUES(1, 78, 2, 61, 65);
INSERT INTO race_has_initialskill VALUES(1, 91, 2, 66, 70);
INSERT INTO race_has_initialskill VALUES(1, 132, 2, 71, 75);
INSERT INTO race_has_initialskill VALUES(1, 166, 2, 76, 80);
INSERT INTO race_has_initialskill VALUES(1, 145, 2, 81, 85);
INSERT INTO race_has_initialskill VALUES(1, 147, 2, 86, 90);
INSERT INTO race_has_initialskill VALUES(1, 151, 2, 91, 95);
INSERT INTO race_has_initialskill VALUES(1, 162, 2, 96, 100);
INSERT INTO race_has_initialskill VALUES(2, 3, 2, 1, 5);
INSERT INTO race_has_initialskill VALUES(2, 6, 2, 6, 10);
INSERT INTO race_has_initialskill VALUES(2, 7, 2, 11, 15);
INSERT INTO race_has_initialskill VALUES(2, 31, 2, 16, 20);
INSERT INTO race_has_initialskill VALUES(2, 40, 2, 21, 25);
INSERT INTO race_has_initialskill VALUES(2, 41, 2, 26, 35);
INSERT INTO race_has_initialskill VALUES(2, 49, 2, 36, 40);
INSERT INTO race_has_initialskill VALUES(2, 62, 2, 41, 50);
INSERT INTO race_has_initialskill VALUES(2, 66, 2, 51, 55);
INSERT INTO race_has_initialskill VALUES(2, 68, 2, 56, 60);
INSERT INTO race_has_initialskill VALUES(2, 77, 2, 61, 65);
INSERT INTO race_has_initialskill VALUES(2, 78, 2, 66, 70);
INSERT INTO race_has_initialskill VALUES(2, 132, 2, 71, 75);
INSERT INTO race_has_initialskill VALUES(2, 166, 2, 76, 80);
INSERT INTO race_has_initialskill VALUES(2, 145, 2, 81, 85);
INSERT INTO race_has_initialskill VALUES(2, 147, 2, 86, 90);
INSERT INTO race_has_initialskill VALUES(2, 151, 2, 91, 95);
INSERT INTO race_has_initialskill VALUES(2, 162, 2, 96, 100);
INSERT INTO race_has_initialskill VALUES(3, 3, 2, 1, 5);
INSERT INTO race_has_initialskill VALUES(3, 4, 2, 6, 10);
INSERT INTO race_has_initialskill VALUES(3, 6, 2, 11, 15);
INSERT INTO race_has_initialskill VALUES(3, 7, 2, 16, 20);
INSERT INTO race_has_initialskill VALUES(3, 31, 2, 21, 25);
INSERT INTO race_has_initialskill VALUES(3, 41, 2, 26, 30);
INSERT INTO race_has_initialskill VALUES(3, 49, 2, 31, 40);
INSERT INTO race_has_initialskill VALUES(3, 62, 2, 41, 45);
INSERT INTO race_has_initialskill VALUES(3, 66, 2, 46, 50);
INSERT INTO race_has_initialskill VALUES(3, 78, 2, 51, 55);
INSERT INTO race_has_initialskill VALUES(3, 91, 2, 56, 65);
INSERT INTO race_has_initialskill VALUES(3, 132, 2, 66, 70);
INSERT INTO race_has_initialskill VALUES(3, 145, 2, 71, 75);
INSERT INTO race_has_initialskill VALUES(3, 147, 2, 76, 90);
INSERT INTO race_has_initialskill VALUES(3, 151, 2, 91, 95);
INSERT INTO race_has_initialskill VALUES(3, 162, 2, 96, 100);
INSERT INTO race_has_initialskill VALUES(4, 3, 2, 1, 5);
INSERT INTO race_has_initialskill VALUES(4, 4, 2, 6, 10);
INSERT INTO race_has_initialskill VALUES(4, 6, 2, 11, 15);
INSERT INTO race_has_initialskill VALUES(4, 7, 2, 16, 20);
INSERT INTO race_has_initialskill VALUES(4, 31, 2, 21, 25);
INSERT INTO race_has_initialskill VALUES(4, 40, 2, 26, 30);
INSERT INTO race_has_initialskill VALUES(4, 41, 2, 31, 35);
INSERT INTO race_has_initialskill VALUES(4, 49, 2, 36, 45);
INSERT INTO race_has_initialskill VALUES(4, 62, 2, 46, 50);
INSERT INTO race_has_initialskill VALUES(4, 66, 2, 51, 55);
INSERT INTO race_has_initialskill VALUES(4, 68, 2, 56, 60);
INSERT INTO race_has_initialskill VALUES(4, 78, 2, 61, 65);
INSERT INTO race_has_initialskill VALUES(4, 91, 2, 66, 70);
INSERT INTO race_has_initialskill VALUES(4, 132, 2, 71, 75);
INSERT INTO race_has_initialskill VALUES(4, 166, 2, 76, 80);
INSERT INTO race_has_initialskill VALUES(4, 145, 2, 81, 85);
INSERT INTO race_has_initialskill VALUES(4, 147, 2, 86, 90);
INSERT INTO race_has_initialskill VALUES(4, 151, 2, 91, 95);
INSERT INTO race_has_initialskill VALUES(4, 162, 2, 96, 100);
INSERT INTO race_has_initialskill VALUES(1, 3, 3, 1, 5);
INSERT INTO race_has_initialskill VALUES(1, 4, 3, 6, 10);
INSERT INTO race_has_initialskill VALUES(1, 7, 3, 11, 15);
INSERT INTO race_has_initialskill VALUES(1, 32, 3, 16, 20);
INSERT INTO race_has_initialskill VALUES(1, 33, 3, 21, 25);
INSERT INTO race_has_initialskill VALUES(1, 40, 3, 26, 30);
INSERT INTO race_has_initialskill VALUES(1, 41, 3, 31, 35);
INSERT INTO race_has_initialskill VALUES(1, 58, 3, 36, 40);
INSERT INTO race_has_initialskill VALUES(1, 62, 3, 41, 45);
INSERT INTO race_has_initialskill VALUES(1, 66, 3, 46, 50);
INSERT INTO race_has_initialskill VALUES(1, 68, 3, 51, 55);
INSERT INTO race_has_initialskill VALUES(1, 69, 3, 56, 60);
INSERT INTO race_has_initialskill VALUES(1, 77, 3, 61, 65);
INSERT INTO race_has_initialskill VALUES(1, 78, 3, 66, 70);
INSERT INTO race_has_initialskill VALUES(1, 80, 3, 71, 75);
INSERT INTO race_has_initialskill VALUES(1, 92, 3, 76, 80);
INSERT INTO race_has_initialskill VALUES(1, 145, 3, 81, 85);
INSERT INTO race_has_initialskill VALUES(1, 147, 3, 86, 90);
INSERT INTO race_has_initialskill VALUES(1, 151, 3, 91, 95);
INSERT INTO race_has_initialskill VALUES(1, 162, 3, 96, 100);
INSERT INTO race_has_initialskill VALUES(2, 3, 3, 1, 5);
INSERT INTO race_has_initialskill VALUES(2, 4, 3, 6, 10);
INSERT INTO race_has_initialskill VALUES(2, 7, 3, 11, 15);
INSERT INTO race_has_initialskill VALUES(2, 32, 3, 16, 20);
INSERT INTO race_has_initialskill VALUES(2, 33, 3, 21, 25);
INSERT INTO race_has_initialskill VALUES(2, 40, 3, 26, 30);
INSERT INTO race_has_initialskill VALUES(2, 41, 3, 31, 35);
INSERT INTO race_has_initialskill VALUES(2, 58, 3, 36, 40);
INSERT INTO race_has_initialskill VALUES(2, 62, 3, 41, 45);
INSERT INTO race_has_initialskill VALUES(2, 66, 3, 46, 50);
INSERT INTO race_has_initialskill VALUES(2, 68, 3, 51, 55);
INSERT INTO race_has_initialskill VALUES(2, 69, 3, 56, 60);
INSERT INTO race_has_initialskill VALUES(2, 77, 3, 61, 65);
INSERT INTO race_has_initialskill VALUES(2, 78, 3, 66, 70);
INSERT INTO race_has_initialskill VALUES(2, 80, 3, 71, 75);
INSERT INTO race_has_initialskill VALUES(2, 92, 3, 76, 80);
INSERT INTO race_has_initialskill VALUES(2, 145, 3, 81, 85);
INSERT INTO race_has_initialskill VALUES(2, 147, 3, 86, 90);
INSERT INTO race_has_initialskill VALUES(2, 151, 3, 91, 95);
INSERT INTO race_has_initialskill VALUES(2, 162, 3, 96, 100);
INSERT INTO race_has_initialskill VALUES(3, 3, 3, 1, 5);
INSERT INTO race_has_initialskill VALUES(3, 4, 3, 6, 10);
INSERT INTO race_has_initialskill VALUES(3, 7, 3, 11, 15);
INSERT INTO race_has_initialskill VALUES(3, 32, 3, 16, 20);
INSERT INTO race_has_initialskill VALUES(3, 33, 3, 21, 25);
INSERT INTO race_has_initialskill VALUES(3, 40, 3, 26, 30);
INSERT INTO race_has_initialskill VALUES(3, 41, 3, 31, 35);
INSERT INTO race_has_initialskill VALUES(3, 58, 3, 36, 40);
INSERT INTO race_has_initialskill VALUES(3, 66, 3, 41, 45);
INSERT INTO race_has_initialskill VALUES(3, 78, 3, 46, 50);
INSERT INTO race_has_initialskill VALUES(3, 80, 3, 51, 55);
INSERT INTO race_has_initialskill VALUES(3, 91, 3, 56, 65);
INSERT INTO race_has_initialskill VALUES(3, 92, 3, 66, 70);
INSERT INTO race_has_initialskill VALUES(3, 147, 3, 71, 90);
INSERT INTO race_has_initialskill VALUES(3, 151, 3, 91, 95);
INSERT INTO race_has_initialskill VALUES(3, 162, 3, 96, 100);
INSERT INTO race_has_initialskill VALUES(4, 3, 3, 1, 5);
INSERT INTO race_has_initialskill VALUES(4, 4, 3, 6, 10);
INSERT INTO race_has_initialskill VALUES(4, 7, 3, 11, 15);
INSERT INTO race_has_initialskill VALUES(4, 32, 3, 16, 20);
INSERT INTO race_has_initialskill VALUES(4, 33, 3, 21, 25);
INSERT INTO race_has_initialskill VALUES(4, 40, 3, 26, 30);
INSERT INTO race_has_initialskill VALUES(4, 41, 3, 31, 35);
INSERT INTO race_has_initialskill VALUES(4, 58, 3, 36, 40);
INSERT INTO race_has_initialskill VALUES(4, 66, 3, 41, 45);
INSERT INTO race_has_initialskill VALUES(4, 68, 3, 46, 50);
INSERT INTO race_has_initialskill VALUES(4, 69, 3, 51, 55);
INSERT INTO race_has_initialskill VALUES(4, 78, 3, 56, 60);
INSERT INTO race_has_initialskill VALUES(4, 80, 3, 61, 65);
INSERT INTO race_has_initialskill VALUES(4, 91, 3, 66, 70);
INSERT INTO race_has_initialskill VALUES(4, 92, 3, 71, 75);
INSERT INTO race_has_initialskill VALUES(4, 145, 3, 76, 80);
INSERT INTO race_has_initialskill VALUES(4, 147, 3, 81, 90);
INSERT INTO race_has_initialskill VALUES(4, 151, 3, 91, 95);
INSERT INTO race_has_initialskill VALUES(4, 162, 3, 96, 100);
INSERT INTO race_has_initialskill VALUES(5, 3, 3, 1, 8);
INSERT INTO race_has_initialskill VALUES(5, 4, 3, 9, 13);
INSERT INTO race_has_initialskill VALUES(5, 7, 3, 14, 17);
INSERT INTO race_has_initialskill VALUES(5, 33, 3, 18, 24);
INSERT INTO race_has_initialskill VALUES(5, 34, 3, 25, 32);
INSERT INTO race_has_initialskill VALUES(5, 40, 3, 33, 39);
INSERT INTO race_has_initialskill VALUES(5, 41, 3, 40, 44);
INSERT INTO race_has_initialskill VALUES(5, 48, 3, 45, 52);
INSERT INTO race_has_initialskill VALUES(5, 58, 3, 53, 60);
INSERT INTO race_has_initialskill VALUES(5, 66, 3, 61, 64);
INSERT INTO race_has_initialskill VALUES(5, 78, 3, 65, 72);
INSERT INTO race_has_initialskill VALUES(5, 92, 3, 73, 80);
INSERT INTO race_has_initialskill VALUES(5, 135, 3, 81, 84);
INSERT INTO race_has_initialskill VALUES(5, 147, 3, 85, 87);
INSERT INTO race_has_initialskill VALUES(5, 151, 3, 88, 95);
INSERT INTO race_has_initialskill VALUES(5, 162, 3, 96, 100);
INSERT INTO race_has_initialskill VALUES(1, 3, 4, 1, 5);
INSERT INTO race_has_initialskill VALUES(1, 4, 4, 6, 10);
INSERT INTO race_has_initialskill VALUES(1, 6, 4, 11, 15);
INSERT INTO race_has_initialskill VALUES(1, 7, 4, 16, 20);
INSERT INTO race_has_initialskill VALUES(1, 31, 4, 21, 25);
INSERT INTO race_has_initialskill VALUES(1, 33, 4, 26, 30);
INSERT INTO race_has_initialskill VALUES(1, 35, 4, 31, 35);
INSERT INTO race_has_initialskill VALUES(1, 40, 4, 36, 40);
INSERT INTO race_has_initialskill VALUES(1, 49, 4, 41, 45);
INSERT INTO race_has_initialskill VALUES(1, 64, 4, 46, 50);
INSERT INTO race_has_initialskill VALUES(1, 66, 4, 51, 55);
INSERT INTO race_has_initialskill VALUES(1, 69, 4, 56, 60);
INSERT INTO race_has_initialskill VALUES(1, 77, 4, 61, 65);
INSERT INTO race_has_initialskill VALUES(1, 81, 4, 66, 70);
INSERT INTO race_has_initialskill VALUES(1, 91, 4, 71, 75);
INSERT INTO race_has_initialskill VALUES(1, 92, 4, 76, 80);
INSERT INTO race_has_initialskill VALUES(1, 93, 4, 81, 85);
INSERT INTO race_has_initialskill VALUES(1, 145, 4, 86, 90);
INSERT INTO race_has_initialskill VALUES(1, 147, 4, 91, 95);
INSERT INTO race_has_initialskill VALUES(1, 151, 4, 96, 100);
INSERT INTO race_has_initialskill VALUES(2, 3, 4, 1, 5);
INSERT INTO race_has_initialskill VALUES(2, 4, 4, 6, 10);
INSERT INTO race_has_initialskill VALUES(2, 6, 4, 11, 15);
INSERT INTO race_has_initialskill VALUES(2, 7, 4, 16, 20);
INSERT INTO race_has_initialskill VALUES(2, 31, 4, 21, 25);
INSERT INTO race_has_initialskill VALUES(2, 33, 4, 26, 30);
INSERT INTO race_has_initialskill VALUES(2, 35, 4, 31, 35);
INSERT INTO race_has_initialskill VALUES(2, 40, 4, 36, 40);
INSERT INTO race_has_initialskill VALUES(2, 41, 4, 41, 45);
INSERT INTO race_has_initialskill VALUES(2, 62, 4, 46, 50);
INSERT INTO race_has_initialskill VALUES(2, 64, 4, 51, 55);
INSERT INTO race_has_initialskill VALUES(2, 66, 4, 56, 60);
INSERT INTO race_has_initialskill VALUES(2, 68, 4, 61, 65);
INSERT INTO race_has_initialskill VALUES(2, 77, 4, 66, 70);
INSERT INTO race_has_initialskill VALUES(2, 81, 4, 71, 75);
INSERT INTO race_has_initialskill VALUES(2, 92, 4, 76, 80);
INSERT INTO race_has_initialskill VALUES(2, 93, 4, 81, 85);
INSERT INTO race_has_initialskill VALUES(2, 145, 4, 86, 90);
INSERT INTO race_has_initialskill VALUES(2, 147, 4, 91, 95);
INSERT INTO race_has_initialskill VALUES(2, 151, 4, 96, 100);
INSERT INTO race_has_initialskill VALUES(3, 3, 4, 1, 5);
INSERT INTO race_has_initialskill VALUES(3, 4, 4, 6, 10);
INSERT INTO race_has_initialskill VALUES(3, 6, 4, 11, 15);
INSERT INTO race_has_initialskill VALUES(3, 7, 4, 16, 20);
INSERT INTO race_has_initialskill VALUES(3, 33, 4, 21, 25);
INSERT INTO race_has_initialskill VALUES(3, 35, 4, 26, 30);
INSERT INTO race_has_initialskill VALUES(3, 40, 4, 31, 35);
INSERT INTO race_has_initialskill VALUES(3, 49, 4, 36, 40);
INSERT INTO race_has_initialskill VALUES(3, 64, 4, 41, 45);
INSERT INTO race_has_initialskill VALUES(3, 66, 4, 46, 50);
INSERT INTO race_has_initialskill VALUES(3, 69, 4, 51, 55);
INSERT INTO race_has_initialskill VALUES(3, 78, 4, 56, 60);
INSERT INTO race_has_initialskill VALUES(3, 91, 4, 61, 70);
INSERT INTO race_has_initialskill VALUES(3, 92, 4, 71, 75);
INSERT INTO race_has_initialskill VALUES(3, 93, 4, 76, 80);
INSERT INTO race_has_initialskill VALUES(3, 147, 4, 81, 95);
INSERT INTO race_has_initialskill VALUES(3, 151, 4, 96, 100);
INSERT INTO race_has_initialskill VALUES(4, 3, 4, 1, 5);
INSERT INTO race_has_initialskill VALUES(4, 4, 4, 6, 10);
INSERT INTO race_has_initialskill VALUES(4, 6, 4, 11, 15);
INSERT INTO race_has_initialskill VALUES(4, 7, 4, 16, 20);
INSERT INTO race_has_initialskill VALUES(4, 31, 4, 21, 25);
INSERT INTO race_has_initialskill VALUES(4, 33, 4, 26, 30);
INSERT INTO race_has_initialskill VALUES(4, 35, 4, 31, 35);
INSERT INTO race_has_initialskill VALUES(4, 40, 4, 36, 40);
INSERT INTO race_has_initialskill VALUES(4, 41, 4, 41, 45);
INSERT INTO race_has_initialskill VALUES(4, 49, 4, 46, 50);
INSERT INTO race_has_initialskill VALUES(4, 64, 4, 51, 55);
INSERT INTO race_has_initialskill VALUES(4, 66, 4, 56, 60);
INSERT INTO race_has_initialskill VALUES(4, 68, 4, 61, 65);
INSERT INTO race_has_initialskill VALUES(4, 69, 4, 66, 70);
INSERT INTO race_has_initialskill VALUES(4, 91, 4, 71, 75);
INSERT INTO race_has_initialskill VALUES(4, 92, 4, 76, 80);
INSERT INTO race_has_initialskill VALUES(4, 93, 4, 81, 85);
INSERT INTO race_has_initialskill VALUES(4, 145, 4, 86, 90);
INSERT INTO race_has_initialskill VALUES(4, 147, 4, 91, 95);
INSERT INTO race_has_initialskill VALUES(4, 151, 4, 96, 100);
INSERT INTO race_has_initialskill VALUES(5, 3, 4, 1, 4);
INSERT INTO race_has_initialskill VALUES(5, 4, 4, 5, 8);
INSERT INTO race_has_initialskill VALUES(5, 6, 4, 9, 16);
INSERT INTO race_has_initialskill VALUES(5, 7, 4, 17, 20);
INSERT INTO race_has_initialskill VALUES(5, 31, 4, 21, 28);
INSERT INTO race_has_initialskill VALUES(5, 34, 4, 29, 32);
INSERT INTO race_has_initialskill VALUES(5, 35, 4, 33, 40);
INSERT INTO race_has_initialskill VALUES(5, 40, 4, 41, 44);
INSERT INTO race_has_initialskill VALUES(5, 41, 4, 45, 48);
INSERT INTO race_has_initialskill VALUES(5, 48, 4, 49, 55);
INSERT INTO race_has_initialskill VALUES(5, 64, 4, 56, 63);
INSERT INTO race_has_initialskill VALUES(5, 66, 4, 64, 67);
INSERT INTO race_has_initialskill VALUES(5, 69, 4, 68, 71);
INSERT INTO race_has_initialskill VALUES(5, 78, 4, 72, 75);
INSERT INTO race_has_initialskill VALUES(5, 92, 4, 76, 82);
INSERT INTO race_has_initialskill VALUES(5, 104, 4, 83, 89);
INSERT INTO race_has_initialskill VALUES(5, 132, 4, 90, 96);
INSERT INTO race_has_initialskill VALUES(5, 162, 4, 97, 100);



DROP TABLE IF EXISTS race_has_language;
CREATE TABLE IF NOT EXISTS race_has_language (
  race_id int(11) NOT NULL default '0',
  language_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (race_id,language_id)
) ;


INSERT INTO race_has_language VALUES(1, 1);
INSERT INTO race_has_language VALUES(2, 2);
INSERT INTO race_has_language VALUES(3, 3);
INSERT INTO race_has_language VALUES(4, 1);
INSERT INTO race_has_language VALUES(5, 4);



DROP TABLE IF EXISTS race_has_skill;
CREATE TABLE IF NOT EXISTS race_has_skill (
  race_id int(11) NOT NULL default '0',
  skill_id int(10) unsigned NOT NULL default '0',
  obligatoire smallint default 0,
  decompte smallint default 0,
  PRIMARY KEY  (race_id,skill_id)
) ;


INSERT INTO race_has_skill VALUES(2, 164, 0, 0);
INSERT INTO race_has_skill VALUES(3, 164, 0, 0);
INSERT INTO race_has_skill VALUES(4, 165, 0, 0);
INSERT INTO race_has_skill VALUES(5, 164, 0, 0);
INSERT INTO race_has_skill VALUES(2, 4, 1, 1);
INSERT INTO race_has_skill VALUES(2, 41, 0, 1);
INSERT INTO race_has_skill VALUES(2, 128, 0, 1);
INSERT INTO race_has_skill VALUES(2, 66, 0, 1);
INSERT INTO race_has_skill VALUES(3, 84, 1, 1);
INSERT INTO race_has_skill VALUES(3, 126, 0, 1);
INSERT INTO race_has_skill VALUES(3, 167, 0, 1);
INSERT INTO race_has_skill VALUES(4, 65, 1, 1);
INSERT INTO race_has_skill VALUES(4, 53, 0, 1);
INSERT INTO race_has_skill VALUES(4, 68, 0, 1);

DROP TABLE IF EXISTS skill_has_image;
CREATE TABLE IF NOT EXISTS skill_has_image (
  skill_id int(10) unsigned NOT NULL default '0',
  image_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (skill_id,image_id)
) ;


DROP TABLE IF EXISTS weapon_has_skill;
CREATE TABLE IF NOT EXISTS weapon_has_skill (
  skill_id int(10) unsigned NOT NULL default '0',
  objet_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (skill_id,objet_id)
) ;



SET REFERENTIAL_INTEGRITY TRUE;