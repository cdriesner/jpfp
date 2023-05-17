INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Harmony University', '1234 Evergreen Lane, Faketown, F4K3T0WN','This college is renowned for its academic excellence, attracting top students and distinguished faculty from around the world. It offers a wide range of programs and resources to foster intellectual growth and prepare students for successful careers.','.1','#5BC0EB','#FDE74C');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Crestview College', '987 Mockingbird Avenue, Fictionville, F1CT10NV1LL3', 'We have a strong emphasis on a well-rounded education, this college offers a diverse curriculum encompassing humanities, sciences, social sciences, and the arts. It promotes critical thinking, creativity, and interdisciplinary exploration.', '2','#4F000B','#720026');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Nova Tech College', '456 Fabricated Street, Imaginary City, 1M4G1N4RYC1TY', 'This college is dedicated to pushing the boundaries of knowledge through groundbreaking research initiatives. Students have the opportunity to work alongside renowned researchers, engage in innovative projects, and contribute to cutting-edge discoveries.', '3','#D64045','#E9FFF9');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Liberty Institute', '789 Dreamers Lane, Pretendville, PR3T3NDV1LL3', 'Committed to accessibility and affordability, this college provides a supportive environment for students of diverse backgrounds. It offers associate degrees, training, and transfer programs, empowering students to pursue their educational goals.', '4','#12263A','#06BCC1');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Heritage Academy', '321 Fictional Road, Makebelieve Town, M4K3B3L13V3T0WN', 'With a global perspective, this college attracts a diverse student body from various countries. It fosters cultural exchange, offers international study programs, and prepares students to thrive in an interconnected world.', '5','#333745','#E63462');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Havenwood College', '567 Fantasy Avenue, Mythical City, MYTH1C4LC1TY', 'This college excels in science, technology, engineering, and mathematics (STEM) education. It provides state-of-the-art facilities, hands-on research opportunities, and industry partnerships to equip students with in-demand skills for the STEM workforce.', '6','#C3DFE0','#BCD979');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Radiant Springs University', '890 Imaginary Street, Illusionville, 1LLUS10NV1LL3', 'Celebrating creativity and artistic expression, this college offers comprehensive programs in visual arts, design, fashion, and performing arts. It provides students with the necessary tools and mentorship to pursue their artistic passions.', '7','#BF211E','#E9CE2C');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Serenity College of Arts', '234 Enchanted Lane, Whimsytown, WH1MSYT0WN', 'Embracing the digital age, this college provides a flexible and accessible learning environment through online courses and degree programs. It caters to students who seek a self-paced education and the convenience of remote learning.', '8','#243010','#87A330');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Verdant Meadows Community College', '876 Mirage Road, Imaginopolis, 1M4G1N0P0L1S', 'Rooted in African American history and culture, this college provides a nurturing and empowering educational experience for students. It fosters a strong sense of community, promotes social justice, and celebrates diversity.', '9','#3D3B30','#E7E247');
INSERT INTO campuses (name,address,description,image,primarycolor,secondarycolor) VALUES ('Phoenix Institute of Technology', '543 Fable Street, Wonderland, W0ND3RL4ND', 'This college specializes in practical, hands-on training for specific careers and industries. It offers specialized programs in areas such as culinary arts, and trades, equipping students with the skills necessary for immediate employment.', '10','#B80C09','#0B4F6C');

INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Lucy','Jackson','Jackson.Lucy@gmail.com','4','3.49','The universe is a giant disco ball, and were all just dancing in its light.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Violet','Rogers','Rogers.Violet@gmail.com','19','1.53','Success is like a rainbow; it looks pretty, but you can never reach the end.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Hannah','Lee','Lee.Hannah@gmail.com','31','4.0600000000000005','Life is a roller coaster; enjoy the ride, but dont forget to scream.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Anna','Clark','Clark.Anna@gmail.com','26','2.86','Dream big, then take a nap.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Aurora','Richardson','Richardson.Aurora@gmail.com','1','1.0899999999999999','Happiness is a warm cookie on a rainy day.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Evelyn','Clark','Clark.Evelyn@gmail.com','11','2.99','Be yourself, unless you can be a unicorn, then always be a unicorn.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Evelyn','Morris','Morris.Evelyn@gmail.com','24','3.58','The best things in life are free, except for Wi-Fi; thats gotta be paid for.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Scarlett','Torres','Torres.Scarlett@gmail.com','23','1.84','Life is too short to fold fitted sheets.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Elizabeth','Ross','Ross.Elizabeth@gmail.com','2','2.3899999999999997','Follow your dreams, even if they lead you to the refrigerator.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Abigail','Edwards','Edwards.Abigail@gmail.com','31','1.94','Life is like a box of crayons; you never know what color youll get.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Savannah','Gonzalez','Gonzalez.Savannah@gmail.com','32','2.92','Success is not a destination; its a journey you take on a broken GPS.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Leah','Howard','Howard.Leah@gmail.com','3','1.81','Dont count the days; make the days count, unless its a Monday, then just survive.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Naomi','Morgan','Morgan.Naomi@gmail.com','25','1.68','Happiness is a warm puppy, but a hot pizza is a close second.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Faith','Ramirez','Ramirez.Faith@gmail.com','14','2.89','Follow your dreams, but dont forget to bring snacks.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Aurora','Hernandez','Hernandez.Aurora@gmail.com','25','4.220000000000001','Life is an adventure; just dont forget your sunscreen.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Abigail','Alexander','Alexander.Abigail@gmail.com','4','1.31','The only competition you have is the person in the mirror.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Hannah','Harris','Harris.Hannah@gmail.com','31','3','Dont let yesterday take up too much of today, unless youre binge-watching on Netflix.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Abigail','Williams','Williams.Abigail@gmail.com','19','2.1799999999999997','The best things in life are free, except for taxes, traffic, and Mondays.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Zoey','Jones','Jones.Zoey@gmail.com','5','2.67','Success is not about being perfect; its about being better than your ex.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Lillian','Simmons','Simmons.Lillian@gmail.com','17','3.64','Life is a dance; sometimes you step on someones toes, and sometimes they step on yours.',(SELECT id from campuses where name='Crestview College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Natalie','Carter','Carter.Natalie@gmail.com','25','0.94','Happiness is not about having it all; its about knowing where to hide the chocolate stash.',(SELECT id from campuses where name='Crestview College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Addison','Jenkins','Jenkins.Addison@gmail.com','21','1.35','Dream big, but dont forget to set your alarm clock.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Clara','Cooper','Cooper.Clara@gmail.com','26','1.78','The secret to success is to always have an extra charger in your bag.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Isabella','Miller','Miller.Isabella@gmail.com','4','2.05','Life is like a movie; the good parts always come after the bad ones.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Hazel','Foster','Foster.Hazel@gmail.com','3','3.46','Dont cry over spilled milk; just find a cow and start over.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Madison','Washington','Washington.Madison@gmail.com','26','2.57','Opportunity knocks once, but misfortune keeps ringing the doorbell.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Chloe','Moore','Moore.Chloe@gmail.com','12','1.58','A penny saved is a penny youll forget in your pocket.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Violet','Gray','Gray.Violet@gmail.com','10','3.18','If life gives you lemons, make sure you have tequila and salt.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Lily','Collins','Collins.Lily@gmail.com','20','0.63','The early bird catches the worm, but the second mouse gets the cheese.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Abigail','Peterson','Peterson.Abigail@gmail.com','24','2.54','Money cant buy happiness, but it can buy chocolate, which is pretty much the same thing.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Abigail','Smith','Smith.Abigail@gmail.com','1','1.17','Live each day like its your last, and one day youll be right.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Gabriella','Torres','Torres.Gabriella@gmail.com','2','2.44','Dont worry, be crappy.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Anna','Thompson','Thompson.Anna@gmail.com','16','3.67','Success is 1% inspiration, 99% delusion.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Avery','Thompson','Thompson.Avery@gmail.com','9','3.29','If at first, you dont succeed, redefine success.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Madison','Hill','Hill.Madison@gmail.com','9','3.57','Life is like a box of chocolates: mostly sweet, sometimes nutty.',(SELECT id from campuses where name='Phoenix Institute of Technology'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Isabella','James','James.Isabella@gmail.com','8','3.32','Dont follow your dreams; follow the latest trends.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Autumn','Perez','Perez.Autumn@gmail.com','19','0.9299999999999999','The best things in life are free, except for parking; that always costs extra.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Mia','Alexander','Alexander.Mia@gmail.com','32','1.4100000000000001','Success is not about winning; its about having the fanciest trophy on your shelf.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Genesis','Sanders','Sanders.Genesis@gmail.com','6','1.3199999999999998','Life is like a cupcake; sprinkle happiness wherever you go.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Natalie','Turner','Turner.Natalie@gmail.com','11','3.76','Dream big, but dont forget to take a coffee break.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Leah','Nelson','Nelson.Leah@gmail.com','21','0.87','The secret to success is to always have a backup plan, and a backup plan for your backup plan.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Audrey','Sanders','Sanders.Audrey@gmail.com','20','2.41','Life is like a roller coaster; it has its ups and downs, but its more fun with your hands in the air.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Kylie','Martin','Martin.Kylie@gmail.com','8','2.67','Dont worry about the haters; worry about the price of guacamole.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Layla','Martin','Martin.Layla@gmail.com','24','2.01','The best things in life are the memories we make, the friendships we build, and the food we eat.',(SELECT id from campuses where name='Crestview College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Ava','Barnes','Barnes.Ava@gmail.com','26','2.2','Success is not about being smart; its about knowing where to copy and paste.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Clara','Williams','Williams.Clara@gmail.com','10','4.21','Life is a puzzle; sometimes the pieces fit, sometimes they dont, and sometimes you find a piece from a different puzzle.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Penelope','Gray','Gray.Penelope@gmail.com','24','3.73','Dont let the fear of failure stop you; let the fear of spiders stop you instead.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Evelyn','White','White.Evelyn@gmail.com','32','1.87','The best things in life are the moments that take your breath away, and the snacks that refill it.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Chloe','Perez','Perez.Chloe@gmail.com','30','1.88','Success is not about the destination; its about pretending to know where youre going.',(SELECT id from campuses where name='Phoenix Institute of Technology'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Bella','Bell','Bell.Bella@gmail.com','1','2.3600000000000003','Life is like a camera; focus on the good times, delete the bad ones, and add a filter.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Evelyn','Hill','Hill.Evelyn@gmail.com','16','4.25','Dont take life too seriously; nobody gets out alive.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Ella','Cox','Cox.Ella@gmail.com','29','3.64','The best things in life are the people we love, the places weve been, and the Wi-Fi that kept us connected.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Sophia','Ward','Ward.Sophia@gmail.com','18','0.71','Success is not about being rich or famous; its about having enough money to pay your bills without crying.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Evelyn','Robinson','Robinson.Evelyn@gmail.com','13','4.49','Life is a journey, so bring snacks and a good playlist.',(SELECT id from campuses where name='Crestview College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Clara','Evans','Evans.Clara@gmail.com','26','3.56','If life gives you lemons, make lemonade, and add vodka.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Hailey','James','James.Hailey@gmail.com','16','0.6','The best things in life are unexpected; like finding money in your pocket or discovering a new pizza place.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Harper','Barnes','Barnes.Harper@gmail.com','18','1.35','Success is not about working hard; its about finding a shortcut.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Clara','Lee','Lee.Clara@gmail.com','1','0.5700000000000001','Life is like a movie; the good parts always come after the bad ones.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Layla','Morgan','Morgan.Layla@gmail.com','18','0.69','Happiness is a warm hug, and a cold ice cream.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Violet','Kelly','Kelly.Violet@gmail.com','21','3.2','Dream big, but dont forget to take a break and watch some cat videos.',(SELECT id from campuses where name='Liberty Institute'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Brooklyn','Nelson','Nelson.Brooklyn@gmail.com','25','1.56','The secret to success is to always have a plan B, and a plan C, just in case.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Hailey','Peterson','Peterson.Hailey@gmail.com','6','0.77','Life is like a garden; sometimes you have to weed out the bad stuff to make room for the good stuff.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Liam','Bryant','Bryant.Liam@gmail.com','3','2.41','Dont let the fear of failure stop you; let the fear of running out of coffee stop you instead.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Hannah','Bennett','Bennett.Hannah@gmail.com','2','1.1','The best things in life are the simple pleasures: a warm hug, a good book, and a pizza delivery that arrives on time.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Natalie','Parker','Parker.Natalie@gmail.com','10','3.92','Success is not about being the best; its about being the least worst.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Gabriella','Adams','Adams.Gabriella@gmail.com','10','3.14','Life is a party; dress fancy and bring snacks.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Kennedy','Brooks','Brooks.Kennedy@gmail.com','6','1.57','Happiness is a choice, but so is pizza.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Amelia','Brooks','Brooks.Amelia@gmail.com','11','3.26','Dream big, but dont forget to take a coffee break.',(SELECT id from campuses where name='Phoenix Institute of Technology'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Katherine','Moore','Moore.Katherine@gmail.com','32','4.15','The secret to success is to always have a backup plan, and a backup plan for your backup plan, and then panic.',(SELECT id from campuses where name='Crestview College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Alice','Cook','Cook.Alice@gmail.com','30','3.39','Life is like a cup of tea; its all about how you brew it.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Savannah','Rogers','Rogers.Savannah@gmail.com','29','1.71','Dont wait for the perfect moment; just take a selfie and move on.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Madison','Reed','Reed.Madison@gmail.com','31','4.42','The best things in life are the memories we make, the love we share, and the pizza we eat.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Audrey','Robinson','Robinson.Audrey@gmail.com','12','2.49','Success is not about being the best; its about having enough followers on social media to feel validated.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Ava','Rogers','Rogers.Ava@gmail.com','12','4.23','Life is a dance floor; sometimes you step on someones toes, and sometimes you break into an impromptu disco dance-off.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Anna','Campbell','Campbell.Anna@gmail.com','11','2.49','Happiness is not about having it all; its about having Wi-Fi.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Savannah','Cooper','Cooper.Savannah@gmail.com','3','3.21','Dream big, and then take a nap because dreams can be exhausting.',(SELECT id from campuses where name='Phoenix Institute of Technology'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Natalie','Patterson','Patterson.Natalie@gmail.com','10','2.69','The secret to success is to always have a plan B, and a plan C, and a plan D, and a plan E, and a plan F, and... you get the idea.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Isabella','Richardson','Richardson.Isabella@gmail.com','22','1.62','Life is like a box of chocolates; sometimes you bite into one and realize its filled with coconut (and you hate coconut).',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Aurora','James','James.Aurora@gmail.com','32','4.24','Dont worry about the haters; worry about the price of guacamole, and then order extra guacamole.',(SELECT id from campuses where name='Serenity College of Arts'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Autumn','Henderson','Henderson.Autumn@gmail.com','11','0.55','The best things in life are the simple pleasures: a warm hug, a good book, and a perfectly timed pizza delivery.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Zoey','Hill','Hill.Zoey@gmail.com','25','3.21','Success is not about being famous; its about having enough time to take a selfie in every possible location.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Alice','Johnson','Johnson.Alice@gmail.com','31','3.31','Life is a dance floor; sometimes you step on someones toes, and sometimes you break into an impromptu disco dance-off.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Claire','Scott','Scott.Claire@gmail.com','12','1.3599999999999999','Dont take life too seriously; its not like youre getting out alive.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Hazel','Butler','Butler.Hazel@gmail.com','28','3.23','The best things in life are the small moments of joy, the unexpected compliments, and the free samples at the grocery store.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Stella','Martin','Martin.Stella@gmail.com','3','2.64','Success is not about being perfect; its about being the most imperfect person in the room.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Emma','Williams','Williams.Emma@gmail.com','18','4.3100000000000005','Life is like a cup of tea; its all about how you brew it.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Abigail','Scott','Scott.Abigail@gmail.com','2','2.81','Happiness is not about having it all; its about knowing where to find the best dessert.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Eleanor','Evans','Evans.Eleanor@gmail.com','26','2.91','Dream big, but dont forget to hit the snooze button.',(SELECT id from campuses where name='Havenwood College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Brooklyn','Hughes','Hughes.Brooklyn@gmail.com','1','0.8400000000000001','The secret to success is to always have a backup plan, and a backup plan for your backup plan.',(SELECT id from campuses where name='Crestview College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Addison','Smith','Smith.Addison@gmail.com','1','1.57','Life is like a roller coaster; enjoy the ride, scream if you want to, and always hold on to your popcorn.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Maya','Morgan','Morgan.Maya@gmail.com','10','0.5700000000000001','Dont worry about the haters; worry about the price of guacamole.',(SELECT id from campuses where name='Radiant Springs University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Savannah','Long','Long.Savannah@gmail.com','16','0.52','The best things in life are the memories we make, the friendships we build, and the food we eat.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Ava','Lopez','Lopez.Ava@gmail.com','21','1.17','Success is not about being smart; its about knowing where to copy and paste.',(SELECT id from campuses where name='Heritage Academy'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Elizabeth','Davis','Davis.Elizabeth@gmail.com','29','3.75','Life is a puzzle; sometimes the pieces fit, sometimes they dont, and sometimes you find a piece from a different puzzle.',(SELECT id from campuses where name='Harmony University'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Autumn','Gonzalez','Gonzalez.Autumn@gmail.com','16','2.77','Dont let the fear of failure stop you; let the fear of spiders stop you instead.',(SELECT id from campuses where name='Crestview College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Isabella','Simmons','Simmons.Isabella@gmail.com','30','2.4299999999999997','The best things in life are free, except for Wi-Fi; thats gotta be paid for.',(SELECT id from campuses where name='Nova Tech College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Leah','Jones','Jones.Leah@gmail.com','26','3.16','Success is not about winning; its about having the fanciest trophy on your shelf.',(SELECT id from campuses where name='Phoenix Institute of Technology'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Olivia','Coleman','Coleman.Olivia@gmail.com','15','3.67','Life is too short to fold fitted sheets.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Brooklyn','Cox','Cox.Brooklyn@gmail.com','2','3.21','Follow your dreams, even if they lead you to the refrigerator.',(SELECT id from campuses where name='Verdant Meadows Community College'));
INSERT INTO students (firstName,lastName,email,image,gpa,quote,"campusId") VALUES ('Noah','Campbell','Campbell.Noah@gmail.com','2','1.54','Life is like a box of crayons; you never know what color youll get.',(SELECT id from campuses where name='Serenity College of Arts'));
