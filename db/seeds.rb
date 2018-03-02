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
  color: "#FFF8201"
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
  color: "#02B5AO"
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
"- What does that mean ?
Getting the refugee status means that from now, you will be a French citizen and won't belong admninitratively and legally to your country of origin.
- Why is it important ? This is the beginning of your new life. You will have new rights and new obligations.
- What's next ? Once you have the refugee status, the receipt (récépissé) of the international protection or of the application for a residence permit allows
you to work and entitles you to civil and social rights."
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
- How long does it take ? Delays can vary depending on the prefecture"
)

c = Task.create!(
title: "Obtain your civil status certificates",
category: cat_a,
position: 2,
status: "done",
description:
"- What are the civil status certificates? birth certificate, marriage certificate, death certificate, family record book for marriages that took place abroad and
for minors born outside France, 'certificat administratif' for protected minors & 'certificat de coutume' if you want to get married or having a civil partnership.
- Who delivers them ? The OFPRA"
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


################### TASK 1 - SUBTASKS ######################################################################

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
