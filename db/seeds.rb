puts 'Cleaning database...'
UserSubtask.destroy_all
Subtask.destroy_all
Task.destroy_all
Category.destroy_all
Link.destroy_all
puts 'Creating tasks and associated subtasks...'

################ CATEGORIES ######################################################################################

cat_a = Category.create!(
  name: "Essentials",
  color: "#BFD641"
)
cat_a.attributes = { name: "Essentiels", locale: :fr }
cat_a.save

cat_b = Category.create!(
  name: "Housing",
  color: "#76b39d"
)
cat_b.attributes = { name: "Logement", locale: :fr }
cat_b.save

cat_c = Category.create!(
  name: "Language",
  color: "#EDCDC2"
)
cat_c.attributes = { name: "Langue", locale: :fr }
cat_c.save


cat_d = Category.create!(
  name: "Finance",
  color: "#C72C3A"
)
cat_d.attributes = { name: "Finances", locale: :fr }
cat_d.save

cat_e = Category.create!(
  name: "Education",
  color: "#EA3E70"
)
cat_e.attributes = { name: "Education ", locale: :fr }
cat_e.save

cat_f = Category.create!(
  name: "Mobility",
  color: "#954567"
)
cat_f.attributes = { name: "Mobilité", locale: :fr }
cat_f.save

cat_g = Category.create!(
  name: "Healthcare",
  color: "#4BC4D5"
)
cat_g.attributes = { name: "Santé", locale: :fr }
cat_g.save

cat_h = Category.create!(
  name: "Financial Aid",
  color: "#0180B5"
)
cat_h.attributes = { name: "Aides financières", locale: :fr }
cat_h.save

cat_i = Category.create!(
  name: "Employment",
  color: "#ec7700"
)
cat_i.attributes = { name: "Emploi", locale: :fr }
cat_i.save

cat_j = Category.create!(
  name: "Family Unit",
  color: "#8A9747"
)
cat_j.attributes = { name: "Regroupement familial", locale: :fr }
cat_j.save

cat_k = Category.create!(
  name: "Naturalisation",
  color: "#C6CCCC"
)
cat_k.attributes = { name: "Naturalisation", locale: :fr }
cat_k.save

cat_l = Category.create!(
  name: "Integration",
  color: "#CF97D7"
)
cat_l.attributes = { name: "Intégration", locale: :fr }
cat_l.save


###################### ESSENTIAL TASKS ######################################################################################

# az = Category.create!(
#   name: "Essentials",
#   color: "Red"
# )
a = Task.create!(
title: "Update your status from Asylum Seeker to Refugee",
category: cat_a,
position: 1,
description:
"Obtaining the status of refugee, beneficiary of subsidiary protection or stateless person is the start of a new life with rights and obligations.
It is a real entry into French society and an administrative and legal break with your country of origin. You need to be prepared for it, as it is a long and di cult process with administrative steps and concrete procedures to follow.
Once you have refugee status, the ‘récépissé’ (receipt) of international protection or of the application for a residence permit allows you to work and entitles you to civil and social rights (except for social housing, the residence permit is obligatory)."
)

a.attributes = { title: "Mettez à jour votre statut de demandeur d'asile", description: "L’obtention du statut de réfugié, de protégé subsidiaire ou d’apatride est le début d’une nouvelle vie avec des droits et des obligations.
  C’est l’entrée réelle dans la société française et la rupture administrative et juridique avec votre pays d’origine. Il faut s’y préparer, c’est le début d’un long et difficile parcours,
  fait d’étapes administratives et de démarches concrètes, qui est difficile. Quand vous avez le statut, le récépissé de protection internationale ou de demande de carte de séjour vous autorise à travailler
  et ouvre vos droits civils et sociaux (sauf pour le logement social, le titre de séjour est obligatoire).", locale: :fr }
a.save

b = Task.create!(
title: "Obtain a residence permit",
category: cat_a,
position: 2,
description:
"As a refugee, you are entitled to a resident card valid 10 years, automatically recreateable.
- What for ? You will be able to open a bank account, change your driver’s licence, have access to social homing and request travel documents
- When can I ask for it ? depending on the prefecture your belong, you can ask for it as soon as you sign the CIR or sometime you will
have to wait for the Ofpra to put together and send your civil status documents
- How long does it take ? Delays can vary depending on the prefecture."
)

b.attributes = { title: "Obtenir sa carte de séjour", description: "Les réfugiés statutaires ont droit à une carte de résident en France d’une durée de dix ans,
les protégés subsidiaires et apatrides à une carte de séjour temporaire de un an renouvelable.
Pour avoir ce titre de séjour, une visite médicale à l’Offi (Office Français de l’Immigration et de l’Intégration) est obligatoire.
La signature du « Contrat d’Intégration Républicaine » (CIR) ne l’est pas mais elle est fortement conseillée." , locale: :fr }
b.save

c = Task.create!(
title: "Obtain your civil status certificates",
category: cat_a,
position: 2,
description:
"What are the civil status certificates? birth certificate, marriage certificate, death certificate, family record book for marriages that took place abroad and
for minors born outside France, 'certificat administratif' for protected minors & 'certificat de coutume' if you want to get married or having a civil partnership.
Who delivers them ? The OFPRA."
)

c.attributes = { title: "Récupérer ses documents d'état civil" , description: " Les documents d’état civil que délivre l’Ofpra sont les actes de naissance, de mariage, de décès et le livret de famille (pour les mariages célébrés à l’étranger et pour les mineurs nés à l’étranger).
Pour un mariage ou une naissance d’un enfant en France, les mairies qui les ont enregistrés délivrent l’acte de mariage, le livret de famille et l’acte de naissance.
L’Ofpra établit également le « certi cat administratif » (pour les mineurs protégés) et le « certi cat de coutume » (pour pouvoir se marier ou se pacser). ", locale: :fr }
c.save

d = Task.create!(
title: "Learn French",
category: cat_c,
position: 3,
description: "Learning French is essential in everyday life in order to better understand administrative procedures, and a job and
housing, defend your rights and make your start in society easier. It is also a right that France must repect: as a host country,
its role is to stimulate the integration of refugees, in particular by learning French. It is vital for all refugees to speak and
use French at every opportunity."
)

d.attributes = { title: "Apprendre le français" , description: "Apprendre le français est essentiel dans la vie quotidienne pour mieux comprendre les démarches administratives, avoir un emploi et un logement, défendre ses droits et faciliter son entrée dans la société.
C’est aussi un droit auquel la France doit répondre : son rôle en tant que société d’accueil est de favoriser l’intégration des réfugiés, notamment par l’apprentissage du français.
Le réfugié doit pro ter de toutes les opportunités pour parler et pratiquer le français, c’est indispensable.", locale: :fr }
d.save

e = Task.create!(
title: "Apply for Social Housing",
category: cat_b,
position: 3,
description: "As a refugee you are entitled to the same access to housing as French citizens.
There are 3 entities that exist specifically to help refugees to find housing: ‘Dispositif d’Accueil National’ (DNA), ‘Centres d’accueil pour demandeurs d’asile’ (CADA),
‘Centres Provisoires d’Hébergement’ (CPH) but please keep in mind that finding accommodation is really difficult."
)

e.attributes = { title: "Demander une place en logement social" , description: "Les réfugiés ont les mêmes droits d’accès au logement que les Français. Si le Dispositif National d’Accueil (DNA) leur est réservé, avec les Centres d’accueil pour demandeurs d’asile (CADA) et les Centres Provisoires d’Hébergement (CPH),
le nombre de places est très insu sant. Dans les faits, se loger est di cile. Les délais sont longs pour un logement social (Habitation à Loyer Modéré, HLM) et le logement privé est souvent inaccessible malgré les aides et des soutiens.", locale: :fr }
e.save

f = Task.create!(
title: "Open a bank account",
category: cat_d,
position: 3,
description: "French law guarantees what we call the ‘droit au compte’ (the right to a bank account):
every person that lives in France, including refugees, has the right to open a ‘compte courant’ (current account) and not just a ‘Livret A’ (savings account)."
)

f.attributes = { title:"Ouvrir un compte bancaire" , description:"Avoir un compte bancaire est indispensable pour percevoir les prestations sociales, pour l’emploi, le logement et la vie quotidienne.
La loi française garantit ce que l’on appelle le « droit au compte » : toute personne qui habite en France, dont les réfugiés, a le droit d’ouvrir un compte courant (et pas seulement un livret A)." , locale: :fr }
f.save

g = Task.create!(
title: "Get your driver's license",
category: cat_e,
position: 3,
description: "If you have driver’s licence, you can exchange it the first year of your residence permit, even if it has expired.
Mobility – the possibility of travelling in France and abroad – is essential for refugee integration, be it for work, housing or in order to do what you would like to do.
A majority of refugees live in the Paris area, when better living conditions may exist elsewhere in France. You need courage to move around once you have received your refugee status – curiosity too - but it can be beneficial."
)

g.attributes = { title: "Obtenir son permis de conduire", description: " Pour le permis de conduire, les documents à fournir en préfecture sont votre permis original traduit par un traducteur assermenté (permis national et non le permis international qui est provisoire),
les 3 formulaires remplis (à retirer en préfecture), le titre de séjour, le justi catif d’identité et une photo d’identité. Pour les permis C et D, une visite médicale (payante) chez un médecin agréé par la préfecture est obligatoire.
" , locale: :fr }
g.save

h = Task.create!(
title: "Find a job",
category: cat_i,
position: 4,
description: "As soon as you receive the ‘récépissé’ (receipt) for your residence permit (on which is written “autorise son titulaire à travailler” (authorizes its holder to work)), you can work and register at ‘Pôle emploi’ (job centre).
Registering with Pôle emploi can be difficult, so ask for help from a Pôle emploi advisor, an association or a service such as Emmaüs Connect."
)

h.attributes = { title: "Trouver un travail", description: "Dès l’obtention de votre statut (Ofpra ou CNDA), vous allez à la préfecture de votre domicile pour changer votre récépissé de demandeur d’asile en récépissé de réfugié avec la mention « reconnu réfugié ;
  autorise son titulaire à travailler ». Ou, pour les protégés subsidiaires, avec la mention « décision favorable de l’Ofpra/de la Cnda en date du ..., autorise son titulaire à travailler " , locale: :fr }
h.save

################### TASK 1 - SUBTASKS ######################################################################


aa = Subtask.create!(
title: "Change your receipt",
description: "Change your receipt from asylum seeker to refugee with the mention “reconnu réfugié;
autorise son titulaire à travailler” (recognised as a refugee; authorises the holder to work).",
task: a
)
aa.attributes = { title: "Modifiez votre récipissé", description:"Dès l’obtention de votre statut (Ofpra ou CNDA),
vous allez à la préfecture de votre domicile pour changer votre récépissé de demandeur d’asile en récépissé de réfugié
avec la mention « reconnu réfugié ; autorise son titulaire à travailler »" , locale: :fr }
aa.save

bb = Subtask.create!(
title: "Complete the fiche familiale de référence",
description: "You must complete and return it to the Ofpra along with all of your original documents (ID card, passport, birth certi cate, marriage certificate
(including religious or traditional marriages in the country of origin)) by registered mail with con rmation of receipt.",
task: a
)
bb.attributes = { title: "Compléter la fiche familiale de référence", description: "La « fiche familiale de référence » est envoyée par l’Ofpra après l’obtention de votre statut.
  Elle permet de constituer votre état civil complet. Vous devez la renvoyer remplie à l’Ofpra par courrier recommandé avec accusé de réception avec tous vos documents originaux
  (carte d’identité, passeport, acte de naissance, certi cat de mariage, y compris les mariages religieux et coutumiers dans le pays d’origine...)." , locale: :fr }
bb.save

cc = Subtask.create!(
title: "Confirm a personal address",
description: "You must have a personal address either at a hotel
(with a certificate from the hotel and an invoice for the last month),
at a private property (certificate from the owner, copy of their ID, copy of their property tax document)
or in a tenant’s home (certificate from the landlord, ID, copy of a gas or electricity bill or other bill).
Domiciliation through an association is recognised but is more difficult.",
task: b
)
cc.attributes = { title: "Confirmer son adresse personnelle", description: "Vous devez avoir une adresse personnelle à l’hôtel (attestation de l’hôtel et facture du dernier mois), chez un propriétaire (attestation, copie de la carte d’identité, copie de la taxe foncière)
ou chez un locataire (attestation, carte d’identité, copie de la facture de gaz ou autre...). La domiciliation par une association est reconnue mais avec plus de dfficultés." , locale: :fr }
cc.save

dd = Subtask.create!(
title: "Medical visit",
description: "When you receive the protection ‘récépissé’ (receipt), the prefecture will inform the Ofii who
will then call you in for a medical visit (checkup, chest x-ray, vaccinations) and the signature of the CIR.
It is recommended that you bring copies of any examinations that you may have with you.",
task: b
)
dd.attributes = { title: "Visite Médicale", description: "Quand vous obtenez le récépissé de protection, la préfecture informe l’O i qui vous convoque pour la visite médicale (bilan, radio des poumons, vaccins) et la signature du CIR.
Il est conseillé d’amener tous les examens que vous possédez.
", locale: :fr }
dd.save


ee = Subtask.create!(
title: "Sign the Republication Integration Contract (CIR)",
description: "After an interview with the Ofii representative, you will sign the CIR which is valid for 1 year and includes a
6 hour session “Principes, valeurs et institutions de la République française” (Principles, values and institutions of the
French Republic), a 6 hour session “Vivre et accéder à l’emploi en France” (Living and working in France) as well as a French test.
For refugees and ‘beneficiaries’ of subsidiary protection, it is not mandatory to sign the CIR but it is strongly recommended.
It will give you access to integration programmes and will enable you to obtain your residence permit without any problems.",
task: b
)
ee.attributes = { title: "Signer le CIR", description: "Après un entretien avec le représentant de l’Offi, vous signez pour une durée de 1 an le CIR qui comprend une session
« Principes, valeurs et institutions de la République française » (6 heures), une session « Vivre et accéder à l’emploi en France » (6 heures) et un test de français." , locale: :fr }
ee.save

ff = Subtask.create!(
title: "French classes",
description: "Depending on your level of French, you will be given mandatory training lasting 50, 100 or 200 hours in order to
reach level A1 and, after an exam, receive the “Diplôme Initial de Langue Française” (DILF) (Initial Diploma in the French Language).
You can then ask the Ofi for additional training in order to reach level A2.
If you are unable to attend the courses, send a letter by registered post to the Ofi explaining your reasons why.",
task: b
)
ff.attributes = { title: "Cours de français", description: "Suivant votre niveau de français, une formation obligatoire de 50, 100 ou 200 heures vous est prescrite a n d’atteindre le niveau A1 et obtenir,
  après examen, le Diplôme Initial de Langue Française (DILF). Vous pouvez ensuite demander à l’O i de béné cier d’une formation supplémentaire pour atteindre le niveau A2. En cas d’empêchement pour les formations,
  écrivez à l’O i par courrier recommandé en expliquant vos raisons." , locale: :fr }
ff.save

gg = Subtask.create!(
title: "Timbre fiscal",
description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
(tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
first permit.",
task: b
)
gg.attributes = { title: "Timbre fiscal", description:"Timbre fiscal et Taxe : les réfugiés et les protégés subsidiaires paient un timbre fiscal
de 19 euros pour leur premier titre de séjour mais, à la différence des autres étrangers, ils ne paient pas la taxe sur le premier titre de séjour." , locale: :fr }
gg.save

hh = Subtask.create!(
title: "Family signs the CIRF",
description: "If your family has joined you in France, they will receive a notification to sign the `Contrat d’Intégration
Républicaine pour la Famille` (CIRF) (Family Republican Integration Contract).",
task: c
)
hh.attributes = { title: "Demander à votre famille de signer le CIRF", description: "Si votre famille vous a rejoint, elle recevra une convocation pour
 signer le Contrat d’Intégration Républicaine pour la Famille (CIRF)." , locale: :fr }
hh.save


ii = Subtask.create!(
title: "Timbre fiscal",
description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
(tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
first permit.",
task: c
)
ii.attributes = { title: "Timbre fiscal", description:"Timbre fiscal et Taxe : les réfugiés et les protégés subsidiaires paient un timbre fiscal
de 19 euros pour leur premier titre de séjour mais, à la différence des autres étrangers, ils ne paient pas la taxe sur le premier titre de séjour." , locale: :fr }
ii.save

jj = Subtask.create!(
title: "Family signs the CIRF",
description: "If your family has joined you in France, they will receive a notification to sign the `Contrat d’Intégration
Républicaine pour la Famille` (CIRF) (Family Republican Integration Contract).",
task: d
)
jj.attributes = { title: "Demander à votre famille de signer le CIRF", description: "Si votre famille vous a rejoint, elle recevra une convocation pour
 signer le Contrat d’Intégration Républicaine pour la Famille (CIRF)." , locale: :fr }
jj.save


kk = Subtask.create!(
title: "Timbre fiscal",
description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
(tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
first permit.",
task: d
)
kk.attributes = { title: "Timbre fiscal", description:"Timbre fiscal et Taxe : les réfugiés et les protégés subsidiaires paient un timbre fiscal
de 19 euros pour leur premier titre de séjour mais, à la différence des autres étrangers, ils ne paient pas la taxe sur le premier titre de séjour." , locale: :fr }
kk.save


ll = Subtask.create!(
title: "Confirm a personal address",
description: "You must have a personal address either at a hotel
(with a certificate from the hotel and an invoice for the last month),
at a private property (certificate from the owner, copy of their ID, copy of their property tax document)
or in a tenant’s home (certificate from the landlord, ID, copy of a gas or electricity bill or other bill).
Domiciliation through an association is recognised but is more difficult.",
task: e
)
ll.attributes = { title: "Confirmer son adresse personnelle", description: "Vous devez avoir une adresse personnelle à l’hôtel (attestation de l’hôtel et facture du dernier mois), chez un propriétaire (attestation, copie de la carte d’identité, copie de la taxe foncière)
ou chez un locataire (attestation, carte d’identité, copie de la facture de gaz ou autre...). La domiciliation par une association est reconnue mais avec plus de dfficultés." , locale: :fr }
ll.save


mm = Subtask.create!(
title: "Medical visit",
description: "When you receive the protection ‘récépissé’ (receipt), the prefecture will inform the Ofii who
will then call you in for a medical visit (checkup, chest x-ray, vaccinations) and the signature of the CIR.
It is recommended that you bring copies of any examinations that you may have with you.",
task: f
)
mm.attributes = { title: "Visite Médicale", description:"Quand vous obtenez le récépissé de protection, la préfecture informe l’Offi qui vous convoque pour la visite médicale
(bilan, radio des poumons, vaccins) et la signature du CIR. Il est conseillé d’amener tous les examens que vous possédez." , locale: :fr }
mm.save

nn = Subtask.create!(
title: "Medical visit",
description: "When you receive the protection ‘récépissé’ (receipt), the prefecture will inform the Ofii who
will then call you in for a medical visit (checkup, chest x-ray, vaccinations) and the signature of the CIR.
It is recommended that you bring copies of any examinations that you may have with you.",
task: g
)
nn.attributes = { title: "Visite Médicale", description:"Quand vous obtenez le récépissé de protection, la préfecture informe l’Offi qui vous convoque pour la visite médicale
(bilan, radio des poumons, vaccins) et la signature du CIR. Il est conseillé d’amener tous les examens que vous possédez." , locale: :fr }
nn.save


oo = Subtask.create!(
title: "Medical visit",
description: "When you receive the protection ‘récépissé’ (receipt), the prefecture will inform the Ofii who
will then call you in for a medical visit (checkup, chest x-ray, vaccinations) and the signature of the CIR.
It is recommended that you bring copies of any examinations that you may have with you.",
task: h
)
oo.attributes = { title: "Visite Médicale", description:"Quand vous obtenez le récépissé de protection, la préfecture informe l’Offi qui vous convoque pour la visite médicale
(bilan, radio des poumons, vaccins) et la signature du CIR. Il est conseillé d’amener tous les examens que vous possédez." , locale: :fr }
oo.save





##################### TASK 2 - SUBTASKS ###################################################################################

##########################################################################################################################

puts 'Finished!'


##################### LINKS ###################################################################################

##########################################################################################################################

link_a = Link.create!(
  link: "http://lewagon.org",
  task: d
)

link_b = Link.create!(
  link: "http://lewagon.org",
  task: d
)
