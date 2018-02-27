# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.new(
  title: "Obtain a residence permit",
  category: "Essentials",
  description: "As a refugee, you are entitled to a resident card valid 10 years, automatically renewable.
  In some prefectures you can ask for your resident card or residence permit as soon as you sign the CIR;
  however, in other prefectures you will have to wait for the Ofpra to put together and send your civil status documents.
  These delays can vary.
  With the residence permit you will be able
  to open a bank account, change your driver’s licence, have access to social homing and request travel documents."
)

Subtask.new {
  title: "Confirm a personal address",
  description: "You must have a personal address either at a hotel
  (with a certificate from the hotel and an invoice for the last month),
  at a private property (certificate from the owner, copy of their ID, copy of their property tax document)
  or in a tenant’s home (certificate from the landlord, ID, copy of a gas or electricity bill or other bill).
  Domiciliation through an association is recognised but is more difficult.
  What you need to go
  - Either get a certificate from the hotel and an invoice for the last month"
}

Subtask.new {
  title: "Medical visit",
  description: "When you receive the protection ‘récépissé’ (receipt), the prefecture will inform the Ofii who
  will then call you in for a medical visit (checkup, chest x-ray, vaccinations) and the signature of the CIR.
  It is recommended that you bring copies of any examinations that you may have with you."
}

Subtask.new {
  title: "Sign the Republication Integration Contract (CIR)",
  description: "After an interview with the Ofii representative, you will sign the CIR which is valid for 1 year and includes a
  6 hour session “Principes, valeurs et institutions de la République française” (Principles, values and institutions of the
  French Republic), a 6 hour session “Vivre et accéder à l’emploi en France” (Living and working in France) as well as a French test.
  For refugees and ‘beneficiaries’ of subsidiary protection, it is not mandatory to sign the CIR but it is strongly recommended.
  It will give you access to integration programmes and will enable you to obtain your residence permit without any problems."
}

Subtask.new {
  title: "French classes",
  description: "Depending on your level of French, you will be given mandatory training lasting 50, 100 or 200 hours in order to
  reach level A1 and, after an exam, receive the “Diplôme Initial de Langue Française” (DILF) (Initial Diploma in the French Language).
  You can then ask the Ofi for additional training in order to reach level A2.
  If you are unable to attend the courses, send a letter by registered post to the Ofi explaining your reasons why."
}

Subtask.new {
  title: "French classes",
  description: "Depending on your level of French, you will be given mandatory training lasting 50, 100 or 200 hours in order to
  reach level A1 and, after an exam, receive the “Diplôme Initial de Langue Française” (DILF) (Initial Diploma in the French Language).
  You can then ask the Ofi for additional training in order to reach level A2.
  If you are unable to attend the courses, send a letter by registered post to the Ofi explaining your reasons why."
}

Subtask.new {
  title: "Timbre fiscal",
  description: "Timbre fiscal’ (tax stamp) and tax: refugees and beneficiaries of subsidiary protection must pay a ‘timbre fiscal’
  (tax stamp) of €19 for their first residence permit however, unlike other foreigners, they will not pay the tax on their
  first permit."
}


Subtask.new {
  title: "Family signs the CIR",
  description: "If your family has joined you in France, they will receive a notification to sign the `Contrat d’Intégration
  Républicaine pour la Famille` (CIRF) (Family Republican Integration Contract)."
}


