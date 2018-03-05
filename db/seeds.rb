puts 'Cleaning database...'
UserSubtask.destroy_all
Subtask.destroy_all
Task.destroy_all
Category.destroy_all
puts 'Creating tasks and associated subtasks...'

################ CATEGORIES ######################################################################################

cat_a = Category.create!(
  name: "Essentials",
  color: "#FFD35C"
)
cat_b = Category.create!(
  name: "Housing",
  color: "#76b39d"
)
cat_c = Category.create!(
  name: "Language",
  color: "#F37252"
)
cat_d = Category.create!(
  name: "Finance",
  color: "#C72C3A"
)
cat_e = Category.create!(
  name: "Education",
  color: "#EA3E70"
)
cat_f = Category.create!(
  name: "Mobility",
  color: "#954567"
)
cat_g = Category.create!(
  name: "Healthcare",
  color: "#4BC4D5"
)
cat_h = Category.create!(
  name: "Financial Aid",
  color: "#0180B5"
)
cat_i = Category.create!(
  name: "Employment",
  color: "#ec7700"
)
cat_j = Category.create!(
  name: "Family Unit",
  color: "#8A9747"
)
cat_k = Category.create!(
  name: "Naturalisation",
  color: "#C6CCCC"
)
cat_l = Category.create!(
  name: "Integration",
  color: "#CF97D7"
)

###################### ESSENTIAL TASKS ######################################################################################

# az = Category.create!(
#   name: "Essentials",
#   color: "Red"
# )
a = Task.create!(
title: "Update your status from Asylum Seeker to Refugee",
category: cat_a,
position: 1,
status: "in progress",
description:
"Obtaining the status of refugee, beneficiary of subsidiary protection or stateless person is the start of a new life with rights and obligations. It is a real entry into French society and an administrative and legal break with your country of origin. You need to be prepared for it, as it is a long and di cult process with administrative steps and concrete procedures to follow.

Once you have refugee status, the ‘récépissé’ (receipt) of international protection or of the application for a residence permit allows you to work and entitles you to civil and social rights (except for social housing, the residence permit is obligatory).
"
)

b = Task.create!(
title: "Obtain a residence permit",
category: cat_a,
position: 2,
status: "in progress",
description:
"As a refugee, you are entitled to a resident card valid 10 years, automatically recreateable.
- What for ? You will be able to open a bank account, change your driver’s licence, have access to social homing and request travel documents
- When can I ask for it ? depending on the prefecture your belong, you can ask for it as soon as you sign the CIR or sometime you will
have to wait for the Ofpra to put together and send your civil status documents
- How long does it take ? Delays can vary depending on the prefecture."
)

c = Task.create!(
title: "Obtain your civil status certificates",
category: cat_a,
position: 2,
status: "in progress",
description:
"What are the civil status certificates? birth certificate, marriage certificate, death certificate, family record book for marriages that took place abroad and
for minors born outside France, 'certificat administratif' for protected minors & 'certificat de coutume' if you want to get married or having a civil partnership.
Who delivers them ? The OFPRA."
)

d = Task.create!(
title: "Learn French",
category: cat_c,
position: 3,
status: "in progress",
description: "Learning French is essential in everyday life in order to better understand administrative procedures, and a job and
housing, defend your rights and make your start in society easier. It is also a right that France must repect: as a host country,
its role is to stimulate the integration of refugees, in particular by learning French. It is vital for all refugees to speak and
use French at every opportunity."
)

e = Task.create!(
title: "Apply for Social Housing",
category: cat_b,
position: 3,
status: "in progress",
description: "As a refugee you are entitled to the same access to housing as French citizens.
There are 3 entities that exist specifically to help refugees to find housing: ‘Dispositif d’Accueil National’ (DNA), ‘Centres d’accueil pour demandeurs d’asile’ (CADA),
‘Centres Provisoires d’Hébergement’ (CPH) but please keep in mind that finding accommodation is really difficult."
)

f = Task.create!(
title: "Open a bank account",
category: cat_d,
position: 3,
status: "in progress",
description: "French law guarantees what we call the ‘droit au compte’ (the right to a bank account):
every person that lives in France, including refugees, has the right to open a ‘compte courant’ (current account) and not just a ‘Livret A’ (savings account)."
)

g = Task.create!(
title: "Get your driver's license",
category: cat_e,
position: 3,
status: "in progress",
description: "If you have driver’s licence, you can exchange it the first year of your residence permit, even if it has expired.
Mobility – the possibility of travelling in France and abroad – is essential for refugee integration, be it for work, housing or in order to do what you would like to do.
A majority of refugees live in the Paris area, when better living conditions may exist elsewhere in France. You need courage to move around once you have received your refugee status – curiosity too - but it can be beneficial."
)

h = Task.create!(
title: "Find a job",
category: cat_i,
position: 4,
status: "in progress",
description: "As soon as you receive the ‘récépissé’ (receipt) for your residence permit (on which is written “autorise son titulaire à travailler” (authorizes its holder to work)), you can work and register at ‘Pôle emploi’ (job centre).
Registering with Pôle emploi can be difficult, so ask for help from a Pôle emploi advisor, an association or a service such as Emmaüs Connect."
)

################### TASK 1 - SUBTASKS ######################################################################


Subtask.create!(
title: "Change your receipt",
description: "Change your receipt from asylum seeker to refugee with the mention “reconnu réfugié ;
autorise son titulaire à travailler” (recognised as a refugee; authorises the holder to work).",
task: a
)

Subtask.create!(
title: "Complete the fiche familiale de référence",
description: "You must complete and return it to the Ofpra along with all of your original documents (ID card, passport, birth certi cate, marriage certificate
(including religious or traditional marriages in the country of origin)) by registered mail with con rmation of receipt.",
task: a
)

Subtask.create!(
title: "Confirm a personal address",
description: "You must have a personal address either at a hotel
(with a certificate from the hotel and an invoice for the last month),
at a private property (certificate from the owner, copy of their ID, copy of their property tax document)
or in a tenant’s home (certificate from the landlord, ID, copy of a gas or electricity bill or other bill).
Domiciliation through an association is recognised but is more difficult.",
task: b
)

Subtask.create!(
title: "Medical visit",
description: "When you receive the protection ‘récépissé’ (receipt), the prefecture will inform the Ofii who
will then call you in for a medical visit (checkup, chest x-ray, vaccinations) and the signature of the CIR.
It is recommended that you bring copies of any examinations that you may have with you.",
task: b
)

Subtask.create!(
title: "Sign the Republication Integration Contract (CIR)",
description: "After an interview with the Ofii representative, you will sign the CIR which is valid for 1 year and includes a
6 hour session “Principes, valeurs et institutions de la République française” (Principles, values and institutions of the
French Republic), a 6 hour session “Vivre et accéder à l’emploi en France” (Living and working in France) as well as a French test.
For refugees and ‘beneficiaries’ of subsidiary protection, it is not mandatory to sign the CIR but it is strongly recommended.
It will give you access to integration programmes and will enable you to obtain your residence permit without any problems.",
task: b
)

Subtask.create!(
title: "French classes",
description: "Depending on your level of French, you will be given mandatory training lasting 50, 100 or 200 hours in order to
reach level A1 and, after an exam, receive the “Diplôme Initial de Langue Française” (DILF) (Initial Diploma in the French Language).
You can then ask the Ofi for additional training in order to reach level A2.
If you are unable to attend the courses, send a letter by registered post to the Ofi explaining your reasons why.",
task: b
)

Subtask.create!(
title: "Timbre fiscal",
description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
(tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
first permit.",
task: b
)


Subtask.create!(
title: "Family signs the CIR",
description: "If your family has joined you in France, they will receive a notification to sign the `Contrat d’Intégration
Républicaine pour la Famille` (CIRF) (Family Republican Integration Contract).",
task: c
)

Subtask.create!(
title: "Timbre fiscal",
description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
(tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
first permit.",
task: c
)


Subtask.create!(
title: "Family signs the CIR",
description: "If your family has joined you in France, they will receive a notification to sign the `Contrat d’Intégration
Républicaine pour la Famille` (CIRF) (Family Republican Integration Contract).",
task: d
)

Subtask.create!(
title: "Timbre fiscal",
description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
(tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
first permit.",
task: d
)

Subtask.create!(
title: "Confirm a personal address",
description: "You must have a personal address either at a hotel
(with a certificate from the hotel and an invoice for the last month),
at a private property (certificate from the owner, copy of their ID, copy of their property tax document)
or in a tenant’s home (certificate from the landlord, ID, copy of a gas or electricity bill or other bill).
Domiciliation through an association is recognised but is more difficult.",
task: e
)




##################### TASK 2 - SUBTASKS ###################################################################################

##########################################################################################################################

puts 'Finished!'
