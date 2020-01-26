# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
diseases = [
  {
		disease: "Coronavirus", bio: "Manifests as a repository Infection, with escalating symptoms appearing 2 - 14 days after infection, and becoming potentially lethal as they progress. \n\nA viral cousin of SARS and MERS, the virus can spread from person to person. Health officials have observed this happen most often where people are close together and in health care settings.\nhttps://www.webmd.com/lung/coronavirus\nhttps://www.webmd.com/lung/coronavirus#2",
		pic_url: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BBYLf3B.img?h=450&w=799&m=6&q=60&o=f&l=f&x=482&y=326",
		contagious: true, lethality: "3%", disease_class: "Viral", phone: "911"
	},
	{
		disease: "Seasonal Allergies", bio: "Allergy symptoms include itchy eyes and skin, sneezing, nasal congestion, wheezing, and rash. Seasonal allergies result from grass, weed, tree pollen, molds or smog.\n\nhttps://www.webmd.com/allergies/summer-allergies",
		contagious: true, lethality: "0%", disease_class: "Acute"
	},
	{
		disease: "Ebola", bio: "Ebola is a rare but deadly virus which spreads through the body and damages the immune system and organs. Ultimately, it causes levels of blood-clotting cells to drop. This leads to severe, uncontrollable bleeding.\n\nhttps://www.webmd.com/a-to-z-guides/ebola-fever-virus-infection",
		pic_url: "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/news/2014/07_2014/ebola/650x350_ebola.jpg",
		contagious: true, lethality: "90%", disease_class: "Viral", phone: "911"
	},
	{
		disease: "Coronary Artery Disease", bio: "Coronary Artery Disease is a serious condition caused by a buildup of plaque in your coronary arteries, the blood vessels that bring oxygenated blood to your heart.\n\nhttps://www.webmd.com/heart-disease/guide/heart-disease-heart-attacks",
		pic_url: "https://dp9bxf2pat5uz.cloudfront.net/wp-content/uploads/shutterstock_356968148.jpg",
		contagious: false, lethality: "52%", disease_class: "Acute", phone: "911"
	},
	{
		disease: "Food Poisoning", bio: "Food poisoning is an umbrella term for various food-borne illnesses which are usually mild to medium in severity, and are primarily characterized by vomiting, diarreah or nausea.\n\nhttps://www.webmd.com/food-recipes/food-poisoning/understanding-food-poisoning-symptoms",
		pic_url: "https://images.medicinenet.com/images/quiz/food-poisoning/food-poisoning-s1.jpg",
		contagious: false, lethality: "Up to 19% depending on type", disease_class: "Varies"
	},
	{
		disease: "Mononucleosis (Mono)", bio: "Mononucleosis is an infectious illness that’s usually transmitted by kissing, as well as things like sharing drinks or silverware. It’s contagious, but you’re less likely to catch mono than other common illnesses like a cold.\n\nhttps://www.webmd.com/a-to-z-guides/understanding-mononucleosis-causes",
		pic_url: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BBYLf3B.img?h=450&w=799&m=6&q=60&o=f&l=f&x=482&y=326",
		contagious: true, lethality: "3%", disease_class: "Viral"
	}
]

for entry in diseases do
	Disease.create(entry)
end

sql = "INSERT INTO symptoms VALUES
(0, 'Fever', 'A raising in the bodys internal temperature. Occurs as an immune response to infections but can also pose risks (potentially severe ones, especially if the patient is on the very young or old side) to the victim.', current_timestamp, current_timestamp),
(1, 'Sore Throat', 'A raw, scratchy, burning feeling at the back of your throat is often the first warning sign that you have a cold, or that the flu is on the way. But it can also be the first symptom of more serious conditions, so you should watch how it develops.', current_timestamp, current_timestamp),
(2, 'Muscle Pain', 'An aching, sore or painful sensation in the muscles which can be caused by working out (often referred to as \"good sore\"), but can also accompany fatigue and weakness as a symptom in many diseases and illnesses which effect the whole body.', current_timestamp, current_timestamp),
(3, 'Loss of appetite', 'A loss of appetite is a common symptom of many illnesses, especially digestive illnesses such as a stomach flu or food poisoning.', current_timestamp, current_timestamp),
(4, 'Weakness', 'Asthenia, also known as weakness, is the feeling of body fatigue or tiredness. A person experiencing weakness may not be able to move a certain part of their body properly. Weakness as a symptom is best described as a lack of energy to move certain muscles or even all muscles in the body.', current_timestamp, current_timestamp),
(5, 'Nausea', 'An uneasy sensation of being close to vomiting, this symptom often accompanies illnesses which feature a fever or digestive component. Note that you dont have to have vomited to feel nauseous.', current_timestamp, current_timestamp),
(6, 'Diarrhea', 'A liquidus stool caused by a lack of absorption of water from feces in the large intestine before excretion. It is an immune response by the body to clear bacteria or parasites from the intestines and bowels, and is thus common in gastrointestinal illness.', current_timestamp, current_timestamp),
(7, 'Vomiting', 'You know what it is', current_timestamp, current_timestamp),
(8, 'Chest Pain', 'A tightness or pressure in the chest area, which can extend to the shoulders and back. This is often associated with illnesses which make their home in the chest cavity, such as pneumothorax, hearth attack and angina.', current_timestamp, current_timestamp),
(9, 'Shortness of Breath', 'A shallow, sometimes sharp feeling intake when breathing that leaves you gasping for more.', current_timestamp, current_timestamp),
(10, 'Uneven Heartbeat', 'An arrhythmic beating which can be a symptom of greater heart disease or an acute symptom in and of itself.', current_timestamp, current_timestamp),
(11, 'Bloody Stool', 'Ew', current_timestamp, current_timestamp),
(12, 'Vomiting Blood', 'Like vomiting but scary', current_timestamp, current_timestamp),
(13, 'Stomach Pain', 'A painful, unsettled, or otherwise uncomfortable sensation in the lower or mid abdomen. This can result from a gastrointestinal illness such as food poisoning, an acute source such as abdominal stroke, or many others such as menstrual cramps in women.', current_timestamp, current_timestamp),
(14, 'Headache', 'From slight ache from lack of sleep to a pain behind the eyes from a migraine, a headache is ubiquitous in many illnesses, but is most prominent in illnesses which also feature a fever or dehydration.', current_timestamp, current_timestamp),
(15, 'Rash', 'The first symptoms you’ll notice are itchiness and possibly red patches or eruptions on the skin. These look more like welts than bumps, with edges that are clearly defined. The surface of the skin will appear swollen, almost as if you’ve been scalded.', current_timestamp, current_timestamp),
(16, 'Sneezing', 'Achoo!', current_timestamp, current_timestamp),
(17, 'Nasal Congestion', 'A feeling of pressure behind your nose or under your eyes, often accompanied by a runny nose and sneeze. This symptom is common in many viral infections affecting the eyes nose mouth triangle of the face.', current_timestamp, current_timestamp),
(18, 'Itchy Eyes', 'Red, swollen and begging to be scratched; nobody likes having itchy eyes. These can be symptoms of greater illness such as pink eye, or acute symptoms brought on my seasonal allergies or other environmental sensitivities.', current_timestamp, current_timestamp),
(19, 'Pneumonia', 'Fluid in the lungs, very dangerous', current_timestamp, current_timestamp),
(20, 'Dry Cough', 'Its like a cough but it hurts', current_timestamp, current_timestamp),
(21, 'Coughing up blood', 'Coughing but with blood uh oh', current_timestamp, current_timestamp);"

connection = ActiveRecord::Base.connection()
connection.execute(sql)

weights = [
	{
		disease_id: Disease.find_by(disease: "Coronavirus").id,
		symptom_id: 0,
		weighting: 5
	},
  {
		disease_id: Disease.find_by(disease: "Coronavirus").id,
		symptom_id: 20,
		weighting: 5
	},
	{
		disease_id: Disease.find_by(disease: "Coronavirus").id,
		symptom_id: 21,
		weighting: 20
	},
	{
		disease_id: Disease.find_by(disease: "Coronavirus").id,
		symptom_id: 9,
		weighting: 15
	},
	{
		disease_id: Disease.find_by(disease: "Coronavirus").id,
		symptom_id: 19,
		weighting: 10
	},
  {
		disease_id: Disease.find_by(disease: "Seasonal Allergies").id,
		symptom_id: 18,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Seasonal Allergies").id,
		symptom_id: 16,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Seasonal Allergies").id,
		symptom_id: 17,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Seasonal Allergies").id,
		symptom_id: 15,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 0,
		weighting: 13
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 14,
		weighting: 2
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 1,
		weighting: 1
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 4,
		weighting: 3
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 13,
		weighting: 3
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 3,
		weighting: 3
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 12,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 21,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Ebola").id,
		symptom_id: 11,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Coronary Artery Disease").id,
		symptom_id: 10,
		weighting: 20
	},
  {
		disease_id: Disease.find_by(disease: "Coronary Artery Disease").id,
		symptom_id: 4,
		weighting: 20
	},
  {
		disease_id: Disease.find_by(disease: "Coronary Artery Disease").id,
		symptom_id: 9,
		weighting: 15
	},
  {
		disease_id: Disease.find_by(disease: "Coronary Artery Disease").id,
		symptom_id: 8,
		weighting: 25
	},
  {
		disease_id: Disease.find_by(disease: "Food Poisoning").id,
		symptom_id: 7,
		weighting: 10
	},
  {
		disease_id: Disease.find_by(disease: "Food Poisoning").id,
		symptom_id: 6,
		weighting: 10
	},
  {
		disease_id: Disease.find_by(disease: "Food Poisoning").id,
		symptom_id: 5,
		weighting: 10
	},
  {
		disease_id: Disease.find_by(disease: "Food Poisoning").id,
		symptom_id: 0,
		weighting: 5
	},
  {
		disease_id: Disease.find_by(disease: "Food Poisoning").id,
		symptom_id: 2,
		weighting: 5
	},
  {
		disease_id: Disease.find_by(disease: "Food Poisoning").id,
		symptom_id: 4,
		weighting: 5
	},
  {
		disease_id: Disease.find_by(disease: "Food Poisoning").id,
		symptom_id: 13,
		weighting: 5
	},
  {
		disease_id: Disease.find_by(disease: "Mononucleosis (Mono)").id,
		symptom_id: 0,
		weighting: 15
	},
  {
		disease_id: Disease.find_by(disease: "Mononucleosis (Mono)").id,
		symptom_id: 4,
		weighting: 3
	},
  {
		disease_id: Disease.find_by(disease: "Mononucleosis (Mono)").id,
		symptom_id: 1,
		weighting: 20
	},
  {
		disease_id: Disease.find_by(disease: "Mononucleosis (Mono)").id,
		symptom_id: 2,
		weighting: 15
	},
  {
		disease_id: Disease.find_by(disease: "Mononucleosis (Mono)").id,
		symptom_id: 3,
		weighting: 15
	}
]

for entry in weights do
  Weight.create(entry)
end
