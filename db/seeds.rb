puts 'Cleaning database...'
Task.destroy_all
puts 'Creating tasks and associated subtasks...'
################ ALL TASKS ######################################################################################

a = Task.create!(
title: "Obtain a residence permit",
category: "Essentials",
description: "As a refugee, you are entitled to a resident card valid 10 years, automatically recreateable.
In some prefectures you can ask for your resident card or residence permit as soon as you sign the CIR;
however, in other prefectures you will have to wait for the Ofpra to put together and send your civil status documents.
These delays can vary.
With the residence permit you will be able
to open a bank account, change your driver’s licence, have access to social homing and request travel documents."
)

b = Task.create!(
title: "Obtain your civil status certificates",
category: "Essentials",
description: "The civil status documents issued by the Ofpra are:
birth, marriage and death certi cates and the family record book (for marriages that took place abroad and
for minors born outside France). For a marriage or the birth of a child in France, the town hall where they were registered
will issue the marriage certi cate, family record book and birth certi cate. The Ofpra also issues the ‘certificat administratif’
(administration certi cate for protected minors) and the ‘certi cat de coutume’ (certi cate of custom in order to get married or
enter into a civil partnership)."
)

c = Task.create!(
title: "Learn French",
category: "Language",
description: "Learning French is essential in everyday life in order to better understand administrative procedures, and a job and
housing, defend your rights and make your start in society easier. It is also a right that France must repect: as a host country,
its role is to stimulate the integration of refugees, in particular by learning French. It is vital for all refugees to speak and
use French at every opportunity.
Level A1 (oral and written) is the level to reach for the CIR in order to get the ‘Diplôme Initial de Langue Française’ (DILF)
(initial diploma in the French language). If you fail the DILF, the O i can, upon request,  nance a second training course so that
you can retake the exam. After the DILF, there is another course to reach level A2 (financed by the Ofi)."
)

################### TASK 1 - SUBTASKS ######################################################################

Subtask.create!(
title: "Confirm a personal address",
description: "You must have a personal address either at a hotel
(with a certificate from the hotel and an invoice for the last month),
at a private property (certificate from the owner, copy of their ID, copy of their property tax document)
or in a tenant’s home (certificate from the landlord, ID, copy of a gas or electricity bill or other bill).
Domiciliation through an association is recognised but is more difficult.",
task: a
)

Subtask.create!(
title: "Medical visit",
description: "When you receive the protection ‘récépissé’ (receipt), the prefecture will inform the Ofii who
will then call you in for a medical visit (checkup, chest x-ray, vaccinations) and the signature of the CIR.
It is recommended that you bring copies of any examinations that you may have with you.",
task: a
)

Subtask.create!(
title: "Sign the Republication Integration Contract (CIR)",
description: "After an interview with the Ofii representative, you will sign the CIR which is valid for 1 year and includes a
6 hour session “Principes, valeurs et institutions de la République française” (Principles, values and institutions of the
French Republic), a 6 hour session “Vivre et accéder à l’emploi en France” (Living and working in France) as well as a French test.
For refugees and ‘beneficiaries’ of subsidiary protection, it is not mandatory to sign the CIR but it is strongly recommended.
It will give you access to integration programmes and will enable you to obtain your residence permit without any problems.",
task: a
)

Subtask.create!(
title: "French classes",
description: "Depending on your level of French, you will be given mandatory training lasting 50, 100 or 200 hours in order to
reach level A1 and, after an exam, receive the “Diplôme Initial de Langue Française” (DILF) (Initial Diploma in the French Language).
You can then ask the Ofi for additional training in order to reach level A2.
If you are unable to attend the courses, send a letter by registered post to the Ofi explaining your reasons why.",
task: a
)

Subtask.create!(
title: "Timbre fiscal",
description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
(tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
first permit.",
task: a
)


Subtask.create!(
title: "Family signs the CIR",
description: "If your family has joined you in France, they will receive a notification to sign the `Contrat d’Intégration
Républicaine pour la Famille` (CIRF) (Family Republican Integration Contract).",
task: a
)


##################### TASK 2 - SUBTASKS ###################################################################################

##########################################################################################################################

puts 'Finished!'
