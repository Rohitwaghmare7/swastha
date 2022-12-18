-- Database: `SAWASTHA`

CREATE TABLE
    `admin`(
        `username` varchar(50),
        `user_id` varchar(50),
        `password` varchar(50),
        `register_time` varchar(50)
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE
    `hospitals` (
        `username` varchar(50),
        `hospital_id` varchar(50),
        `password` varchar(50),
        `register_time` varchar(50),
        `status` varchar(50)
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE
    `hospital_info`(
        `sr` INT NOT NULL,
        `hospital_id` varchar(50),
        `hospital_name` varchar(50),
        `city` varchar(50),
        `address` varchar(50),
        `state` varchar(50),
        `pincode` varchar(50),
        `phonenumber` varchar(10),
        `email` varchar(50),
        `category` varchar(50),
        `website` varchar(50),
        `beds` int(255),
        `available_bad` int(255),
        `occupied_bed` int(255),
        `Total_emergency_beds` int(255),
        `available_emergency_bad` int(255),
        `occupied_emergency_bed` int(255),
        `Total_icu_beds` int(255),
        `available_icu_beds` int(255),
        `occupied_icu_bed` int(255),
        `Total_general_beds` int(255),
        `available_general_bad` int(255),
        `occupied_general_bed` int(255),
        `last_updated` varchar(50)
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE
    `users`(
        `username` varchar(50),
        `user_id` varchar(50),
        `password` varchar(50),
        `register_time` varchar(50)
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE
    `user_info`(
        `user_id` varchar(50),
        `username` varchar(50),
        `city` varchar(50),
        `address` varchar(50),
        `state` varchar(50),
        `phonenumber` varchar(50),
        `email` varchar(50)
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE
    `chatbot`(
        `replies` varchar(225),
        `queries` varchar(225)
    ) ENGINE = InnoDB DEFAULT CHARSET = latin1;

ALTER TABLE `hospital_info` ADD PRIMARY KEY (`sr`);

ALTER TABLE
    `hospital_info` MODIFY `sr` INT NOT NULL AUTO_INCREMENT;

INSERT INTO
    `hospitals`(
        `username`,
        `hospital_id`,
        `password`,
        `register_time`,
        `status`
    )
VALUES (
        'Rafat',
        'HOSP01',
        'Rafat',
        current_timestamp(),
        'active'
    ), (
        'Rohit',
        'HOSP02',
        'Rohit',
        current_timestamp(),
        'active'
    ), (
        'Pratik',
        'HOSP03',
        'Mumbai',
        current_timestamp(),
        'active'
    ), (
        'pranav',
        'HOSP04',
        'Ahmedabad',
        current_timestamp(),
        'active'
    ), (
        'sakshi',
        'HOSP05',
        'Navi Mumbai',
        current_timestamp(),
        'active'
    ), (
        'sharvani',
        'HOSP06',
        'kolkata',
        current_timestamp(),
        'active'
    ), (
        'Sarita',
        'HOSP07',
        'surat',
        current_timestamp(),
        'active'
    ), (
        'Giriwarsingh',
        'HOSP08',
        'Banglore',
        current_timestamp(),
        'active'
    ), (
        'Rutvik',
        'HOSP09',
        'vadodara',
        current_timestamp(),
        'active'
    ), (
        'Akshya',
        'HOSP010',
        'Pune',
        current_timestamp(),
        'active'
    ), (
        'Shantanu',
        'HOSP011',
        'Selu',
        current_timestamp(),
        'active'
    ), (
        'Kaustubh',
        'HOSP012',
        'Latur',
        current_timestamp(),
        'active'
    ), (
        'Rushi',
        'HOSP013',
        'Delhi',
        current_timestamp(),
        'active'
    ), (
        'Rahul',
        'HOSP014',
        'Chennai',
        current_timestamp(),
        'active'
    ), (
        'Yash',
        'HOSP015',
        'Hydrabad',
        current_timestamp(),
        'active'
    ), (
        'Keshav',
        'HOSP016',
        'Jaipur',
        current_timestamp(),
        'active'
    ), (
        'Ashutosh',
        'HOSP017',
        'Lucknow',
        current_timestamp(),
        'active'
    ), (
        'Himanshu',
        'HOSP018',
        'kanpur',
        current_timestamp(),
        'active'
    ), (
        'Sachin',
        'HOSP019',
        'Nagpur',
        current_timestamp(),
        'active'
    ), (
        'Rushikesh',
        'HOSP020',
        'Bhopal',
        current_timestamp(),
        'active'
    ), (
        'Manish',
        'HOSP021',
        'Anand',
        current_timestamp(),
        'active'
    ), (
        'Sonali',
        'HOSP022',
        'Patna',
        current_timestamp(),
        'active'
    ), (
        'Sanket',
        'HOSP023',
        'Guwahati',
        current_timestamp(),
        'active'
    ), (
        'Shshant',
        'HOSP024',
        'Raipur',
        current_timestamp(),
        'active'
    ), (
        'Sayli',
        'HOSP025',
        'Nashik',
        current_timestamp(),
        'active'
    );

INSERT INTO
    `hospital_info` (
        `hospital_id`,
        `hospital_name`,
        `city`,
        `address`,
        `state`,
        `pincode`,
        `phonenumber`,
        `email`,
        `category`,
        `website`,
        `beds`,
        `available_bad`,
        `occupied_bed`,
        `Total_emergency_beds`,
        `available_emergency_bad`,
        `occupied_emergency_bed`,
        `Total_icu_beds`,
        `occupied_icu_bed`,
        `available_icu_beds`,
        `Total_general_beds`,
        `occupied_general_bed`,
        `available_general_bad`,
        `last_updated`
    )
VALUES (
        'HOSP01',
        'MGM',
        'Aurangabad',
        'CIDCO',
        'Maharashtra',
        '431001',
        '8857845780',
        'shaikhrafat25@gmail.com',
        'emergency',
        'MGM.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP02',
        'Sigma',
        'Aurangabad',
        'Beed by pass',
        'Maharashtra',
        '431001',
        '9146585763',
        'rohit98waghmare@gmail.com',
        'Multispeciality',
        'Sigma.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP03',
        'Aaditya Ortho&Gen Surgical Hospital',
        'Sangli',
        'Sangli Sangli Ashta',
        'Maharashtra',
        '416416',
        '9860469694',
        'adityahospitalashta@gmail.com',
        'Physical therapy',
        'Aaditya Ortho&Gen Surgical Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP04',
        'Bandgar Hospital ',
        'sangli',
        'sangli',
        'Maharashtra',
        '416416',
        '9908956938',
        'bharatihospitalsangli@gmail.com',
        'Cardiologist',
        'Bandgar Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP05',
        'Vedant Multispeciality Hospital & Research Centre',
        'solapur',
        '4 C/S No 523 Dhage Mala, Matoshrri Complex Kurduwadi Road, Barshi Solapur ',
        'maharashtra',
        '413401',
        '9960123055',
        'suvidhabarshi243565@gmail.com',
        'Obstetrics and Gynecology',
        'Vedant Multispeciality Hospital & Research Centre.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP06',
        'Venkatesh Hospital',
        'mumbai',
        'Awadhutawadi, Datta chowk',
        'maharashtra',
        '400001',
        '9834543782',
        'chplsolapur@rediffmail.com',
        'Multispeciality',
        'Venkatesh Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP07',
        'Wockhardt Hospital Ltd',
        'solapur',
        'soham plaza(N-E),Manpada circle,ghodbandar',
        'maharashtra',
        '413007',
        '8829864240',
        'rgjaysolapur@gmail.com',
        'emergency',
        'Wockhardt Hospital .com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP08',
        'Jain Hospital',
        'pune',
        'Tanwar Tower, P K Rd, Mira Road (E)',
        'maharashtra',
        '411002',
        '8098357781',
        'drvdraghoji@gmail.com',
        'Cardiologist',
        'Jain Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP09',
        'Krishna Hospital',
        'aurangabad',
        'Vedant Chamber Kalyan Bhiwandi Road Kongaon Tal Bhiwandi',
        'maharashta',
        '431001',
        '9923036277',
        'medicaldirector.kh@gmail.com',
        'Neurologist',
        'Krishna Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP010',
        'Sainath Nursing Home',
        'nanded',
        'Ramnagar',
        'maharashtra',
        '431601',
        '7720387668',
        'gmhcashless@gmail.com',
        'Obstetrics and Gynecology',
        'Sainath Nursing Home.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP011',
        'Sunetra Eye Hospital',
        'nashik',
        'Plot No 7, Khadakpada, Barave Rd',
        'maharashtra',
        '422001',
        '8926365670',
        'teke.ramakant@gmail.com',
        'Physical therapy',
        'Sunetra Eye Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP012',
        'Kariya Hospital',
        'pune',
        'Awadhutawadi, Datta chowk',
        'maharashtra',
        '411002',
        '9921006252',
        'babankatkar@rediffmail.com',
        'Neurologist',
        'Kariya Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP013',
        'Shanti Orthopaedic Hospital',
        'mumbai',
        'Awadhutwadi, Tiwari Square',
        'maharashtra',
        '400001',
        '9073562730',
        'cssatara@rediffmail.com',
        'Cardiologis',
        'Shanti Orthopaedic Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP014',
        'Tawde Hospital',
        'aurangabad',
        'Ratanlal Plat ,Mahadev Mandir Road',
        'maharashtra',
        '431001',
        '9386274730',
        'gawadehospital@gmail.com',
        'Obstetrics and Gynecology',
        'Tawde Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP015',
        'Dr. Pawar Hospital ',
        'pune',
        'Shivam Mhatre Road, Sadashiv Peth',
        'maharashtra',
        '411002',
        '9856732563',
        'sdhpandharpur@rediffmail.com',
        'Multispeciality',
        'Dr. Pawar Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP016',
        'Horizon Hospital ',
        'auranagabad',
        'Achutrao Patwardhan Marg, Four Bungalows',
        'maharashtra',
        '431001',
        '8723135924',
        'suvidhabarshi243565@gmail.com',
        'emergency',
        'Horizon Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    ), (
        'HOSP017',
        'Vivekanand Hospital',
        'mumbai',
        ' near LIC, LIC Colony, Suresh Colony',
        'maharashtra',
        '400001',
        '9963462723',
        'drgjkasliwal@yahoo.co.in',
        'Physical therapy',
        'Vivekanand Hospital.com',
        '200',
        '200',
        '0',
        '50',
        '50',
        '0',
        '50',
        '50',
        '0',
        '100',
        '100',
        '0',
        current_timestamp()
    );

INSERT INTO
    `users` (
        `username`,
        `user_id`,
        `password`,
        `register_time`
    )
VALUES (
        'Rafat',
        '25',
        'Rafat',
        current_timestamp()
    ), (
        'Rohit',
        '4',
        'Rohit',
        current_timestamp()
    ), (
        'Pratik',
        '6',
        'Mumbai',
        current_timestamp()
    ), (
        'pranav',
        '11',
        'Ahmedabad',
        current_timestamp()
    ), (
        'sakshi',
        '12',
        'Navi Mumbai',
        current_timestamp()
    ), (
        'sharvani',
        '31',
        'kolkata',
        current_timestamp()
    ), (
        'Sarita',
        '45',
        'surat',
        current_timestamp()
    ), (
        'Giriwarsingh',
        '55',
        'Banglore',
        current_timestamp()
    ), (
        'Rutvik',
        '90',
        'vadodara',
        current_timestamp()
    ), (
        'Akshya',
        '10',
        'Pune',
        current_timestamp()
    ), (
        'Shantanu',
        '44',
        'Selu',
        current_timestamp()
    ), (
        'Kaustubh',
        '5',
        'Latur',
        current_timestamp()
    ), (
        'Rushi',
        '11',
        'Delhi',
        current_timestamp()
    ), (
        'Rahul',
        '96',
        'Chennai',
        current_timestamp()
    ), (
        'Yash',
        '77',
        'Hydrabad',
        current_timestamp()
    ), (
        'Keshav',
        '13',
        'Jaipur',
        current_timestamp()
    ), (
        'Ashutosh',
        '25',
        'Lucknow',
        current_timestamp()
    ), (
        'Himanshu',
        '7',
        'kanpur',
        current_timestamp()
    ), (
        'Sachin',
        '15',
        'Nagpur',
        current_timestamp()
    ), (
        'Rushikesh',
        '50',
        'Bhopal',
        current_timestamp()
    ), (
        'Manish',
        '29',
        'Anand',
        current_timestamp()
    ), (
        'Sonali',
        '82',
        'Patna',
        current_timestamp()
    ), (
        'Sanket',
        '81',
        'Guwahati',
        current_timestamp()
    ), (
        'Shshant',
        '75',
        'Raipur',
        current_timestamp()
    ), (
        'Sayli',
        '91',
        'Nashik',
        current_timestamp()
    );

INSERT INTO
    `user_info` (
        `user_id`,
        `username`,
        `city`,
        `address`,
        `state`,
        `phonenumber`,
        `email`
    )
VALUES (
        '25',
        'Rafat',
        'Aurangabad',
        'Beed by pass',
        'Maharashtra',
        '8857845780',
        'shaikhrafat25@gmail.com'
    ), (
        '4',
        'Rohit',
        'Aurangabad',
        'Beed by pass',
        'Maharashtra',
        '9146585763',
        'rohit98waghmare@gmail.com'
    ), (
        '6',
        'pratik',
        'Mumbai',
        'bandra',
        'Maharashtra',
        '8956451714',
        'pratikdeshpande273@gmail.com'
    ), (
        '11',
        'pranav',
        'Ahmedabad',
        'surat highway',
        'Gujrat',
        '7898654821',
        'pranavshejul@gmail.com'
    ), (
        '12',
        'sakshi',
        'Navi Mumbai',
        'keshavnager',
        'Maharashtra',
        '9887561265',
        'sakshimunde45@gmail.com'
    ), (
        '31',
        'sharvani',
        'kolkata',
        'cat palace',
        'west bangal',
        '8789562145',
        'sharvanidandge233@gmail.com'
    ), (
        '45',
        'Sarita',
        'Surat',
        'Gandhi choak',
        'Gujrat',
        '8158697598',
        'saritaharkanche@gmail.com'
    ), (
        '55',
        'Giriwarsingh',
        'Banglore',
        'baglore',
        'Karnataka',
        '8798322125',
        'shekhawatgiriwarsingh55@gmail.com'
    ), (
        '90',
        'Rutvik',
        'Vadodara',
        'Ramnager',
        'Gujrat',
        '7778945153',
        'shinderutvik8978@gmail.com'
    ), (
        '10',
        'Akshya',
        'Pune',
        'Shivajinager',
        'Maharashta',
        '7898564512',
        'Akshyakolhe@gmail.com'
    ), (
        '44',
        'Shantanu',
        'Selu',
        'vasmat road',
        'Maharashta',
        '9965872314',
        'Shantanukatare@gmail.com'
    ), (
        '5',
        'Kaustubh',
        'Latur',
        'Shivaji choak',
        'Maharashta',
        '8889541142',
        'kaustubhkumbhar@gmail.com'
    ), (
        '11',
        'Rushi',
        'Delhi',
        'Near Raj path',
        'Delhi',
        '9325641756',
        'Rushipisole234@gmail.com'
    ), (
        '96',
        'Rahul',
        'Chennai',
        'Gazinager',
        'Tamilnadu',
        '8899965421',
        'Rahulpandit@gmail.com'
    ), (
        '77',
        'Yash',
        'Hydrabad',
        'Near Airport',
        'Telangana',
        '789231456',
        'Yashkale@gmail.com'
    ), (
        '13',
        'Keshav',
        'Jaipur',
        'Bhanu choak',
        'Rajasthan',
        '8978888654',
        'Keshavmali13@gmail.com'
    ), (
        '25',
        'Ashutosh',
        'Lucknow',
        'kanpurhiway',
        'Uttarpradesh',
        '7565981023',
        'Wazarkarashu25@gmail.com'
    ), (
        '7',
        'Himanshu',
        'Kanpur',
        'Near IIT',
        'Uttarpradesh',
        '9998654785',
        'Himanshusharma@gmail.com'
    ), (
        '15',
        'Sachin',
        'Nagpur',
        'Sardar choak',
        'Maharashta',
        '9214563275',
        'Sachinchaure@gmail.com'
    ), (
        '50',
        'Rushikesh',
        'Bhopal',
        'choticolney',
        'Madhyapradesh',
        '9998785622',
        'rushiraur@gmail.com'
    ), (
        '29',
        'Manish',
        'Anand',
        'Ps colney',
        'Gujrat',
        '8123648556',
        'Manishkumar@gmail.com'
    ), (
        '82',
        'Sonali',
        'Patna',
        'bhalki choak',
        'Bihar',
        '8456478945',
        'sonalisonu@gmail.com'
    ), (
        '81',
        'Sanket',
        'Guwahati',
        'chandinager',
        'Assam',
        '7788945221',
        'Sanketchodhari@gmail.com'
    ), (
        '75',
        'sushant',
        'Raipur',
        'kumarnager',
        'chhattisgrah',
        '7986454851',
        'sushantsingh@gmail.com'
    ), (
        '91',
        'Sayli',
        'Nashik',
        'Near nashik road station',
        'Msharashta',
        '8956475312',
        'Saylisapre@gmail.com'
    );

INSERT INTO
    `admin` (
        `username`,
        `user_id`,
        `password`,
        `register_time`
    )
VALUES (
        'Rafat',
        '25',
        'Rafat',
        current_timestamp()
    ), (
        'Rohit',
        '4',
        'Rohit',
        current_timestamp()
    );

INSERT INTO
    `chatbot`(`replies`, `queries`)
VALUES (
        'Hello i am POGO..How can i help you',
        'hi|hello|hola|hey'
    ), (
        'Namaste i am POGO..😊 How can i help you',
        'namaste'
    ), (
        'A cool bath with added baking soda, aluminum acetate (Domeboro, others), uncooked oatmeal or colloidal oatmeal — a finely ground oatmeal that is made for soaking.
Calamine lotion dabbed on the spots.A soft, bland diet if chickenpox sores develop in the mouth.Antihistamines such as diphenhydramine (Benadryl, others) for itching. Check with your doctor to make sure your child can safely take antihistamines.
Acetaminophen (Tylenol, others) for a mild fever',
        'treatment for chickenpox|chickenpox|chicken pox treatment for adults|chicken pox treatment and prevention|chicken pox prevention|how to prevent chickenpox without vaccine|treatment for chickenpox at home'
    ), (
        'Take your temperature and assess your symptoms. If your temperature runs 100.4°F (38°C) or higher, you have a fever.Stay in bed and rest.Keep hydrated. Drinking water, iced tea, or very diluted juice to replenish fluids lost through sweating. But if keeping liquids down is difficult, suck on ice chips.Take over-the-counter medications like acetaminophe  and ibuprofen to reduce fever. Note the proper dosage, and don’t them use alongside other fever-reducing medications. You shouldn’t give aspirin to your baby or child without consulting your doctor. Infants under 6 months of age shouldn’t be given ibuprofen.
Stay cool. Remove extra layers of clothing and blankets, unless you have the chills.Take tepid baths or using cold compresses to make you more comfortable. Cold baths, ice cube baths, or alcohol baths or rubs can be dangerous and should be avoided.
But no matter what the number on the thermometer reads, if you have any concerns consult your doctor.',
        'fever|fever treatment|bukhar'
    ), (
        'Antacids, which help neutralize stomach acid. Antacids may provide quick relief. ...H2 blockers, which can reduce stomach acid. H2 blockers do not act as quickly as antacids,but they may provide longer relief.Proton pump inhibitors, which also can reduce stomach acid.',
        'acidity treatment|acidity|prevent acidity'
    ), (
        'Avoid foods that are milk-based, greasy, high-fiber, or very sweet because these are likely to aggravate diarrhea.
Avoid caffeine and alcohol.Do not eat solid food if you have signs of dehydration (thirst, light-headed, dark urine). Instead, drink about 2 cups of clear fluids per hour (if vomiting isn’t present), such as sports drinks and broth. Water alone is not enough because your body needs sodium and sugar to replace what it’s losing.
Avoid high sugar drinks, like apple juice, grape juice, and soda, which can pull water into the intestine and make the diarrhea persist.
Don’t drink clear liquids exclusively for more than 24 hours.Begin eating normal meals within 12 hours, but stick to food that is bland and won’t irritate your intestine. Some doctors suggest the “BRAT“ diet which includes foods that are low in fiber, fat, and sugar. BRAT stands for Bananas, Rice, Applesauce, and Toast.
Use over-the-counter lactobacillus acidophilus capsules or tablets. These bacteria help maintain a healthy intestine, and are found in yogurt with live active cultures.
Decrease level of exercise until symptoms are gone.Over-the-counter drugs, such as Imodium A-D, should only be used if absolutely necessary because it is important to let diarrhea flush out the bacteria or parasite that’s causing the infection.
',
        'diarrhea Treatment| diarrhea| Treatment diarrhea'
    ), (
        'Ice pack held over the eyes or forehead Heating pad set on low or hot shower to relax tense neck and shoulder muscles Sleep, or at least resting in a dark room Taking breaks from stressful situations
Regular exercise to increase endorphin levels and relax muscles. Even if you already have a headache, exercising may relieve the pain. However, intense exercise may bring on a headache.
Occasional use of over-the-counter medicines such as acetaminophen, ibuprofen, or aspirin can relieve both migraine and tension headaches. *
Prescription drugs for severe headaches ',
        'headche treatment| treatment headche |'
    ), (
        'Rest more than usual and avoid exercise until symptoms are gone.Drink lots of clear fluids (e.g., water, tea).Stay away from cigarette smoke.
Do not take antibiotics unless specifically prescribed for you to cure the illness from which you currently suffer.Avoid drinking alcohol because it weakens your immune system and may interact with medications.
Avoid caffeine, which can increase congestion and dehydration.Eat a well-balanced diet, including fruits, vegetables, and grains
',
        'cold treatment | treatment cold | cold'
    ), (
        'call immediately
    1) 100 = police
    2) 108 = ambulance
    (3.if see fire then call fire brigade)',
        'help|emergency'
    ), (
        'Your bite wound will be cleaned with soap, water, and germ-killing solutions.
  This helps wash away germs that may be in the wound, and decreases the risk of infection.
  Td vaccine is a booster shot used to help prevent tetanus and diphtheria. 
  The Td booster may be given to adolescents and adults every 10 years or for certain wounds and injuries.
  Surgery may be used to cut tissues covering muscles.This decreases pressure on blood vessels and nerves caused by swelling. 
  Damaged and dead tissue will be removed with surgical cleaning.
         if it is emergency then go to the nearby hospital.',
        'snake bite.|bite snake|what shoud i do if snake bits me|how should i treat if anyone has been bitten by snake?|snake| how should i treat myself if snake bites me?'
    ), (
        'If you see someone faint, lie the person on his or her back and make sure they are breathing. 
       If possible, lift the person’s legs above heart level to aid blood flow to the brain.
       Loosen all constrictive clothing such as collars or belts.
       When the person regains consciousness, allow them to rest rather than sitting or getting up immediately.
       if it is emergency then go to the nearby hospital',
        'You see small accident on road and someone faints on the road.|someone faint on road what should I do?|'
    ), (
        '  (If you’ve been shocked)
       Let go off the electric source as soon as you can.
       If you can, call 911 or local emergency services. If you can’t, yell for someone else around you to call.
       Don’t move, unless you need to move away from the electric source.
                                or
                    (If someone else has been shocked)
      Don’t touch someone who has been shocked if they’re still in contact with the source of electricity.
      Turn off the flow of electricity if possible. If you can’t, move the source of electricity away from the person using a non-conducting object.
      Wood and rubber are both good options. Just make sure you don’t use anything that’s wet or metal based.
      Stay at least 20 feet away if they’ve been shocked by high-voltage power lines that are still on.
      Call 911 or local emergency services if the person was struck by lightning or if they came into contact with high-voltage electricity,
      such as power lines.
      Check the person’s breathing and pulse. If necessary, start CPR until emergency help arrives.
      If the person is showing signs of shock, such as vomiting or becoming faint or very pale, elevate their legs and feet slightly, 
      unless this causes too much pain.
      Keep person warm.',
        'Electric shock|'
    ), (
        'If cut occur then wash that place on soap carefully. Apply dettol using smooth cotton.
         then apply bandage.
         If the cut is serious and blood not stop flowing then wound tight clean cloth and immediately go to the nearby hospital.',
        'some cut occur on my body'
    ), (
        'Make sure you drink lots of water or fluids to keep your body hydrated, and take proper rest.
         Take a glass of warm water, add a few drops of lemon juice and a pinch of sugar and salt to it, stir well and drink.
         if it is emergency then go to the nearby hospital.',
        'food poisoning'
    ), (
        'Cool it down by holding the burn under cool running water for five minutes or longer if you please. Using a cold wet compress will also help.
       Do not use ice, this could damage it rather than help.
       Immediately but gently remove any type of jewllery or clothing worn near the burn before it swells. 
       This includes rings, bracelets, necklaces, and watches.
       Apply lotions containing aloe vera or moisturizing components over burn area (if small) to prevent drying and provide relief from discomfort.
       Cover the burned area with a sterile gauze bandage or clean cloth wrapping it loosely to avoid putting pressure on the tissue.
       Do not use cotton at all.
       if it is emergency then go to the nearby hospital',
        'Burning hands on your home.'
    ), (
        'A cool bath with added baking soda, aluminum acetate (Domeboro, others), uncooked oatmeal or colloidal oatmeal — a finely ground oatmeal that is made for soaking.
Calamine lotion dabbed on the spots.A soft, bland diet if chickenpox sores develop in the mouth.Antihistamines such as diphenhydramine (Benadryl, others) for itching. Check with your doctor to make sure your child can safely take antihistamines.
Acetaminophen (Tylenol, others) for a mild fever',
        'treatment for chickenpox|chickenpox|chicken pox treatment for adults|chicken pox treatment and prevention|chicken pox prevention|how to prevent chickenpox without vaccine|treatment for chickenpox at home'
    ), (
        'Take your temperature and assess your symptoms. If your temperature runs 100.4°F (38°C) or higher, you have a fever.Stay in bed and rest.Keep hydrated. Drinking water, iced tea, or very diluted juice to replenish fluids lost through sweating. But if keeping liquids down is difficult, suck on ice chips.Take over-the-counter medications like acetaminophe  and ibuprofen to reduce fever. Note the proper dosage, and don’t them use alongside other fever-reducing medications. You shouldn’t give aspirin to your baby or child without consulting your doctor. Infants under 6 months of age shouldn’t be given ibuprofen.
Stay cool. Remove extra layers of clothing and blankets, unless you have the chills.Take tepid baths or using cold compresses to make you more comfortable. Cold baths, ice cube baths, or alcohol baths or rubs can be dangerous and should be avoided.
But no matter what the number on the thermometer reads, if you have any concerns consult your doctor.',
        'fever|fever treatment|bukhar'
    ), (
        'Antacids, which help neutralize stomach acid. Antacids may provide quick relief. ...H2 blockers, which can reduce stomach acid. H2 blockers do not act as quickly as antacids,but they may provide longer relief.Proton pump inhibitors, which also can reduce stomach acid.',
        'acidity treatment|acidity|prevent acidity'
    ), (
        'Avoid foods that are milk-based, greasy, high-fiber, or very sweet because these are likely to aggravate diarrhea.
Avoid caffeine and alcohol.Do not eat solid food if you have signs of dehydration (thirst, light-headed, dark urine). Instead, drink about 2 cups of clear fluids per hour (if vomiting isn’t present), such as sports drinks and broth. Water alone is not enough because your body needs sodium and sugar to replace what it’s losing.
Avoid high sugar drinks, like apple juice, grape juice, and soda, which can pull water into the intestine and make the diarrhea persist.
Don’t drink clear liquids exclusively for more than 24 hours.Begin eating normal meals within 12 hours, but stick to food that is bland and won’t irritate your intestine. Some doctors suggest the “BRAT“ diet which includes foods that are low in fiber, fat, and sugar. BRAT stands for Bananas, Rice, Applesauce, and Toast.
Use over-the-counter lactobacillus acidophilus capsules or tablets. These bacteria help maintain a healthy intestine, and are found in yogurt with live active cultures.
Decrease level of exercise until symptoms are gone.Over-the-counter drugs, such as Imodium A-D, should only be used if absolutely necessary because it is important to let diarrhea flush out the bacteria or parasite that’s causing the infection.
',
        'diarrhea Treatment| diarrhea| Treatment diarrhea'
    ), (
        'There are many ways of treating headaches. The first initiative to treat headaches would be by bringing a lifestyle change. Proper sleep, clean surroundings, eating at the right time, exercising, etc. would be one of the few things to do to reduce headaches. Other home remedies to follow can be Yoga, meditation, and counseling (if needed). Proper nutritional diet and physical exercises also help treat headaches ',
        'how should i treat headache?|possible treatment for headache?| i am having headache what should i do?| treatment headche |headache treatment'
    ), (
        'Rest more than usual and avoid exercise until symptoms are gone.Drink lots of clear fluids (e.g., water, tea).Stay away from cigarette smoke.
Do not take antibiotics unless specifically prescribed for you to cure the illness from which you currently suffer.Avoid drinking alcohol because it weakens your immune system and may interact with medications.
Avoid caffeine, which can increase congestion and dehydration.Eat a well-balanced diet, including fruits, vegetables, and grains
',
        'cold treatment | treatment for cold | cold|what are the possible self treatment for cold?'
    ), (
        'You can do the following to reduce asthma attacks:
•	You need to find out what triggers your asthma attack and devise an action plan to treat it accordingly
•	Get yourself vaccinated for pneumonia and influenza
•	Keeping a check on your breathing pattern
•	Seek medical intervention quickly for any symptoms that can prompt the attack
•	You need to take medicines as prescribed by your doctor
•	In case you are using an inhaler and despite that not feeling relieved, it is a must for you to visit the doctor',
        'How can i reduce aasthma?|Precautions to be taken to prevent aasthma attack|attack aasthma|aasthma attack| How should i avoid aasthma attack?| aasthma'
    ), (
        'When the air passage between the mouth, nose, and lungs gets interrupted and there is inflammation or swelling of bronchial tubes, you might be suffering from serious bronchitis. A prolonged cough and cold can lead to acute bronchitis in children, while older adults can also face problems in breathing if medical intervention is not taken on time. You need to visit the doctor if:
•	You are having a high fever- more than 101 degrees
•	Difficulty in sleeping
•	Coughing up blood
•	Gasping for breath
•	You are producing any discolored mucus',
        'When to see doctor for aasthma?| doctor for aasthma| when should i visit doctor if i have aasthma?'
    ), (
        'Stress exhibits differently in different people. While some hide their feelings, others turn to alcohol and drugs. Some withdraw from the world whereas some are angry all the time, lashing out at close ones. The common factor with all these people is that they are under stress and are not able to manage it.
Managing stress can be done in the following ways:
•	Talk it out: Find a mental health professional and start talking about your day-to-day life. Talking it out helps reduce the mental worry one carries with them. Talking to a professional helps you understand your mechanisms and how to deal better with them.
•	Exercise: Be it the gym or just a run, doing a cardio activity leads to better stress levels
•	Meditation
•	Breathing exercises
•	Choose an activity of your liking
•	Write a journal',
        'i am stressed| stress| how do i manage stress| treatment for stress| possible treatment for stress'
    ), (
        'Drink an extra four glasses (eight ounces each) of non-alcoholic liquids
Keep your bandage on and dry for the next five hours, and do not do heavy exercising or lifting.
If the needle site starts to bleed, raise your arm straight up and press on the site until the bleeding stops.
Because you could experience dizziness or loss of strength, use caution if you plan to do anything that could put you or others at risk of harm. For any hazardous occupation or hobby, follow applicable safety recommendations regarding your return to these activities following a blood donation.
Eat healthy meals and consider adding iron-rich foods to your regular diet, or discuss taking an iron supplement with your health care provider, to replace the iron lost with blood donation.
If you get a bruise:  Apply ice to the area intermittently for 10-15 minutes during the first 24 hours. Thereafter, apply warm, moist heat to the area intermittently for 10-15 minutes. A rainbow of colors may occur for about 10 days.
If you get dizzy or lightheaded:  Stop what you are doing, lie down, and raise your feet until the feeling passes and you feel well enough to safely resume activities.
And remember to enjoy the feeling of knowing you have helped save lives!
Schedule your next appointment',
        'what should i do after donating blood?|precautions to be taken after donating blood?'
    ), (
        'As of now, there is no cure for diabetes. Those with type 1 need life-long insulin injections. Those with type 2 can bring it under control with a regimen of medication, diet, and exercise. Rarely, there might be a window period where the doctor might discontinue medicines, but it usually recurs. ',
        'how can i cure diabeties?|Treatment for diabeties|cure for diabeties'
    ), (
        'To check yourself for diabetes, run through a list of symptoms:
If you suspect Diabetes:
High blood glucose cause symptoms like frequency of urination, increased appetite, increased thirst, weight loss, easy fatigability, blurred vision, dryness of skin, recurrent yeast infections
If you suspect Diabetes Type 1: Above mentioned symptoms occurring in a child can be a clue to type 1 diabetes. Sometimes with very high glucose in type 1 diabetes, stomach pain, nausea, vomiting, shortness of breath and drowsiness can occur, a condition called diabetic ketoacidosis.
If you suspect Diabetes Type 2: Type 2 diabetes can remain silent and is often detected during a routine health check-up. If the blood glucose levels are high, the above-mentioned symptoms can also occur in type 2 diabetes.
If you have any of these symptoms, contact your doctor.',
        'How do I check whether I’ve diabetes?|Diabetes| diabetes'
    ), (
        'While the diagnosis of osteoporosis can be only made by a trained physician after a physical examination and medical investigations, some symptoms point toward osteoporosis.
Most people don’t know they have osteoporosis until their first bone fracture. However, patients who complain of back pain, gradual loss of height, stooped posture, and fractures of the hip, spine, or wrists may strongly suggest osteoporosis.',
        'How can I diagnose osteoporosis?| osteoporosis'
    ), (
        'One can strengthen their bones in the following manner:
1. A balanced diet: Eat fresh, locally produced fruits and vegetables and try to avoid processed foods, refined sugars & white flour. Multi-vitamin tablets should be considered to boost the nutritional status
2. Exercise: Exercising helps in strengthening the muscles around the joints and delays bone loss. The key is to be regular and slowly increase your activity level.
3. Get adequate Vitamin D: Start your day soaking in the sun or take Vitamin D to reduce the risk of osteoporosis.
4. Decrease your stress levels as cortisol (stress hormone) has a detrimental effect on bones. Try mediation or join a hobby to decrease your stress levels.
5. Try avoiding acidic food and fizzy drinks to protect against bone loss.
',
        'Are there any natural ways of strengthening the bones?|bones|how to strengthen bones?| strengthen bones'
    ), (
        'If you have been diagnosed with a spinal fracture, there are certain precautions one must take.
 Follow your doctor’s advice. Even if there is symptomatic relief, get clearance from your doctor before resuming activities that may lead to stress on the back
 Bed rest should behave strictly adhered to, However, extended periods cause more harm than heal so slowly build up your ambulatory functions
 Don’t skip your painkillers
 Make sure you’re taking your calcium and Vitamin D supplements in adequate dosage regularly.
 Maintain a healthy diet. Try to avoid gaining weight during your bed rest which may increase the stress on your back.  
',
        'What precautions shall I keep while suffering from a spinal fracture?| precautions to be take for spinal fracture|spinal fracture.'
    ), (
        'Posture while sitting, the vertebral support of the chair & placement of the computer on the desk contribute to workplace neck pain. Apart from rectifying this, there are a few exercises one can do to strengthen the neck:
Side to Side: Stand straight with your arms loosely placed in front. Turn your neck slowly to one side, rolling it to the other side, dipping your chin to your chest in the process. Repeat this movement 30 times.
Shoulder shrug: Stand straight, with your shoulders relaxed. Slowly, raise both shoulders together, like a shrugging gesture, to maximum tension and lower them back to starting position. Repeat 20 times
Tilt to Side: Stand straight, with your shoulders relaxed. Tilt your head slowly towards one side, the corresponding arm gently pushing it down further. Keep for 10 – 20 seconds, and repeat on the other side. Practice this exercise 8 – 10 times a day.  
',
        'exercise for neck pain| neck pain'
    ), (
        'Treatment includes 3 main facets: medication, therapy & support. There are several types of medication being produced to combat mental illness, the aim of which is to reduce social symptoms and help bring about daily functioning.
Therapy with a clinically trained psychologist helps understand your disease better and equips you with the tools you need to deal with the disease.
Support from family, friends & community helps the patient feel less isolated & gives them a platform for open communication. Feeling like a part of a community helps the patients ground themselves
',
        'mental illness|How should I treat mental illness?| how to treat mental illness?| mental health.'
    );