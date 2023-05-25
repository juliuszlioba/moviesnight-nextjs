INSERT INTO ganres (id, slug, title)
VALUES
	(1,'series','Series'),
	(12,'adventure','Adventure'),
	(14,'fantasy','Fantasy'),
	(16,'animation','Animation'),
	(18,'drama','Drama'),
	(27,'horror','Horror'),
	(28,'action','Action'),
	(35,'comedy','Comedy'),
	(36,'history','History'),
	(37,'western','Western'),
	(53,'thriller','Thriller'),
	(80,'crime','Crime'),
	(99,'documentary','Documentary'),
	(878,'sci-fi','Science Fiction'),
	(9648,'mystery','Mystery'),
	(10402,'music','Music'),
	(10749,'romance','Romance'),
	(10751,'family','Family'),
	(10752,'war','War'),
	(10759,'action-adventure','Action & Adventure'),
	(10765,'fantasy-sci-fi','Fantasy & Sci-Fi');


INSERT INTO posts (id, mediatype, tmdbid, poster, title, year, slug, linkanime, rating, recommendation, review, createdat, updatedat, watchedat)
VALUES
	(1,'movie',520763,'/4q2hz2m8hubgvijz8Ez0T2Os2Yv.jpg','A Quiet Place Part II',2021,'a-quiet-place-part-ii',false,6,'Same frustrating horror','Same frustrating horror as in the first movie, but with way worse execution with many horrible decisions from the main protagonists. ','2021-07-01T20:24:24.038Z','2021-07-01T20:24:24.038Z','2021-07-01T20:24:24.038Z'),

	(2,'movie',65374,'/jOlz0kpxlLY5xixyDYpcYUi2SJy.jpg','Samurai Cop',1991,'samurai-cop',false,2,'Golden dialogue on peace of shit movie','Not worth the time. Only one good thing in this movie is absurdly cringy dialogue.','2021-10-09T18:58:08.760Z','2021-11-02T13:06:58.039Z','2021-10-01T22:00:00.000Z'),

	(3,'movie',643532,'/60AQOrByV9vDCqy6nt4eOroRild.jpg','The Card Counter',2021,'the-card-counter',false,6,'Disappointing','Was expecting story about card games and so, but this movie is more about the protagonist life after serving in the army and the horrible things where he was involved in.','2021-10-04T06:04:38.138Z','2021-11-02T13:31:51.462Z','2021-10-01T22:00:00.000Z'),

	(4,'tv',96442,'/8D7QUo2w4TwfLXsC6Riy7TMhyje.jpg','Life Lessons with Uramichi Oniisan',2021,'life-lessons-with-uramichi-oniisan',true,7,'Little bit relatable 😄','','2021-09-27T20:45:44.780Z','2021-11-05T07:46:38.072Z','2021-09-27T20:45:44.780Z'),

	(5,'movie',436969,'/464N3J1i6L5SsazPmX9m3q1GiZ3.jpg','The Suicide Squad',2021,'the-suicide-squad',false,4,'Not big improvement','Better than a prequel, but still garbage.','2021-08-10T21:10:03.225Z','2021-08-10T21:10:03.225Z','2021-08-10T21:10:03.225Z'),

	(6,'movie',13491,'/kN8C9K9bSQ01lItuEqYzROYErAX.jpg','Arn: The Knight Templar',2007,'arn-the-knight-templar',false,5,'Nothing new','','2021-08-08T19:26:37.167Z','2021-08-10T21:11:05.900Z','2021-08-08T19:26:37.167Z'),

	(7,'tv',110975,'/xmVZuD4vr3fMwaPNvSuPZmQ76ai.jpg','Osamake: Romcom Where the Childhood Friend Won''t Lose',2021,'osamake-romcom-where-the-childhood-friend-wont-lose',true,6,'Promising start, but disappointing end','First few episodes, shown everything it got. Afterwards almost impossible to finish from boredom.','2021-07-01T09:37:39.479Z','2021-11-02T15:05:10.927Z','2021-07-01T09:37:39.479Z'),

	(8,'tv',106782,'/c5TXVs0BRGy7smjMHiqUnttiktw.jpg','Those Snow White Notes',2021,'those-snow-white-notes',true,9,'Surprisingly interesting','','2021-06-18T21:01:12.724Z','2021-11-02T15:05:44.359Z','2021-06-18T21:01:12.724Z'),

	(9,'movie',20504,'/1H1y9ZiqNFaLgQiRDDZLA55PviW.jpg','The Book of Eli',2010,'the-book-of-eli',false,6,'Very grim picture of future','','2021-05-09T20:40:22.377Z','2021-05-16T10:10:00.804Z','2021-05-09T20:40:22.377Z'),

	(10,'tv',88806,'/p20iserOUnei2kYvMA1Sz5zk2uT.jpg','The Demon Girl Next Door',2019,'the-demon-girl-next-door',true,8,'Fun watch','','2021-07-31T21:22:35.299Z','2021-11-09T20:15:40.496Z','2021-07-31T21:22:35.299Z'),

	(11,'movie',664031,'/rQociC4gcNxWgwYt5n0PE1JnAKC.jpg','Out Of My League',2020,'out-of-my-league',false,7,'Simple and not very original','','2021-09-13T16:50:38.504Z','2021-09-13T16:50:38.504Z','2021-09-13T16:50:38.504Z'),

	(12,'tv',45501,'/1IapEqydEiGO0gCgBPVexTFbUCS.jpg','Love, Chunibyo & Other Delusions!',2012,'love-chunibyo-und-other-delusions',true,9,'Great find','A wonderful and heartwarming love story about a girl with "Chūnibyō", school life and first love. Two seasons and movie pretty much sums up the whole story in one wonderful package. ','2021-09-06T10:48:18.923Z','2022-02-12T18:02:00.296Z','2021-09-06T10:48:18.923Z'),

	(13,'tv',90546,'/10KGPY9ihuI5v9an0VF1eU5cxOs.jpg','A Certain Scientific Accelerator',2019,'a-certain-scientific-accelerator',true,8,'Not as good as Railgun, but still fun','Great that it''s a shorter season, while story in the end got stale. Also there is very big plot hole what makes you question integrity of the story.','2021-04-06T09:08:32.540Z','2021-11-02T15:06:40.991Z','2021-04-06T09:08:32.540Z'),

	(14,'tv',69291,'/tNznuhcf7WKzEmPQEsIgGMrB3Az.jpg','Miss Kobayashi''s Dragon Maid',2017,'miss-kobayashis-dragon-maid',true,9,'Very wholesome','','2021-05-22T14:40:53.103Z','2021-11-02T15:05:53.225Z','2021-05-22T14:40:53.103Z'),

	(15,'tv',80563,'/82ygHSEmEB6VOeLxLGHaT4Px0sk.jpg','How Not to Summon a Demon Lord',2018,'how-not-to-summon-a-demon-lord',true,5,'Don''t know why I kept watching it','Pretty dumb story, but only edgy humour and imigenery kept me watching. ','2021-03-23T07:24:51.000Z','2021-11-02T15:06:52.518Z','2021-03-23T07:24:51.000Z'),

	(16,'movie',791373,'/tnAuB8q5vv7Ax9UAEje5Xi4BXik.jpg','Zack Snyder&#8217;s Justice League',2021,'zack-snyders-justice-league',false,8,'Like day and night compared to original','','2021-03-21T15:25:16.000Z','2021-03-21T15:25:16.000Z','2021-03-21T15:25:16.000Z'),

	(17,'tv',83121,'/dA93MnalfNLHMMlDcTCfX4QJb5Q.jpg','Kaguya-sama: Love is War',2019,'kaguya-sama-love-is-war',true,10,'One among the best of the best Rom-Com','','2021-03-17T09:50:23.000Z','2022-06-24T19:15:29.073Z','2022-06-23T22:00:00.000Z'),

	(18,'tv',45997,'/nPrxXjFRPhIhVd3aOjm8fsSCBXy.jpg','The Devil Is a Part-Timer!',2013,'the-devil-is-a-part-timer',true,8,'Funny picture of devil','','2021-03-14T14:28:27.000Z','2021-11-02T15:08:28.856Z','2021-03-14T14:28:27.000Z'),

	(19,'tv',45782,'/nc33LuqbsT0g2NYcVTVaMLsvbXu.jpg','Sword Art Online',2012,'sword-art-online',true,7,'Half ass good','Started strong, but at the end of the first season started sliding down to the boredom zone. Way too illogical. The funniest part that even the villain forgets what he does anything for.','2021-03-10T23:14:56.000Z','2021-11-02T15:08:35.097Z','2021-03-10T23:14:56.000Z'),

	(20,'tv',110070,'/zLNnCb6SL2HxyiRsDJ4t4S1mb91.jpg','Horimiya',2021,'horimiya',true,8,'Heartwarming and true','Great anime with one problem - there is no conflict in it, so it''s just only watching real life from the side, but that is not that bad. ','2021-03-01T18:14:25.000Z','2021-11-02T15:08:41.549Z','2021-03-01T18:14:25.000Z'),

	(21,'movie',49017,'/dN3D3AvOsZ60jBth9LYhZFjgAUz.jpg','Dracula Untold',2014,'dracula-untold',false,8,'Great cinematography','','2021-02-27T15:36:16.000Z','2021-02-27T15:36:16.000Z','2021-02-27T00:00:00.000Z'),

	(22,'tv',63639,'/lLidDKUYF5pcmH7zaM6J6nyRQGG.jpg','The Expanse',2015,'the-expanse-s03',false,8,'True Sci-Fi','','2021-02-11T11:06:08.000Z','2022-01-22T00:10:55.305Z','2022-01-13T23:00:00.000Z'),

	(23,'movie',581389,'/lykPQ7lgrLJPwLlSyetVXsl2wDf.jpg','Space Sweepers',2021,'space-sweepers',false,7,'Impressive, but bit dumb','','2021-02-07T18:31:35.000Z','2021-02-07T18:31:35.000Z','2021-02-07T18:31:35.000Z'),

	(24,'tv',69293,'/i4W2LFlf9HHXWU4MO0aNnIXhfrL.jpg','Little Witch Academia',2017,'little-witch-academia',true,9,'Wonderful!','Like Harry Potter, but in Anime form 😄<br />
Very beautiful animation style.','2021-01-19T19:52:43.000Z','2021-11-02T15:08:56.142Z','2021-01-19T19:52:43.000Z'),

	(25,'tv',96677,'/sgxawbFB5Vi5OkPWQLNfl3dvkNJ.jpg','Lupin',2021,'lupin',false,8,'Fine','Gentleman-thief and his story of try to clear his fathers name.','2021-01-09T21:26:36.000Z','2021-01-09T21:26:36.000Z','2021-01-09T21:26:36.000Z'),

	(26,'movie',14069,'/fS41b13LZEtL9VYUlMobXZqvk41.jpg','The Girl Who Leapt Through Time',2006,'the-girl-who-leapt-through-time',true,9,'Beautiful simple story','','2021-01-08T19:53:55.000Z','2021-11-02T15:08:59.693Z','2021-01-08T19:53:55.000Z'),

	(27,'movie',464052,'/lNVHB85FUDZqLzvug3k6FA07RIr.jpg','Wonder Woman 1984',2020,'wonder-woman-1984',false,1,'Worse than garbage','','2020-12-26T18:49:01.000Z','2020-12-26T18:49:01.000Z','2020-12-26T18:49:01.000Z'),

	(28,'movie',568160,'/qgrk7r1fV4IjuoeiGS5HOhXNdLJ.jpg','Weathering with You',2019,'weathering-with-you',true,10,'So beautiful 🤩','','2020-11-10T19:17:29.000Z','2021-11-02T15:09:21.372Z','2020-11-10T19:17:29.000Z'),

	(29,'tv',42821,'/4EHSyDH8Z7A3qUjfrSM3aLwNHGH.jpg','Welcome to the N.H.K.',2006,'welcome-to-the-n-h-k',true,7,'Sometimes funny, sometimes serious','','2020-10-12T20:34:34.000Z','2021-11-02T15:09:57.605Z','2020-10-12T20:34:34.000Z'),

	(30,'movie',186971,'/hlLec0D9nq9TSv5OjbgqPqEDGKK.jpg','Age of Uprising: The Legend of Michael Kohlhaas',2013,'age-of-uprising-the-legend-of-michael-kohlhaas',false,3,'Boring','','2020-10-04T16:38:13.000Z','2020-10-04T16:38:13.000Z','2020-10-04T16:38:13.000Z'),

	(31,'tv',65676,'/8knvr1LbnPD8SZjZlkD3cOt3TYu.jpg','My Teen Romantic Comedy SNAFU',2013,'my-teen-romantic-comedy-snafu',true,8,'Funny and thoughtful','Everything until episode before last ware great, but ending felt the most disappointing, while it felt cheap and pretty not as expected. Ok... maybe it was the intention to end up like this from the first episode in series, but goddamit felt wrong. The main story about a love triangle, so at some point, of course, someone just gets burned, but it''s disappointing to see this way.','2020-09-29T10:27:15.000Z','2021-11-02T15:09:45.667Z','2020-09-29T10:27:15.000Z'),

	(32,'tv',61663,'/nksFLYTydth9OYVpMuMbtOBkvMO.jpg','Your Lie in April',2014,'your-lie-in-april',true,9,'Beautiful and tragic','Two musicians experience first love, but life is pretty cruel and sometimes no matter how much you wish, it can''t work out as you  would like. Beautiful music performances, but pretty bitter sad ending.','2020-09-27T09:23:25.000Z','2021-11-02T15:09:43.027Z','2020-09-27T09:23:25.000Z'),

	(33,'tv',65249,'/EljUwZJhpuYfVuSfqY8Pt1xxpH.jpg','ERASED',2016,'erased',true,9,'Heavy topic, amazing execution','Time travel and similar topics is always interesting to me, so after seeing trailer even with scepticism I decided to give a try. And I''m glad I did. The storyline of the series is amazing,  at each step it gives you only few clues with some unexpected twists and keeps you questioning what''s going to happen next, while at the same time you try to solve it while it''s a crime story too. I was also a bit surprised by seriousness of the topic they choose to deal and how they maturely portray it, with some really amazing story. Only bad part is ending, while it was a bit too quick and kind a cheap.','2020-09-25T20:55:14.000Z','2021-11-02T15:09:37.269Z','2020-09-25T20:55:14.000Z'),

	(34,'movie',122917,'/xT98tLqatZPQApyRmlPL12LtiWp.jpg','The Hobbit: The Battle of the Five Armies',2014,'the-hobbit-the-battle-of-the-five-armies',false,9,'A lot of action','','2020-09-22T10:35:40.000Z','2020-09-22T10:35:40.000Z','2020-09-22T10:35:40.000Z'),

	(35,'tv',91545,'/8UhkwuaDFDarOO1GffY6XX6ZilP.jpg','Young Wallander',2020,'young-wallander',false,6,'Decent','It pretty generic crime drama with nothing spectacular in it. Only one nice thing that series was filmed in Lithuania, even city in story shown as somewhere in Sweden. ','2020-09-09T10:18:03.000Z','2020-09-09T10:18:03.000Z','2020-09-09T10:18:03.000Z'),

	(36,'tv',95121,'/xEOTiRPhStF2mgciX5Jbdz3lXEL.jpg','Nobody&#8217;s Looking',2019,'nobodys-looking',false,9,'Pretty cool idea and fun','','2020-07-27T09:51:15.000Z','2020-07-27T09:51:15.000Z','2020-07-27T09:51:15.000Z'),

	(37,'tv',83125,'/wrLC5kx0nEq9U0MyJD7dnOT6m5F.jpg','Cursed',2020,'cursed',false,6,'Bad and ok','Weird and very hard to finish even first season, while it gets boring and cheesy. ','2020-07-27T09:50:49.000Z','2020-07-27T09:50:49.000Z','2020-07-27T09:50:49.000Z'),

	(38,'tv',78183,'/faQ5NoMN7q72itGYkSTpUPsp3JN.jpg','Nightflyers',2018,'nightflyers',false,7,'Better than mediocre shit, but could be a bit better.','','2020-06-23T22:44:53.000Z','2020-06-23T22:44:53.000Z','2020-06-23T22:44:53.000Z'),

	(39,'tv',1420,'/8oCqMlKKomCArVtyOjRzMN6g40Z.jpg','New Girl',2011,'new-girl',false,8,'Easy fun','','2020-05-25T22:36:25.000Z','2020-05-25T22:36:25.000Z','2020-05-25T22:36:25.000Z'),

	(40,'tv',100883,'/b82QG73DHyj1M60pEn0ZMGXY3Co.jpg','Never Have I Ever',2020,'never-have-i-ever',false,9,'Netflix formula on series that work','','2020-05-22T22:57:19.000Z','2020-05-22T22:57:19.000Z','2020-05-22T22:57:19.000Z'),

	(41,'movie',1562,'/d7vvXpS5TG14gyZ2CZzJoxmGgVN.jpg','28 Weeks Later',2007,'28-weeks-later',false,6,'Not as good as first movie','','2020-05-22T22:56:46.000Z','2020-05-22T22:56:46.000Z','2020-05-22T22:56:46.000Z'),

	(42,'movie',431693,'/30YacPAcxpNemhhwX0PVUl9pVA3.jpg','Spies in Disguise',2019,'spies-in-disguise',false,8,'Ridiculous nonsense, but still funny','','2020-03-06T21:16:12.000Z','2020-03-06T21:16:12.000Z','2020-03-06T21:16:12.000Z'),

	(43,'movie',512200,'/bB42KDdfWkOvmzmYkmK58ZlCa9P.jpg','Jumanji: The Next Level',2019,'jumanji-the-next-level',false,8,'Entertainming nonsense','','2020-03-01T21:32:57.000Z','2020-03-01T21:32:57.000Z','2020-03-01T21:32:57.000Z'),

	(44,'tv',72339,'/t17TmixmWhJeIC4ytLfis6frLYf.jpg','HAPPY!',2017,'happy',false,7,'Some funny nonsense','Stupid story, but fun to watch anyway.','2020-02-06T22:15:28.000Z','2020-02-06T22:15:28.000Z','2020-02-06T22:15:28.000Z'),

	(45,'tv',79242,'/yxMpoHO0CXP5o9gB7IfsciilQS4.jpg','Chilling Adventures of Sabrina',2019,'chilling-adventures-of-sabrina-s02',false,9,'Hell yes','Amazing as first season.<br />
It''s way different from childhood series. This one deals with Satanism, religion and whichcraft way more explicit and dark.','2020-01-29T21:26:08.000Z','2020-01-29T21:26:08.000Z','2019-04-08T00:00:00.000Z'),

	(46,'tv',76652,'/wOeA0fPtZfNfljUUMFdgl8Lt9La.jpg','Dogs of Berlin',2018,'dogs-of-berlin',false,9,'Great!','','2020-01-23T08:11:38.000Z','2020-01-23T08:11:38.000Z','2020-01-23T08:11:38.000Z'),

	(47,'tv',62560,'/oKIBhzZzDX07SoE2bOLhq2EE8rf.jpg','Mr. Robot',2015,'mr-robot',false,9,'Satisfying ending','','2019-12-23T23:10:23.000Z','2019-12-23T23:10:23.000Z','2019-12-23T23:10:23.000Z'),

	(48,'tv',71912,'/zrPpUlehQaBf8YX2NrVrKK8IEpf.jpg','The Witcher',2019,'the-witcher',false,9,'The law of surprise','','2019-12-23T19:34:51.000Z','2021-12-22T22:15:14.530Z','2021-12-22T22:00:00.000Z'),

	(49,'tv',82856,'/BbNvKCuEF4SRzFXR16aK6ISFtR.jpg','The Mandalorian',2019,'madalorian',false,9,'Perfect Star Wars Story','If only new movies would be like this Series, then it would be peace on earth.','2019-12-13T12:24:03.000Z','2019-12-13T12:24:03.000Z','2019-12-13T12:24:03.000Z'),

	(50,'movie',384018,'/keym7MPn1icW1wWfzMnW3HeuzWU.jpg','Fast &#038; Furious Presents: Hobbs &#038; Shaw',2019,'fast-furious-presents-hobbs-shaw',false,3,'Very childish movie','It''s like some 9 years old child wrote whole script. No logic, breaks rules of physics and very one sided predictable villain. Boring, but still watching like guilty pleasure.','2019-10-17T20:14:44.000Z','2019-10-17T20:14:44.000Z','2019-10-17T20:14:44.000Z'),

	(51,'movie',480001,'/2yzkRUONrJV4jNj6FSEZBNRCzvC.jpg','The Art of Self-Defense',2019,'the-art-of-self-defense',false,9,'Jesse Eisenberg is best at weird movies','When Jesse Eisenberg plays in some weird movies, he really shines in that. This is that kind of movie. ','2019-10-09T19:33:30.000Z','2019-10-09T19:33:30.000Z','2019-10-09T19:33:30.000Z'),

	(52,'tv',73021,'/1WynayCqKRzrl4cFZR8NOfiDwd6.jpg','Disenchantment',2018,'disenchantment_s01',false,7,'Little bit like disappointment','It''s slow to start and can be a little bit off-putting in the beginning, but if you keep watching, after 5 or 6 episodes everything starts to kick off and you start liking it. It has pretty good character development, maybe not the best introduction only.<br />
EDIT: Sadly the second season complicates things with weird story development. ','2019-09-24T06:23:33.000Z','2019-09-24T06:23:33.000Z','2018-08-21T00:00:00.000Z'),

	(53,'movie',479455,'/dPrUPFcgLfNbmDL8V69vcrTyEfb.jpg','Men in Black: International',2019,'men-in-black-international',false,3,'Pretty dumb','Very unoriginal and predictable.','2019-08-25T16:28:18.000Z','2019-08-25T16:28:18.000Z','2019-08-25T16:28:18.000Z'),

	(54,'tv',44217,'/94gP9uXNdbypwCLORjeurlad15Z.jpg','Vikings',2013,'vikings',false,9,'Really good','','2019-08-16T10:32:19.000Z','2019-08-16T10:32:19.000Z','2019-08-16T10:32:19.000Z'),

	(55,'tv',76479,'/dzOxNbbz1liFzHU1IPvdgUR647b.jpg','The Boys',2019,'the-boys',false,10,'Amazing','Really well done. In a time of so many super hero''s movies, this movie is new perspective if super heroes not as good as you they are presented.<br />
It has some really gruesome scenes, unmasked violence and crazy fucked up characters. Simply amazing.<br />
Looking forward for next season.','2019-07-28T22:49:55.000Z','2019-07-28T22:49:55.000Z','2019-07-28T00:00:00.000Z'),

	(56,'movie',457799,'/zSuJ3r5zr5T26tTxyygHhgkUAIM.jpg','Extremely Wicked, Shockingly Evil and Vile',2019,'extremely-wicked-shockingly-evil-and-vile',false,6,'Interesting perspective','Ted Bundy from other perspective. Fine for evenings watch, but no real re-watch value.','2019-07-19T18:16:48.000Z','2019-07-19T18:16:48.000Z','2019-07-19T00:00:00.000Z'),

	(57,'tv',63333,'/wUFIEJCSmurmXPX0mP0cEgoltrk.jpg','The Last Kingdom',2015,'the-last-kingdom',false,9,'Like Game of Thrones minus bullish','in the beginning was a bit messy, while a lot of things to learn and follow, but later gets very exciting and Intriguing.<br />
The fighting scenes are shot amazingly and the story with so many twists, misfortunes, betrayals makes story progression exciting and inpatient to find out what is going to happen next.','2019-07-14T14:12:36.000Z','2019-07-14T14:12:36.000Z','2019-07-14T00:00:00.000Z'),

	(58,'movie',287947,'/xnopI5Xtky18MPhK40cZAGAOVeV.jpg','Shazam!',2019,'shazam',false,2,'Meh, not worth watching','Man... I don''t get it why it was so appealing to others (might be because all other recent DC movies suck and this one a slightly better).<br />
I can''t say it''s very bad, but it''s simply boring and unoriginal, with cheesy situations and dialogue. ','2019-07-14T11:37:51.000Z','2019-07-14T11:37:51.000Z','2019-07-13T00:00:00.000Z'),

	(59,'tv',66732,'/49WJfeN0moxb9IPfGn8AIqMGskD.jpg','Stranger Things',2016,'stranger-things',false,9,'So cheesy and at the same time good as expected','','2019-07-09T21:10:31.000Z','2022-07-04T11:38:21.075Z','2022-07-02T22:00:00.000Z'),

	(60,'tv',46533,'/qB7WPVQnmODg2mZ1xUmPOrCa0wL.jpg','The Americans',2013,'the-americans',false,9,'Better with each new season','I love the concept of the show. It''s a huge conflict, but it is just not as simple as "good guys" vs "bad guys", while the main characters of the show are Russian spies in the USA during the Cold War. So by a stereotypical view from an American viewer perspective, Russians should be bad ones, but the show wants you to root for them to succeed in all what they do, to make the world a better place. And with each season you raise ever more doubt of whos is "bad guys" in all of it, while both sides do horrible things to each other.<br />
A little bit slow and unsure in the beginning, but with each new season getting more amazing acting performance and deeper, more thrilling story development. ','2019-05-07T09:09:23.000Z','2019-05-07T09:09:23.000Z','2019-05-07T09:09:23.000Z'),

	(61,'movie',280217,'/QTESAsBVZwjtGJNDP7utiGV37z.jpg','The Lego Movie 2: The Second Part',2019,'the-lego-movie-2-the-second-part',false,8,'Everything is awesome again!','','2019-04-28T20:09:05.000Z','2019-04-28T20:09:05.000Z','2019-04-28T00:00:00.000Z'),

	(62,'movie',424783,'/fw02ONlDhrYjTSZV8XO6hhU3ds3.jpg','Bumblebee',2018,'bumblebee',false,8,'Enjoyed more than I should have','I definitely can say it''s not bad movie, because I really enjoyed watching it, even story is cheesey. It''s kind a same as the first movie in Transformers Franchise with almost same storytelling and feeling, so more likely I liked it because of nostalgia.','2019-04-04T20:04:04.000Z','2019-04-04T20:04:04.000Z','2019-04-04T00:00:00.000Z'),

	(63,'movie',297802,'/5Kg76ldv7VxeX9YlcQXiowHgdX6.jpg','Aquaman',2018,'aquaman',false,5,'What a nonsense','Way too much CGI.<br />
It''s also so ridiculous - another universe is underwater, and no one knows about it? ','2019-03-13T07:54:32.000Z','2019-03-13T07:54:32.000Z','2019-03-12T00:00:00.000Z'),

	(64,'movie',299537,'/AtsgWhDnHTq68L0lLsUrCnM7TjG.jpg','Captain Marvel',2019,'captain-marvel',false,5,'Mediocre','Movie with huge contaversy before premier in cinemas.<br />
But in the end is pretty mediocre movie, made with same marvel recepe. Nothing spectacular and at the same time nothing surprising. Even kind a boring a bit.','2019-03-13T07:53:21.000Z','2019-03-13T07:53:21.000Z','2019-03-08T00:00:00.000Z'),

	(65,'movie',544431,'/6NmsbUJqnopbnLun2E4KvtVNj8T.jpg','The Clovehitch Killer',2018,'the-clovehitch-killer',false,9,'Good','','2018-12-09T16:32:32.000Z','2018-12-09T16:32:32.000Z','2018-12-09T00:00:00.000Z'),

	(66,'tv',99073,'/mb0ZyMQiKkukygMIjsjEk9elTuI.jpg','I''ve Been Killing Slimes for 300 Years and Maxed Out My Level',2021,'ive-been-killing-slimes-for-300-years-and-maxed-out-my-level',true,7,'🧹','','2021-06-26T16:49:59.758Z','2021-11-02T15:05:32.921Z','2021-06-26T16:49:59.758Z'),

	(67,'tv',95631,'/u54vuVqRWyx0GFcT5U32hFutqqX.jpg','Super Cub',2021,'super-cub',true,10,'🛵','One word - lofe-for-moped','2021-06-23T18:23:17.624Z','2022-02-12T18:00:29.478Z','2021-06-23T18:23:17.624Z'),

	(68,'movie',399566,'/pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg','Godzilla vs. Kong',2021,'godzilla-vs-kong',false,2,'Is strory written by 8 years old?','It''s painful to watch.','2021-05-15T15:27:25.868Z','2021-05-15T15:27:25.868Z','2021-05-15T15:27:25.868Z'),

	(69,'tv',64196,'/nUrgd2CKG1aZtcv9qniVwiUl7Cw.jpg','Overlord',2015,'overlord',true,9,'Fun time watching','One of the best portray of OP protagonist who is on the bad side (or is he).','2021-05-14T12:03:29.299Z','2022-02-12T17:53:36.233Z','2021-05-14T12:03:29.299Z'),

	(70,'movie',597890,'/2jgTtZ2d35U66nf31dRT8Imdghf.jpg','Voyagers',2021,'voyagers',false,4,'Cheap old story','Got bored watching... 😪 skipped to the end and already forgot it... ','2021-05-01T19:39:27.123Z','2021-05-04T09:34:20.489Z','2021-05-01T19:39:27.123Z'),

	(71,'tv',68403,'/qRc2keh1AJGlwqKvDtzFpzXTYsc.jpg','Girlish Number',2016,'girlish-number',true,8,'I liked it','','2021-09-19T09:12:23.742Z','2021-11-02T15:04:44.639Z','2021-09-19T09:12:23.742Z'),

	(72,'tv',84669,'/mrahUSmFjae8UHtlOcZ58ytmAGu.jpg','The Quintessential Quintuplets',2019,'the-quintessential-quintuplets',true,8,'Wholesome harem','','2021-04-22T19:37:56.843Z','2021-11-02T15:06:37.009Z','2021-04-22T19:37:56.843Z'),

	(73,'tv',113137,'/6vvqfs1Q4lDFhlzSNO5bWY4I4S.jpg','Girlfriend, Girlfriend',2021,'girlfriend-girlfriend',true,5,'Cringe on another level','','2021-09-17T20:11:35.695Z','2021-11-02T15:04:48.281Z','2021-09-17T20:11:35.695Z'),

	(74,'tv',88236,'/szk2hXe7etcSgyp6WxXCW1an301.jpg','How to Sell Drugs Online (Fast)',2019,'how-to-sell-drugs-online-fast',false,9,'Germans can be funny too!','','2021-07-27T19:58:48.849Z','2021-11-01T02:11:13.916Z','2021-07-27T19:58:48.849Z'),

	(75,'tv',69367,'/GP7I1yKTp6giJz2fdy0LBWo4zV.jpg','Saekano: How to Raise a Boring Girlfriend',2015,'saekano-how-to-raise-a-boring-girlfriend',true,9,'Just amazing story','Two seasons and movie, perfect length to tell the whole story about the talented group of high schoolers trying to make a video game. The Series has everything needed - drama, love and light humour. The ending is very fitting and satisfying too.','2021-09-13T13:51:56.717Z','2021-11-02T23:18:34.517Z','2021-09-13T13:51:56.717Z'),

	(76,'movie',18491,'/m9PTii0XWCIKZBBrCrOn8RLTK0w.jpg','Neon Genesis Evangelion: The End of Evangelion',1997,'neon-genesis-evangelion-the-end-of-evangelion',true,9,'Alternative ending',' The alternative ending of Evangelion anime, which brings the story to a conclusion, but leaving with question "wtf I just watched?"','2021-10-26T09:24:19.420Z','2021-11-04T15:57:05.477Z','2021-10-26T09:24:19.420Z'),

	(77,'tv',890,'/y2ah9t0navXyIvoHg1uIbIHO3tt.jpg','Neon Genesis Evangelion',1995,'neon-genesis-evangelion',true,9,'Classic','Wonderful story with a horrible original ending (the studio run out of money to produce the last two episodes). But there is an alternative ending, realised after anime, which brings the story to a conclusion.','2021-10-26T09:23:38.372Z','2021-11-04T13:34:24.623Z','2021-10-24T22:00:00.000Z'),

	(78,'tv',65369,'/dP9okxs6ZrzPubTS3rhmrMDgMWe.jpg','Grimgar of Fantasy and Ash',2016,'grimgar-of-fantasy-and-ash',true,10,'Gorgeous and Intriguing ','I''m so much hoping that it will continue sometime in the future, while visually is one of the most beautiful Isekai I''ve seen.','2021-05-25T22:23:46.349Z','2022-07-12T13:54:05.836Z','2021-05-25T22:23:46.349Z'),

	(79,'tv',60730,'/c4zXDKYM3HQicLpqfGmZ3A6XvVN.jpg','Haganai: I Don&#8217;t Have Many Friends',2011,'haganai-i-dont-have-many-friends',true,8,'Funny at times','','2021-03-21T22:15:36.000Z','2021-11-02T15:08:22.802Z','2021-03-21T22:15:36.000Z'),

	(80,'tv',65844,'/oRaOeQlwktbGSd2T31FYAcgHZlh.jpg','KonoSuba – God’s blessing on this wonderful world!!',2016,'konosuba-gods-blessing-on-this-wonderful-world',true,10,'Just too funny','','2021-03-07T18:25:13.000Z','2021-11-02T15:08:38.073Z','2021-03-07T18:25:13.000Z'),

	(81,'tv',82684,'/jQb1ztdko9qc4aCdnMXShcIHXRG.jpg','That Time I Got Reincarnated as a Slime',2018,'that-time-i-got-reincarnated-as-a-slime',true,8,'Wholesome Isekai','Was a good beginning, but got pretty boring when too much talking around the table started in the second season but managed to end with a huge bang!','2021-02-27T16:50:59.000Z','2021-11-02T15:08:47.503Z','2021-02-27T16:50:59.000Z'),

	(82,'movie',378064,'/drlyoSKDOPnxzJFrRWGqzDsyJvR.jpg','A Silent Voice',2016,'a-silent-voice',true,10,'It is very good','','2021-01-31T19:00:52.000Z','2021-11-02T15:08:53.151Z','2021-01-31T19:00:52.000Z'),

	(83,'movie',775996,'/6XYLiMxHAaCsoyrVo38LBWMw2p8.jpg','Outside the Wire',2021,'outside-the-wire',false,7,'Descent','As mindless action movie is good, but if you try to find sense in it - there is none.','2021-01-17T13:48:54.000Z','2021-01-17T13:48:54.000Z','2021-01-17T13:48:54.000Z'),

	(84,'movie',572154,'/7Ai8vNEv4zEveh12JViGikoVPVV.jpg','Rascal Does Not Dream of a Dreaming Girl',2019,'rascal-does-not-dream-of-a-dreaming-girl',true,9,'Good story','','2020-11-29T20:27:06.000Z','2021-11-02T15:09:07.789Z','2020-11-29T20:27:06.000Z'),

	(85,'tv',96316,'/4rqyyM0R3a0EeSlEvdpxDKbjiKB.jpg','Rent-a-Girlfriend',2020,'rent-a-girlfriend',true,8,'A bit too ecky','At a few points in series I was considering to drop it, but at the same time wanted to see how it ends. <br />
Main character Kazuya is a pretty obnoxious person in the story, but it has few good traits he doesn''t know how to show it yet, so might as the story develops it grow with it too, otherwise it''s going to be disappointing. Story at least, in the beginning, plays with too many coincidental situations and that makes it even cringe at some points. But at the end of the first season, it''s starting to take more serious steps in story, so maybe it will going to get better in the second season when it comes out. in general, so far the series is just little bit above mediocre. ','2020-11-13T23:15:49.000Z','2021-11-02T15:09:16.226Z','2020-11-13T23:15:49.000Z'),

	(86,'movie',372058,'/q719jXXEzOoYaps6babgKnONONX.jpg','Your Name.',2016,'your-name-2',true,10,'Wonderful 😊','','2020-11-11T19:42:46.000Z','2021-11-02T15:09:18.720Z','2020-11-11T19:42:46.000Z'),

	(87,'tv',78102,'/qOo0mPA228UIvEM4aoeLGp42tYp.jpg','Steins;Gate 0',2018,'steinsgate-0',true,8,'Good extension of the story','','2020-11-08T23:11:09.000Z','2021-11-02T15:09:24.216Z','2020-11-08T23:11:09.000Z'),

	(88,'movie',225745,'/bXhogkZCR0aOQ077rfMULYbDmtH.jpg','Steins;Gate: The Movie − Load Region of Déjà Vu',2013,'steinsgate-the-movie-%e2%88%92-load-region-of-deja-vu',false,9,'Perfect culmination of series','Just nicely ends up first season of Steins Gate and it''s story. But it''s far from the end of the story... yet ;)','2020-11-06T18:57:51.000Z','2020-11-06T18:57:51.000Z','2020-11-06T00:00:00.000Z'),

	(89,'tv',42509,'/opIMHHP3eeQhWoKXKzfayR9mqqB.jpg','Steins;Gate',2014,'steinsgate-the-sagacious-wisdom-of-cognitive-computing',true,9,'Great story','One thing I can''t pass on is storys that involves Time travel, so I''m definitely need to watch this one too and by surprise it''s something amazing. Story development is incredible well written and it has just perfect atmosphere for events happening around. It''s also do not get too much into fantasy setting and tries to keep real world perspective, what is really pleasant surprise in sciences fiction anime.','2020-11-05T11:59:38.000Z','2021-11-02T15:09:26.716Z','2020-11-05T11:59:38.000Z'),

	(90,'movie',652004,'/nXeTSXR5ryFwxrlpmD9hhXJTAuc.jpg','The Wolf of Snow Hollow',2020,'the-wolf-of-snow-hollow',false,7,'A bit weird genre combination, but good','','2020-10-17T13:32:24.000Z','2020-10-17T13:32:24.000Z','2020-10-17T13:32:24.000Z'),

	(91,'tv',70880,'/5JtqWxw69IanadNcraJ9v6Ccj2W.jpg','Tsuki ga Kirei',2017,'tsuki-ga-kirei',true,9,'Adorably cute','','2020-10-16T06:37:55.000Z','2021-11-02T15:10:03.483Z','2020-10-16T06:37:55.000Z'),

	(92,'tv',69292,'/k0JMSNNTdjDjVhQHnULQ0fTxJKD.jpg','Scum&#8217;s Wish',2017,'scums-wish',true,8,'120% School Drama','I hate this anime, that''s why I like it so much. What a piece of shits most of the characters are in the story, but still keeps your interest, while it was intended to be like this. At points, the story makes you cringe, be discussed and scream why the hell they doing what they doing, and in the end, it is so satisfying after then last episode ends, that it makes you happy knowing that I don''t need to see it again. It''s a real drama for drama sake. But even so, there are a few lessons behind it. This series won''t be going to make you feel good, but it will make you feel something. You either will like it or you hate it.','2020-10-13T20:30:28.000Z','2021-11-02T15:10:00.635Z','2020-10-13T20:30:28.000Z'),

	(93,'tv',74096,'/ciFnj3AQrKuNWbGmix4KKU5Lua.jpg','Just Because!',2017,'just-because',true,10,'Perfect','There is nothing to criticize in this anime (only that I would love to see more like this). From the beginning till the end it makes you enjoy unfolding story. The story itself is very easy - simple highschool love story triangle, but shown in the most natural and believable way, almost like real life, without cheap nonsense or cheesenes. And it has the perfect ending resolving all the plot points in the way, that no one is left disappointed. This anime makes your heart feel better in the end.','2020-09-30T08:16:43.000Z','2021-11-02T15:09:48.555Z','2020-09-30T08:16:43.000Z'),

	(94,'tv',39434,'/2tgOAvOttp7rak3r2U5vIAaeyDt.jpg','Anohana: The Flower We Saw That Day',2011,'anohana-the-flower-we-saw-that-day',true,8,'Sad','Short beautiful sad story about the hardness of letting go.','2020-09-26T09:39:54.000Z','2021-11-02T15:09:40.530Z','2020-09-26T09:39:54.000Z'),

	(95,'tv',42916,'/2Z52nZaAQt1P7XJtu8fNlMXgdps.jpg','Toradora!',2008,'toradora',true,10,'Simply extraordinary 😉','I was not a big fan of anime, but this anime sparked Anime fewer in me and after that point in time I changed to loving anime. This series was the most significant choice I made to check out. The story trapped me from the first episode, and I couldn''t stop binge-watching it. It''s a rom-com, so it''s cheesy a hell lot of times, but that''s fine, it tells the story in such a way it doesn''t feel stupid or cheap, on the contrary, behind all the youthful foolishness tells a profoundly romantic story and deals with relationship problems in a mature way, that something similar hard to find in any other series or movies.','2020-09-23T20:15:56.000Z','2022-07-12T13:55:00.950Z','2020-09-23T20:15:56.000Z'),

	(96,'movie',499932,'/7G2VvG1lU8q758uOqU6z2Ds0qpA.jpg','The Devil All the Time',2020,'the-devil-all-the-time',false,5,'Meh','Got bored watching.','2020-09-21T09:16:50.000Z','2020-09-21T09:16:50.000Z','2020-09-21T09:16:50.000Z'),

	(97,'movie',656690,'/VAXS2hbKwCKd3DEz57Cr6ch61s.jpg','The Social Dilemma',2020,'the-social-dilemma',false,7,'Fine, but nothing new','It''s weird to hear that this documentary is a lot of people called as "eyes opener" to things about the social media, but for me, personally, it was old news just gathered in one place. Maybe because I follow technology news and these things were told a hundred times, so it didn''t tell me anything new. One criticism I have for this documentary is a one-sided opinion (criticism more precise) about social media and lack of conversation about a potential discussion to some solutions.','2020-09-21T06:39:32.000Z','2020-09-21T06:39:32.000Z','2020-09-21T06:39:32.000Z'),

	(98,'tv',85723,'/mTvSVKMn2Npf6zvYNbGMJnYLtvp.jpg','Raised by Wolves',2020,'raised-by-wolves',false,7,'A bit weird','','2020-09-05T20:43:35.000Z','2020-09-05T20:43:35.000Z','2020-09-05T20:43:35.000Z'),

	(99,'tv',61664,'/kmyvlQ9QKzgdZY31rXaUlgCnzrB.jpg','Sense8',2015,'sense8',false,6,'Something cool, but way too much stretched','From creators of Matrix. And it''s really very well thought out the story. Slow begging introduces every character in the story and that what works amazing, while the story about the connection between 8 very different individuals from very different parts in the world. But soon you realise that it''s all it has, while the story continues and you feel stuck at same story development like in the first episode. And that is not great, you want to shout "go to the action or something new!". Still can''t force to see it till the end while I got so bored in second seasons middle, still stuck on the same place with almost no clear goal. ','2020-08-23T20:55:40.000Z','2020-08-23T20:55:40.000Z','2020-08-23T20:55:40.000Z'),

	(100,'tv',76719,'/bBBpi5pgOEZlCOgx2q116oPdJnx.jpg','The Rain',2018,'the-rain',false,7,'Good concept, weak ending','in the world where scientist went too far and made deadly rain infused with a virus, what instead helping, simply destroyed the civilization (no surprise). First season execution is great. The story keeps you captivated and main actors are pretty decent. But beginning with second season second-half of the story gets way too much fictional fantasy than science fiction. Quality goes also way down and that destroys the series. The ending is also felt very cheap and rushed.','2020-08-15T20:56:21.000Z','2020-08-15T20:56:21.000Z','2020-08-15T20:56:21.000Z'),

	(101,'movie',516486,'/kjMbDciooTbJPofVXgAoFjfX8Of.jpg','Greyhound',2020,'greyhound',false,5,'Simply war movie','A pretty standard war movie, what doesn''t do anything new what other WW2 movies haven''t done before. The story is somewhat captivating and keeps momentum till the end unless you take a break and then you lose interest very quickly. Pretty nice cinematography and visual effects, but the weak story.','2020-08-09T12:04:01.000Z','2020-08-09T12:04:01.000Z','2020-08-09T12:04:01.000Z'),

	(102,'movie',432976,'/x5azMi1KvZWbBbfjmGqpHNGqjH.jpg','Icarus',2017,'icarus',false,8,'About doping','','2020-07-31T23:06:04.000Z','2020-07-31T23:06:04.000Z','2020-07-31T23:06:04.000Z'),

	(103,'tv',54155,'/5nSSkcM3TgpllZ7yTyBOQEgAX36.jpg','Hanna',2019,'hanna',false,8,'Gold nugget with shit stains','S01:<br />
It''s so good and at the same time ridiculously bad. I never saw anything like this before. At one moment the series is great, enjoy all the way and then comes most ridiculous bullshit in the story, you can''t believe it''s happening. For the fuck sake - what the fuck? It''s neither good or bad, it both.<br />
<br />
S02:<br />
Way stronger than first season. No more ridiculous stuff. Very enjoyable throughout the whole seasons. Action scenes could be little bit less shaky and with less cuts, but story telling is more mature and without unnecessary side tracks as it was in first season.','2020-07-05T20:09:26.000Z','2020-07-05T20:09:26.000Z','2019-09-22T00:00:00.000Z'),

	(104,'movie',496243,'/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg','Parasite',2019,'parasite',false,8,'Interesting','Mostly very good, just in the end felt a bit sloppy.','2020-06-17T21:14:47.000Z','2020-06-17T21:14:47.000Z','2020-06-17T21:14:47.000Z'),

	(105,'tv',71383,'/cvoSPs6We2u88mXz2vSqjbd4kQ0.jpg','The Crossing',2018,'the-crossing',false,9,'Surprising find and disappointment about cancelation','Started as mistery about people getting rescued on beach and finding out where they came from, ending with moral question about if genocide could justify prevention of genocide and when good intentions becomes root of evil.<br />
Sadly that ABC decided to cancel this great show, without giving it a chance, while I would love to see how story would continue.','2020-06-16T19:00:48.000Z','2020-06-16T19:00:48.000Z','2020-06-16T19:00:48.000Z'),

	(106,'movie',574982,'/avl9MEQhtvokNnzoWepkmHBZ2ss.jpg','The Blackout: Invasion Earth',2019,'the-blackout-invasion-earth',false,6,'Interesting idea, but in the end disappointing','','2020-06-01T16:04:31.000Z','2020-06-01T16:04:31.000Z','2020-06-01T16:04:31.000Z'),

	(107,'tv',10283,'/oSn0NGPsVeT7D6KnzPAcQemg9rJ.jpg','Archer',2009,'archer',false,9,'Very Good beginning, but gets stale in the middle','','2020-05-31T19:08:13.000Z','2020-05-31T19:08:13.000Z','2020-05-31T19:08:13.000Z'),

	(108,'tv',96713,'/me3kxfiFRkdto6SmDQv0nczjfmP.jpg','The Midnight Gospel',2020,'the-midnight-gospel',false,9,'What creators ware smoking?','I think that''s most creative animation I ever seen, while most parts completely do not go with logic or rules. It''s like psicodelic dream, while someone is having philosophical conversation about world and life after smoking big joint.','2020-05-25T22:35:06.000Z','2020-05-25T22:35:06.000Z','2020-05-25T22:35:06.000Z'),

	(109,'movie',429351,'/j18021qCeRi3yUBtqd2UFj1c0RQ.jpg','12 Strong',2018,'12-strong',false,8,'Good, but nothing new','','2020-05-24T11:57:37.000Z','2020-05-24T11:57:37.000Z','2020-05-24T11:57:37.000Z'),

	(110,'tv',2316,'/qWnJzyZhyy74gjpSjIXWmuk0ifX.jpg','The Office',2005,'the-office',false,10,'Hilarious and heartwarming. One of the best I have ever seen.','Finally decided to watch from beginning till end. It has everything from comedy till drama. It brings you to laugh and cry. One of the best TV shows in the history and I''m glad I decided to finally watch it. ','2020-04-24T15:23:42.000Z','2020-04-24T15:23:42.000Z','2020-04-24T15:23:42.000Z'),

	(111,'movie',458305,'/myf3qzpeN0JbuFRPwSpJcz7rmAT.jpg','Vivarium',2019,'vivarium',false,7,'Total nonsense, I liked it, but why it exists?','It''s very much pointless, insane stupid movie. Completely not rewarchable, because there is no satisfaction, no resolution, nothing after it.','2020-04-10T21:45:12.000Z','2020-04-10T21:45:12.000Z','2020-04-10T21:45:12.000Z'),

	(112,'movie',454626,'/aQvJ5WPzZgYVDrxLX4R6cLJCEaQ.jpg','Sonic the Hedgehog',2020,'sonic-the-hedgehog',false,8,'Really not bad','','2020-04-07T20:28:31.000Z','2020-04-07T20:28:31.000Z','2020-04-07T20:28:31.000Z'),

	(113,'tv',71446,'/MoEKaPFHABtA1xKoOteirGaHl1.jpg','Money Heist',2017,'money-heist',false,8,'Very good heist Series from Spain','S01-S02:<br />
Pretty great heist story. It''s interesting how you become more invested in robbers and you start rooting for them, while they in simple way they should be bad guys, but life is not simple and like that, story isn''t simple too.<br />
<br />
S03:<br />
Spit on season 1 &amp; 2','2020-04-05T07:51:23.000Z','2020-04-05T07:51:23.000Z','2020-04-05T07:51:23.000Z'),

	(114,'movie',658760,'/bZ7H0kCwEM6CQ0dyCs2H4RkU130.jpg','Isi &#038; Ossi',2020,'isi-ossi',false,8,'Cute comedy from Germany','','2020-04-01T21:19:15.000Z','2020-04-01T21:19:15.000Z','2020-04-01T21:19:15.000Z'),

	(115,'tv',63247,'/y55oBgf6bVMI7sFNXwJDrSIxPQt.jpg','Westworld',2018,'westworld-2',false,8,'Complicated amazing story','S1: 5 stats<br />
One of the all time favorites.<br />
Perfect story about artificial intelligence and search for understanding of self consciousness and what does it take to be sapient.<br />
<br />
S2: 4 stars<br />
One of the best Tv Series in my recent watch history.<br />
Cinematographically beautiful, storywise sometimes shocking and intriguing, only giving little bit out in each episode as breadcrumbs in a big convoluted story. Amazing physiological and philosophical topics.<br />
Amazing acting and character development. Great atmosphere. Just wonderful.<br />
P.S. It kinda brings me the feeling when I started watching "the Lost" Series. Mystery, intrigues, and excitement to see next episode to fit another puzzle part in the big picture. Hope it does not share the same fate as Lost in last seasons :D<br />
<br />
S3: 3,5 stars<br />
it''s back to great story development, without too many plots at the same time, like it was in the first season. But in The end falls very low with pretty with bad narrative of the story and bad motivation. ','2020-03-30T18:00:58.000Z','2020-03-30T18:00:58.000Z','2018-06-25T00:00:00.000Z'),

	(116,'movie',522627,'/jtrhTYB7xSrJxR1vusu99nvnZ1g.jpg','The Gentleman',2019,'the-gentleman',false,8,'It''s good','Nothing spectacular.<br />
Movie idea you already seen before done million times.','2020-03-25T21:23:50.000Z','2020-03-25T21:23:50.000Z','2020-03-25T00:00:00.000Z'),

	(117,'movie',508439,'/f4aul3FyD3jv3v4bul1IrkWZvzq.jpg','Onward',2020,'onward',false,6,'One of the weaker Pixar movies','It''s like Cars. Watchable, but nothing special.','2020-03-21T20:17:37.000Z','2020-03-21T20:17:37.000Z','2020-03-21T20:17:37.000Z'),

	(118,'movie',181812,'/db32LaOibwEliAmSL2jjDF6oDdj.jpg','Star Wars: The Rise of Skywalker',2019,'star-wars-the-rise-of-skywalker',false,6,'70% bullshit, but there is another 30%','I think it''s not fair completely criticize the movie, while it''s trying to make shit made after the last film look at least more decent and it''s on the right way, but in the end is still a very bad movie.<br />
A lot of weird character motivations, unnecessary narratives which never gets resolved and plainly stupid premise of the story, makes this movie barely watchable. But nevertheless, there are some interesting parts in the movie, which could have to save it (it started to move in the right direction), but it was too late to develop, especially when it is already the third movie (and last) in series.<br />
I don''t know where the Star Wars going to do after this. They can make something great when put right people in charge (see Mandalorian), but for now they really put movie arc in the grave and don''t know if new hope could born.','2020-03-15T21:59:33.000Z','2020-03-15T21:59:33.000Z','2020-03-15T21:59:33.000Z'),

	(119,'movie',581600,'/fePczipv6ZzDO2uoww4vTAu2Sq3.jpg','Spenser Confidential',2020,'spenser-confidential',false,7,'Expected worse, but it''s fine','','2020-03-09T21:22:55.000Z','2020-03-09T21:22:55.000Z','2020-03-09T21:22:55.000Z'),

	(120,'tv',60948,'/taoncu2TKk88hqNauPLKmIRfwrO.jpg','12 Monkeys',2015,'12-monkeys',false,10,'Surprising time travel drama','I love time travel movies so this TV series got my attention. ','2020-02-09T21:21:35.000Z','2020-02-09T21:21:35.000Z','2020-02-09T21:21:35.000Z'),

	(121,'movie',509967,'/lnWkyG3LLgbbrIEeyl5mK5VRFe4.jpg','6 Underground',2019,'6-underground',false,6,'','Michael Bay movie, so of course a lot of cool action scenes and many unnecessary splashy explosions, a problem like with Transformers movies - horribly bad and silly story.','2020-01-19T14:55:50.000Z','2020-01-19T14:55:50.000Z','2020-01-19T14:55:50.000Z'),

	(122,'movie',419704,'/xJUILftRf6TJxloOgrilOTJfeOn.jpg','Ad Astra',2019,'ad-astra',false,8,'Spectacular','Something like Interstellar, only without black holes and love as a force for everything, instead down to earth science and plain story in space.','2019-12-05T22:20:39.000Z','2019-12-05T22:20:39.000Z','2019-12-05T00:00:00.000Z'),

	(123,'movie',474350,'/zfE0R94v1E8cuKAerbskfD3VfUt.jpg','It Chapter Two',2019,'it-chapter-two',false,5,'A bit too long and boring','','2019-11-21T21:39:42.000Z','2019-11-21T21:39:42.000Z','2019-11-21T21:39:42.000Z'),

	(124,'tv',81532,'/fLo2TqZ4UHHZU0UJbhi3lraCJNu.jpg','Living with Yourself',2019,'living-with-yourself',false,8,'Funny','','2019-11-21T19:33:26.000Z','2019-11-21T19:33:26.000Z','2019-11-21T19:33:26.000Z'),

	(125,'tv',62017,'/xhoDZbMNeyCA0BGPZQsdIiO43Dp.jpg','The Man in the High Castle',2015,'the-man-in-the-high-castle-season-3',false,5,'Some good episodes, but way too slow story development. In general disappointing.','Series has few really good episodes, but everything else is the way too slow going with a lot of unnecessary scenes. Could be more action-packed. There is opposition in a story and I more love the storyline of nazi''s side, while is way more interesting than resistance. At the end of this season, you feel like you haven''t moved much forward, still sitting waiting for something exciting to happen and it just ends with a big cliffhanger.<br />
Last season delivers some interesting story development, but it gets a bit undeveloped and not very well utilised and ending with pretty quick meaningless ending of tv series. I am disappointed.','2019-11-17T09:42:47.000Z','2019-11-17T09:42:47.000Z','2018-10-07T00:00:00.000Z'),

	(126,'tv',76669,'/3NTAbAiao4JLzFQw6YxP1YZppM8.jpg','Elite',2018,'elite',false,7,'With each season is more cringe','','2019-11-10T12:19:30.000Z','2022-04-19T06:35:21.423Z','2022-04-15T22:00:00.000Z'),

	(127,'movie',569547,'/fR0VZ0VE598zl1lrYf7IfBqEwQ2.jpg','Black Mirror: Bandersnatch',2018,'black-mirror-bandersnatch',false,9,'Ha, let''s try again','','2019-11-09T20:00:11.000Z','2019-11-09T20:00:11.000Z','2019-11-09T20:00:11.000Z'),

	(128,'tv',74577,'/xzwwzmXbz6n2Y3fc0GbjqGiFQPm.jpg','The End of the F***ing World',2017,'the-end-of-the-fing-world_s01',false,10,'Me:"Briliant" Also me:"OK"','The dialogue in this TV Series is just brilliant - everything is just few words, one line. Acting is also awkward intentional and it makes most of the time lough. Never seen such a show. Simply brilliant.','2019-11-06T20:23:34.000Z','2019-11-06T20:23:34.000Z','2018-01-13T00:00:00.000Z'),

	(129,'tv',79788,'/m8rWq3j73ZGhDuSCZWMMoE9ePH1.jpg','Watchmen',2019,'watchmen',false,8,'So many questions','','2019-10-23T20:04:20.000Z','2019-10-23T20:04:20.000Z','2019-10-23T20:04:20.000Z'),

	(130,'tv',79501,'/nVN7Dt0Xr78gnJepRsRLaLYklbY.jpg','Doom Patrol',2019,'doom-patrol',false,10,'Love it','Something special from DC comics. Even story at some points is ridiculously silly and bit dumb, but it has way very interesting stories about the emotional struggle of each character, what pushes this TV series very high on my radar.  In 50 min. it shows so much more character development than any other recent DC superhero movie like Suicide Squad or Justice League.','2019-10-14T19:56:38.000Z','2019-10-14T19:56:38.000Z','2019-10-14T19:56:38.000Z'),

	(131,'movie',559969,'/ePXuKdXZuJx8hHMNr2yM4jY2L7Z.jpg','El Camino: A Breaking Bad Movie',2019,'el-camino-a-breaking-bad-movie',false,9,'Nice ending','It like missing last episode from TV series. Unnecessary closure, but I really was happy get back to Breaking Bad universe.','2019-10-12T16:34:09.000Z','2019-10-12T16:34:09.000Z','2019-10-12T16:34:09.000Z'),

	(132,'movie',301528,'/w9kR8qbmQ01HwnvK4alvnQ2ca0L.jpg','Toy Story 4',2019,'toy-story-4',false,8,'Good, but more like beating dead horse.','','2019-09-28T22:10:54.000Z','2019-09-28T22:10:54.000Z','2019-09-28T22:10:54.000Z'),

	(133,'movie',484641,'/exTOQMsl6sMntASQZWLhjghzVGx.jpg','Anna',2019,'anna',false,9,'Really good action thriller','','2019-09-14T16:18:34.000Z','2019-09-14T16:18:34.000Z','2019-09-14T16:18:34.000Z'),

	(134,'tv',71915,'/hzEzugrfagYisxQXemGEuI4zcQA.jpg','Good Omens',2019,'good-omens',false,7,'Fine','','2019-09-08T15:52:34.000Z','2019-09-08T15:52:34.000Z','2019-09-08T00:00:00.000Z'),

	(135,'movie',424694,'/lHu1wtNaczFPGFDTrjCSzeLPTKN.jpg','Bohemian Rhapsody',2018,'bohemian-rhapsody',false,6,'Fine','Simply just fine. Nicely shot and good story, but as not huge fan of Queens is just fine (nothing special) movie.','2019-07-18T21:14:48.000Z','2019-07-18T21:14:48.000Z','2019-07-18T00:00:00.000Z'),

	(136,'movie',399579,'/xRWht48C2V8XNfzvPehyClOvDni.jpg','Alita: Battle Angel',2019,'alita-battle-angel',false,7,'Beautiful','Pretty eye candy and nice choreography of action scenes.<br />
Only not sure if it will continue with sequels, because it was not a big success in the box office, but I would definitively like to see how the story continues, while this movie just introduction and it ended without telling the whole story yet. ','2019-07-14T20:57:48.000Z','2019-07-14T20:57:48.000Z','2019-07-14T00:00:00.000Z'),

	(137,'movie',429617,'/2cAc4qH9Uh2NtSujJ90fIAMrw7T.jpg','Spider-Man: Far from Home',2019,'spider-man-far-from-home',false,7,'Still same Marvel','','2019-07-04T13:10:04.000Z','2019-07-04T13:10:04.000Z','2019-07-05T00:00:00.000Z'),

	(138,'movie',446101,'/q2Nmyqh84rMiBwNfC2jMjuQluW4.jpg','Assassination Nation',2018,'assassination-nation',false,9,'Summary "For the LOLS"','The story of the movie is so fucked up, but in today''s world it wouldn''t be surprised that something like that could happen in real life.','2019-06-22T13:30:54.000Z','2019-06-22T13:30:54.000Z','2019-06-22T00:00:00.000Z'),

	(139,'movie',429197,'/seqLrPNbWJdcX6PeEhBNkmxjz6h.jpg','Vice',2018,'vice',false,7,'Good','','2019-06-21T17:19:44.000Z','2019-06-21T17:19:44.000Z','2019-06-21T17:19:44.000Z'),

	(140,'movie',429471,'/cVo7lylXAUDGuvDZBUYaP8Zjbku.jpg','Captive State',2019,'captive-state',false,4,'Great idea, bad execution','','2019-06-20T16:10:07.000Z','2019-06-20T16:10:07.000Z','2019-06-20T00:00:00.000Z'),

	(141,'movie',458156,'/ziEuG1essDuWuC5lpWUaw1uXY2O.jpg','John Wick: Chapter 3 – Parabellum',2019,'john-wick-chapter-3-parabellum',false,9,'Same John Wick you expect!','','2019-05-28T19:28:40.000Z','2019-05-28T19:28:40.000Z','2019-05-28T00:00:00.000Z'),

	(142,'movie',399404,'/xa6G3aKlysQeVg9wOb0dRcIGlWu.jpg','Darkest Hour',2017,'darkest-hour',false,7,'Fine','','2019-05-25T19:48:57.000Z','2019-05-25T19:48:57.000Z','2019-05-25T00:00:00.000Z'),

	(143,'movie',299534,'/or06FN3Dka5tukK1e9sl16pB3iy.jpg','Avengers: Endgame',2019,'avengers-endgame',false,9,'Rewarding more than decade''s conclusion','Marvellous culmination with such a huge casting crew and Marvel managed to pull it off.<br />
Even runtime of the movie is 3hours, but it doesn''t feel longer as <a href="/movies/avengers-infinity-war/">Avengers: Infinity War</a>.<br />
Slow start and building towards the main action packed culmination is rewarding, and the culmination scene is one of the densest actions scenes I think I ever saw attempted in the movie. It''s huge.<br />
Even if the story and everything are awesome, it comes with few flaws and things of experimentation, that not very well goes with me, but overall its spectacular work of art and storytelling, which makes this movie one of the top best MCU movies.','2019-04-25T22:00:58.000Z','2019-04-25T22:00:58.000Z','2019-04-25T00:00:00.000Z'),

	(144,'movie',450465,'/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg','Glass',2019,'glass',false,8,'Very good','One thing I like about M. Night Shyamalan movies, that it stands out of all other popular movies. Not every movie of his interests me, but this one is the third movie in this superheroes theme trilogy and it manages to keep the same interesting storytelling as the first and the second one.','2019-04-16T21:13:36.000Z','2019-04-16T21:13:36.000Z','2019-04-11T00:00:00.000Z'),

	(145,'movie',166428,'/xvx4Yhf0DVH8G4LzNISpMfFBDy2.jpg','How to Train Your Dragon The Hidden World',2019,'how-to-train-your-dragon-the-hidden-world',false,9,'Perfect ending for perfect Trilogy','Beautiful as two movies before.<br />
It has a greatly written story, even I''m not a fan of the themes with dragons.','2019-04-10T09:16:52.000Z','2019-04-10T09:16:52.000Z','2019-04-09T00:00:00.000Z'),

	(146,'movie',399361,'/aBw8zYuAljVM1FeK5bZKITPH8ZD.jpg','Triple Frontier',2019,'triple-frontier',false,8,'Decent action movie','Good movie about ex military soldiers and their life. One downside that movie is predicteble and doesn''t feel original.','2019-03-25T10:03:17.000Z','2019-03-25T10:03:17.000Z','2019-03-19T00:00:00.000Z'),

	(147,'movie',446021,'/eBXFMpewhnmWLLQqg1EJWJwSw7a.jpg','Bad Times at the El Royale',2018,'bad-times-at-the-el-royale',false,8,'Good for watching something simple','','2019-03-25T10:01:07.000Z','2019-03-25T10:01:07.000Z','2019-03-14T00:00:00.000Z'),

	(148,'movie',483906,'/qOBEpKVLl8Q9CZScbOcRRVISezV.jpg','Polar',2019,'polar',false,7,'Smells like John Wick','','2019-02-07T11:54:47.000Z','2019-02-07T11:54:47.000Z','2019-02-02T00:00:00.000Z'),

	(149,'movie',396461,'/cJ9aKlEgTLYtpYjNqin06YqJRUl.jpg','Under the Silver Lake',2018,'under-the-silver-lake',false,9,'Pointless wonderful nonsense','Loved the mood and storyline, but it''s complete bonkerous.','2018-12-09T20:02:38.000Z','2018-12-09T20:02:38.000Z','2018-12-09T00:00:00.000Z'),

	(150,'movie',399360,'/afdZAIcAQscziqVtsEoh2PwsYTW.jpg','Alpha',2018,'alpha',false,8,'Nice, heartwarming ','','2018-10-29T19:45:24.000Z','2018-10-29T19:45:24.000Z','2018-10-29T00:00:00.000Z'),

	(151,'movie',347375,'/2L8ehd95eSW9x7KINYtZmRkAlrZ.jpg','Mile 22',2018,'mile-22',false,7,'Good action, but forgettable ','','2018-10-26T17:48:38.000Z','2018-10-26T17:48:38.000Z','2018-10-26T00:00:00.000Z'),

	(152,'movie',487558,'/55W6mUVv4CXMMQHHhV2zXtLSpXQ.jpg','BlacKkKlansman',2018,'blackkklansman',false,6,'Decent, no point watching again','','2018-10-26T15:39:50.000Z','2018-10-26T15:39:50.000Z','2018-10-26T00:00:00.000Z'),

	(153,'movie',424781,'/peTl1V04E9ppvhgvNmSX0r2ALqO.jpg','Sorry to Bother You',2018,'sorry-to-bother-you',false,8,'No idea what writer was smoking during script writing','','2018-10-16T18:36:20.000Z','2018-10-16T18:36:20.000Z','2018-10-16T00:00:00.000Z'),

	(154,'movie',395841,'/1etEySwZQnBJpzgplgadPi5y4PL.jpg','Hold the Dark',2018,'hold-the-dark',false,8,'This shit is weird','','2018-10-02T19:05:37.000Z','2018-10-02T19:05:37.000Z','2018-10-02T00:00:00.000Z'),

	(155,'movie',447200,'/5LYSsOPzuP13201qSzMjNxi8FxN.jpg','Skyscraper',2018,'skyscraper',false,4,'Full of stereotypical cliches','Takeaway from whole movie:<br />
"If you can''t fix it with duct tape, you''re not using enough duct tape." :D','2018-09-27T19:14:35.000Z','2018-09-27T19:14:35.000Z','2018-09-27T00:00:00.000Z'),

	(156,'movie',348350,'/3IGbjc5ZC5yxim5W0sFING2kdcz.jpg','Solo: A Star Wars Story',2018,'solo-a-star-wars-story',false,8,'Enjoyed way more than expected','I was expecting way worse movie, than it actually was. It way better and more entertaining than <b>Rogue One: A Star Wars Story</b>.<br />
It don''t show anything shockingly new, but action is great, visuals is also stunningly good. Story little bit weak, but still entertaining. ','2018-09-13T20:44:14.000Z','2018-09-13T20:44:14.000Z','2018-09-13T00:00:00.000Z'),

	(157,'movie',489931,'/aLbdKxgxuOPvs6CTlmzoOQ4Yg3j.jpg','American Animals',2018,'american-animals',false,6,'Decent','The heist movie with a story based on true facts, even with people telling a story from their own lips. It''s interesting because it could be simply just a documentary, but it''s a reenactment of the whole story with a cinematographical view. It''s a fine movie with moral in it, but that''s nothing more.','2018-09-05T09:52:01.000Z','2018-09-05T09:52:01.000Z','2018-09-04T00:00:00.000Z'),

	(158,'movie',500664,'/8fDtXi6gVw8WUMWGT9XFz7YwkuE.jpg','Upgrade',2018,'upgrade',false,9,'Rare gold nugget','','2018-08-25T18:36:10.000Z','2018-08-25T18:36:10.000Z','2018-08-25T00:00:00.000Z'),

	(159,'movie',300668,'/d3qcpfNwbAMCNqWDHzPQsUYiUgS.jpg','Annihilation',2018,'annihilation',false,2,'Bad','','2018-07-19T16:45:57.000Z','2018-07-19T16:45:57.000Z','2018-07-18T00:00:00.000Z'),

	(160,'movie',475210,'/prdFM08mGvVDA6uQxKJh8n8Vek1.jpg','How It Ends',2018,'how-it-ends',false,4,'Interesting, but pointless','','2018-07-15T12:11:23.000Z','2018-07-15T12:11:23.000Z','2018-07-15T00:00:00.000Z'),

	(161,'movie',340022,'/dxeVPklFwng2IowqRPNI4od6aXv.jpg','Gringo',2018,'gringo',false,3,'Bellow avarage','','2018-07-14T12:19:02.000Z','2018-07-14T12:19:02.000Z','2018-07-14T00:00:00.000Z'),

	(162,'movie',259316,'/h6NYfVUyM6CDURtZSnBpz647Ldd.jpg','Fantastic Beasts and Where to Find Them',2016,'fantastic-beasts-and-where-to-find-them',false,8,'Magic continues ','','2018-07-08T11:02:01.000Z','2018-07-08T11:02:01.000Z','2018-07-09T00:00:00.000Z'),

	(163,'movie',271110,'/rAGiXaUfPzY7CDEyNKUofk3Kw2e.jpg','Captain America: Civil War',2016,'captain-america-civil-war',false,8,'','','2018-07-06T18:41:02.000Z','2018-07-06T18:41:02.000Z','2018-07-06T18:41:02.000Z'),

	(164,'movie',300673,'/6UG91TJ4DKI6FGdqXZfDBeRZHX8.jpg','The Finest Hours',2016,'the-finest-hours',false,9,'Rare good','','2018-06-26T19:26:27.000Z','2018-06-26T19:26:27.000Z','2017-10-14T00:00:00.000Z'),

	(165,'movie',449443,'/AfybH6GbGFw1F9bcETe2yu25mIE.jpg','Den of Thieves',2018,'den-of-thieves',false,8,'Surprisingly very good','','2018-04-28T23:08:27.000Z','2018-04-28T23:08:27.000Z','2018-04-28T00:00:00.000Z'),

	(166,'movie',64635,'/fucmGeZYM4yzqJUnDTc4pKQNCej.jpg','Total Recall',2012,'total-recall-2',false,6,'Way better than original','It''s same, but way better <a href=''https://movies.juliuszlioba.com/movies-evening-list/total-recall''>Total Recall (1990)</a>, but with same problems.<br><br />
<p><img src=''https://media.giphy.com/media/C6JQPEUsZUyVq/giphy.gif'' style=''width: 100%; max-width: 350px;''></p><br />
The original one was at best ''pile of peace of shit'', and this reboot is just ''a stinky poop'' a.k. a way more enjoyable decent movie with nice action scenes and pretty beautiful CGI scenery, but bad story. Even it''s way better but still falls short on the same story problems. And thank god for this time no Mars and alien shit in this one. There are few flaws in the main story, what destroys the really good story concept. They could have at least tried better to improve some motivations of characters, to be a more believable story. But oh well, now it''s just one-time action-packed same candy with a different outer layer and crapy core.','2018-04-15T21:12:11.000Z','2018-04-15T21:12:11.000Z','2018-04-15T00:00:00.000Z'),

	(167,'movie',44833,'/9b0Im7SfedHiajTwzSL9zGyBI7M.jpg','Battleship',2012,'battleship',false,1,'Please don''t waste time','Please don''t waste time on this movie. It''s bad.<br />
Only visually looking nice, everything else is total bullshit.','2018-03-26T18:57:45.000Z','2018-03-26T18:57:45.000Z','2018-03-26T18:57:45.000Z'),

	(168,'movie',199928,'/m2riQcEzjVrkP8wKHDXwC5EQpHQ.jpg','The Outsider',2018,'the-outsider',false,8,'Great','Jared Leto really great in this movie. Wonderful atmosphere and mystery combined with japanise traditions and mafia. It gives only details needed for a movie and nothing more. And that is a really great directors choice. The movie takes place in post-WWII Japan, just a few years after the war. A simple story like today''s epic journey about an outsider in the hostile world. Worth to see.','2018-03-20T21:42:23.000Z','2018-03-20T21:42:23.000Z','2018-03-20T00:00:00.000Z'),

	(169,'movie',353486,'/22hqf97LadMvkd4zDi3Bq25xSqD.jpg','Jumanji: Welcome to the Jungle',2017,'jumanji-welcome-to-the-jungle',false,6,'Fun','I shouldn''t have enjoyed it, but it was surprisingly fun. It''s fun comedy as original Jumanji (1995) just adapted to today''s audience.<br />
Really enjoyable after few beers :D The story is really silly but makes you laugh at few moments. Acting is pretty decent, because it''s just stupid movie, with a lot of well know comedians, so you mostly don''t care.<br />
I just don''t know about this computer game style, while the movie is adapted to new ages, it takes place as a video game, and it has a lot of nostalgic memories from really old video games from childhood. And this choice is destroying the original movie. It looks like it''s sequel to first one (I don''t know if it''s really is, while it''s referencing some stuff from first one) and at least tries to be, it doesn''t have the same magic as the first one, and those changes ware pretty unnecessarily. Most disappointing part of the movie is the villain, while he is just pathetic, but it might have been planed like this and the whole point of the movie is way different more personal problems the heroes facing and the inspiring and thoughtful message it tries to show, but it''s over do a little and get''s a bit cheesy.<br />
I hope they not bringing it back again, for some other crazy interpretation. For me, Jumanji is a great movie with great actor Robin Williams and this sequel better should not have been made in first place.','2018-03-17T22:42:57.000Z','2018-03-17T22:42:57.000Z','2018-03-17T00:00:00.000Z'),

	(170,'tv',38472,'/wkFdanlAaV39sSXeslImfRUj3jQ.jpg','Jessica Jones',2018,'jessica-jones-season-2',false,5,'Little bit disapointing','The first season was much better, but it''s not everything bad with the second one.<br />
It just didn''t go with me. It was a great strong start, but at the end, it got sloppy, started to make no sense and too much coincidence destroyed the story.<br />
The first season had a great villain in the story, unfortunately, the second one is kinda cheese one connected with family issues.<br />
Last four episodes in the series ware the worst because I just wanted them to end as quickly as possible, and that is not great.<br />
But not everything is just bad. There was also an unexpected twist in the story and few cool moments, but these episodes died way too quickly without taking all the possibilities where they could have gone.<br />
What surprised me is the way they have shown some subplot lines and how they ended really bad, just to show that world is a cruel place without a nice ending.<br />
In the end, I would more likely just recommend the first season, while the second one doesn''t catch up with it, and goes a little bit of the rails.','2018-03-16T21:30:44.000Z','2018-03-16T21:30:44.000Z','2018-03-16T00:00:00.000Z'),

	(171,'movie',141052,'/eifGNCSDuxJeS1loAXil5bIGgvC.jpg','Justice League',2017,'justice-league',false,2,'Bad','Once again DC makes something unwatchable. Again. And again. And again. When it''s going to stop? When it''s going to be good again? Make DC great again!','2018-02-12T21:04:46.000Z','2018-02-12T21:04:46.000Z','2018-02-12T00:00:00.000Z'),

	(172,'movie',8619,'/s1cVTQEZYn4nSjZLnFbzLP0j8y2.jpg','Master and Commander: The Far Side of the World',2003,'master-and-commander-the-far-side-of-the-world',false,6,'','','2018-01-25T19:25:18.000Z','2018-01-25T19:25:18.000Z','2018-01-25T19:25:18.000Z'),

	(173,'movie',346364,'/9E2y5Q7WlCVNEhP5GiVTjhEhx1o.jpg','It',2017,'it',false,9,'Very recommended ','I''m not a big fan of the horror genre, but this movie surprised me. Really well-made movie. Not just a dumb jump scares.','2017-12-16T22:08:15.000Z','2017-12-16T22:08:15.000Z','2017-12-16T22:08:15.000Z'),

	(174,'movie',341013,'/kV9R5h0Yct1kR8Hf8sJ1nX0Vz4x.jpg','Atomic Blonde',2017,'atomic-blonde',false,9,'Like John Wick','Spies and Berlin in time of brink of the end of cold war. Wonderful action scenes, little bit messy story, but forgivable. Beautiful cinematography. Loved it.','2017-12-16T17:23:39.000Z','2017-12-16T17:23:39.000Z','2017-10-24T00:00:00.000Z'),

	(175,'movie',401513,'/uMr2lXCh8PuGBhCIosjknQRv1iT.jpg','Prityazhenie',2017,'prityazhenie',false,4,'Not much recommended ','Weird Russian movie. Only first 20min or so is worth to watch, afterwards comes pretty messy story and horribly unbelievable romance. Best strength of the movies is CGI. It is really well done. But movie suffers from bad acting and really weird actions and decisions during the story. There are even some parts in the movie, which is really not necessary at all, and it only makes you question why that even must to be in.<br />
A movie is good for the one-time watch and getting know of Russian style of cinema.','2017-12-10T20:35:08.000Z','2017-12-10T20:35:08.000Z','2017-12-10T00:00:00.000Z'),

	(176,'tv',67178,'/s2YM9zHF3tf2coi8t0UEzYrOHg8.jpg','The Punisher',2017,'the-punisher-season-1',false,7,'Very bloody series','R-Rated blood scenes, violence and shit. Really good portrait of Punisher.<br />
Only complain is story length, it could have been few episodes shorter, while some of them felt like stretching time and doing nothing for the story.<br />
Overal series is pretty good.','2017-11-19T18:55:04.000Z','2017-11-19T18:55:04.000Z','2017-11-19T00:00:00.000Z'),

	(177,'movie',598,'/4YEX7qUfg6kN2tHm84CMt2CEq9n.jpg','City of God',2002,'city-of-god',false,7,'','','2017-11-18T15:51:45.000Z','2017-11-18T15:51:45.000Z','2017-11-18T00:00:00.000Z'),

	(178,'movie',395834,'/pySivdR845Hom4u4T2WNkJxe6Ad.jpg','Wind River',2017,'wind-river',false,7,'Not for fun','Very serious and depressing story. ','2017-11-05T21:15:25.000Z','2017-11-05T21:15:25.000Z','2017-11-05T00:00:00.000Z'),

	(179,'movie',260514,'/fyy1nDC8wm553FCiBDojkJmKLCs.jpg','Cars 3',2017,'cars-3',false,4,'Forgettable','','2017-10-24T15:00:12.000Z','2017-10-24T15:00:12.000Z','2017-10-23T00:00:00.000Z'),

	(180,'movie',353491,'/i9GUSgddIqrroubiLsvvMRYyRy0.jpg','The Dark Tower',2017,'the-dark-tower',false,3,'Not worth it','Very lame story or really bad execution of it, hard to say. Few good action scenes and nice acting, but a very forgettable movie. ','2017-10-24T14:59:57.000Z','2017-10-24T14:59:57.000Z','2017-10-24T00:00:00.000Z'),

	(181,'tv',67744,'/fbKE87mojpIETWepSbD5Qt741fp.jpg','Mindhunter',2017,'mindhunter-season-1',false,10,'must see!','Psychology and crime, just amazing tv series.','2017-10-15T16:44:09.000Z','2017-10-15T16:44:09.000Z','2017-10-15T00:00:00.000Z'),

	(182,'movie',347984,'/yRbC0uRj1RDmF0JLon83il2dkR0.jpg','6 Days',2017,'6-days',false,8,'','','2017-10-08T20:43:59.000Z','2017-10-08T20:43:59.000Z','2017-10-08T20:43:59.000Z'),

	(183,'movie',166426,'/xbpSDU3p7YUGlu9Mr6Egg2Vweto.jpg','Pirates of the Caribbean: Dead Men Tell No Tales',2017,'pirates-of-the-caribbean-dead-men-tell-no-tales',false,7,'Still good time watching, but it''s get''s boring already.','Still entertaining to watch, but the story gets way too much exhausted.<br />
It''s getting repetitive with each new movie from this franchise.<br />
They should just finish it or change something completely.','2017-09-09T15:13:29.000Z','2017-09-09T15:13:29.000Z','2017-09-09T00:00:00.000Z'),

	(184,'tv',62285,'/49XzINhH4LFsgz7cx6TOPcHUJUL.jpg','The Defenders',2017,'the-defenders-season-1',false,8,'recommended','','2017-08-20T15:08:06.000Z','2017-08-20T15:08:06.000Z','2017-08-20T00:00:00.000Z'),

	(185,'movie',313369,'/uDO8zWDhfWwoFdKS4fzkUJt0Rf0.jpg','La La Land',2016,'la-la-land',false,8,'Recomended','Very beautiful story.<br />
Not expected for Hollywood movie, bittersweet ending.','2017-08-12T15:46:55.000Z','2017-08-12T15:46:55.000Z','2017-08-12T00:00:00.000Z'),

	(186,'movie',353070,'/4nfWsdsJfO5srRZgxiWC9xHub0W.jpg','Going in Style',2017,'going-in-style',false,4,'not recommended','','2017-08-12T15:23:00.000Z','2017-08-12T15:23:00.000Z','2017-08-12T00:00:00.000Z'),

	(187,'movie',283995,'/y4MBh0EjBlMuOzv9axM4qJlmhzz.jpg','Guardians of the Galaxy Vol. 2',2017,'guardians-of-the-galaxy-vol-2-2',false,8,'','This is a really good sequel to the first one. Very enjoyable to watch and some comedic dialogue lines is just priceless. Really fun!','2017-08-11T20:11:00.000Z','2017-08-11T20:11:00.000Z','2017-08-11T20:11:00.000Z'),

	(188,'movie',417644,'/mIHA8Xf6WmxbS83ia4vQ5ojvxV8.jpg','CHIPS',2017,'chips',false,5,'as comedy for one time','Just a comedy','2017-08-07T15:16:36.000Z','2017-08-07T15:16:36.000Z','2017-08-07T00:00:00.000Z'),

	(189,'movie',315837,'/myRzRzCxdfUWjkJWgpHHZ1oGkJd.jpg','Ghost in the Shell',2017,'ghost-in-the-shell-2',false,7,'','Nice, but don''t know if would watch it again. Original anime is better looking and more interesting. In the movie is just little bit too much CGI.','2017-07-15T19:30:25.000Z','2017-07-15T19:30:25.000Z','2017-07-15T19:30:25.000Z'),

	(190,'movie',264660,'/9goPE2IoMIXxTLWzl7aizwuIiLh.jpg','Ex Machina',2015,'ex-machina',false,9,'','','2017-05-15T15:41:48.000Z','2017-05-15T15:41:48.000Z','2017-05-15T15:41:48.000Z'),

	(191,'movie',180299,'/olA39iaXISiKEkACdELgr0ZRvIF.jpg','The Raid 2',2014,'raid-2',false,8,'','It''s really an interesting sequel and I could say even very successful. They chose completely new kind of style of storytelling, which is more complex and that is a great choice. Something new and not repeating the first one. Only the action is great as first, but that is a huge plus.','2017-05-15T15:00:29.000Z','2017-05-15T15:00:29.000Z','2017-05-15T15:00:29.000Z'),

	(192,'movie',17431,'/cJ6JnuLwCNbiAAOBuHDjRTP7bQJ.jpg','Moon',2009,'moon',false,9,'','I just liked everything what it is shown in this movie. Great pace of the movie, great thrilling story, great visuals. Really great sci-fi movie about space and human cloning. ','2017-04-14T22:13:16.000Z','2017-04-14T22:13:16.000Z','2017-04-14T22:13:16.000Z'),

	(193,'movie',94329,'/Abnm1Ws3JH0ReCfEhLMPwPcMcGO.jpg','The Raid',2012,'the-raid-redemption',false,8,'','Great action scenes and martial arts.','2017-04-12T21:37:16.000Z','2017-04-12T21:37:16.000Z','2017-04-12T21:37:16.000Z'),

	(194,'movie',335983,'/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg','Venom',2018,'venom',false,5,'Visually stunning, story-wise dumb','Don''t know what to say. It''s not great, but not so so horrible too.<br />
Visually it''s amazing. CGI is top on this movie, especially fighting scenes is fluid and full of details.<br />
But movie suffers from really bad story script, there are so much cheese cliches that don''t get well and motivations what it don''t have any support except "just because". In comix, it would be fine, but in the real action movie, it simply looks dumb and out of place, not even comedic, plain dumb.','2018-11-28T19:35:49.000Z','2018-11-28T19:35:49.000Z','2018-11-28T00:00:00.000Z'),

	(195,'tv',62681,'/s9XficGcBL9Gv0LZNPGESjnDFEA.jpg','Deutschland',2018,'deutschland-86',false,8,'Great','','2018-11-17T12:14:30.000Z','2018-11-17T12:14:30.000Z','2018-11-16T00:00:00.000Z'),

	(196,'tv',60574,'/6PX0r5TRRU5y0jZ70y1OtbLYmoD.jpg','Peaky Blinders',2013,'peaky-blinders-s01-s03',false,10,'Extraordinary good! Highly recommended!','Wonderful Tv Series about British "mafia" development from early years till peak and fall.<br />
Atmosphere, visuals and sound are simply amazing. A story full of surprises and twists along the way. Great character development and outstanding acting. The format of 6 episodes per Season is just perfect like each season is just a long movie!<br />
First, two seasons takes on the earlier years and shows rising of Peaky Blinders, the third season is get''s a little bit faster ahead and takes time to adjust to new changes, but in middle of the third season, the Peaky Blinders at it''s the best intrigue again.<br />
The fourth season continues from third and not a bit lost of interest.<br />
Writing is simply amazing. Now looking for the next season next year.','2018-10-10T17:47:27.000Z','2018-10-10T17:47:27.000Z','2018-10-09T00:00:00.000Z'),

	(197,'tv',73411,'/kCNl4QPstAqChFD0NnLpbDFG8ul.jpg','Maniac',2018,'maniac',false,10,'Unbelievably good','This Mini TV Series left me mouth open from amazement. The most amazing series in a long time.<br />
Very interesting original storytelling with some very bizarre, confusing elements. At some point you start thinking that nothing really makes sense, but you keep watching while it''s intriguing, and can''t stop till the end and get shocked how everything fits to it''s places. Outstanding acting of Emma Stone and Jonah Hill. Gorgeous cinematography, mystery and insanity at some point, keep you glued to the screen till the end. Simply Masterpiece of it''s kind.','2018-09-25T19:12:04.000Z','2018-09-25T19:12:04.000Z','2018-09-25T00:00:00.000Z'),

	(198,'movie',400535,'/msqWSQkU403cQKjQHnWLnugv7EY.jpg','Sicario 2: Soldado',2018,'sicario-2-soldado',false,7,'Almost like first, but less','','2018-09-24T19:25:59.000Z','2018-09-24T19:25:59.000Z','2018-09-21T00:00:00.000Z'),

	(199,'tv',62127,'/4l6KD9HhtD6nCDEfg10Lp6C6zah.jpg','Marvel''s Iron Fist',2017,'iron-fist_s02',false,7,'One good, one bad','S1: Bad<br />
S2: Good','2018-09-13T07:32:29.000Z','2018-09-13T07:32:29.000Z','2018-09-12T00:00:00.000Z'),

	(200,'movie',447332,'/nAU74GmpUk7t5iklEp3bufwDq4n.jpg','A Quiet Place',2018,'a-quiet-place',false,9,'Frustratingly quiet horror','It''s a really original story. It has flaws, but apart from that, it makes you tense watching what it''s going to happen because everything looks like it''s going to end badly. Make sound and you are dead, really works for horror.','2018-09-05T19:50:39.000Z','2018-09-05T19:50:39.000Z','2018-09-05T00:00:00.000Z'),

	(201,'tv',73375,'/joxZpmDGZCIa65fh0GkuRqdcJkb.jpg','Tom Clancy''s Jack Ryan',2018,'tom-clancys-jack-ryan_s01',false,9,'amazingly good','That''s surprisingly great story about today''s terrorism. Series touches a lot of today''s topics like military drones and secret operations, the building of radical religious groups, immigration and conflicts and horrible everyday life in the middle east.<br />
Series starts strong with amazingly done action scenes, but most interesting what I founded is dialogues and story progression - it''s just not another down to a stupid made story, because you have to closely follow everything it''s said or done, while even slightest detail can be brought back into another plot twist. It''s pretty smart made.','2018-09-03T06:19:47.000Z','2018-09-03T06:19:47.000Z','2018-09-02T00:00:00.000Z'),

	(202,'movie',299536,'/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg','Avengers: Infinity War',2018,'avengers-infinity-war',false,10,'6 starts out of five','10 years of Marvel movies leads to one big party of all characters in one place.<br />
It''s very ambitious movie, and I surprised how well they managed to pull it off, to make one of the best Marvel movies we have seen.<br />
It could have been a huge mess of its size, but because all characters were introduced over long years of movies, you don''t have to introduce them again and you can simply just jump straight to the action. And this movie shines in that. It is just long non stop action, with few quick breaks to get a laugh or squeeze a tear.<br />
Even a person who ware not following any other Marvel movies could enjoy well-made action scenes.<br />
I could even give an extra 6th star of 5 possible because this movie managed to leave me shockingly surprised about few plot twist and very unexpected ending. Can''t wait already for the sequel next year or even next movie in MCU, while I have lot''s of unanswered questions right now. And I''m excited.','2018-09-01T18:30:54.000Z','2018-09-01T18:30:54.000Z','2018-09-01T00:00:00.000Z'),

	(203,'movie',363088,'/eivQmS3wqzqnQWILHLc4FsEfcXP.jpg','Ant-Man and the Wasp',2018,'ant-man-and-the-wasp',false,7,'Generic Marvel movie','It''s fun like first one and even same style, that''s why is nothing spectacular new. Same old thing. Just fun, but little bit forgettable.<br />
Generic average, at least not worse. ','2018-08-08T12:29:44.000Z','2018-08-08T12:29:44.000Z','2018-08-08T00:00:00.000Z'),

	(204,'movie',411143,'/qqYOlCee3X7cKg05EOQH1htcHmy.jpg','Tau',2018,'tau',false,4,'Bad','','2018-07-16T15:32:44.000Z','2018-07-16T15:32:44.000Z','2018-07-16T00:00:00.000Z'),

	(205,'movie',384521,'/dJe4s2h9hac0Fu3pQVV4OuWe8kU.jpg','The Cloverfield Paradox',2018,'the-cloverfield-paradox',false,2,'My brain hurts from movies logic','Now I understand why everyone hates this movie. It has one of the most ridiculous logic in sci-fi movies.<br />
My brain hurts from watching it. The simplest way of the story - the science experiment fucked everything up, that''s why let''s do the SAME thing OVER AGAIN like before, so everything will be back to normal - who could argue with that, right? ','2018-07-15T13:07:08.000Z','2018-07-15T13:07:08.000Z','2018-07-12T00:00:00.000Z'),

	(206,'movie',359940,'/vgvw6w1CtcFkuXXn004S5wQsHRl.jpg','Three Billboards Outside Ebbing, Missouri',2017,'three-billboards-outside-ebbing-missouri',false,9,'Originally great','','2018-07-05T17:50:36.000Z','2018-07-05T17:50:36.000Z','2018-07-05T00:00:00.000Z'),

	(207,'movie',437557,'/uvlUQXg0AlpGzKukO11K7QtW3Yu.jpg','Blockers',2018,'blockers',false,4,'Generic commedy','Nothing new, what haven''t been used already in some other comedies, but still fun.<br />
The movie then you don''t want to think, only to lough sometimes.','2018-07-03T18:06:39.000Z','2018-07-03T18:06:39.000Z','2018-07-03T00:00:00.000Z'),

	(208,'movie',385332,'/rclxSjQ85P5c1W1esvgXlpql36R.jpg','Terminal',2018,'terminal',false,7,'Weird','Cinematographically s really nice looking and pretty simple, but little bit weird revenge story with some plot twists on the way. A kinda pointless movie, but loved the acting and execution.','2018-07-02T18:00:12.000Z','2018-07-02T18:00:12.000Z','2018-07-02T00:00:00.000Z'),

	(209,'movie',469721,'/qheJcFjQ3hAMroE8y6FpCg6jNeN.jpg','The Cured',2018,'the-cured',false,5,'Depresive','','2018-06-24T10:02:43.000Z','2018-06-24T10:02:43.000Z','2018-06-24T00:00:00.000Z'),

	(210,'movie',399174,'/c0nUX6Q1ZB0P2t1Jo6EeFSVnOGQ.jpg','Isle of Dogs',2018,'isle-of-dogs',false,9,'Originally good','The amazing cinematography of stop-motion animation and wonderful style.','2018-06-23T16:16:08.000Z','2018-06-23T16:16:08.000Z','2018-06-23T00:00:00.000Z'),

	(211,'movie',253412,'/4xmndWnTYTE4bDdlWrkZyaGcZlo.jpg','Everest',2015,'everest',false,7,'Good','','2018-06-18T12:47:43.000Z','2018-06-18T12:47:43.000Z','2018-06-18T12:47:43.000Z'),

	(212,'movie',338970,'/3zrC5tUiR35rTz9stuIxnU1nUS5.jpg','Tomb Raider',2018,'tomb-raider',false,8,'Pretty good','Alicia Vikander as Lara Croft is a nice choice and very fitting role.<br />
I can definitely say I enjoyed this movie way more than Angelina''s Jolie movie.<br />
I liked the story even there are few cheesy moments, but a movie about computer game character in unbelievable adventures, this movie portrays it well. Really enjoyable action-packed movie.<br />
Indiana Jones in female form.','2018-06-10T19:32:09.000Z','2018-06-10T19:32:09.000Z','2018-06-10T00:00:00.000Z'),

	(213,'movie',96721,'/uWcMgxO3p3qwVFUxsRz1HbTzGvT.jpg','Rush',2013,'rush',false,10,'Good','Don''t know exactly why, but from time to time when I don''t have much what to see I keep rewatching this movie over again.','2018-05-12T01:15:36.000Z','2018-05-12T01:15:36.000Z','2018-05-12T01:15:36.000Z'),

	(214,'tv',75758,'/83mK4CnvRPFSqcyO3s3lq6aDy1x.jpg','Lost in Space',2018,'lost-in-space_s01',false,3,'Don''t know why I kept watching','','2018-05-09T23:03:53.000Z','2018-05-09T23:03:53.000Z','2018-05-06T00:00:00.000Z'),

	(215,'movie',445571,'/85R8LMyn9f2Lev2YPBF8Nughrkv.jpg','Game Night',2018,'game-night',false,6,'Decent comedy ','','2018-05-09T23:01:20.000Z','2018-05-09T23:01:20.000Z','2018-05-09T00:00:00.000Z'),

	(216,'movie',244786,'/utcy2Cxp0BzbsjbuAmiC6EBpUyx.jpg','Whiplash',2014,'whiplash',false,9,'Amazing','','2018-04-07T19:00:28.000Z','2018-04-07T19:00:28.000Z','2018-04-07T19:00:28.000Z'),

	(217,'movie',122,'/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg','The Lord of the Rings: The Return of the King',2003,'the-lord-of-the-rings-the-return-of-the-king',false,9,'','','2018-04-01T18:00:54.000Z','2018-04-01T18:00:54.000Z','2006-04-22T00:00:00.000Z'),

	(218,'movie',476926,'/qRmQazyIBZR4pQIk9VruiZul0Au.jpg','The Titan',2018,'the-titan',false,7,'Interesting idea, but with few flaws','A really interesting plot of the movie, but it''s hard to decide if it a good movie or not.<br />
On one hand, it''s pretty original science fiction story of the near future, and ''Nazi'' like experiments to make human race better and even surpass its limitation for future generations to conquer other planets for the survival.<br />
But on other hands, there are few things in the story, what makes some aspects of the whole story little bit ridiculous and not well thought out.<br />
So I can say it''s visually and story wise intriguing movie, with good pace and character development, but at the end, I was left with the fought - ''what was the point of all of that?'', even in the back of the mind I kinda find the answer, but anyway I can only hypothesise the point of the movie, what maybe was the point in the movie. I don''t know. Enjoyable movie for science fiction fans, with few flaws in the story.','2018-03-30T21:55:23.000Z','2018-03-30T21:55:23.000Z','2018-03-30T00:00:00.000Z'),

	(219,'movie',456750,'/58BnnYeQOTzdMBghZIH1tSH0REx.jpg','Game Over, Man!',2018,'game-over-man',false,2,'Nope','','2018-03-30T19:27:15.000Z','2018-03-30T19:27:15.000Z','2018-03-30T00:00:00.000Z'),

	(220,'movie',397538,'/9jdg8VxleYb1DhPiEfHM7DzfvGw.jpg','Borg McEnroe',2017,'borg-mcenroe',false,8,'Really nice','Haven''t expected much from it, but I was nicely surprised how intriguing story it has. I didn''t know these two famous tennis players before watching a movie so I can say movie shows a great way of introducing and building characters. At one point I didn''t even know for which one I''m rooting more to win. The great conflict between. ','2018-03-24T21:01:16.000Z','2018-03-24T21:01:16.000Z','2018-02-18T00:00:00.000Z'),

	(221,'movie',62,'/ve72VxNqjGM69Uky4WTo2bK6rfq.jpg','2001: A Space Odyssey',1968,'2001-2',false,5,'','Maybe if I would have seen this movie 10 or more years ago, I would have loved it more, but after seeing so much other movies who stole ideas from this one, I found it a little bit disappointing.<br />
And I have very mixed feeling about the pacing of the movie, from one side I like it that it''s so slow, it goes well with music, but from another side, I hate it, while it takes way "WAY" too long for them to show some simple idea.<br />
The story is kinda simple, with lots of place for your own interpretation, like the most interpretation power requiring ending of the movie.<br />
A lot of people see this movie as a masterpiece, but for me (because maybe I''m too young) is just an old time, slow pace, slightly impressive movie.<br />
It doesn''t go on my favourite movies list.','2018-02-11T15:30:24.000Z','2018-02-11T15:30:24.000Z','2018-02-11T15:30:24.000Z'),

	(222,'movie',406990,'/o6EsOqITcSzcdwD1zxBM9imdxjr.jpg','What Happened to Monday',2017,'what-happened-to-monday',false,6,'Not special','<i>"A story about future, when the world gets overpopulated, and one-child policy is the law, seven sisters got raised by one smart man in secret, but one day one sister disappears and others tries to find her."</i><br />
I would say generic action movie for wasting time. It had interesting story development in the beginning but falls short as it progresses. A lot of story holes and unbelievable actions. Kinda pointless in the end and no message behind.','2018-01-02T15:06:41.000Z','2018-01-02T15:06:41.000Z','2018-01-02T00:00:00.000Z'),

	(223,'movie',816,'/qSvfLwdDBLjZaPwA7qdn0yYePq5.jpg','Austin Powers: International Man of Mystery',1997,'austin-powers-international-man-of-mystery',false,6,'Fun','','2017-12-29T11:31:08.000Z','2017-12-29T11:31:08.000Z','2017-12-31T00:00:00.000Z'),

	(224,'movie',64686,'/xDHnmcroujCRG0ysYQaiswjbyHd.jpg','47 Ronin',2013,'ronin',false,5,'','Not bad, but little bit boring, because it''s little bit slow in story development.','2017-12-02T22:36:49.000Z','2017-12-02T22:36:49.000Z','2017-12-02T22:36:49.000Z'),

	(225,'movie',429733,'/fF5ULrCAQ8TULXyFGlPlQ2s3Jie.jpg','Mayhem',2017,'mayhem',false,7,'Worth it!','What a bulshit story, but I liked it. Completely nonsense, good action and lots of blood.','2017-11-14T23:43:50.000Z','2017-11-14T23:43:50.000Z','2017-11-14T00:00:00.000Z'),

	(226,'movie',281338,'/ijQHiImv16vNSeZQsmih04kwn0C.jpg','War for the Planet of the Apes',2017,'war-for-the-planet-of-the-apes',false,8,'Recomended if you seen first two movies too','It''s amazing how CGI is already advanced in today''s world.<br />
Visually is really stunning to see.','2017-10-12T22:42:31.000Z','2017-10-12T22:42:31.000Z','2017-10-12T00:00:00.000Z'),

	(227,'movie',334521,'/cH7HT8MlNrRb1Tx3QD0Q3HC3pXN.jpg','Free Fire',2016,'free-fire',false,8,'Highly recommend','','2017-10-08T22:17:00.000Z','2017-10-08T22:17:00.000Z','2017-10-08T00:00:00.000Z'),

	(228,'movie',138832,'/qF2LJ0jwWrtXSuT4AFD5OS2IqaT.jpg','We''re the Millers',2013,'were-the-millers',false,7,'Really good easy comedy','Simple lighthearted comedy. A lot of good laughing moments. ','2017-10-06T22:31:16.000Z','2017-10-06T22:31:16.000Z','2017-10-06T00:00:00.000Z'),

	(229,'movie',78,'/vfzE3pjE5G7G7kcZWrA3fnbZo7V.jpg','Blade Runner',1982,'blade-runner',false,9,'A compelling film','','2017-10-03T15:46:29.000Z','2017-10-03T15:46:29.000Z','2017-10-07T00:00:00.000Z'),

	(230,'movie',339403,'/dN9LbVNNZFITwfaRjl4tmwGWkRg.jpg','Baby Driver',2017,'baby-driver',false,8,'Entertaining','Great music and wonderful action scenes. A Little bit cheesy love story and some very weird character moral choices in some situations, but very highly enjoyable movie. ','2017-09-17T21:06:40.000Z','2017-09-17T21:06:40.000Z','2017-09-17T00:00:00.000Z'),

	(231,'movie',297762,'/gfJGlDaHuWimErCr5Ql0I8x9QSy.jpg','Wonder Woman',2017,'557',false,8,'Highly entertaining','Really entertaining movie. Great acting too.<br />
DC universe maybe still have its chance to shine.<br />
Acting and action are wonderfull. Story too. Only at the end is little bit too much CGI in last battle, but thought out the whole movie is a really great story.<br />
Really looking forward seeing more good new DC movies, <del>but really doubt</del> <i>I''m sure</i> that <a>"Justice League"</a> <del>will</del> <i>won''t</i> be anywhere close to this movies success and interest. <del>Time will show</del>. <i><strong>Update: </strong>I was fucking right - next movie is complete garbage.</i> ','2017-09-16T20:12:16.000Z','2017-09-16T20:12:16.000Z','2017-09-16T20:12:16.000Z'),

	(232,'movie',335988,'/s5HQf2Gb3lIO2cRcFwNL9sn1o1o.jpg','Transformers: The Last Knight',2017,'transformers-the-last-knight',false,1,'Just don''t....','The same as Fast and Furious. I just keep watching, but after the movie, I felt wrong for doing that.<br />
Stupid entertainment without any value whatsoever.<br />
They keep milking this cow, even it''s looks like it was dead for a while. They need to keep this franchise alone to rest.','2017-09-14T13:01:55.000Z','2017-09-14T13:01:55.000Z','2017-09-13T00:00:00.000Z'),

	(233,'movie',282035,'/zxkY8byBnCsXodEYpK8tmwEGXBI.jpg','The Mummy',2017,'the-mummy',false,1,'Horribly unnesesary reboot','What an unnecessary reboot of the original Mummy.<br />
I haven''t even finished watching the movie because of boredom.','2017-09-09T22:49:14.000Z','2017-09-09T22:49:14.000Z','2017-09-09T00:00:00.000Z'),

	(234,'movie',340837,'/d4fXuJS3zZcAZfz2HYDtnwqtnwn.jpg','A Cure for Wellness',2016,'a-cure-for-wellness',false,8,'Recommended','','2017-07-15T15:11:49.000Z','2017-07-15T15:11:49.000Z','2017-07-15T00:00:00.000Z'),

	(235,'movie',324849,'/snGwr2gag4Fcgx2OGmH9otl6ofW.jpg','The Lego Batman Movie',2017,'the-lego-batman-movie',false,5,'Bad','Disappointing. Far away from original Lego movie.','2017-07-02T16:38:10.000Z','2017-07-02T16:38:10.000Z','2017-07-02T00:00:00.000Z'),

	(236,'movie',324552,'/hXWBc0ioZP3cN4zCu6SN3YHXZVO.jpg','John Wick: Chapter 2',2017,'john-wick-chapter-2',false,8,'','Really enjoyable action movie. This is one of the movies franchises where at least they not shooting infinite bullets from guns, here every bullet pretty much counts and that is what stands out of other action shooting movies. Of course, some of the story details makes question how situation even can exist like this, but it''s entertaining and that is important. ','2017-05-30T17:21:15.000Z','2017-05-30T17:21:15.000Z','2017-05-30T17:21:15.000Z'),

	(237,'tv',46639,'/btwTe5cQbGWGOErBiRqnjNP9cJl.jpg','American Gods',2017,'american-gods-season-1',false,8,'Weird','','2017-05-11T10:13:28.000Z','2017-05-11T10:13:28.000Z','2017-04-15T00:00:00.000Z'),

	(238,'movie',70981,'/qsYQflQhOuhDpQ0W2aOcwqgDAeI.jpg','Prometheus',2012,'prometheus',false,3,'','Very weak story, with more questions and holes when answers. Some actions of people is very illogical. Only visually nice movie.','2017-05-01T22:42:30.000Z','2017-05-01T22:42:30.000Z','2017-05-01T22:42:30.000Z'),

	(239,'movie',10191,'/ygGmAO60t8GyqUo9xYeYxSZAR3b.jpg','How to Train Your Dragon',2010,'how-to-train-your-dragon',false,9,'Simple and really beautiful','Very enjoyable and fun animation. Sometimes cheese, but very watchable.','2017-03-14T22:22:05.000Z','2017-03-14T22:22:05.000Z','2017-03-14T22:22:05.000Z'),

	(240,'movie',297761,'/rbsm0i2q2uqlUSFgUAHq3xCUO4j.jpg','Suicide Squad',2016,'suicide-squad',false,3,'','It''s not completely disappointing as most other people says, but yes, movie is a mess. DC still can''t get to make a good movie. I enjoyed watching it once, but really don''t liked the villain. It was also too much main actors in movie you don''t give a shit, because they don''t show why you should be interested in them. Only Margot Robbie and Will Smith was suiting for characters they played. Joker was just a joke, even I really like Jared Leto as actor. ','2017-03-14T22:17:30.000Z','2017-03-14T22:17:30.000Z','2017-03-14T22:17:30.000Z'),

	(241,'movie',330459,'/5jX3p0apUG5bkMHtnKZch0xpkBS.jpg','Rogue One: A Star Wars Story',2016,'rogue-one',false,6,'Disposable entertain','This Star Wars spin-off movie it''s like it''s main characters, very disposable. The first half of movie is really boring, later then the action starts is good, but it ends very soon with everyone dying.','2017-03-12T20:44:10.000Z','2017-03-12T20:44:10.000Z','2017-03-12T20:44:10.000Z'),

	(242,'movie',2362,'/qNt29HzxwZ4jGTgSRxdA34ino9Q.jpg','Westworld',1973,'westworld',false,8,'','Really interesting story with good acting, only because it''s an old movie, I have a problem with pacing. But in general enjoyed it.<br />
HBO tv series <a href=''https://movies.juliuszlioba.com/movies-julius-watched-list/westworld-season-1/''>"Westworld"</a> is way better and more complex than some aspects discussed in this movie.','2017-01-12T15:11:26.000Z','2017-01-12T15:11:26.000Z','2017-01-12T15:11:26.000Z'),

	(243,'tv',66276,'/kO6vgNAZdntdoJ8KH9YOXzwFfSC.jpg','The Night Of',2016,'the-night-of',false,9,'','','2016-12-28T09:46:10.000Z','2016-12-28T09:46:10.000Z','2016-12-28T00:00:00.000Z'),

	(244,'movie',384798,'/xn6t1nYJaUMmudnHHiK390AORNu.jpg','Kill Command',2016,'kill-command',false,8,'','Surprisingly good movie with really great visual effects and simple story.','2016-08-13T20:46:37.000Z','2016-08-13T20:46:37.000Z','2016-08-13T20:46:37.000Z'),

	(245,'movie',137113,'/uUHvlkLavotfGsNtosDy8ShsIYF.jpg','Edge of Tomorrow',2014,'edge-of-tomorrow',false,10,'Perfect Sci-Fi Action Thriller','I love time travel movies, and this one is with pretty interesting story. Acting of Tom Cruise in movie is perfect too. ','2016-08-13T10:09:07.000Z','2016-08-13T10:09:07.000Z','2016-08-13T10:09:07.000Z'),

	(246,'movie',75780,'/zlyhKMi2aLk25nOHnNm43MpZMtQ.jpg','Jack Reacher',2012,'jack-reacher',false,8,'','I think Tom Cruise is best fit for this kind of role. Movie is not so bad. Enjoyed watching, but it feels more like generic Holywood tv movie. ','2016-08-12T23:22:02.000Z','2016-08-12T23:22:02.000Z','2016-08-12T23:22:02.000Z'),

	(247,'movie',49049,'/wLx65gtGVnUFCxceHWGszcruCZj.jpg','Dredd',2012,'dredd',false,10,'Perfect action movie','Just pure awesomeness. Nothing to add, just fun to watch. Perfect story, acting and visuals. ','2016-08-05T23:19:26.000Z','2016-08-05T23:19:26.000Z','2016-08-05T23:19:26.000Z'),

	(248,'movie',75174,'/a0Vt3wx8ciKmPt4iXPx9sH4HBVU.jpg','The Grey',2011,'the-grey',false,4,'','I like survival movies when it''s trying to show how hard is to survive in wild, but this one has some unbelievable stupid scenes what brings the watching experience down the toilet.','2016-06-13T10:37:06.000Z','2016-06-13T10:37:06.000Z','2016-06-13T10:37:06.000Z'),

	(249,'movie',76341,'/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg','Mad Max: Fury Road',2015,'mad-max-fury-road',false,10,'Spectacular','That''s one non-stop action packed crazy movie with very simple story. I loved it, it''s just insanely good. ','2016-06-12T13:20:21.000Z','2016-06-12T13:20:21.000Z','2016-06-12T13:20:21.000Z'),

	(250,'movie',11,'/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg','Star Wars',1977,'star-wars-episode-iv',false,7,'','Must have been great when it first time came out, but watching today it misses a lot of things what catches attention (maybe I''m just too young to understand old movies). ','2016-03-13T17:00:27.000Z','2016-03-13T17:00:27.000Z','2016-03-13T17:00:27.000Z'),

	(251,'movie',100402,'/5r1zWuzbsVAYSPzvCecAReGhN7k.jpg','Captain America: The Winter Soldier',2014,'captain-america-the-winter-soldier',false,9,'','','2014-04-19T18:23:41.000Z','2014-04-19T18:23:41.000Z','2014-04-19T18:23:41.000Z'),

	(252,'movie',10138,'/6WBeq4fCfn7AN0o21W9qNcRF2l9.jpg','Iron Man 2',2010,'iron-man-2',false,6,'','','2012-08-19T19:15:03.000Z','2012-08-19T19:15:03.000Z','2012-08-19T19:15:03.000Z'),

	(253,'movie',1724,'/odVVJrCOveHXCBc5Pf2k4XmOhIz.jpg','The Incredible Hulk',2008,'the-incredible-hulk',false,2,'I just don''t like Hulk','','2012-04-26T22:51:58.000Z','2012-04-26T22:51:58.000Z','2012-04-26T22:51:58.000Z'),

	(254,'movie',75612,'/2ncs7hqBsEjFMqt6Y7ShBCO9tWs.jpg','Oblivion',2013,'oblivion',false,9,'','I like Tom Cruise as an actor, and in this movie he shown himself as usual Tom Cruise role, but that what I liked in movie. Ending is weird, but still good to watch again. ','2017-04-12T20:38:13.000Z','2017-04-12T20:38:13.000Z','2017-04-12T20:38:13.000Z'),

	(255,'movie',198184,'/hpnuXlKKWznTgbheGe4iQXzkuwJ.jpg','Chappie',2015,'chappie',false,1,'Crappy','I would say "crappy" because after seen a trailer I thought it''s going to be awesome, but oh boy, I was disappointed. The story is horrible, acting is also shit. Hugh Jackman is playing stupid guy, Dev Patel is dislikable as in any other movie, and other actors is garbage. Not recommended at all. ','2017-03-14T20:19:17.000Z','2017-03-14T20:19:17.000Z','2017-03-14T20:19:17.000Z'),

	(256,'movie',9323,'/9gC88zYUBARRSThcG93MvW14sqx.jpg','Ghost in the Shell',1995,'ghost-in-the-shell',false,9,'','Great animation and really astounding philosophical story. I am interested to compare it with Hollywood''s live adaptation movie. ','2017-03-12T22:42:50.000Z','2017-03-12T22:42:50.000Z','2017-03-12T22:42:50.000Z'),

	(257,'movie',363676,'/r09ivJ1GGh5WArqRViRYDQLrTVG.jpg','Sully',2016,'sully',false,6,'','Haven''t expected much from the movie, but it surprisingly nice. Not the greatest performance of Tom Hanks. Enjoyable for one time.','2017-03-05T22:58:53.000Z','2017-03-05T22:58:53.000Z','2017-03-05T22:58:53.000Z'),

	(258,'movie',121856,'/kcVsrUyHfgcEb0M7HEt3XZI3tVd.jpg','Assassin''s Creed',2016,'assassins-creed',false,3,'Horrible abaptation','Beautiful movie, but story-wise is horrible compared to the computer game. It''s almost hardly anything explained, like director was expecting only video gamer who played game to watch it, but everyone who played game most like not watching movie in first place, while it has a lot of changed things. ','2017-03-05T22:47:30.000Z','2017-03-05T22:47:30.000Z','2017-03-05T22:47:30.000Z'),

	(259,'movie',49010,'/mKr2XAwJDLQR3hDFNoyHALMRspv.jpg','Hobo with a Shotgun',2011,'hobo-with-a-shotgun',false,4,'','It''s interesting grindhouse film, but I didn''t liked everything. ','2017-02-12T22:47:48.000Z','2017-02-12T22:47:48.000Z','2017-02-12T22:47:48.000Z'),

	(260,'movie',261392,'/bi2MCDYvrZQPf1uXyvfVYPE57Mz.jpg','American Ultra',2015,'american-ultra',false,1,'','Couldn''t agree more with Nirvan''s review :D<br />
Peace of garbage.','2016-08-12T10:21:08.000Z','2016-08-12T10:21:08.000Z','2016-08-12T10:21:08.000Z'),

	(261,'movie',245891,'/fZPSd91yGE9fCcCe6OoQr6E3Bev.jpg','John Wick',2014,'john-wick',false,8,'Great action movie','Headshot, headshot and another headshot. He''s amazing at saving bullets :D<br />
But the thing with the dog is just ridiculous.','2016-08-11T23:24:19.000Z','2016-08-11T23:24:19.000Z','2016-08-11T23:24:19.000Z'),

	(262,'movie',203801,'/zkacOORjKJxRswDurffyvkMwriS.jpg','The Man from U.N.C.L.E.',2015,'the-man-from-u-n-c-l-e',false,8,'','Easy movie about Spies. Fun and packed with action. Great to watch without any commitment at any time. ','2016-08-10T10:24:00.000Z','2016-08-10T10:24:00.000Z','2016-08-10T10:24:00.000Z'),

	(263,'movie',207703,'/ay7xwXn1G9fzX9TUBlkGA584rGi.jpg','Kingsman: The Secret Service',2014,'kingsman-the-secret-service',false,8,'','A surprisingly very cool movie, about secret spy organization. Colin Firth role in a movie is very much fitting. And just the scene in church makes movie super enjoyable to watch over and over again. ','2016-07-13T23:26:46.000Z','2016-07-13T23:26:46.000Z','2016-07-13T23:26:46.000Z'),

	(264,'movie',10679,'/hVDJM29BSbET4FzI24xLuWSmDUR.jpg','Iron Sky',2012,'iron-sky',false,3,'','','2016-05-10T10:52:04.000Z','2016-05-10T10:52:04.000Z','2016-05-10T10:52:04.000Z'),

	(265,'movie',99861,'/4ssDuvEDkSArWEdyBl2X5EHvYKU.jpg','Avengers: Age of Ultron',2015,'avengers-age-of-ultron',false,7,'','','2015-05-01T18:51:08.000Z','2015-05-01T18:51:08.000Z','2015-05-01T00:00:00.000Z'),

	(266,'movie',76338,'/wp6OxE4poJ4G7c0U2ZIXasTSMR7.jpg','Thor: The Dark World',2013,'thor-the-dark-world',false,4,'So forgettable','This one so far the worst movie in MCU. It''s so dark and uninspiring, that you simply forget very quickly what it''s even about.','2015-04-19T19:29:55.000Z','2015-04-19T19:29:55.000Z','2015-04-19T19:29:55.000Z'),

	(267,'movie',47964,'/evxtv4e8Amm436Y5rW16RkGu8pX.jpg','A Good Day to Die Hard',2013,'a-good-day-to-die-hard',false,5,'Pretty bad','','2014-05-10T14:11:47.000Z','2014-05-10T14:11:47.000Z','2014-05-10T14:11:47.000Z'),

	(268,'movie',68721,'/qhPtAc1TKbMPqNvcdXSOn9Bn7hZ.jpg','Iron Man 3',2013,'iron-man-3',false,7,'','','2014-04-19T19:26:00.000Z','2014-04-19T19:26:00.000Z','2014-04-19T19:26:00.000Z'),

	(269,'movie',1726,'/78lPtwv72eTNqFW9COBYI0dWDJa.jpg','Iron Man',2008,'iron-man',false,8,'Where the story began','First movie which sparked huge ambitious plan, and thanks to marvel studios they did really great job. This movie left wanting more and I can definitely say we got what we wanted for next decade.','2008-08-08T18:31:56.000Z','2008-08-08T18:31:56.000Z','2008-05-02T00:00:00.000Z'),

	(270,'movie',9473,'/tS0PedvA2mFO9VCHYwQpaU1K36U.jpg','South Park: Bigger, Longer & Uncut',1999,'south-park-bigger-longer-uncut-2',false,10,'','','2002-05-10T09:41:08.000Z','2002-05-10T09:41:08.000Z','2002-05-10T09:41:08.000Z'),

	(271,'movie',553839,'/omEd5EwOo3LJlGtiiYwEZeCqM3E.jpg','Saga of Tanya the Evil: The Movie',2019,'saga-of-tanya-the-evil-the-movie',false,10,'Best military anime!','','2021-09-30T19:34:26.442Z','2021-11-01T22:59:21.267Z','2021-09-30T19:34:26.442Z'),

	(272,'tv',69346,'/A3x9RnDkzVUeRdqZFThGeO7vD45.jpg','Saga of Tanya the Evil',2017,'saga-of-tanya-the-evil',true,10,'Hitler in a little girls body?','Imagine a horrible person with no sympathy for people, after his death meets "God being" and simply insults him, so as punishment he gets reincarnated for the last time as a girl in a similar world to ours just before WW1 in Germany like country. Everything what happens next is just simply spectacular to watch and some of the actions are simply on the "Hitler" level brutality.','2021-09-29T20:22:18.728Z','2021-12-11T16:23:20.456Z','2021-09-29T20:22:18.728Z'),

	(273,'tv',105476,'/k71BPHfda6jQS350IoJSkKkGm8A.jpg','The Dungeon of Black Company',2021,'the-dungeon-of-black-company',true,5,'Interesting take on Isekai','','2021-09-24T17:30:28.384Z','2021-11-02T13:51:51.394Z','2021-09-24T17:30:28.384Z'),

	(274,'tv',111819,'/oGTihBVxHROSWa1WJnireCbl0KQ.jpg','Tsukimichi -Moonlit Fantasy-',2021,'tsukimichi-moonlit-fantasy',true,7,'Just fine Isekai','','2021-09-22T16:53:31.189Z','2021-11-02T13:51:32.512Z','2021-09-22T16:53:31.189Z'),

	(275,'movie',615457,'/oBgWY00bEFeZ9N25wWVyuQddbAo.jpg','Nobody',2021,'nobody',false,8,'A bit like John Wick','','2021-08-08T19:26:21.720Z','2021-08-08T19:26:21.720Z','2021-08-08T19:26:21.720Z'),

	(276,'tv',94904,'/xUnzZYwjnd8rOSRXo6u9k8HikWW.jpg','My Next Life as a Villainess: All Routes Lead to Doom!',2020,'my-next-life-as-a-villainess-all-routes-lead-to-doom',true,9,'Wholosome 👸🏼','','2021-06-30T06:20:48.057Z','2022-08-06T10:59:23.868Z','2021-06-30T06:20:48.057Z'),

	(277,'movie',501929,'/1RjkFdP1pQrqQ3DYKuxR9JnQ5JO.jpg','The Mitchells vs. The Machines',2021,'the-mitchells-vs-the-machines',false,9,'Hilarious','','2021-05-04T20:28:35.992Z','2021-05-04T20:28:44.964Z','2021-05-04T20:28:35.992Z'),

	(278,'tv',45807,'/kzPbvHs9qISUPSQUbqnLdaiJh8E.jpg','Kokoro Connect',2012,'kokoro-connect',true,10,'Unexpected find','What would you do if you start unexpectedly without any control swap bodies with your friends? Great story premise and how the story unfolds is just amazing to watch. The best part of the series is writing, while it''s very smartly written and told.','2021-05-03T07:04:59.687Z','2021-11-02T15:06:23.568Z','2021-05-03T07:04:59.687Z'),

	(279,'tv',116725,'/nJnatRZUXAS6I5MpBaBO5T1W8Ca.jpg','Vivy -Fluorite Eye''s Song-',2021,'vivy-fluorite-eyes-song',true,10,'Masterpiece on another level','Sci Fi about Ai with great attention to details','2021-05-01T20:07:59.745Z','2022-02-12T17:59:16.355Z','2021-05-01T20:07:59.745Z'),

	(280,'movie',438631,'/d5NXSklXo0qyIYkgV94XAgMIckC.jpg','Dune',2021,'dune',false,8,'Good','It''s good. But can''t comment on the story, while it''s only the first half.','2021-10-31T10:51:26.404Z','2021-11-02T13:48:29.085Z','2021-10-22T22:00:00.000Z'),

	(281,'tv',88803,'/vUHlpA5c1NXkds59reY3HMb4Abs.jpg','Vinland Saga',2019,'vinland-saga',true,10,'Wonderful anime','Vikings in anime form. One of the best action-packed stories with a well-told story about the protagonist''s life from childhood to adulthood, becoming in the image of the father.','2021-10-27T06:26:04.219Z','2021-11-04T15:55:39.111Z','2021-10-27T06:26:04.219Z'),

	(282,'tv',88396,'/6kbAMLteGO8yyewYau6bJ683sw7.jpg','The Falcon and the Winter Soldier',2021,'the-falcon-and-the-winter-soldier',false,7,'Short, but fine','','2021-04-28T10:48:42.965Z','2022-02-13T12:05:48.663Z','2021-04-28T10:48:42.965Z'),

	(283,'tv',80752,'/A6dnHWe8YYcoFBHzP7T6WPP4b6F.jpg','See',2019,'see',false,9,'Spectacular when fighting','The story concept is very original - in the post-apocalyptic world whole humanity went blind - and starting with that, a great story is told about this world and its struggles. What the most spectacular thing obaut the show is fighting and battles between blind people.','2021-10-20T12:21:50.286Z','2021-11-04T22:00:05.305Z','2021-10-20T12:21:50.286Z'),

	(284,'movie',624812,'/vtYC1vUveZbuiIGwsuqubNxeCk4.jpg','Love Me, Love Me Not',2020,'love-me-love-me-not',true,9,'Complicated and true','','2021-05-23T16:46:46.486Z','2021-11-03T13:17:06.999Z','2021-05-29T22:00:00.000Z'),

	(285,'movie',666243,'/3sLz2yv6vBDWqBbd8rdnNeoJ2kJ.jpg','The Witcher: Nightmare of the Wolf',2021,'the-witcher-nightmare-of-the-wolf',false,9,'Great if you love the Witcher','','2021-08-29T14:49:41.534Z','2021-11-01T02:10:39.397Z','2021-08-29T14:49:41.534Z'),

	(286,'movie',559907,'/if4hw3Ou5Sav9Em7WWHj66mnywp.jpg','The Green Knight',2021,'the-green-knight',false,7,'Very vague','Beautiful, but why the fuck so vague?','2021-09-15T08:06:39.802Z','2021-11-01T01:56:49.660Z','2021-09-15T08:06:39.802Z'),

	(287,'movie',633515,'/39MVquMq8CFKm51aNGmSOwCw6B7.jpg','The Forgotten Battle',2020,'the-forgotten-battle',false,7,'Great war movie','It''s not as spectacular as Dunkirk or 1917, but it tells the story well and the cinematography is great.','2021-10-17T14:52:29.102Z','2021-11-02T13:34:13.823Z','2021-10-17T14:52:29.102Z'),

	(288,'tv',95557,'/yDWJYRAwMNKbIYT8ZB33qy84uzO.jpg','Invincible',2021,'invincible',false,8,'Great','It definitely goes over the limit of the shown violence and gore in animation, but the thing that makes stand out from other "over top violence" shows is a fitting story and amazing voice acting. Interesting to see how far it will go and what comes next.','2021-04-02T21:01:02.000Z','2021-05-06T07:03:08.526Z','2021-04-02T21:01:02.000Z'),

	(289,'tv',97617,'/xBNR7V4s5b0qQfRCiyEvIC5PS6v.jpg','The Misfit of Demon King Academy',2020,'the-misfit-of-demon-king-academy',true,7,'Strength of anime - it''s retarded','It''s so stupid and bad what makes this anime great and entertaining. ','2021-03-23T07:24:15.000Z','2021-11-02T15:08:18.644Z','2021-03-23T07:24:15.000Z'),

	(290,'movie',522681,'/8Ls1tZ6qjGzfGHjBB7ihOnf7f0b.jpg','Escape Room',2019,'escape-room',false,6,'Pointless','','2021-02-27T22:09:22.000Z','2021-05-04T09:40:01.454Z','2021-02-27T22:09:22.000Z'),

	(291,'tv',61223,'/3c5BIEfAhTCWrIi4C8WMuwOl6bX.jpg','Akame ga Kill!',2014,'akame-ga-kill',true,7,'Entertaining, but way too rushed','Series have very bad character development, and too much killing off the main characters in the story, without properly flushing them out to care.','2021-02-14T20:31:40.000Z','2021-02-14T20:31:40.000Z','2021-02-14T20:31:40.000Z'),

	(292,'tv',80671,'/sgwwEGvNy7vCJN8IVnl44tuVlMZ.jpg','Cells at Work!',2018,'cells-at-work',true,8,'Very cool and educational','','2021-02-07T16:05:41.000Z','2021-11-02T15:08:50.359Z','2021-02-07T16:05:41.000Z'),

	(293,'tv',72429,'/k6c81W7DFuKdSx5jtfUj7X8Z6NV.jpg','Unit 42',2017,'unit-42',false,9,'Very interesting Crime Drama','Belgian Cyber-crime police unit works on different cases. Great stories, great acting.','2021-01-09T22:02:46.000Z','2021-01-09T22:02:46.000Z','2021-01-09T22:02:46.000Z'),

	(294,'tv',110316,'/20mOwAAPwZ1vLQkw0fvuQHiG7bO.jpg','Alice in Borderland',2020,'alice-in-borderland',false,9,'Great game','','2020-12-21T14:17:09.000Z','2020-12-21T14:17:09.000Z','2020-12-21T14:17:09.000Z'),

	(295,'tv',82739,'/cU4jHfo1Q9AEPnFqFqtuSA74gdi.jpg','Rascal Does Not Dream of Bunny Girl Senpai',2018,'rascal-does-not-dream-of-bunny-girl-senpai',true,8,'Good story','','2020-11-29T19:27:29.000Z','2021-11-02T15:09:10.189Z','2020-11-29T19:27:29.000Z'),

	(296,'tv',44684,'/qmi1VpOvPFRHg02fbLuc3pVrMbt.jpg','Nichijou: My Ordinary Life',2011,'nichijou-my-ordinary-life',true,8,'Cute','In the beginning, I thought it''s a pointless series, while there is no story arc, just random scenes, but later it grew up on me and was entertaining to watch. And I really loved the art style of series - very cute and beautiful.','2020-10-30T21:55:54.000Z','2021-11-02T15:10:08.396Z','2020-10-30T21:55:54.000Z'),

	(297,'tv',46195,'/gUraB6perKNTXBHV4fRhnYUW6cJ.jpg','Monogatari',2009,'monogatari',true,10,'Very stylish, good, bad and weird','','2020-10-18T21:04:15.000Z','2021-11-02T15:10:05.799Z','2020-10-18T21:04:15.000Z'),

	(298,'tv',65942,'/5DZa4aDH5MZGcZDf8ouTxm2kH2Y.jpg','Re:ZERO -Starting Life in Another World-',2016,'rezero-starting-life-in-another-world',true,10,'Love it','I loved the movie "Edge of Tomorrow" and any other movie or series that tries to show similar mechanics of reliving day after day is worth to try watching. And this anime showed that it can be done in the anime story. I''m not a huge fan of deep fantasy stories, but after seeing this series I might need to change my interests, while this story makes me badly want more. The story starts simply as its main character gets summoned from our world to the magical world, and as the story progresses, it gets way more philosophical, psychological and even mythological, showing what toll it can take on a person''s mind reliving the same previous point in time as you get back after dying with remembering everything that you did before. So far after 1 and a half-season, it stands very strongly on one of my favourites and I imagine it will get even more interesting as it will continue releasing new episodes.','2020-10-04T22:57:00.000Z','2022-07-12T13:52:57.518Z','2020-10-04T22:57:00.000Z'),

	(299,'movie',49051,'/yHA9Fc37VmpUA5UncTxxo3rTGVA.jpg','The Hobbit: An Unexpected Journey',2012,'the-hobbit-an-unexpected-journey',false,9,'A bit long beginning','','2020-09-22T10:35:13.000Z','2020-09-22T10:35:13.000Z','2020-09-22T10:35:13.000Z'),

	(300,'movie',337401,'/aKx1ARwG55zZ0GpRvU2WrGrCG9o.jpg','Mulan',2020,'mulan',false,4,'Bad','Story is like animation, so nothing new or surprising, only they removed soul from it, so it feels empty.','2020-09-06T14:01:05.000Z','2020-09-06T14:01:05.000Z','2020-09-06T14:01:05.000Z'),

	(301,'tv',82816,'/fz7bdjxPColvEWCGr5Kiclzc86d.jpg','Lovecraft Country',2020,'lovecraft-country',false,5,'Wtf?','Started normal, but quickly went to "wtf" territory. Let''s see how it unfolds.','2020-08-26T15:13:19.000Z','2022-02-13T12:09:01.450Z','2020-08-26T15:13:19.000Z'),

	(302,'movie',1495,'/3fQJxq26GU9a4dCQywZ6r8vgYKS.jpg','Kingdom of Heaven',2005,'kingdom-of-heaven',false,8,'Fine','','2020-08-15T11:53:58.000Z','2020-08-15T11:53:58.000Z','2020-08-15T11:53:58.000Z'),

	(303,'tv',87689,'/77OM9jMJ8nglaolHLwrAW7kvadV.jpg','Warrior Nun',2020,'warrior-nun',false,8,'Nuns as a warriors :D','secret nuns warriors keeps peace on earth.<br />
What do you need more? <br />
Weirdly entertaining as hell, even is complete nonsense when you summarize the story.','2020-08-12T18:16:06.000Z','2020-08-12T18:16:06.000Z','2020-08-12T18:16:06.000Z'),

	(304,'movie',514207,'/rpqfpSglhDpwihzsLaoketuYKbd.jpg','Invasion',2020,'invasion',false,7,'Nice meaningless watch','Sequel as great as first movie.','2020-07-11T17:42:50.000Z','2020-07-11T17:42:50.000Z','2020-07-11T17:42:50.000Z'),

	(305,'tv',77400,'/tLrRQiJfkqpldyIYuCNTMmR7QJv.jpg','The Innocents',2018,'the-innocents',false,8,'Interesting concept about shape shifting','Original story about girl who discovers her unusual abilities, and it''s not a super hero or so series. It''s takes perspective of what would take normal person in real life to deal with unknown and unwanted special abilities.<br />
Sadly TV series didn''t had chance to mature further, while it was cancelled after 1 season.','2020-06-19T22:00:40.000Z','2020-06-19T22:00:40.000Z','2020-06-19T22:00:40.000Z'),

	(306,'movie',475430,'/uHxOl5QC45lxWZvNU56a7m49DSp.jpg','Artemis Fowl',2020,'artemis-fowl',false,1,'It''s horrible','I couldn''t finish watching this crap. Ridiculous story, bad acting, actually nothing done right in the first place.','2020-06-12T20:13:49.000Z','2020-06-12T20:13:49.000Z','2020-06-12T20:13:49.000Z'),

	(307,'tv',100897,'/4OOhHLZeTtNji4V6ZRYHQSvjlZc.jpg','Love 101',2020,'love-101',false,8,'Something Turkish?','Pretty good TV series, but where is the ending? What is conclusion, what messege it wanted to send? Or it''s Turkish cliffhanger style for setting up for next season, if it ever will be made at all ','2020-06-07T10:21:38.000Z','2020-06-07T10:21:38.000Z','2020-06-07T10:21:38.000Z'),

	(308,'tv',66788,'/nel144y4dIOdFFid6twN5mAX9Yd.jpg','13 Reasons Why',2018,'13-reasons-why-season-2',false,9,'Great story. Sometimes even shocking how far they went with it.','1 &amp; 2 season:<br />
It very controversial Tv Series. And I love what Netflix haven''t scared about that.<br />
I was shockingly surprised about the first season, and now it''s follow up of all what happened in that season.<br />
It continues to tell a story about Hannah Baker and trying to fight for a justice for what brought her to take her life.<br />
But it''s isn''t that simple, and this Series knows how to bring new twists and new secrets in the story.<br />
I''m just a little bit disappointed and a bit glad about the ending. There was a hint in the first season''s end that second seasons'' topic could involve school shooting, but it is also relief what it didn''t happen, especially after over and over again repeating situation in USA school''s tragedies.<br />
3 season:<br />
Change the story in new direction was great choise. Murder mistery. Story keeps you looking for answers, but some inconsistency and unnecessary things begings destroying tv series. Still good but if it keeps like this, not for long.<br />
4 Season (final)<br />
It started a bit disappointing, but in middle managed to get very interesting, pushing story to new heights I was not expected someone to do that, and Finale was wonderful for this kind of series. In general lot''s of drama and really well written story, even sometimes was a bit cheesy or boring, nevertheless it kept pushing some topics to extreme, like no one else done before, that is why give high score for series.','2020-06-06T15:00:34.000Z','2020-06-06T15:00:34.000Z','2018-05-22T00:00:00.000Z'),

	(309,'tv',85922,'/zgu3p4NvisS8CI68cUfBKbvAvu8.jpg','Space Force',2020,'space-force',false,6,'Hoped for something better','At best it''s just fine TV series. Have some good laughs, but everything else is pretty boring. ','2020-05-29T23:30:20.000Z','2020-05-29T23:30:20.000Z','2020-05-29T23:30:20.000Z'),

	(310,'tv',90755,'/Muev370hN3vdjGsC1ip1HcWqbT.jpg','The I-Land',2019,'the-i-land',false,4,'Two first episodes was cool, but after is just crap','','2020-05-24T16:52:35.000Z','2020-05-24T16:52:35.000Z','2020-05-24T16:52:35.000Z'),

	(311,'movie',581387,'/zoeKREZ2IdAUnXISYCS0E6H5BVh.jpg','Ashfall',2019,'ashfall',false,9,'Has Hollywood soul, but makes it better','It has everything what usual Hollywood movie about disasters has, but it manages to surpass that without going too cheesy. ','2020-05-22T13:02:51.000Z','2020-05-22T13:02:51.000Z','2020-05-22T13:02:51.000Z'),

	(312,'tv',8592,'/spuesthssmjABJUPYWJ7i1fuz8g.jpg','Parks and Recreation',2009,'parks-and-recreation',false,6,'It''s fine at best',' I''m very confused why some people call it better than The Office.<br />
It has something like The Office, funny and heartwarming sometimes, but can''t come even close, especially last season felt very rushed and with not enough drama to keep going, so it went down fast.','2020-05-04T23:00:13.000Z','2020-05-04T23:00:13.000Z','2020-05-04T23:00:13.000Z'),

	(313,'tv',99581,'/23lbOgje3fggsB8jPf2HnUgHM0y.jpg','Unorthodox',2020,'unorthodox',false,8,'Deep insight in Jewish community ','','2020-04-01T08:43:08.000Z','2020-04-01T08:43:08.000Z','2020-04-01T08:43:08.000Z'),

	(314,'movie',457335,'/uSO5koo1Af2iBEUkfYt6bqsy7Vr.jpg','Guns Akimbo',2020,'guns-akimbo',false,9,'Harry Potter with guns!','','2020-03-01T14:41:06.000Z','2020-03-01T14:41:06.000Z','2020-03-01T00:00:00.000Z'),

	(315,'tv',68421,'/pZg2NUDPJA54AmDs1Y1ZLizBrpd.jpg','Altered Carbon',2018,'altered-carbon',false,9,'Highly enjoyable','Really great sci-fi series. Realy beautiful and without any boundaries. Lots of nudity. Interesting, but maybe a little bit too fast moving the story and lots of plot twists along. Great action sequences. Everything in one basket.','2020-02-29T15:27:34.000Z','2020-02-29T15:27:34.000Z','2018-02-11T00:00:00.000Z'),

	(316,'tv',80968,'/aXwMx8OvRFMfI1RmkbJm6Bq1jVg.jpg','Narcos: Mexico',2018,'narcos-mexico',false,8,'Great','','2020-02-26T12:00:41.000Z','2020-02-26T12:00:41.000Z','2018-12-12T00:00:00.000Z'),

	(317,'tv',84661,'/aMiPwPQjQI1EZN3xP2V0sSU37dc.jpg','The Outsider',2020,'the-outsider',false,7,'','','2020-02-03T08:28:23.000Z','2020-02-03T08:28:23.000Z','2020-02-03T08:28:23.000Z'),

	(318,'movie',530915,'/AuGiPiGMYMkSosOJ3BQjDEAiwtO.jpg','1917',2019,'1917',false,8,'Good, not pretty.','There is a lot of movies about WW2, but this one is about WW1 and it''s shows really great picture of war in general.<br />
It''s really not pretty and blind unknown of the future ahead, while you can die any moment.','2020-01-19T20:22:44.000Z','2020-01-19T20:22:44.000Z','2020-01-19T20:22:44.000Z'),

	(319,'tv',81356,'/4Bph0hhnDH6dpc0SZIV522bLm4P.jpg','Sex Education',2019,'sex-education',false,10,'Super funny','Do not remember last time I was so much entertained by TV series. It simply wonderful.<br />
School life, the hilarious premise of the story and very smart portray of the discover and dealing with sexuality. It picks up most of the problems what you could expect and solves it with humour and clever message behind.<br />
This Series is also very well portrays homosexuality (because it''s the 21st century and must include that) in a way it''s not so cheesy or awkward.','2020-01-17T22:17:20.000Z','2020-01-17T22:17:20.000Z','2020-01-17T22:17:20.000Z'),

	(320,'movie',453405,'/uTALxjQU8e1lhmNjP9nnJ3t2pRU.jpg','Gemini Man',2019,'gemini-man',false,6,'Not as bad, but I see why it flopped hard','','2019-12-11T20:19:57.000Z','2019-12-11T20:19:57.000Z','2019-12-11T20:19:57.000Z'),

	(321,'movie',423204,'/fapXd3v9qTcNBTm39ZC4KUVQDNf.jpg','Angel Has Fallen',2019,'angel-has-fallen',false,6,'Good action, poor story','','2019-12-05T10:19:29.000Z','2019-12-05T10:19:29.000Z','2019-12-05T10:19:29.000Z'),

	(322,'movie',466272,'/8j58iEBw9pOXFD2L0nt0ZXeHviB.jpg','Once Upon a Time&#8230; in Hollywood',2019,'once-upon-a-time-in-hollywood',false,7,'Most disappointing Tarantino movie','','2019-11-22T21:57:51.000Z','2019-11-22T21:57:51.000Z','2019-11-22T00:00:00.000Z'),

	(323,'movie',561,'/vPYgvd2MwHlxTamAOjwVQp4qs1W.jpg','Constantine',2005,'constantine',false,4,'Not so great','','2019-11-17T13:29:10.000Z','2019-11-17T13:29:10.000Z','2019-11-17T13:29:10.000Z'),

	(324,'tv',94660,'/28FYDS4KgPNBd4laI5JhJORjONq.jpg','We Are the Wave',2019,'we-are-the-wave',false,8,'Bit cheesy, but damm enjoyable','','2019-11-09T17:51:33.000Z','2019-11-09T17:51:33.000Z','2019-11-09T17:51:33.000Z'),

	(325,'movie',454640,'/ebe8hJRCwdflNQbUjRrfmqtUiNi.jpg','The Angry Birds Movie 2',2019,'the-angry-birds-movie-2',false,2,'I''m asking myself why I have watched this','','2019-10-31T21:43:09.000Z','2019-10-31T21:43:09.000Z','2019-10-31T00:00:00.000Z'),

	(326,'movie',475557,'/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg','Joker',2019,'joker',false,8,'When life is a joke','I was looking to see this movie since the first trailer and I was not disappointed. Dark and gritty story about one of the most iconic villains in comics world, but even then everything is great with a movie, something is left missing, like what movie is trying to say. Maybe it''s purposely left for interpretation and with no resolution.','2019-10-27T19:03:28.000Z','2019-10-27T19:03:28.000Z','2019-10-27T00:00:00.000Z'),

	(327,'movie',420818,'/2bXbqYdUdNVa8VIWXVfclP2ICtT.jpg','The Lion King',2019,'the-lion-king',false,8,'Just better graphics and fewer emotions','It''s exactly shot by shot copy or original animation, with little bit too much realism in animals, so it makes way less more expressive. But from perspective of Computer graphics is phenomenal.','2019-10-12T18:42:22.000Z','2019-10-12T18:42:22.000Z','2019-10-12T18:42:22.000Z'),

	(328,'movie',530385,'/7LEI8ulZzO5gy9Ww2NVCrKmHeDZ.jpg','Midsommar',2019,'midsommar',false,10,'Diabolically insane','Man...... this movie is fucked up on so many levels, that it keeps you intrigued till last minute. It''s simply something insane. Definitely recommended to see.','2019-09-25T20:16:32.000Z','2019-09-25T20:16:32.000Z','2019-09-25T20:16:32.000Z'),

	(329,'movie',73,'/c2gsmSQ2Cqv8zosqKOCwRS0GFBS.jpg','American History X',1998,'american-history-x',false,8,'Good','','2019-09-07T20:39:40.000Z','2019-09-07T20:39:40.000Z','2019-09-07T20:39:40.000Z'),

	(330,'movie',420817,'/3iYQTLGoy7QnjcUYRJy4YrAgGvp.jpg','Aladdin',2019,'aladdin',false,5,'I haven''t seen original animation','Just fine.','2019-08-11T20:42:28.000Z','2019-08-11T20:42:28.000Z','2019-08-11T20:42:28.000Z'),

	(331,'tv',79240,'/dD3HcMczLC9wNvfNzx4pZVyl6q8.jpg','Swamp Thing',2019,'swamp-thing',false,5,'Started strong, but quickly run out of interest','Something surprisingly good from DC in recent years. But gets boring in the end of the season. ','2019-07-15T13:01:46.000Z','2019-07-15T13:01:46.000Z','2019-07-15T13:01:46.000Z'),

	(332,'movie',37686,'/qsY0IdJCfeNBprlqIHlMBKYSNyp.jpg','Super 8',2011,'super-8',false,6,'','','2019-05-22T06:30:05.000Z','2019-05-22T06:30:05.000Z','2019-05-22T06:30:05.000Z'),

	(333,'movie',428078,'/iteUvQKCW0EqNQrIVzZGJntYq9s.jpg','Mortal Engines',2018,'mortal-engines',false,1,'Big pile of shit','Ridiculously bad story with unlikable forgettable characters. ','2019-04-28T09:22:05.000Z','2019-04-28T09:22:05.000Z','2019-04-27T00:00:00.000Z'),

	(334,'tv',75006,'/uYHdIs5O8tiU5p6MvUPd2jElOH6.jpg','The Umbrella Academy',2019,'the-umbrella-academy',false,8,'Amazing','','2019-02-28T20:27:30.000Z','2022-06-24T19:15:56.284Z','2022-06-23T22:00:00.000Z'),

	(335,'movie',438799,'/l76Rgp32z2UxjULApxGXAPpYdAP.jpg','Overlord',2018,'overlord-2',false,6,'Average and brainless','Nazis, human experimentation.... how not to like it. It''s Little bit like The Wolfenstein game, but with less zombies and not so serious.','2019-02-20T10:40:12.000Z','2019-02-20T10:40:12.000Z','2019-02-16T00:00:00.000Z'),

	(336,'tv',93405,'/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg','Squid Game',2021,'squid-game',false,8,'Overhyped? A little bit yes','Would be perfect but from the 7th episode quality dropped and ended just ok.','2021-10-07T21:15:02.786Z','2021-11-04T22:20:41.404Z','2021-09-28T22:00:00.000Z'),

	(337,'movie',504253,'/vHdVU0HyyB6k6kuYt8qjwTz9one.jpg','I Want to Eat Your Pancreas',2018,'i-want-to-eat-your-pancreas',true,9,'From the beginning you know it will end sad 😭 ','','2021-09-27T20:43:01.578Z','2022-02-12T18:01:34.306Z','2021-09-27T20:43:01.578Z'),

	(338,'tv',105556,'/dHSRVAi83iapl4yazkPiyv3atQZ.jpg','Don''t Toy With Me, Miss Nagatoro',2021,'dont-toy-with-me-miss-nagatoro',true,9,'Perfect adaptation of manga','','2021-06-26T16:44:27.836Z','2021-11-02T15:05:35.805Z','2021-06-26T16:44:27.836Z'),

	(339,'movie',508943,'/7rhzEufovmmUqVjcbzMHTBQ2SCG.jpg','Luca',2021,'luca',false,8,'Usual Pixar 🐟','','2021-06-25T19:18:50.529Z','2021-06-25T19:22:32.074Z','2021-06-25T19:18:50.529Z'),

	(340,'tv',115236,'/mPbvla7nfhpfILvJhmbeKGpVYwu.jpg','The Saint''s Magic Power Is Omnipotent',2021,'the-saints-magic-power-is-omnipotent',true,8,'Girlish Isekai 😸','','2021-06-22T18:11:45.308Z','2021-11-02T15:05:41.596Z','2021-06-22T18:11:45.308Z'),

	(341,'movie',149,'/5KlRFKKSbyCiyYpZSS3A6G5bW0K.jpg','Akira',1988,'akira',true,7,'Too old for me','I needed to see it 10-15 years ago than maybe it would have been a masterpiece, but today it''s just fine. Visually it''s impressive as you think it was made in 1988, especially environments and action, but I just can''t stand how atrociously bad characters design look, it''s ugly as fuck.','2021-05-02T18:58:22.700Z','2021-11-02T15:06:31.449Z','2021-05-02T18:58:22.700Z'),

	(342,'tv',120168,'/o7uk5ChRt3quPIv8PcvPfzyXdMw.jpg','Who Killed Sara?',2021,'who-killed-sara',false,6,'Pretty generic revenge story','','2021-05-01T11:30:54.434Z','2021-05-03T07:01:46.752Z','2021-05-01T11:30:54.434Z'),

	(343,'movie',559581,'/yOscLK7KzEPDdi1P8RmevGIjOSp.jpg','Stowaway',2021,'stowaway',false,7,'Classical dilemma of who lives and who dies','','2021-04-24T20:07:26.626Z','2021-04-24T20:08:38.935Z','2021-04-24T20:07:26.626Z'),

	(344,'tv',96402,'/eKr4p1jBL081BwqWJ1zywtJIqMF.jpg','BOFURI: I Don’t Want to Get Hurt, so I’ll Max Out My Defense.',2020,'bofuri-i-dont-want-to-get-hurt-so-ill-max-out-my-defense',true,7,'Girlish take on Real-Dive RPG','','2021-07-27T08:00:59.327Z','2021-11-02T15:05:05.603Z','2021-07-27T08:00:59.327Z'),

	(345,'movie',463319,'/qVXFyASEt1kLpZv9EYze0S0mZe4.jpg','Shadow',2018,'shadow',false,7,'Beautiful but a bit lame','','2021-06-22T06:36:31.891Z','2021-06-22T06:36:31.891Z','2021-06-22T06:36:31.891Z'),

	(346,'tv',100565,'/96mUvRlJBYOMBdbn30wtoh7QrpY.jpg','86: Eighty-Six',2021,'86-eighty-six',true,10,'Pretty heavy','In one episode you can go from hyped up from battle to crying of whats happening. Really well though out story with twist all the way.','2021-05-03T07:02:22.034Z','2022-07-12T13:59:16.736Z','2022-03-18T23:00:00.000Z'),

	(347,'tv',93256,'/6cmcSIgToQhQ5BrmNYcbRQFSvHK.jpg','Cautious Hero: The Hero Is Overpowered but Overly Cautious',2019,'cautious-hero-the-hero-is-overpowered-but-overly-cautious',true,9,'Funny Isekai','It''s hilarious. Comedy reminds me of Konosuba. It''s a typical Isekai scenario about an overpowered protagonist with RPG game elements. ','2021-10-31T10:51:26.404Z','2021-11-04T13:33:42.780Z','2021-10-31T10:51:26.404Z'),

	(348,'tv',61423,'/dEiFt6ye2SddARtoXEiNIx8KUrv.jpg','When Supernatural Battles Became Commonplace',2014,'when-supernatural-battles-became-commonplace',true,8,'Funny story','Really funny story, but sadly no second season in sight.','2021-09-06T10:49:32.261Z','2021-11-02T15:04:55.836Z','2021-09-06T10:49:32.261Z'),

	(349,'movie',637649,'/YxopfHpsCV1oF8CZaL4M3Eodqa.jpg','Wrath of Man',2021,'wrath-of-man',false,9,'Entertaining','','2021-06-02T10:17:56.532Z','2021-06-02T10:17:56.532Z','2021-06-02T10:17:56.532Z'),

	(350,'movie',219250,'/vYfuVYLjVCgf09QdJIognRmGH6Z.jpg','A Certain Magical Index: The Miracle of Endymion',2013,'a-certain-magical-index-the-miracle-of-endymion',false,9,'Beautiful, entertaining and just what you expect','After 5 seasons, the quality of the animation is getting better and better. The story keeps the same rules of an established deep world of magic and science, and as always journey makes some very weird or questionable turns, but that what makes everything exciting.
And as always the best way to deal with any problem is punch in the face.','2021-05-04T09:35:07.643Z','2021-11-02T15:06:20.068Z','2021-05-04T09:35:07.643Z'),

	(351,'movie',503736,'/x3taBaWfRzw1NIKhEPpKPwKBAOC.jpg','Army of the Dead',2021,'army-of-the-dead',false,7,'Decent nonsense','','2021-05-22T11:41:37.778Z','2021-05-22T11:41:37.778Z','2021-05-22T11:41:37.778Z'),

	(352,'tv',30977,'/dZt1dqw0K4JGhwcqTh8yExHYK9w.jpg','A Certain Scientific Railgun',2009,'a-certain-scientific-railgun',true,9,'Great!','Way better than original. The main characters and character building is just perfect. Second season repeats some same story elements from original "A Certain Magical Index", but with huge improvements - visually and storywise. And the third season just adds even more greatness. Wonderful show.','2021-04-02T21:01:40.000Z','2021-11-02T15:06:43.704Z','2021-04-02T21:01:40.000Z'),

	(353,'tv',30980,'/v3Ka0J3iMte50oiH4cmXPISM3rm.jpg','A Certain Magical Index',2008,'a-certain-magical-index',true,8,'Good, but spin off "Railgun" is way better','S01 & S02 was pretty good, with nicely progressing story and so, but S03 is impossible to watch due to such a rushed story, that it makes no sense.','2021-04-02T21:01:21.000Z','2021-11-02T15:06:47.990Z','2021-04-02T21:01:21.000Z'),

	(354,'movie',438740,'/s2ktgF2ze4aVt9bXBUvxFJllqyd.jpg','Salyut-7',2017,'salyut-7',false,8,'Interesting story','','2021-03-20T17:04:42.000Z','2021-03-20T17:04:42.000Z','2021-03-20T17:04:42.000Z'),

	(355,'tv',94664,'/1mFnzilCyj9Coa9jbN8vFYLEZdW.jpg','Mushoku Tensei: Jobless Reincarnation',2021,'mushoku-tensei-jobless-reincarnation',true,10,'Perfect in everything','Grandfather of Modern Isekai.
Masterpiece, with reason to be, while storywise it stands out from any other Isekai series by telling the story so smartly in such a way it feels believable. Every main character is complex with it''s own motivation and view of the world, so you can''t simply judge just from first impressions and need time to learn about them. But the most shocking thing is details and love from creators and artists to everything you see in this new magical world they tell you about.','2021-03-11T07:34:52.000Z','2021-12-19T19:55:29.781Z','2021-12-18T22:00:00.000Z'),

	(356,'tv',83095,'/6cXf5EDwVhsRv8GlBzUTVnWuk8Z.jpg','The Rising of the Shield Hero',2019,'the-rising-of-the-shield-hero',true,9,'Great first season','Hero gets humiliated to the extreme and now he doesn''t give a fuck about kingdom he suppose to save, only himself. Now he start rising with rage to the top.','2021-03-01T07:17:55.000Z','2022-04-25T12:56:45.364Z','2021-03-01T07:17:55.000Z'),

	(357,'tv',85271,'/cV9SsooXd8Xawk4lWN3b8m6kv49.jpg','WandaVision',2021,'wandavision-2',false,6,'Simply mediocre','','2021-02-12T16:06:21.000Z','2022-08-06T11:33:48.713Z','2021-02-12T16:06:21.000Z'),

	(358,'tv',88512,'/kLGU1UerWYj6DMB7jRhpJCgak6b.jpg','Bonding',2019,'bonding',false,8,'Short comedy','','2021-01-27T20:13:43.000Z','2021-01-27T20:13:43.000Z','2021-01-27T20:13:43.000Z'),

	(359,'tv',72597,'/9ukZcwaqcObmmxxfcIXTgVMvalJ.jpg','Manhunt',2017,'manhunt',false,7,'Captivating','','2021-01-15T20:09:32.000Z','2021-01-15T20:09:32.000Z','2021-01-15T20:09:32.000Z'),

	(360,'tv',90814,'/oXpSVePUISiI2uxj3OiUeyHsVQM.jpg','Extracurricular',2020,'extracurricular',false,8,'Surprisingly good','Surprisingly good Korean series about student and his side job as "Pimp". Because series is Korean, it takes a bit different approach to the story that I would expect from american counterpart, that''s why it manages to surprise multiple times with narrative and character development.<br />
Social distant and best student in class to survive living alone from bad parents and save money for future studies, manages to run escort service, what even includes providing underage girls. Everything works fine until classmate finds out about his work and wants to join as partner.','2021-01-10T21:59:58.000Z','2021-01-10T21:59:58.000Z','2021-01-10T21:59:58.000Z'),

	(361,'tv',61421,'/x3BdZcJ6Hv3sxFKp6GGjEUvv2q4.jpg','Terror in Resonance',2014,'terror-in-resonance',true,4,'Great start, very disappointing ending','','2020-12-30T17:51:23.000Z','2021-11-02T15:09:02.487Z','2020-12-30T17:51:23.000Z'),

	(362,'movie',476292,'/hL3NqRE2ccR4Y2sYSJTrmalRjrz.jpg','Maquia: When the Promised Flower Blooms',2018,'maquia-when-the-promised-flower-blooms',true,8,'Beautiful and sad','','2020-12-21T19:02:29.000Z','2021-11-02T15:09:05.158Z','2020-12-21T19:02:29.000Z'),

	(363,'movie',577922,'/k68nPLbIST6NP96JmTxmZijEvCA.jpg','Tenet',2020,'tenet',false,8,'Dry action','','2020-12-05T16:51:11.000Z','2020-12-05T16:51:11.000Z','2020-12-05T16:51:11.000Z'),

	(364,'movie',590223,'/r4Lm1XKP0VsTgHX4LG4syAwYA2I.jpg','Love and Monsters',2020,'love-and-monsters',false,9,'light heated, well made','This movie exactly everything that makes it work - the story is simple but well written and good paced, relatable characters and its development is perfect, no unnecessary plots. Simply enjoyable to watch.','2020-11-01T11:35:41.000Z','2020-11-01T11:35:41.000Z','2020-11-01T11:35:41.000Z'),

	(365,'tv',87739,'/zU0htwkhNvBQdVSIKB9s6hgVeFK.jpg','The Queen&#8217;s Gambit',2020,'the-queens-gambit',false,10,'Great story','','2020-10-25T23:00:02.000Z','2020-10-25T23:00:02.000Z','2020-10-25T23:00:02.000Z'),

	(366,'tv',45859,'/kPzPTbw3rkB66qKSsjlWtOetQWc.jpg','Daily Lives of High School Boys',2012,'daily-lives-of-high-school-boys',true,9,'Very funny','','2020-10-03T23:18:02.000Z','2021-11-02T15:09:51.282Z','2020-10-03T23:18:02.000Z'),

	(367,'movie',57158,'/eCFZ8GcL834sGljC9EaiH7c0MUg.jpg','The Hobbit: The Desolation of Smaug',2013,'the-hobbit-the-desolation-of-smaug',false,9,'Picking up the pace','','2020-09-22T10:35:25.000Z','2020-09-22T10:35:25.000Z','2020-09-22T10:35:25.000Z'),

	(368,'movie',59678,'/wzCMnA6NDruLzgWeqMcLPDrGAdF.jpg','Attack the Block',2011,'attack-the-block',false,9,'Very funny','','2020-09-05T20:43:13.000Z','2020-09-05T20:43:13.000Z','2020-09-05T20:43:13.000Z'),

	(369,'movie',581392,'/sy6DvAu72kjoseZEjocnm2ZZ09i.jpg','Peninsula',2020,'peninsula',false,4,'Very bad sequel to very good zombie movie','It''s the sequel to the movie "Train to Busan" (2016). But as previous was really well done, this one has too much really bad CGI and not much soul in a story, that''s why it felt very dry and painful to watch. Characters and motivation are horrible. Too many unbelievable things. Very disappointing.','2020-08-27T12:36:38.000Z','2020-08-27T12:36:38.000Z','2020-08-27T12:36:38.000Z'),

	(370,'movie',396535,'/2oRRTPNtozgPhOa9CYZiVl4GRQ5.jpg','Train to Busan',2016,'train-to-busan',false,8,'Very good zombie apocalypse movie','Something fresh about a zombie apocalypse from South Korea. A pretty well-written story, likeable characters and nice cinematography not going to much on CGI.','2020-08-27T11:33:16.000Z','2020-08-27T11:33:16.000Z','2020-08-27T11:33:16.000Z'),

	(371,'tv',100074,'/5vo9FY2aXSuoqtawSLP99EqbsUn.jpg','Biohackers',2020,'biohackers',false,6,'Good story, but very weak execution','Story has good potential bring good, while deals with interesting topic about genetic engineering and biology. First season is pretty short and left with huge cliffhanger at the end, so maybe somehow they will save the story as it continues, unless it will be cancelled, while there are many things what''s bad with it.','2020-08-22T20:33:09.000Z','2020-08-22T20:33:09.000Z','2020-08-22T20:33:09.000Z'),

	(372,'movie',594718,'/aQQW03qNC5O5N2C5XDAbvtywOVr.jpg','Sputnik',2020,'sputnik',false,6,'Not bad, but nothing new too','From Russia.<br />
Story starts with a mistery, a bit like horror story, but as more you find out, the more it looses interest, until at one point story lost what it wants to say and it ends. Good premise for story, but no idea of end.','2020-08-17T17:24:26.000Z','2020-08-17T17:24:26.000Z','2020-08-17T17:24:26.000Z'),

	(373,'movie',606234,'/eDnHgozW8vfOaLHzfpHluf1GZCW.jpg','Archive',2020,'archive',false,10,'Awesome','Cinematography and scenes design reminded me of the movie Moon (2009) only this story takes place on future earth. The story deals with one topic I really love - Artificial Intelligence, but it''s not the only thing what this movie is about, and it has some delightful surprises. Highly recommend seeing.','2020-08-16T20:05:13.000Z','2020-08-16T20:05:13.000Z','2020-08-16T20:05:13.000Z'),

	(374,'movie',430155,'/ijJm0RSeKIr67qkHLtSmtigS6ra.jpg','Coma',2019,'coma',false,7,'Russian Inception visuals','It reminds the movie Inception, because of visuals, but story is different and pretty original.','2020-08-08T16:15:43.000Z','2020-08-08T16:15:43.000Z','2020-08-08T16:15:43.000Z'),

	(375,'movie',284427,'/nMHCJiVFjUmQWC116Ze96u5IhfX.jpg','Who Am I',2014,'who-am-i',false,8,'Fine','','2020-07-30T20:23:44.000Z','2020-07-30T20:23:44.000Z','2020-07-30T20:23:44.000Z'),

	(376,'tv',79680,'/95xQPSqwvQDRoB3rXUn4lRyJrBW.jpg','Snowpiercer',2020,'snowpiercer',false,9,'Start is good, hopping it will keep momentum going as train does.','Was sceptical in the beginning, while movie already shown pretty great story, but after couple of episodes I completely changed mind and I think it''s really great exploration of what was not in the movie. It has few things taken from movie, but story develops from different angle and it is way more complicated than movie told. Also because of long series format, it has time to explore logic and working of the train more.','2020-07-13T15:00:55.000Z','2020-07-13T15:00:55.000Z','2020-07-13T15:00:55.000Z'),

	(377,'tv',70523,'/b0j0iRtR8Sl2s4HXVlht8rpqbWT.jpg','Dark',2017,'dark',false,10,'Something really good from Germany','That is some rare diamond of the year.<br />
German''s know how to make a great story.<br />
It''s first original German series I could not stop watching.<br />
Really wonderfully thought out and complex story with a lot of characters, but uncovering connections between each other and their part in the story, makes you cringe to find out more and more. Constant unknown and new question keep the suspense, which never dies till the end of the season and even then gives more questions to ask and hope to see next season to get answers to wtf is going on. Even paranormality is shown in a very subtle way. Keeping track takes effort and thinking and that''s a great part of the series. Wonderful cinematography and visual telling style chains you not to miss anything what you see. Because it''s German series, it makes acting and relations in the story between characters feel more realistic and close to everyday life. <br />
Later seasons goes more into time travel stuff and paradoxes, but it keeps story very strong, till the end. The complexity to follow story increases, but the way writer keeps it not messing up is amazing. Series have one of the most satisfying ends in this kind a Series, and brings almost all questions to the conclusion, without leaving holes in story. Real German work ;)','2020-06-28T18:00:45.000Z','2020-06-28T18:00:45.000Z','2019-06-24T00:00:00.000Z'),

	(378,'movie',530382,'/5DSVYlKwEzGBxTkS95L73c3oxLs.jpg','In the Shadow of the Moon',2019,'in-the-shadow-of-the-moon',false,5,'First half was great, but second half is nonsense','','2020-05-24T21:56:18.000Z','2020-05-24T21:56:18.000Z','2020-05-24T21:56:18.000Z'),

	(379,'movie',505954,'/jqBIHiSglRfNxjh1zodHLa9E7zW.jpg','T-34',2018,'t-34',false,10,'Haven''t seen good movie about tanks for long','Made in Russia, about Russian tanks.','2020-05-24T13:37:22.000Z','2020-05-24T13:37:22.000Z','2020-05-24T13:37:22.000Z'),

	(380,'tv',102903,'/vHvLEPOKp4Y5vVHwL6cSKnkCvf8.jpg','Control Z',2020,'control-z',false,9,'Another great series from Spain?','','2020-05-23T20:14:12.000Z','2020-05-23T20:14:12.000Z','2020-05-23T20:14:12.000Z'),

	(381,'movie',170,'/sQckQRt17VaWbo39GIu0TMOiszq.jpg','28 Days Later',2002,'28-days-later',false,8,'Classic','','2020-05-22T22:56:31.000Z','2020-05-22T22:56:31.000Z','2020-05-22T22:56:31.000Z'),

	(382,'movie',545609,'/wlfDxbGEsW58vGhFljKkcR5IxDj.jpg','Extraction',2020,'extraction',false,7,'Beutituful action, but very generic story','Impressive camera work in action scenes. It''s like John Wick just with ex military soldier and east drug lords.','2020-04-28T20:04:53.000Z','2020-04-28T20:04:53.000Z','2020-04-28T20:04:53.000Z'),

	(383,'tv',100698,'/pmjYMCnSwndlEpiFZhhOWSWmUsu.jpg','Tiger King: Murder, Mayhem and Madness',2020,'tiger-king-murder-mayhem-and-madness',false,9,'Batshit crazy documentary','','2020-04-12T20:07:24.000Z','2020-04-12T20:07:24.000Z','2020-04-12T20:07:24.000Z'),

	(384,'tv',71446,'/MoEKaPFHABtA1xKoOteirGaHl1.jpg','Money Heist',2017,'money-heist-2',false,2,'Went downhill fast after second season','S03:<br />
They should have ended with second season. Actually it had already satisfying end, but series popularity means money, and creators can''t pass on that.<br />
Third season starts making mistakes, by repeating a lot of things from first two ones, in addition adding unnecessary and most of the times illogical events and even things what goes against already established story details, also adding very cheesy subplots and really unnecessary social justice political views what starts destroying what they managed to create in first two seasons.','2020-04-05T20:37:29.000Z','2020-04-05T20:37:29.000Z','2020-04-05T20:37:29.000Z'),

	(385,'movie',619264,'/8ZX18L5m6rH5viSYpRnTSbb9eXh.jpg','The Platform',2019,'the-platform',false,7,'Weird, but I liked it','','2020-03-22T18:22:11.000Z','2020-03-22T18:22:11.000Z','2020-03-22T18:22:11.000Z'),

	(386,'movie',515001,'/7GsM4mtM0worCtIVeiQt28HieeN.jpg','Jojo Rabbit',2019,'jojo-rabbit',false,10,'Great movie!','Interesting point of view to Nazism and war.','2020-02-07T20:14:26.000Z','2020-02-07T20:14:26.000Z','2020-02-07T20:14:26.000Z'),

	(387,'tv',78191,'/9qZUrhcFVI9MNznVJxdfcrmifof.jpg','YOU',2018,'you',false,5,'Psychotic toxic relationship','S1:<br />
This series shows one level above a toxic relationship, and it''s so fucked up on so many levels.<br />
First season is wonderfully following a psycho and his point of view of what and why he''s doing it. But the second season goes downhill, because of some very unbelievable choices and coincidences in the main story, what destroys first season intrigue.<br />
<br />
S2: <br />
Repeating itself and gets boring very fast. They tried to make plot twist, but I lost interest before that.','2020-01-18T21:39:54.000Z','2020-01-18T21:39:54.000Z','2020-01-18T21:39:54.000Z'),

	(388,'tv',91520,'/aNFeBJn6WU4IxhZoJs5Z5XEuuiK.jpg','Beforeigners',2019,'beforeigners',false,9,'Really worth seeing','It''s not like any American TV Series, because it''s European, and it has a bit different feeling.<br />
Even if it takes a Sci-Fi scenario about time travel, but it''s the only outer layer, while overall really explores today''s world problems about foreigners and racism.','2020-01-15T20:05:34.000Z','2020-01-15T20:05:34.000Z','2020-01-15T20:05:34.000Z'),

	(389,'movie',359724,'/6ApDtO7xaWAfPqfi2IARXIzj8QS.jpg','Ford v Ferrari',2019,'ford-v-ferrari',false,8,'Good','','2020-01-14T10:48:40.000Z','2020-01-14T10:48:40.000Z','2020-01-12T00:00:00.000Z'),

	(390,'movie',546554,'/pThyQovXQrw2m0s9x82twj48Jq4.jpg','Knives Out',2019,'knives-out',false,8,'Expected nothing, but had good time in cinema','','2020-01-05T17:01:09.000Z','2020-01-05T17:01:09.000Z','2020-01-05T17:01:09.000Z'),

	(391,'movie',567609,'/vOl6shtL0wknjaIs6JdKCpcHvg8.jpg','Ready or Not',2019,'ready-or-not',false,7,'Weak','','2019-12-07T20:22:46.000Z','2019-12-07T20:22:46.000Z','2019-12-07T20:22:46.000Z'),

	(392,'movie',504949,'/8u0QBGUbZcBW59VEAdmeFl9g98N.jpg','The King',2019,'the-king',false,6,'Beautiful but boring','','2019-11-03T19:52:13.000Z','2019-11-03T19:52:13.000Z','2019-11-03T19:52:13.000Z'),

	(393,'movie',513045,'/klkFYDZOetegK8floj6IjvbzzQ2.jpg','Stuber',2019,'stuber',false,8,'Funny simple comedy','','2019-10-06T15:16:23.000Z','2019-10-06T15:16:23.000Z','2019-10-06T15:16:23.000Z'),

	(394,'movie',402897,'/xAKqG5SpsHU7vI6Fh4UYxFrDDZZ.jpg','The Death of Stalin',2017,'the-death-of-stalin',false,7,'Good comedy','','2019-09-15T19:43:22.000Z','2019-09-15T19:43:22.000Z','2019-09-15T19:43:22.000Z'),

	(395,'tv',69061,'/rueY4slMeKtTGitm0raFUJvgaa5.jpg','The OA',2016,'the-oa',false,9,'Very weird and great','','2019-08-11T11:15:18.000Z','2019-08-11T11:15:18.000Z','2019-08-11T00:00:00.000Z'),

	(396,'movie',416144,'/v32SC4HFZtlDRWXMaR2V2dWqAXJ.jpg','Hotel Mumbai',2019,'hotel-mumbai',false,5,'What''s the point?','','2019-06-20T13:29:39.000Z','2019-06-20T13:29:39.000Z','2019-06-20T00:00:00.000Z'),

	(397,'movie',505948,'/eItrj5GcjvCI3oD3bIcz1A2IL9t.jpg','I Am Mother',2019,'i-am-mother',false,8,'Surprising','','2019-06-16T20:03:55.000Z','2019-06-16T20:03:55.000Z','2019-06-16T00:00:00.000Z'),

	(398,'movie',529962,'/tPDe68PDsgIGMs6wdJLtcwVVxA7.jpg','The Perfection',2018,'the-perfection',false,7,'Oh man, it''s so fucked up','','2019-06-16T17:42:04.000Z','2019-06-16T17:42:04.000Z','2019-06-16T00:00:00.000Z'),

	(399,'tv',83631,'/htqOS6RXXdUtIgJVsg3ddy6RJNH.jpg','What We Do in the Shadows',2019,'what-we-do-in-the-shadows',false,10,'Very funny.','','2019-06-02T20:54:32.000Z','2019-06-02T20:54:32.000Z','2019-06-02T00:00:00.000Z'),

	(400,'tv',87108,'/hlLXt2tOPT6RRnjiUmoxyG1LTFi.jpg','Chernobyl',2019,'chernobyl',false,10,'Spectacular and frightening','One of the most amazing portraits of USSR decisions during time worst type of crisis and try to hide the truth no matter the cost.<br />
Miniseries based on the horrifying true story.','2019-05-27T09:11:47.000Z','2019-05-27T09:11:47.000Z','2019-05-27T00:00:00.000Z'),

	(401,'tv',63926,'/iE3s0lG5QVdEHOEZnoAxjmMtvne.jpg','One Punch Man',2015,'one-punch-man',false,6,'Cool','The first season is great, but second is awful.<br />
I loved an idea of main characters struggle when nothing can challenge you in life.<br />
But the second season gets away from the beginning and starts following other storylines, which is completely uninteresting and that makes me disappointed in Anime series.','2018-12-02T21:16:29.000Z','2018-12-02T21:16:29.000Z','2018-12-02T00:00:00.000Z'),

	(402,'movie',460885,'/m0yf7J7HsKeK6E81SMRcX8vx6mH.jpg','Mandy',2018,'mandy',false,10,'Fucking spectacular!','Holy fuck! I have lost my thoughts about it from orgasmic spectacularness.<br />
That is one of the rare amazing movies I came across completely unexpected.<br />
It simply best in this category with stunning cinematography and slowly developing a thrilling story.<br />
Simply amazing.','2018-11-23T18:44:22.000Z','2018-11-23T18:44:22.000Z','2018-11-23T00:00:00.000Z'),

	(403,'movie',537996,'/voxl654m7p36y8FLu8oQD7dfwwK.jpg','The Ballad of Buster Scruggs',2018,'the-ballad-of-buster-scruggs',false,9,'Great','','2018-11-18T13:32:25.000Z','2018-11-18T13:32:25.000Z','2018-11-18T00:00:00.000Z'),

	(404,'movie',454227,'/rT49ousKUWN3dV7UlhaC9onTNdl.jpg','Outlaw King',2018,'outlaw-king',false,8,'Great','','2018-11-11T15:07:50.000Z','2018-11-11T15:07:50.000Z','2018-11-11T00:00:00.000Z'),

	(405,'movie',345940,'/xqECHNvzbDL5I3iiOVUkVPJMSbc.jpg','Meg',2018,'meg',false,3,'Ridiculous nonsense ','I don"t know what I was expecting from it, same as a trailer - brainless nonsense. The only thing in this movie what shines is graphic effects and action sequences. Why it all happens as you see is far, far away from logic land, but why the fuck you need that then you watching something similar like shark tornado movie. I still can"t decide if it"s so bad, that it"s actually good, or just pointless nonsense.','2018-11-01T17:24:14.000Z','2018-11-01T17:24:14.000Z','2018-11-01T00:00:00.000Z'),

	(406,'tv',48891,'/A3SymGlOHefSKbz1bCOz56moupS.jpg','Brooklyn Nine-Nine',2013,'brooklyn-nine-nine-season-1-5',false,9,'It''s an "Office", only in police','','2018-10-04T10:45:49.000Z','2018-10-04T10:45:49.000Z','2018-10-01T00:00:00.000Z'),

	(407,'movie',448776,'/73KrcLh1DpnBP3HwGpqoUUwKWF4.jpg','A Prayer Before Dawn',2017,'a-prayer-before-dawn',false,6,'Not so funny','Story in few words: boxing, drugs, prison, violence and other unpleasant things... So it''s movie about a boxer, but not like other movies about fame. It''s actually pretty opposite, it''s actually really sad story, based on true events.','2018-09-24T06:34:07.000Z','2018-09-24T06:34:07.000Z','2018-09-23T00:00:00.000Z'),

	(408,'tv',71116,'/6dnUpv9ghx84pgxlMOb4uuJrWDs.jpg','Castle Rock',2018,'castle-rock-s01',false,5,'I don''t know why I kept watching this','Was expecting way more after seeing trailer, but it left me really disappointed.<br />
Till the end I was hoping to see interesting things happening, but it got messy and bizarre in the end.<br />
It had it''s few good moments, but satisfaction was not fulfilled.','2018-09-17T11:45:56.000Z','2018-09-17T11:45:56.000Z','2018-09-14T00:00:00.000Z'),

	(409,'movie',351286,'/c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg','Jurassic World: Fallen Kingdom',2018,'jurassic-world-fallen-kingdom',false,1,'Shinny Garbage','Couldn''t finish watching of boredom. Just visually good looking. Everything else from story and character is horrible wrong or horrifically bad.<br />
This movie literally buried whole Jurassic World experience from first movies. Now I''m never going back to watch this or any Jurassic World movies anymore in my life. Dinosaurs is dead, and this movie proved that there is no good Jurassic park movies.','2018-09-08T13:50:06.000Z','2018-09-08T13:50:06.000Z','2018-09-07T00:00:00.000Z'),

	(410,'movie',353081,'/AkJQpZp9WoNdj7pLYSj1L0RcMMN.jpg','Mission: Impossible &#8211; Fallout',2018,'mission-impossible-fallout',false,9,'Classic Mission Impossible','Action packed classical Mission Impossible. Tom Cruise is still doing his best.','2018-08-17T17:33:39.000Z','2018-08-17T17:33:39.000Z','2018-08-17T00:00:00.000Z'),

	(411,'movie',273481,'/tw0lXhbNkklvseuJ4aYldkVyXV7.jpg','Sicario',2015,'sicario',false,10,'Outstanding thriller','','2018-07-09T20:36:39.000Z','2018-07-09T20:36:39.000Z','2018-07-09T00:00:00.000Z'),

	(412,'movie',8764,'/b056qzEhbIGlQI9mQKoCgddarxq.jpg','Top Secret!',1984,'top-secret',false,7,'Ridiculous, but fun','','2018-07-07T13:08:59.000Z','2018-07-07T13:08:59.000Z','2018-07-07T13:08:59.000Z'),

	(413,'movie',396806,'/xhBTO9n3fxy3HJt7WlR9h9vvVmk.jpg','Anon',2018,'anon',false,9,'Surprising','What does it mean to be anonymous?<br />
Amazing movie about not so unimaginable future, where privacy just in a way doesn''t exist anymore. Scary future''s image.<br />
','2018-07-06T21:16:15.000Z','2018-07-06T21:16:15.000Z','2018-07-06T00:00:00.000Z'),

	(414,'movie',333339,'/pU1ULUq8D3iRxl1fdX2lZIzdHuI.jpg','Ready Player One',2018,'ready-player-one',false,4,'It''s not as good as a book','Need to rewatch to write a review,<br />
while right now it''s a little bit too much to swallow at once of what I saw.','2018-06-30T15:00:56.000Z','2018-06-30T15:00:56.000Z','2018-04-08T00:00:00.000Z'),

	(415,'movie',313922,'/1DZkTrukHOk0Y2Q1Oeqj3HBxpVD.jpg','Green Room',2016,'green-room',false,9,'Rare gold nugget','','2018-06-26T19:22:48.000Z','2018-06-26T19:22:48.000Z','2016-10-15T00:00:00.000Z'),

	(416,'movie',135397,'/rhr4y79GpxQF9IsfJItRXVaoGs4.jpg','Jurassic World',2015,'jurassic-world',false,3,'Lot''s of cliches','','2018-06-26T19:11:30.000Z','2018-06-26T19:11:30.000Z','2018-06-26T00:00:00.000Z'),

	(417,'movie',427641,'/3gIO6mCd4Q4PF1tuwcyI3sjFrtI.jpg','Rampage',2018,'rampage',false,7,'No Brainer','It''s pretty pointless storywise, but damn beautiful entertainment. It''s cliche after cliche, but as no-brainer movie is amazing. You just enjoying beautiful CGI when after a while, you just stop thinking, because most of the things in a story makes no sense or are completely against it, even physics don''t make sense here. I can say it''s a pretty good action movie for free evening and no thinking.','2018-06-21T20:40:37.000Z','2018-06-21T20:40:37.000Z','2018-06-21T00:00:00.000Z'),

	(418,'movie',401905,'/urH9H50gKbUK8U6qTVd89SLQPjx.jpg','Fahrenheit 451',2018,'fahrenheit-451',false,3,'Disapointing','They should have burned the script as soon as they wrote it :D (pun intended)<br />
<img src=''https://i.giphy.com/media/10O4vXPCM3D1VS/giphy-downsized.gif'' width=''250''><br />
A book is good, but the movie was just very boring and ridiculously cheesy. ','2018-06-09T16:42:47.000Z','2018-06-09T16:42:47.000Z','2018-06-09T00:00:00.000Z'),

	(419,'movie',59440,'/iM8n4nZJPR2abpnyZ36FUgHiRjr.jpg','Warrior',2011,'warrior',false,8,'','','2018-05-05T19:34:51.000Z','2018-05-05T19:34:51.000Z','2018-05-05T19:34:51.000Z'),

	(420,'tv',71769,'/zUd4RPbfHuB1zIG2iNI5bdZcQo3.jpg','The Alienist',2018,'the-alienist',false,9,'Amazingly good','','2018-04-21T16:31:53.000Z','2018-04-21T16:31:53.000Z','2018-04-21T00:00:00.000Z'),

	(421,'movie',398181,'/ktPbjD6nYg5NxmeTt72Iqaw5GD0.jpg','You Were Never Really Here',2017,'you-were-never-really-here',false,7,'Dark and depressive, but good','The topic of the movie is really dark and the whole movie portrays it.<br />
I loved how the story was developing, almost nothing is explained why the main character is like he is. To paint the better picture you need to capture from very short lines of dialogue or vague memory shots. Really good work of director and the actor for moving the whole story.<br />
I loved how few scenes were shot and how cuts in the action were made: One shot of how the main character walks into the house, cut to some house shot, cut again, this time to security guy sitting on the chair, another cut to the main character walking inside, cut to empty shot of stairs to second floor, another cut to the main character walking away from dead guy near the chair he was sitting, cut to empty kitchen, and so on... just amazing. Build of suspense in this kinda scenes is just great.<br />
Great to see once, but because of depressive and gruesome nature of the story, not much value for rewatching.','2018-04-11T21:12:04.000Z','2018-04-11T21:12:04.000Z','2018-04-11T00:00:00.000Z'),

	(422,'movie',446791,'/zig7XjXQ7aJhyy2KIGDGPPom4uJ.jpg','All the Money in the World',2017,'all-the-money-in-the-world',false,6,'Just so','','2018-03-31T21:52:14.000Z','2018-03-31T21:52:14.000Z','2018-03-31T00:00:00.000Z'),

	(423,'movie',399035,'/rDeGK6FIUfVcXmuBdEORPAGPMNg.jpg','The Commuter',2018,'the-commuter',false,4,'Not recomended','What a cheesy action movie. It''s like most of other Liam Neeson character in other movies, always the same.<br />
Why it''s so much shaky camera, even when main characters just sitting and talking, it makes so much <strong>NO sense</strong>, while every shot is cinematographically planned.<br />
And a story...... there is none. I couldn''t believe a story even for a bit. It''s so so ridiculous, that you think how it got approved for a movie. I think a monkey could make more logical one.<br />
But still, I watched till the end, maybe because it reminded a lot of better different movies, which ones this movie is trying to copy. ','2018-03-29T21:36:58.000Z','2018-03-29T21:36:58.000Z','2018-03-29T00:00:00.000Z'),

	(424,'movie',447358,'/xweS8KHCYU84GNNUpsrQ7CV8ZeV.jpg','People You May Know',2017,'people-you-may-know',false,8,'Unexpectidly good','That is one good movie about today''s social media. It nicely shows that what you see online is not always a whole truth. ','2018-03-26T20:47:18.000Z','2018-03-26T20:47:18.000Z','2018-03-26T00:00:00.000Z'),

	(425,'movie',10200,'/mrw9NShY6I2FgXwk8Ge437pn08N.jpg','The Day the Earth Stood Still',2008,'the-day-the-earth-stood-still',false,2,'Too Cheesy','','2018-03-21T20:00:21.000Z','2018-03-21T20:00:21.000Z','2018-03-21T20:00:21.000Z'),

	(426,'movie',9610,'/tYtWSH9mq6YoIOAyZtluHnzbPvE.jpg','Conan the Destroyer',1984,'conan-the-destroyer',false,7,'','Not as good as the first one. But still nice to watch.','2018-03-17T23:12:57.000Z','2018-03-17T23:12:57.000Z','2018-03-17T23:12:57.000Z'),

	(427,'movie',181808,'/kOVEVeg59E0wsnXmF9nrh6OmWII.jpg','Star Wars: The Last Jedi',2017,'star-wars-episode-viii',false,6,'Entertaining','It''s a little bit more entertaining as <a href=''https://movies.juliuszlioba.com/movies-evening-list/star-wars-episode-vii/''> Star Wars: The Force Awakens </a>and a story is <strong>not</strong> a complete copy of the old movie with new face, <i> even of course there is a lot of resemblance to </i> <a href=''https://movies.juliuszlioba.com/movies-evening-list/star-wars-episode-v/''> Star Wars: Episode V - The Empire Strikes Back </a>, but it has its own twists in the story.<br />
An addition of new characters looks a little bit too much unnecessary ''including every single rase possible'' with a bit of feminism, but let''s see how it will develop later. But I starting to get used to Rey''s character and especially starting to like Kylo Ren''s character. Visually the movie is amazing. Storywise it''s not so perfect, but still reasonable and with new winds. I''m looking forward to the future films.<br />
<strong>Update:</strong> After second watch I see more flaws in it (and for that, I''m bringing down my rating), but it''s still entertaining. There is a lot of plot holes and horrible unnecessary Disney things inside, I''m still looking forward to next one. I hope it''s going be shit :D so the franchise could finally get under six feet under for resting in peace.<br />
It''s not original Star Wars. It''s trying to be something new and I give some praise for that.','2018-03-17T15:00:03.000Z','2018-03-17T15:00:03.000Z','2017-12-28T00:00:00.000Z'),

	(428,'movie',399055,'/k4FwHlMhuRR5BISY2Gm2QZHlH5Q.jpg','The Shape of Water',2017,'the-shape-of-water',false,1,'Fish fucking?','An Oscar of ''Best Picture'' for a fish fucking? <br><br><img src=''https://media.giphy.com/media/WB8gJCSApzqla/giphy.gif'' width=250><br><br>What the fuck is wrong with the world?<br><br>I admit that visual style of the movie was beautiful, but it''s not the first time movie, which uses this warm and picturesque old style feeling to represent the old 60s or 70s. Also acting is not bad, but also not the greatest. But the worst part is the story. A love story from first sight and fish fucking (literally)? Why?<br><br> I don''t have what to say...','2018-03-05T22:36:56.000Z','2018-03-05T22:36:56.000Z','2018-03-05T00:00:00.000Z'),

	(429,'movie',46838,'/8shwLEDzajJGSfLgbpac8x8xn1U.jpg','Tucker and Dale vs Evil',2010,'tucker-and-dale-vs-evil',false,8,'Good','Really good enjoyable comedy.<br />
','2018-03-03T20:28:45.000Z','2018-03-03T20:28:45.000Z','2018-03-03T20:28:45.000Z'),

	(430,'movie',49026,'/vzvKcPQ4o7TjWeGIn0aGC9FeVNu.jpg','The Dark Knight Rises',2012,'the-dark-knight-rises',false,9,'','Everything, what Christopher Nolan touch is a masterpiece.<br />
From Batman trilogy, this is my second favourite one after "The Dark Knight" (2008).<br />
I really love Christian Bale as Batman. he portrays him really well. I can''t stand Ben Affleck as new batman in newer DC movies.<br />
The only con of the movie is Bane. Even if Tom Hardy did really well and I loved acting and dialogue, but for me, he felt not as a big villain as Joker did in the last movie.','2018-02-26T19:44:18.000Z','2018-02-26T19:44:18.000Z','2018-02-26T19:44:18.000Z'),

	(431,'movie',379149,'/rwM4hzrmc5HiWfQD9ls9DL4QgGl.jpg','The Foreigner',2017,'the-foreigner',false,6,'Ridiculous, but fun','','2017-12-19T22:49:59.000Z','2017-12-19T22:49:59.000Z','2017-12-19T00:00:00.000Z'),

	(432,'movie',343668,'/34xBL6BXNYFqtHO9zhcgoakS4aP.jpg','Kingsman: The Golden Circle',2017,'kingsman-the-golden-circle',false,5,'Disappointing, but still fun','Feels disappointing. The first movie was something fresh and original, looked great. This one trying to feel kinda same, but only fails and is way less exciting.<br />
The action is great, acting is meh, but the story is horrible. And there is no action sequence like the church scene.<br />
Fun for one watch, but not big value to rewatch. ','2017-12-16T13:00:57.000Z','2017-12-16T13:00:57.000Z','2017-11-26T00:00:00.000Z'),

	(433,'movie',374720,'/ebSnODDg9lbsMIaWg2uAbjn7TO5.jpg','Dunkirk',2017,'dunkirk',false,9,'Great movie','','2017-12-11T21:09:27.000Z','2017-12-11T21:09:27.000Z','2017-12-11T21:09:27.000Z'),

	(434,'movie',372058,'/q719jXXEzOoYaps6babgKnONONX.jpg','Your name',2016,'your-name',false,9,'Beautifully stunning!','The beautiful as "5 Centimeters Per Second". Anime at it''s best.','2017-12-08T19:26:52.000Z','2017-12-08T19:26:52.000Z','2017-12-08T00:00:00.000Z'),

	(435,'movie',1272,'/8kX6xmEwz0RpEJkeWjXTkxbOCAp.jpg','Sunshine',2007,'sunshine',false,4,'','','2017-12-02T20:00:46.000Z','2017-12-02T20:00:46.000Z','2017-12-02T20:00:46.000Z'),

	(436,'movie',339964,'/jfIpMh79fGRqYJ6PwZLCntzgxlF.jpg','Valerian and the City of a Thousand Planets',2017,'valerian-and-the-city-of-a-thousand-planets',false,8,'Weird and entertaining','Very beautiful, colourful environments, great action scenes, sadly acting is a little bit off. But it''s really nice candy.','2017-11-23T17:33:35.000Z','2017-11-23T17:33:35.000Z','2017-11-12T00:00:00.000Z'),

	(437,'movie',395814,'/qz3mvkpTOQOEqzxenvaaObOMarj.jpg','Rememory',2017,'rememory',false,5,'Good, but not special','The story hasn''t felt very original somehow, it felt like taken parts from few other movies and tv series (like "black mirror"), but for a one-time watch is an enjoyable crime drama.','2017-11-16T21:13:54.000Z','2017-11-16T21:13:54.000Z','2017-11-16T00:00:00.000Z'),

	(438,'movie',38321,'/stFUfo2kJXepLTlSIosw3E6jewr.jpg','Priest',2011,'priest',false,2,'','Kind a waste of time.','2017-11-06T21:52:27.000Z','2017-11-06T21:52:27.000Z','2017-11-06T21:52:27.000Z'),

	(439,'movie',315635,'/c24sv2weTHPsmDa7jEMN0m2P3RT.jpg','Spider-Man: Homecoming',2017,'spider-man-homecoming',false,8,'','It''s enjoyable and fun to watch, but some of the elements are way too cheesy, little bit too much childish or more precise teenager-ish I would say.<br />
It has some funny moments as most of Marvel movies and action sequences are done amazingly good.','2017-10-01T12:08:16.000Z','2017-10-01T12:08:16.000Z','2017-10-01T12:08:16.000Z'),

	(440,'movie',321697,'/92vhEJ6xWoDJ8UHECAJaRofaSCZ.jpg','Steve Jobs',2015,'steve-jobs',false,7,'Recomended','','2017-09-24T23:03:33.000Z','2017-09-24T23:03:33.000Z','2017-09-24T00:00:00.000Z'),

	(441,'tv',63351,'/rTmal9fDbwh5F0waol2hq35U4ah.jpg','Narcos',2017,'narcos-season-3',false,9,'Highly recommended','First two seasons were entertaining to watch and this one is no exception. Drugs, cartels, money and violence. Good story too, based on real facts, but a lot of this exaggerated for better and more interesting watching.<br />
Only be prepared to read subtitles :) only about 20% is in English','2017-09-07T14:03:55.000Z','2017-09-07T14:03:55.000Z','2017-09-07T14:03:55.000Z'),

	(442,'movie',339846,'/6HE4xd8zloDqmjMZuhUCCw2UcY1.jpg','Baywatch',2017,'baywatch',false,4,'good once for laughs, but it''s <span class="text-danger">not</span> recommended','This movie is a guilty pleasure. Enjoying watching even if it''s horrible and worth a shit.<br />
Looks also good then you have few beers during the watch.<br />
Otherwise is the stupid story with more stupid actors and choices they make during a movie.','2017-08-21T13:14:31.000Z','2017-08-21T13:14:31.000Z','2017-08-21T00:00:00.000Z'),

	(443,'movie',8078,'/kzslFL1n01WI5lEcYzFSUi3Quik.jpg','Alien Resurrection',1997,'alien-resurrection',false,1,'','I way more enjoyed more watching Alien: Covenant or Prometheus, even they also very bad, but at least those were way nicer to look at.<br />
The acting in this movie is bad and unnatural and looks like they only had only dumb lines to say. CG is also kinda crappy, but it''s still in 90''s so nothing to complain. The story is a pile of shit stuck together with toilet paper and vomit. And mostly I have a complaint about the actual alien - the newborn alien in the movie is completely fucked up,  pathetically ugly - like a penis with a face.<br />
It how the wrong movie looks like.','2017-08-12T23:18:50.000Z','2017-08-12T23:18:50.000Z','2017-08-12T23:18:50.000Z'),

	(444,'movie',419430,'/tFXcEccSQMf3lfhfXKSU9iRBpa3.jpg','Get Out',2017,'get-out',false,8,'must see!','A Very unexpected story with a really great twist in the story. Slow pacing good thriller.<br />
And some different and the unique feeling about the movie.','2017-07-30T15:19:49.000Z','2017-07-30T15:19:49.000Z','2017-07-30T00:00:00.000Z'),

	(445,'movie',126889,'/zecMELPbU5YMQpC81Z8ImaaXuf9.jpg','Alien: Covenant',2017,'alien-covenant',false,4,'','Just bad. They destroyed the mystery of aliens with some dumb story plot no one asked in the first place.','2017-07-28T14:04:31.000Z','2017-07-28T14:04:31.000Z','2017-07-28T14:04:31.000Z'),

	(446,'movie',274857,'/gvSWdJN7peehxJYOugV9IwqiAFi.jpg','King Arthur: Legend of the Sword',2017,'king-arthur-legend-of-the-sword',false,7,'','Beautiful and entertaining movie. But don''t know if I will rewatch it sometime in the future.','2017-07-28T14:03:06.000Z','2017-07-28T14:03:06.000Z','2017-07-28T14:03:06.000Z'),

	(447,'movie',263115,'/fnbjcRDYn6YviCcePDnGdyAkYsB.jpg','Logan',2017,'logan',false,4,'','I really dislike all of the X-Man series movies and this one is not an exception. It''s visually nice, but not my taste.','2017-05-22T00:00:26.000Z','2017-05-22T00:00:26.000Z','2017-05-22T00:00:26.000Z'),

	(448,'movie',137106,'/lbctonEnewCYZ4FYoTZhs8cidAl.jpg','The Lego Movie',2014,'the-lego-movie',false,9,'Everything is awesome','','2017-05-14T22:26:18.000Z','2017-05-14T22:26:18.000Z','2014-05-04T00:00:00.000Z'),

	(449,'movie',157336,'/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg','Interstellar',2014,'interstellar',false,5,'Love science fiction, but really not a fan of movie.','Even as movie praised as a very scientifically accurate science fiction movie, but I didn''t like the story that much. Murph.','2017-04-14T22:08:30.000Z','2017-04-14T22:08:30.000Z','2017-04-14T22:08:30.000Z'),

	(450,'movie',324542,'/9WkUSY33MDPGmz0vtzbsfaxTHVa.jpg','Sleepless',2017,'sleepless',false,6,'','Good for a one-time and generic movie to watch. But doesn''t have rewatchable movie qualities. Very forgettable story.','2017-04-12T22:31:43.000Z','2017-04-12T22:31:43.000Z','2017-04-12T22:31:43.000Z'),

	(451,'movie',329865,'/x2FJsf1ElAgr63Y3PNPtJrcmpoe.jpg','Arrival',2016,'arrival',false,7,'','','2017-04-12T16:40:39.000Z','2017-04-12T16:40:39.000Z','2017-04-12T16:40:39.000Z'),

	(452,'movie',158015,'/1x4fHaDdlpWT5P2UV4ClKguWbTE.jpg','The Purge',2013,'the-purge',false,3,'','It''s so bad, that is actually good. Very stupid story. Who could even think about making sequels? But looks like dumb killing sells tickets :D','2017-03-20T22:51:18.000Z','2017-03-20T22:51:18.000Z','2017-03-20T22:51:18.000Z'),

	(453,'movie',375366,'/vdCD8z55a4RNmHQDPIpuMFqoY2B.jpg','The Girl with All the Gifts',2016,'the-girl-with-all-the-gifts',false,7,'','Haven''t finished reading a book before. But after I saw the movie, I don''t want to get back. It''s original zombie movie, but I''m not buying, while some things what happens it''s just unbelievable coincidences and it''s way too much of them. ','2017-03-12T22:39:42.000Z','2017-03-12T22:39:42.000Z','2017-03-12T22:39:42.000Z'),

	(454,'movie',110415,'/oP0ZWr6MsaQ1TV7xvnZJMKSfz0H.jpg','Snowpiercer',2013,'snowpiercer',false,8,'','That is some original movie with a ridiculous premise of the story but overall is great. It has some good action in it.','2017-02-24T22:49:34.000Z','2017-02-24T22:49:34.000Z','2017-02-24T22:49:34.000Z'),

	(455,'movie',410199,'/mU4VeXVK18JtCZsy7i0zczlA9p7.jpg','ARQ',2016,'arq',false,9,'','','2017-02-15T22:40:02.000Z','2017-02-15T22:40:02.000Z','2017-02-15T22:40:02.000Z'),

	(456,'movie',188927,'/65NVDW2LnHt2ko3m8ACxFo8E21f.jpg','Star Trek Beyond',2016,'star-trek-beyond',false,6,'','Not a fan of Start Trek series, but it''s enjoyable movies. ','2017-02-12T22:57:16.000Z','2017-02-12T22:57:16.000Z','2017-02-12T22:57:16.000Z'),

	(457,'movie',7347,'/lwIXz785N2fXi8hsBr1IXciFlkM.jpg','Elite Squad',2007,'elite-squad',false,9,'','','2017-01-25T22:53:05.000Z','2017-01-25T22:53:05.000Z','2017-01-25T22:53:05.000Z'),

	(458,'tv',1972,'/99PJSbcO2LeM10uOGWeFihNp77j.jpg','Battlestar Galactica',2004,'battlestar-galactica-tv-mini-series',false,2,'Garbage','Everything would be fine with this series, but I really hated visual effects in this. I just can''t stand watching it.','2017-01-20T12:53:06.000Z','2017-01-20T12:53:06.000Z','2017-01-20T12:53:06.000Z'),

	(459,'movie',206487,'/kvzYw2CBCPnrLWGSwsYyoS0lFcH.jpg','Predestination',2014,'predestination',false,8,'','I love time travel movies, and this one is one of the better ones. Was awesome first time I watched. But watching again is missing that feeling of unknown and wondering how everything is connected. ','2017-01-12T22:48:38.000Z','2017-01-12T22:48:38.000Z','2017-01-12T22:48:38.000Z'),

	(460,'movie',301365,'/3rBo2AfWSlvsPmYFdJsNUMfkNIo.jpg','The Neon Demon',2016,'the-neon-demon',false,10,'must see!','Amazing visually and story wise. ','2016-11-01T13:24:51.000Z','2016-11-01T13:24:51.000Z','2016-11-01T13:24:51.000Z'),

	(461,'movie',124905,'/iBZhbCVhLpyxAfW1B8ePUxjScrx.jpg','Godzilla',2014,'godzilla',false,8,'recommended','','2016-09-03T15:21:39.000Z','2016-09-03T15:21:39.000Z','2016-09-03T00:00:00.000Z'),

	(462,'movie',24428,'/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg','The Avengers',2012,'the-avengers',false,8,'','','2016-09-02T18:43:58.000Z','2016-09-02T18:43:58.000Z','2016-09-02T00:00:00.000Z'),

	(463,'movie',102899,'/rQRnQfUl3kfp78nCWq8Ks04vnq1.jpg','Ant-Man',2015,'ant-man',false,8,'','It''s really great Marvel movie. It shows that they can make even such weird superhero look interesting. Great comedy elements too. ','2016-08-13T19:48:42.000Z','2016-08-13T19:48:42.000Z','2016-08-13T19:48:42.000Z'),

	(464,'movie',273248,'/k61oZC6IPUhgACGFwxNqdkbrf2M.jpg','The Hateful Eight',2015,'the-hateful-eight',false,10,'','Great dialogues as always with Tarantino movies. Truly amazing.','2016-08-12T14:51:52.000Z','2016-08-12T14:51:52.000Z','2016-08-12T14:51:52.000Z'),

	(465,'tv',86831,'/rlrRI2b6RvM9I9xOBTKqcTaehkE.jpg','Love, Death &#038; Robots',2019,'love-death-robots',false,10,'Recommended for all Science fiction fans','18 Short stories, 18 different styles. Amazing Netflix attempt in this topic dealing with different problems or ideas.<br />
The most outstanding one is "Zima blue" with wonderful storytelling and extraordinary visual style. "The witness", "Secret war", "Lucky 13" and "When yogurt took over" is also one of the Favorites of the series.<br />
But not everything stands out, while some of topics is week developed or not my type. In The end this series is great time to spend.','2019-03-25T10:04:35.000Z','2022-06-01T07:59:10.060Z','2022-05-19T22:00:00.000Z'),

	(466,'movie',490132,'/7BsvSuDQuoqhWmU2fL7W2GOcZHU.jpg','Green Book',2018,'green-book',false,9,'Very good heartwarming movie','It''s really nice heartwarming movie, based on the true story showing person strength in pretty bad resist environment.','2019-03-25T10:02:06.000Z','2019-03-25T10:02:06.000Z','2019-03-16T00:00:00.000Z'),

	(467,'movie',404368,'/qEnH5meR381iMpmCumAIMswcQw2.jpg','Ralph Breaks the Internet',2018,'ralph-breaks-the-internet',false,8,'Nice sequel','It''s hard for sequel to overcome success of prequel, and this is another example when it feels like it''s made just to suck more money from viewers. Story is nice, but not as rewarding as first one, and it has way too much commentary on today''s world.<br />
Still it good time for big and small, with thoughtful message in the end.','2019-02-20T10:38:35.000Z','2019-02-20T10:38:35.000Z','2019-02-17T00:00:00.000Z'),

	(468,'movie',375588,'/AiRfixFcfTkNbn2A73qVJPlpkUo.jpg','Robin Hood',2018,'robin-hood',false,3,'What the fuck is that?','Bows used as automatic weapons? Ridiculous. SWAT teams and almost no swords? Medieval times setting in alternative history view with real world''s problems? Thanks, but too silly. First half an hour you die laughing from ridiculousness, but later you start feeling sad for everyone involved in creating this nonsense movie.','2019-02-20T10:37:23.000Z','2019-02-20T10:37:23.000Z','2019-02-16T00:00:00.000Z'),

	(469,'movie',369972,'/i91mfvFcPPlaegcbOyjGgiWfZzh.jpg','First Man',2018,'first-man',false,8,'','','2019-02-12T12:06:57.000Z','2019-02-12T12:06:57.000Z','2019-02-09T00:00:00.000Z'),

	(470,'movie',438145,'/gZiu9RIcMeQLUaDVqQffQTl6bhy.jpg','Black &#8217;47',2018,'black-47',false,4,'Below average','First half of movie was interesting, but later pacing got worse and couldn''t keep interest anymore.','2019-01-14T14:28:00.000Z','2019-01-14T14:28:00.000Z','2019-01-12T00:00:00.000Z'),

	(471,'movie',324857,'/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg','Spider-Man: Into the Spider-Verse',2018,'spider-man-into-the-spider-verse',false,10,'Spectacular','One of the most amazing animations I have seen in recent history. The details, colors and story creates amazing mix of mastrrmising specticle.','2019-01-07T09:05:52.000Z','2019-01-07T09:05:52.000Z','2019-01-04T00:00:00.000Z'),

	(472,'movie',484247,'/aIYsjQM0piKc0ibPBCTWv3sqshj.jpg','A Simple Favor',2018,'a-simple-favor',false,8,'Good','','2018-12-16T13:20:30.000Z','2018-12-16T13:20:30.000Z','2018-12-16T00:00:00.000Z'),

	(473,'movie',260513,'/9lFKBtaVIhP7E2Pk0IY1CwTKTMZ.jpg','Incredibles 2',2018,'incredibles-2',false,7,'Good, but something was a little bit off','','2018-10-30T20:57:16.000Z','2018-10-30T20:57:16.000Z','2018-10-30T00:00:00.000Z'),

	(474,'movie',424121,'/rd269f2Yftxxam3EOJPYVwrvjIJ.jpg','Apostle',2018,'apostle',false,7,'Netflix, wtf is that? Some really morbid cult horror stuff?','','2018-10-19T18:03:22.000Z','2018-10-19T18:03:22.000Z','2018-10-19T00:00:00.000Z'),

	(475,'movie',489925,'/xTa9cLhGHfQ7084UvoPQ2bBXKqd.jpg','Eighth Grade',2018,'eighth-grade',false,8,'When comedian is serious','','2018-09-26T17:26:01.000Z','2018-09-26T17:26:01.000Z','2018-09-26T00:00:00.000Z'),

	(476,'tv',73126,'/z1vnHi6L2VqB620vT33sdChuIhX.jpg','American Vandal',2018,'american-vandal-s02',false,9,'Even better than 1st Season','','2018-09-16T10:24:47.000Z','2018-09-16T10:24:47.000Z','2018-09-16T00:00:00.000Z'),

	(477,'movie',383498,'/to0spRl1CMDvyUbOnbb4fTk3VAd.jpg','Deadpool 2',2018,'deadpool-2',false,6,'It''s fun like before, but boring too','Was fun to watch, but something was missing. They used the same formula like in the first one, so it looked a little bit old already.','2018-08-21T05:20:32.000Z','2018-08-21T05:20:32.000Z','2018-08-20T00:00:00.000Z'),

	(478,'movie',455980,'/eXXpuW2xaq5Aen9N5prFlARVIvr.jpg','Tag',2018,'tag',false,6,'Decent comedy','','2018-08-13T19:57:47.000Z','2018-08-13T19:57:47.000Z','2018-08-13T00:00:00.000Z'),

	(479,'movie',335984,'/gajva2L0rPYkEWjzgFlBXCAVBE5.jpg','Blade Runner 2049',2017,'blade-runner-2049',false,10,'must see!','A well-made movie with extraordinary visual style and atmosphere.  Great acting and very captivating story. If you enjoyed the original blade runner movie, this sequel gives the same goosebumps watching it. Very exciting.','2018-07-15T20:04:19.000Z','2018-07-15T20:04:19.000Z','2017-12-28T00:00:00.000Z'),

	(480,'movie',312221,'/iBq4od6j1ZAvDVO7hwmHT2Xf2Bt.jpg','Creed',2015,'creed',false,5,'Mediocre','','2018-07-12T10:58:47.000Z','2018-07-12T10:58:47.000Z','2018-07-12T10:58:47.000Z'),

	(481,'movie',277834,'/4JeejGugONWpJkbnvL12hVoYEDa.jpg','Moana',2016,'moana',false,8,'Fun adventure with Rock','','2018-07-05T11:03:27.000Z','2018-07-05T11:03:27.000Z','2018-07-04T00:00:00.000Z'),

	(482,'movie',150540,'/lRHE0vzf3oYJrhbsHXjIkF4Tl5A.jpg','Inside Out',2015,'inside-out',false,10,'God damn... the feelings','Feelings have feelings and amazing story.<br />
One of the best movies (maybe even my favourite from Pixar) I have seen in a while.<br />
Story flows perfectly and you get so familiar with a story. And how not to cry in the end.','2018-06-26T19:31:19.000Z','2018-06-26T19:31:19.000Z','2016-06-12T00:00:00.000Z'),

	(483,'movie',257211,'/9UoAC9tu8kIyRy8AcJnGhnH0gOH.jpg','The Intern',2015,'the-intern',false,9,'Hearth warming movie','','2018-06-26T19:28:57.000Z','2018-06-26T19:28:57.000Z','2017-03-18T00:00:00.000Z'),

	(484,'movie',433808,'/9022CYEGqYETCeXN1oE3uwYJWub.jpg','The Ritual',2017,'the-ritual',false,3,'What''s the point?','The cinematography is nice, but what''s the point with a story? One guy gets alive from a bad hiking trip, where they encounter a devilish demon in the forest. Everyone dies. The main character just tries to survive and remembers some past accident, which have no sense for the plot at all. Very pointless. In the end, he''s the same guy with one past event he regrets, and now all his friends dead. Wtf? Pointless','2018-05-16T20:30:33.000Z','2018-05-16T20:30:33.000Z','2018-05-15T00:00:00.000Z'),

	(485,'movie',401981,'/vLCogyfQGxVLDC1gqUdNAIkc29L.jpg','Red Sparrow',2018,'red-sparrow',false,8,'Nice','Wonderful spy movie. One of the better I seen in a while. As always is about Russian and Americans, but from Russia''s side spy who works against her will, and very well thought out the twist in the story. By watching you expect something to happen by intuition (you just know where it''s going), but how everything is unfolding is amazingly done, with surprises along the way. Wonderful actors and acting, great thriller story. ','2018-05-13T22:00:51.000Z','2018-05-13T22:00:51.000Z','2018-05-13T00:00:00.000Z'),

	(486,'movie',284054,'/uxzzxijgPIY7slzFvMotPv8wjKA.jpg','Black Panther',2018,'black-panther',false,4,'One of the weakest from Marvel movies','I simply don''t understand why so much people praise this movie as one of the top one''s in MCU. I love all the movies what Marvel brings, but this movie is one of the weakest in my opinion.<br />
Or maybe I just don''t like Black Panter''s character. Some kinda cat with a very tight costume :D<br />
The only character I rooted for was a villain, but sadly he lost in the end.<br />
This is the first Marvel movie I won''t going to watch once more again, while it''s also don''t bring much to MCU.<br />
It''s funny to see that in this movie for the diversity they needed include at least one white guy :D','2018-05-02T21:50:51.000Z','2018-05-02T21:50:51.000Z','2018-05-02T00:00:00.000Z'),

	(487,'movie',861,'/wVbeL6fkbTKSmNfalj4VoAUUqJv.jpg','Total Recall',1990,'total-recall',false,2,'Painful','It was painful to watch it. Reboot is way better because the reboot at least decent movie.<br />
This one is just a garbage. ','2018-04-07T16:32:01.000Z','2018-04-07T16:32:01.000Z','2018-04-07T16:32:01.000Z'),

	(488,'movie',190469,'/wmS0nA7EFQwwHYOeIfukgTnFz39.jpg','Redirected',2014,'redirected',false,10,'Really interesting!','Emilis Velyvis - it says everything.<br />
Also because he is Lithuanian director.<br />
I will watch any movie of his like any Quentin Tarantino movie and will enjoy every single second, even the story is not so great and sometimes movie end without any outcome.','2018-04-07T14:00:09.000Z','2018-04-07T14:00:09.000Z','2017-09-08T00:00:00.000Z'),

	(489,'movie',505177,'/egMETBYual2JtfFGigXTA0tGkME.jpg','10x10',2018,'10x10',false,4,'Very poor story','The intriguing beginning of the movie, but steep fall down to shitness in the middle.<br />
A start was thrilling because half of the movie you just asking why the fuck are you doing this. Nothing was explained and that was great. But as soon you find out why you start seeing a plot holes in the movie, and there are lots of them, just lots. There is also really poor character development, you just don''t buy main character''s motivation for all that he does. And all the choices he makes is really dumb or he is very not smart, even when he explained at one point he was preparing for kidnapping for a long time. And let''s do not start about coincidences in the movie, while they have no sense. Feels like it was a great idea, but it was abruptly fast written.<br />
Interesting thirling start before you flush story down the toilet.','2018-03-19T21:46:55.000Z','2018-03-19T21:46:55.000Z','2018-03-19T00:00:00.000Z'),

	(490,'movie',68735,'/k3a41SS1q5xmbvzPvzTIfG7GDlp.jpg','Warcraft: The Beginning',2016,'warcraft-the-beginning',false,5,'Fine','','2018-03-17T13:53:53.000Z','2018-03-17T13:53:53.000Z','2018-03-17T00:00:00.000Z'),

	(491,'movie',9387,'/qw2A587Ee61IwcSOLNFRhuOACZZ.jpg','Conan The Barbarian',1982,'conan-the-barbarian',false,8,'','','2018-03-03T19:35:26.000Z','2018-03-03T19:35:26.000Z','2018-03-03T19:35:26.000Z'),

	(492,'movie',445040,'/c6HoPIBcRv9l2tPB8hbivq71Nw.jpg','My Friend Dahmer',2017,'my-friend-dahmer',false,5,'One time watch','In the beginning, I found movie pretty interesting, but later it get''s a little bit messy and pointless.<br />
It shows Dahmer''s young life and explains some reason what led him to murder, but some of the scenes in the movie felt a little bit out of context or some missing connection with the whole story or maybe it needed to be there while it''s Biography, even it didn''t brought anything to the story.<br />
After one watch you most likely won''t be rewatching it anytime soon or at all, while it has no purpose or moral story in it.','2018-02-26T21:31:05.000Z','2018-02-26T21:31:05.000Z','2018-02-26T00:00:00.000Z'),

	(493,'movie',388,'/mf4i9zZVXMmqWsEb9D0OAY7k3t.jpg','Inside Man',2006,'inside-man',false,5,'','I would call this movie pretty generic crime &amp; little bit action movie.<br />
Nothing to remember much, acting is not so bad, but the story is forgettable. I don''t even remember why they wanted to rob a bank, apart from getting rich.','2018-02-26T19:42:12.000Z','2018-02-26T19:42:12.000Z','2018-02-26T19:42:12.000Z'),

	(494,'movie',121,'/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg','The Lord of the Rings: The Two Towers',2002,'the-lord-of-the-rings-the-two-towers',false,9,'','Already classic.<br><br><img src=''https://media.giphy.com/media/JQQwgVUMDIyAM/giphy.gif'' width=''250''><br><br>Scenery and story is most amazing parts of the movie. Great action and war scenes. The extended version is a little bit too long, but I enjoyed every second anyway.<br />
Great,rewatch value.','2018-02-18T19:00:04.000Z','2018-02-18T19:00:04.000Z','2018-02-18T19:00:04.000Z'),

	(495,'movie',392044,'/iBlfxlw8qwtUS0R8YjIU7JtM6LM.jpg','Murder on the Orient Express',2017,'murder-on-the-orient-express',false,2,'Wtf? (Rolling eyes)','<img src=''https://media.giphy.com/media/qmfpjpAT2fJRK/giphy.gif'' width=''250''><br><br />
I just simply can''t describe how horrible movie was. Of course, it''s beautifully shot and all, but man what a fucking lame jokes they try to put in it and that fucking detective''s persona (wtf?). And the whole point of the story is just ridiculous. I literally couldn''t stand the last 30min of the movie anymore. Painfully ludicrous story and main conclusion. Never again will watch this movie.','2018-02-14T22:50:46.000Z','2018-02-14T22:50:46.000Z','2018-02-14T00:00:00.000Z'),

	(496,'movie',120,'/56zTpe2xvaA4alU51sRWPoKPYZy.jpg','The Lord of the Rings: The Fellowship of the Ring',2001,'the-lord-of-the-rings-the-fellowship-of-the-ring',false,9,'Classic','','2018-02-11T15:28:55.000Z','2018-02-11T15:28:55.000Z','2018-02-11T15:28:55.000Z'),

	(497,'movie',354912,'/eKi8dIrr8voobbaGzDpe8w0PVbC.jpg','Coco',2017,'coco',false,6,'Beautiful, but not the best','I love Pixar movies and the style in which they make all the movies. They know how to make a movie which kids and adults (sometimes even more) can enjoy.<br />
This new movie has a nice message in it, but overall somehow movie itself not connected with me. It''s nothing bad in it, but nothing that makes you stuck to it or cry like most other of Pixar movies.','2018-02-04T13:59:09.000Z','2018-02-04T13:59:09.000Z','2018-02-04T00:00:00.000Z'),

	(498,'movie',284053,'/rzRwTcFvttcN1ZpX2xv4j3tSdJu.jpg','Thor: Ragnarok',2017,'thor-ragnarok',false,10,'must see!','The best Marvel movie in recent years, no doubt. Clever humour, great action scenes and just orgasmic visuals. Full package.<br />
Thor part of the movies was always on the weaker side, but this one brings it to the front of the others, and even more funny than guardians of the galaxy.<br />
It''s also a new twist on the Thor story is like Captain America winter soldier movie, it''s reviving the character and making him cool again and even more than that.<br />
Amazing movie. ','2018-01-26T17:25:50.000Z','2018-01-26T17:25:50.000Z','2017-11-11T00:00:00.000Z'),

	(499,'movie',106747,'/nbnRAibyPSt0ProTJI3hH13KHaL.jpg','Machete Kills',2013,'machete-kills',false,4,'','It''s horrible to enjoy it. It''s good laughs for 30 first minutes,  but later it gets ridiculous and hardly enjoyable.<br />
Just a movie when you drunk or high.','2018-01-20T09:40:59.000Z','2018-01-20T09:40:59.000Z','2018-01-20T09:40:59.000Z'),

	(500,'tv',42009,'/pXeuSWSKgWUnhRFHZ4TjAUU8lbE.jpg','Black Mirror',2017,'black-mirror-season-4',false,9,'must see!','6 different non-conecting stories about wonders of new and near future technology and all hypothetical implementation of it, but mostly how it can go wrong.<br />
Pick any episode and just enjoy. Highly thought out smart stories, which will leave you thinking.<br />
Just one word for this series - "Amazing". Definitely one of my favorites.','2018-01-03T20:52:02.000Z','2018-01-03T20:52:02.000Z','2017-12-30T00:00:00.000Z'),

	(501,'movie',818,'/c4Sus7BvVQM6i9M3Cr0U8Vw0L9f.jpg','Austin Powers in Goldmember',2002,'austin-powers-in-goldmember',false,4,'Too much','','2018-01-01T14:05:08.000Z','2018-01-01T14:05:08.000Z','2017-12-31T00:00:00.000Z'),

	(502,'movie',817,'/wqcE8EAmVl5j3mLuIrHFG7RmQyg.jpg','Austin Powers: The Spy Who Shagged Me',1999,'austin-powers-the-spy-who-shagged-me',false,5,'Fun','','2017-12-30T14:02:45.000Z','2017-12-30T14:02:45.000Z','2017-12-30T00:00:00.000Z'),

	(503,'movie',400106,'/whkT53Sv2vKAUiknQ13pqcWaPXB.jpg','Bright',2017,'bright',false,6,'Interesting, but messy','One weird blockbuster movie from Netflix. It just shows that they can easily make cinema worth movie, even when not putting it in one. But the decision to combine fantasy, dark violence, real world and crime movies, when it comes to a bit messy story of orcs, elves, magicians, and humans, is not so great. The development of story and characters is too messy and without heart. Politics shown in the movie is also bit underdeveloped and stereotypical. Was interesting to see, but needs more work on it, if they decide to make sequel. ','2017-12-29T01:07:41.000Z','2017-12-29T01:07:41.000Z','2017-12-28T00:00:00.000Z'),

	(504,'movie',274862,'/vUo0pNXGhp2ffTJxiStWt6fHL7F.jpg','The LEGO Ninjago Movie',2017,'the-lego-ninjago-movie',false,7,'Fun','Not as same as Original Lego movie, but better than Batman Lego movie.','2017-12-10T16:33:43.000Z','2017-12-10T16:33:43.000Z','2017-12-10T00:00:00.000Z'),

	(505,'movie',337170,'/23ILgoPSO5ShKcTZOuiTVfqFAUB.jpg','American Made',2017,'american-made',false,7,'Fun','','2017-12-05T23:10:12.000Z','2017-12-05T23:10:12.000Z','2017-12-05T00:00:00.000Z'),

	(506,'movie',399170,'/mQrhrBaaHvRfBQq0Px3HtVbH9iE.jpg','Logan Lucky',2017,'logan-lucky',false,6,'Watchable','Watchable, but completely not new. Exactly same feeling like ocean 11, 12 or 13.<br />
Only for one time watch and don''t remember after.','2017-11-15T23:04:21.000Z','2017-11-15T23:04:21.000Z','2017-11-15T00:00:00.000Z'),

	(507,'movie',390043,'/5CGjlz2vyBhW5xHW4eNOZIdgzYq.jpg','The Hitman&#8217;s Bodyguard',2017,'the-hitmans-bodyguard',false,4,'Decent comedy','Meh...<br />
The trailer for the movie was more interesting.','2017-11-10T23:05:53.000Z','2017-11-10T23:05:53.000Z','2017-11-10T00:00:00.000Z'),

	(508,'movie',390051,'/25oWTCGqIik4gUTMidx3L8DI4Bt.jpg','Aftermath',2017,'aftermath',false,3,'Sad story, but not worth it.','Sad story, but sadly also forgettable.','2017-11-06T21:49:46.000Z','2017-11-06T21:49:46.000Z','2017-11-06T00:00:00.000Z'),

	(509,'movie',430354,'/9fGjmzxdiKWsrlY3syrm2aXeTq7.jpg','Bushwick',2017,'bushwick',false,9,'Wow!','That is one of more original movies. The first half of the movie is just mystery of what the hell is happening and why, and that''s is an amazing part of the story.<br />
The story is a little bit weird with very unbelievable motives when you finally learn what is all about, but loved the action and cinematography. Acting is a bit weak with some weird and stupid decisions of main characters.<br />
The ending is a quite disappointing but overall is cool to see a simple civil person side of view in the beginning of the war chaos.<br />
And in conclusion, even when a lot of things is bad with a movie and there is no moral of the story, it''s entertaining to watch.','2017-10-25T16:57:04.000Z','2017-10-25T16:57:04.000Z','2017-10-25T00:00:00.000Z'),

	(510,'movie',403300,'/rdG4jfH0rxkB2FgkYmjj9V4Q31M.jpg','Life',2017,'life',false,8,'','','2017-09-30T21:20:52.000Z','2017-09-30T21:20:52.000Z','2017-09-30T21:20:52.000Z'),

	(511,'movie',291276,'/fBDLdEraxCBKGmOPb6pJPYiDQh1.jpg','Unlocked',2017,'unlocked',false,8,'Surprisingly very intresting','Solid action movie. Was pleasantly surprised, because it kept my attention till the end. The end was a little bit cheesy, but from the movie, I was not expecting much it is fitting well.<br />
Lots of famous actors in the movie like John Malkovich, Orlando Bloom, Michael Douglas.','2017-09-17T18:03:35.000Z','2017-09-17T18:03:35.000Z','2017-09-17T00:00:00.000Z'),

	(512,'movie',106,'/biznhvfedHPp9GKjlVFXH6OZtyU.jpg','Predator',1987,'predator',false,7,'Clasics','','2017-09-16T22:26:23.000Z','2017-09-16T22:26:23.000Z','2017-09-16T22:26:23.000Z'),

	(513,'movie',351460,'/1X19j2albvewAdnTNHx2fFXjOcC.jpg','Death Note',2017,'death-note',false,1,'stay away from it!','It''s really bad. Complete disgrace for original Anime. This movie is Americanized version for Americans, and it''s very cheesy.<br />
I understand it is an adaptation of the original story, so it can be different and changed, but <b>OH MY GOD</b> it''s <b>so horrible</b> because it''s just destroyed the whole point from the original one.<br />
Even directing is not bad, cinematography too, but the scenario is horrible and very much rushed, without proper character development.<br />
The only one really great thing in the movie was the look of Ryuk (actor Willem Dafoe), but he was way too less in the movie''s screen time. Everything else is horrible.<br />
Like main actor "Light" is shown as a pretty stupid student.<br />
L is also not great, but there was no time in the movie to show him solving the case.<br />
The end of the movie little surprised me (wasn''t expected that) but it''s still very bad.<br />
Now I need to rewatch the original Anime.','2017-09-01T11:39:34.000Z','2017-09-01T11:39:34.000Z','2017-08-28T00:00:00.000Z'),

	(514,'tv',60622,'/e890UetS6XH7kqltlZ8VU6qDaHU.jpg','Fargo',2017,'fargo-s01',false,8,'Still good','','2017-06-21T19:46:21.000Z','2017-06-21T19:46:21.000Z','2017-06-21T00:00:00.000Z'),

	(515,'tv',67195,'/vT0Zsbm4GWd7llNjgWEtwY0CqOv.jpg','Legion',2017,'legion',false,9,'Really good','','2017-06-17T10:15:52.000Z','2017-06-17T10:15:52.000Z','2017-06-17T00:00:00.000Z'),

	(516,'movie',97020,'/gM5ql3BKYmHG3WtZ0buKXN7xY8O.jpg','RoboCop',2014,'robocop',false,6,'','An interesting reboot of Robocop with a great cast of actors., but nothing compared to the original. Nice visuals, but pretty decent Hollywood story.','2017-05-12T13:22:51.000Z','2017-05-12T13:22:51.000Z','2017-05-12T13:22:51.000Z'),

	(517,'movie',284052,'/xf8PbyQcR5ucXErmZNzdKR0s8ya.jpg','Doctor Strange',2016,'doctor-strange',false,7,'','I''m a fan of all Marvel movies and this one was entertaining to watch, some trippy scenes of other universes, but something missing to be better.','2017-05-12T13:20:58.000Z','2017-05-12T13:20:58.000Z','2017-05-12T13:20:58.000Z'),

	(518,'movie',686,'/bCpMIywuNZeWt3i5UMLEIc0VSwM.jpg','Contact',1997,'contact',false,2,'','A pretty ridiculous plot of the movie and I kind a hate Jodie Foster so no enjoyment watching her acting for an hour or two.','2017-04-15T17:07:56.000Z','2017-04-15T17:07:56.000Z','2017-04-15T17:07:56.000Z'),

	(519,'movie',14801,'/q8V9H4CBSGf1RlJo4czWkEaEvVp.jpg','Colossus: The Forbin Project',1970,'colossus-the-forbin-project',false,7,'','Very interesting story, but very disappointing ending','2017-02-13T22:54:56.000Z','2017-02-13T22:54:56.000Z','2017-02-13T22:54:56.000Z'),

	(520,'movie',9003,'/3Z0oPHyLnk3Vx6ZMC1MiVwIrKhO.jpg','Hellraiser',1987,'hellraiser',false,6,'','The first half of the movie was really an interesting horror movie, but later it got too much mystic and not horror-ish anymore and pretty lame.','2016-11-15T05:02:09.000Z','2016-11-15T05:02:09.000Z','2016-11-15T05:02:09.000Z'),

	(521,'movie',180,'/ccqpHq5tk5W4ymbSbuoy4uYOxFI.jpg','Minority Report',2002,'minority-report',false,9,'','Great movie with Tom Cruise. Visual is wonderful  and that is amazing because it''s early 2000''s movie. Great action and mystery. ','2016-08-13T10:19:43.000Z','2016-08-13T10:19:43.000Z','2016-08-13T10:19:43.000Z'),

	(522,'movie',325348,'/uzoW684uyO6g4MqdEonbVBC2Z5G.jpg','Hardcore Henry',2015,'hardcore-henry',false,8,'Original point of view','Very original first person point of view for a movie format. Feels like you are yourself in action sequences. ','2016-08-12T14:57:18.000Z','2016-08-12T14:57:18.000Z','2016-08-12T14:57:18.000Z'),

	(523,'movie',10195,'/prSfAi1xGrhLQNxVSUFh61xQ4Qy.jpg','Thor',2011,'thor',false,7,'','','2016-04-19T19:27:54.000Z','2016-04-19T19:27:54.000Z','2016-04-19T19:27:54.000Z'),

	(524,'movie',140607,'/wqnLdwVXoBjKibFRR5U3y0aDUhs.jpg','Star Wars: The Force Awakens',2015,'star-wars-episode-vii',false,8,'','It''s exactly same copy of first Star Wars movie "A New Hope", but I really enjoyed the new visual effects and nostalgic feeling of the known story.','2016-03-13T23:04:15.000Z','2016-03-13T23:04:15.000Z','2016-03-13T23:04:15.000Z'),

	(525,'movie',1891,'/7BuH8itoSrLExs2YZSsM01Qk2no.jpg','The Empire Strikes Back',1980,'star-wars-episode-v',false,9,'','I think it''s the best star wars movie of all so far. ','2016-03-13T18:00:41.000Z','2016-03-13T18:00:41.000Z','2016-03-13T18:00:41.000Z'),

	(526,'movie',1771,'/vSNxAJTlD0r02V9sPYpOjqDZXUK.jpg','Captain America: The First Avenger',2011,'captain-america-the-first-avenger',false,5,'','','2015-04-19T19:27:27.000Z','2015-04-19T19:27:27.000Z','2015-04-19T19:27:27.000Z'),

	(527,'movie',118340,'/r7vmZjiyZw9rpJMQJdXpjgiCOk9.jpg','Guardians of the Galaxy',2014,'guardians-of-the-galaxy',false,8,'Nice surprise','It was really nice surprise to see something so different in MCU. It was experiment and it really paid off. It also took away focus only on Earth side events to far away universe.','2014-08-01T18:30:00.000Z','2014-08-01T18:30:00.000Z','2014-08-01T00:00:00.000Z'),

	(528,'movie',1573,'/wUEizkONxPZmIWQ2lnMttW0suXH.jpg','Die Hard 2',1990,'die-hard-2',false,8,'','','2021-04-10T13:38:32.431Z','2021-11-02T13:53:27.545Z','2001-12-24T23:00:00.000Z'),

	(529,'movie',286217,'/5BHuvQ6p9kfc091Z8RiFNhCwL4b.jpg','The Martian',2015,'the-martian',false,9,'Great adaptation from book','I loved a book and movie turn out also great.<br />
But they changed few things in movie and shortened the story. ','2016-08-01T10:31:33.000Z','2016-08-01T10:31:33.000Z','2016-08-01T10:31:33.000Z'),

	(530,'movie',333371,'/84Dhwz93vCin6T1PX6ctSvWEuNE.jpg','10 Cloverfield Lane',2016,'10-cloverfield-lane',false,8,'Suspense','A Very good suspense thriller. The only problem is ending. It goes down the rail quickly.','2016-07-11T10:39:51.000Z','2016-07-11T10:39:51.000Z','2016-07-11T10:39:51.000Z'),

	(531,'movie',293660,'/fSRb7vyIP8rQpL0I47P3qUsEKX3.jpg','Deadpool',2016,'deadpool',false,6,'','First time I saw in the cinema was great. I like Ryan Reynolds acting and it fits Deadpool character perfectly. But each time I rewatch it get''s lower and lower on the scale of interest. ','2016-07-09T23:39:29.000Z','2016-07-09T23:39:29.000Z','2016-07-09T23:39:29.000Z'),

	(532,'movie',8077,'/hlabk6APJUeihZDaSD9N6iI0f4g.jpg','Alien³',1992,'alien-3',false,6,'','After first two movies, sequels are starting to get worse and worse.','2016-04-13T23:00:45.000Z','2016-04-13T23:00:45.000Z','2016-04-13T23:00:45.000Z'),

	(533,'movie',679,'/r1x5JGpyqZU8PYhbs4UcrO1Xb6x.jpg','Aliens',1986,'aliens',false,7,'','','2016-04-13T20:00:11.000Z','2016-04-13T20:00:11.000Z','2016-04-13T20:00:11.000Z'),

	(534,'movie',348,'/vfrQk5IPloGg1v9Rzbh2Eg3VGyM.jpg','Alien',1979,'alien',false,6,'','Good alien movie.','2016-04-13T18:00:44.000Z','2016-04-13T18:00:44.000Z','2016-04-13T18:00:44.000Z'),

	(535,'movie',1892,'/mDCBQNhR6R0PVFucJl0O4Hp5klZ.jpg','Return of the Jedi',1983,'star-wars-episode-vi',false,8,'','','2016-03-13T20:00:47.000Z','2016-03-13T20:00:47.000Z','2016-03-13T20:00:47.000Z'),

	(536,'tv',43199,'/1WZ1TKndRHgrS66F2bYczukYcOT.jpg','Danger 5',2012,'danger-5-s01',false,9,'','The first season is a completely absurd, and I love it. Only in the second season all jokes start to feel really bad and get''s not funny anymore.','2016-03-12T12:46:07.000Z','2016-03-12T12:46:07.000Z','2016-03-12T12:46:07.000Z'),

	(537,'movie',562,'/yFihWxQcmqcaBR31QM6Y8gT6aYV.jpg','Die Hard',1988,'die-hard',false,8,'','','2021-04-10T13:38:33.704Z','2021-11-02T13:53:03.837Z','2001-12-23T23:00:00.000Z'),

	(538,'movie',286109,'/nZVCZOFfB1NuzsuQGhHjAkr45dy.jpg','Ah My Buddha Katsu',2006,'ah-my-buddha-katsu',true,6,'','','2021-11-03T12:53:16.599Z','2021-11-03T14:07:59.669Z','2008-11-02T23:00:00.000Z'),

	(539,'tv',88042,'/woxT7a6VTElGzrxFH19WDmN7gQ7.jpg','O Maidens in Your Savage Season',2019,'o-maidens-in-your-savage-season',true,8,'Liked OP song','','2021-11-03T12:54:47.633Z','2022-02-13T11:59:44.467Z','2021-09-27T22:00:00.000Z'),

	(540,'tv',113687,'/4GgHByKZ4JivLszOrMP1bgJ5kx4.jpg','Remake Our Life!',2021,'remake-our-life',true,8,'','','2021-11-03T12:56:22.712Z','2021-11-03T14:04:14.336Z','2021-09-24T22:00:00.000Z'),

	(541,'movie',38142,'/t0ISGhwZtghakg46TWCOWBTIflZ.jpg','5 Centimeters per Second',2007,'5-centimeters-per-second',true,9,'','','2021-11-03T12:58:16.587Z','2021-11-03T14:04:17.957Z','2011-01-23T23:00:00.000Z'),

	(542,'tv',34061,'/v2DDGnv9kElP7ECd4j6jsLxEDSb.jpg','Chrono Crusade',2003,'chrono-crusade',true,7,'','','2021-11-03T12:59:32.177Z','2021-11-03T14:04:22.576Z','2009-11-02T23:00:00.000Z'),

	(543,'tv',13916,'/iigTJJskR1PcjjXqxdyJwVB3BoU.jpg','Death Note',2006,'death-note-anime',true,9,'','','2021-11-03T13:00:55.846Z','2021-11-03T14:07:38.934Z','2012-11-02T23:00:00.000Z'),

	(544,'tv',37863,'/93h3hEqZ5iXtJyDazj80RfzOHu3.jpg','Fullmetal Alchemist',2003,'fullmetal-alchemist',true,8,'','','2021-11-03T13:01:39.948Z','2021-11-03T14:04:35.698Z','2012-11-02T23:00:00.000Z'),

	(545,'tv',31911,'/dzSALlMy3Mss6kPMjvf4Sl4pAtR.jpg','Fullmetal Alchemist: Brotherhood',2009,'fullmetal-alchemist-brotherhood',true,9,'','','2021-11-03T13:01:45.370Z','2021-11-03T14:04:31.869Z','2013-11-02T23:00:00.000Z'),

	(546,'tv',61379,'/maPv22inKIcyfOCil3wrWiyJ7gC.jpg','Monthly Girls'' Nozaki-kun',2014,'monthly-girls-nozaki-kun',true,8,'','','2021-11-03T13:02:22.432Z','2021-11-03T14:04:28.232Z','2021-02-14T23:00:00.000Z'),

	(547,'tv',102088,'/oxc5qsh0PULood08keUDVrOWgve.jpg','How a Realist Hero Rebuilt the Kingdom',2021,'how-a-realist-hero-rebuilt-the-kingdom',true,7,'Little bit childish','','2021-11-03T13:04:03.346Z','2022-06-18T22:03:33.308Z','2022-06-10T22:00:00.000Z'),

	(548,'tv',107001,'/osCAbL4rdGUVLH3o2rlYZpDaiCb.jpg','The Idaten Deities Know Only Peace',2021,'the-idaten-deities-know-only-peace',true,6,'Colourful and original','','2021-11-03T13:04:53.124Z','2021-11-04T13:43:05.770Z','2021-09-27T22:00:00.000Z'),

	(549,'tv',16830,'/xA3wsLJzj6XnvuryerPBPwoQodH.jpg','Hellsing',2001,'hellsing',true,9,'','','2021-11-03T13:05:56.515Z','2021-11-03T14:04:50.353Z','2003-11-05T23:00:00.000Z'),

	(550,'tv',106519,'/aNpf4vaeZiucPqrOlIKs5Sqxzbs.jpg','Higehiro: After Being Rejected, I Shaved and Took in a High School Runaway',2021,'higehiro-after-being-rejected-i-shaved-and-took-in-a-high-school-runaway',true,7,'','','2021-11-03T13:06:31.273Z','2021-11-03T14:04:54.548Z','2021-08-06T22:00:00.000Z'),

	(551,'tv',112138,'/9PBHtRI3ZFdE3UkxsHBxbkzF3pl.jpg','Kageki Shojo!!',2021,'kageki-shojo',true,7,'','','2021-11-03T13:07:44.019Z','2021-11-03T14:04:57.389Z','2021-09-24T22:00:00.000Z'),

	(552,'tv',85844,'/vdRt0W5sZDLlshT2o3y7c7gZYJA.jpg','Wise Man’s Grandchild',2019,'wise-mans-grandchild',true,7,'','','2021-11-03T13:08:40.806Z','2021-11-03T14:05:04.803Z','2021-08-28T22:00:00.000Z'),

	(553,'tv',99618,'/oTbqSiJx2nxFJ8zSM8JLdkTUFKZ.jpg','So I''m a Spider, So What?',2021,'so-im-a-spider-so-what',true,8,'Great beginning until story shifts to other characters ','','2021-11-03T13:10:29.886Z','2022-02-12T17:45:05.367Z','2021-07-02T22:00:00.000Z'),

	(554,'tv',114198,'/6pRbPIGuBAZDjblqhDl6U4CUQxI.jpg','Full Dive: This Ultimate Next-Gen Full Dive RPG Is Even Shittier Than Real Life!',2021,'full-dive-this-ultimate-next-gen-full-dive-rpg-is-even-shittier-than-real-life',true,2,'Crap 💩','','2021-11-03T13:11:29.326Z','2022-02-13T12:04:34.863Z','2021-06-23T22:00:00.000Z'),

	(555,'tv',30992,'/c8V0gxvi0824hsLAKaMZdC6ZX70.jpg','Love Hina',2000,'love-hina',true,8,'First seen Anime in my life (from beginning to end)','','2021-11-03T13:12:18.041Z','2022-03-14T12:02:40.434Z','2000-11-02T23:00:00.000Z'),

	(556,'tv',106055,'/gFs2oxAjyzMu7Bx9mUJKeW3K4ym.jpg','Love Live! Superstar!!',2021,'love-live-superstar',true,8,'Good','School Idols. Nothing else to add, only that animation quality is pretty high and very beautiful.','2021-11-03T13:12:50.419Z','2021-11-04T13:36:07.921Z','2021-10-21T22:00:00.000Z'),

	(557,'tv',91801,'/aed6I1EMR4Lbk8bdikWrndbn5Og.jpg','Welcome to Demon School! Iruma-kun',2019,'welcome-to-demon-school-iruma-kun',true,8,'','','2021-11-03T13:13:32.361Z','2021-11-03T14:05:41.652Z','2021-03-22T23:00:00.000Z'),

	(558,'tv',93019,'/4MojZik5N62IShd2BFVEHyaRBLP.jpg','ORESUKI: Are you the only one who loves me?',2019,'oresuki-are-you-the-only-one-who-loves-me',true,8,'','','2021-11-03T13:18:21.831Z','2021-11-03T14:05:51.821Z','2021-08-30T22:00:00.000Z'),

	(559,'tv',107003,'/LgbUpJiaEDsMnbsnWioqjxbuaW.jpg','Peach Boy Riverside',2021,'peach-boy-riverside',true,6,'','','2021-11-03T13:19:25.529Z','2021-11-03T14:06:02.684Z','2021-09-15T22:00:00.000Z'),

	(560,'tv',99084,'/rHijpbAPTlwLdtz5RWHwLWMyns4.jpg','Princess Connect! Re:Dive',2020,'princess-connect-redive',true,6,'Holy Shit, how stupid is MC','If you replace MC with wooden log, it still would be smarter than this main character. Only what saves this show are three supporting chapters around him.','2021-11-03T13:20:06.218Z','2022-02-13T12:03:24.420Z','2021-09-24T22:00:00.000Z'),

	(561,'tv',1063,'/lYpHeSm7BcUxAbBx1ucuEH7oGAe.jpg','Samurai Champloo',2004,'samurai-champloo',true,8,'','','2021-11-03T13:20:46.407Z','2021-11-03T14:06:12.960Z','2011-11-02T23:00:00.000Z'),

	(562,'tv',113808,'/utsDTNblL4LojGqdPEncqsBLqjg.jpg','Seirei Gensouki: Spirit Chronicles',2021,'seirei-gensouki-spirit-chronicles',true,5,'','','2021-11-03T13:21:31.550Z','2021-11-03T14:06:18.194Z','2021-09-19T22:00:00.000Z'),

	(563,'tv',100567,'/tk0LqlgKzc79nWtTmgGz41yu6p3.jpg','Combatants Will Be Dispatched!',2021,'combatants-will-be-dispatched',true,6,'','','2021-11-03T13:22:16.582Z','2021-11-03T14:06:21.939Z','2021-06-20T22:00:00.000Z'),

	(564,'tv',111255,'/7Ief4J2hkBuaKxUzy9fMqUoh9BY.jpg','Wonder Egg Priority',2021,'wonder-egg-priority',true,7,'','','2021-11-03T13:24:43.168Z','2021-11-03T14:06:25.086Z','2021-04-18T22:00:00.000Z'),

	(565,'tv',83097,'/oBgRCpAbtMpk1v8wfdsIph7lPQE.jpg','The Promised Neverland',2019,'the-promised-neverland',true,9,'Only first season is worth watching','ONLY the first season is great. The second one is a disaster','2021-11-03T13:25:41.215Z','2021-11-04T21:10:25.499Z','2021-05-02T22:00:00.000Z'),

	(566,'tv',82822,'/vSaonGCXOtC8RmqR3e5L8f4lAdI.jpg','Zombieland Saga',2018,'zombieland-saga',true,4,'','','2021-11-03T13:26:18.676Z','2021-11-03T14:07:43.971Z','2021-05-03T22:00:00.000Z'),

	(567,'movie',515042,'/v4QfYZMACODlWul9doN9RxE99ag.jpg','Free Solo',2018,'free-solo',false,10,'Engaging documentary','','2021-11-06T22:30:19.121Z','2021-11-09T07:58:52.310Z','2021-11-06T22:30:19.121Z'),

	(568,'tv',105009,'/arB3L9pZZBSzUPSC8BEv8c3X0bF.jpg','Tokyo Revengers',2021,'tokyo-revengers',true,8,'"Cry baby" delinquent','Then it comes to delinquents, you don''t expect so much crying, only kicking each other teeth, but the protagonist is a "cry baby" 😄 but the story is good, and he might later grow up from this viny persona. Looking forward to seeing more, only if they will make it.','2021-11-09T20:14:52.697Z','2021-11-18T08:21:06.614Z','2021-11-09T20:14:52.697Z'),

	(569,'tv',98123,'/AcN5WbEjfal5wKvf5B6VpWoISAE.jpg','The Daily Life of the Immortal King',2020,'the-daily-life-of-the-immortal-king',true,9,'Chinese anime','It''s a bit different from Japanese, but surprisingly China is also can make wonderful anime.','2021-11-14T22:52:56.716Z','2021-11-22T09:55:11.369Z','2021-11-14T22:52:56.716Z'),

	(570,'movie',566525,'/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg','Shang-Chi and the Legend of the Ten Rings',2021,'shang-chi-and-the-legend-of-the-ten-rings',false,3,'Marvel, wtf is this?','It''s a simply ridiculously boring same old burger from Marvel, you can''t eat anymore while it has no taste anymore. Surprisingly according to reviews, that people like it, but I can''t understand why, while it doesn''t have a good story, all the characters are simply annoying idiots, so only left with visual cinematography and fight choreography, which are half decent, but ridiculous at times.','2021-11-18T18:45:25.071Z','2021-11-22T09:53:01.572Z','2021-11-18T18:45:25.071Z'),

	(571,'tv',94605,'/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg','Arcane',2021,'arcane',false,10,'Left me speechless.','An Emotional, Epic Masterpiece. Everything; from the organic, fluent animation, the stunning visuals, the amazing characters and the fantastically written story, Arcane is truly one of a kind. ','2021-11-21T16:20:10.253Z','2021-12-01T08:25:22.365Z','2021-11-21T16:20:10.253Z'),

	(572,'movie',580489,'/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg','Venom: Let There Be Carnage',2021,'venom-let-there-be-carnage',false,6,'made for children ','','2021-11-26T20:22:46.831Z','2022-02-13T11:57:18.321Z','2021-11-26T20:22:46.831Z'),

	(573,'movie',550988,'/xmbU4JTUm8rsdtn7Y3Fcm30GpeT.jpg','Free Guy',2021,'free-guy',false,6,'way too ridiculous ','','2021-11-27T21:13:49.180Z','2022-02-13T11:56:59.015Z','2021-11-27T21:13:49.180Z'),

	(574,'movie',607844,'/grFDK4ddh2IMn464Ve4ke4uz2ao.jpg','Escape from Mogadishu',2021,'escape-from-mogadishu',false,8,'Horrors of war','','2021-11-28T15:06:47.126Z','2021-12-01T10:53:50.081Z','2021-11-28T15:06:47.126Z'),

	(575,'movie',512195,'/wdE6ewaKZHr62bLqCn7A2DiGShm.jpg','Red Notice',2021,'red-notice',false,8,'Very entertaining','','2021-11-28T21:43:31.564Z','2021-12-01T10:52:56.171Z','2021-11-28T21:43:31.564Z'),

	(576,'tv',86034,'/kB9tdE00Z5zWIJQux1jiYvRyPIC.jpg','Arifureta: From Commonplace to World''s Strongest',2019,'arifureta-from-commonplace-to-worlds-strongest',true,6,'funny Harem isekai','','2021-12-01T20:28:19.537Z','2022-02-13T11:56:40.495Z','2021-12-01T20:28:19.537Z'),

	(577,'movie',617653,'/zjrJE0fpzPvX8saJXj8VNfcjBoU.jpg','The Last Duel',2021,'the-last-duel',false,8,'too long until the best part','','2021-12-04T13:06:44.493Z','2021-12-04T20:57:30.503Z','2021-12-04T13:06:44.493Z'),

	(578,'movie',890825,'/saGMNCD6ayFqmOb9mX2MkkMmW7w.jpg','14 Peaks: Nothing Is Impossible',2021,'14-peaks-nothing-is-impossible',false,9,'🏔','','2021-12-04T20:56:22.834Z','2021-12-04T20:56:52.429Z','2021-12-04T20:56:22.834Z'),

	(579,'tv',91768,'/aVGueAM88cc4sX6PeMvuAPObDc4.jpg','Ascendance of a Bookworm',2019,'ascendance-of-a-bookworm',true,8,'📖📕📕📗📘📙📖📘📗','','2021-12-08T18:45:51.083Z','2021-12-10T13:35:08.028Z','2021-12-08T18:45:51.083Z'),

	(580,'movie',624860,'/8c4a8kE7PizaGQQnditMmI1xbRp.jpg','The Matrix Resurrections',2021,'the-matrix-resurrections',false,6,'No one asked for this','','2021-12-23T20:12:15.120Z','2021-12-25T22:55:26.766Z','2021-12-23T20:12:15.120Z'),

	(581,'movie',355020,'/c3IMOdEzVOiGli1LpEcZyjEIGje.jpg','Winter on Fire: Ukraine''s Fight for Freedom',2015,'winter-on-fire-ukraines-fight-for-freedom',false,9,'Ukrainians killing Ukrainians ','','2021-12-23T22:41:02.458Z','2021-12-23T22:46:30.749Z','2021-12-23T22:41:02.458Z'),

	(582,'tv',123876,'/rOEaKS6jdZacivHnM56NQ4yhccW.jpg','Komi Can''t Communicate',2021,'komi-cant-communicate',true,9,'🐈','','2021-12-24T18:23:35.572Z','2022-06-23T11:53:46.711Z','2022-06-22T22:00:00.000Z'),

	(583,'tv',113256,'/hk5qqvJLRBDaPYBc8lKkSYQrR1c.jpg','Banished From the Hero''s Party, I Decided to Live a Quiet Life in the Countryside',2021,'banished-from-the-heros-party-i-decided-to-live-a-quiet-life-in-the-countryside',true,3,'Feels cheap','','2021-12-25T17:48:40.292Z','2021-12-25T17:50:39.085Z','2021-12-25T17:48:40.292Z'),

	(584,'tv',105511,'/d8OgdZT9xeNv3REQMpBfnXhpD5r.jpg','My Senpai Is Annoying',2021,'my-senpai-is-annoying',true,9,'Even better than manga','','2021-12-25T17:53:18.267Z','2022-02-12T18:00:51.191Z','2021-12-25T17:53:18.267Z'),

	(585,'movie',646380,'/5SkzM3TPpt72FoO46NSjipNXkNG.jpg','Don''t Look Up',2021,'dont-look-up',false,4,'Disapointing','It tried comically to tell the story of what would happen if humanity would face an extinction-level threat, but it gets boring quickly and ends on complete nonsense.','2021-12-25T20:53:14.770Z','2022-01-04T13:47:49.134Z','2021-12-25T20:53:14.770Z'),

	(586,'tv',123670,'/rpTuOr1MjcPcHWjvxhe00X6O4o9.jpg','BUILD-DIVIDE -#000000- CODE BLACK',2021,'build-divide-000000-code-black',true,4,'Why I watched this?','','2021-12-25T22:50:03.805Z','2021-12-25T22:52:12.844Z','2021-12-25T22:50:03.805Z'),

	(587,'tv',96777,'/fFT0IgqtCOks4munDTxQwkvNJkd.jpg','The Silent Sea',2021,'the-silent-sea',false,8,'Drowned on the moon 🌙','','2021-12-27T18:47:05.458Z','2021-12-27T18:47:49.190Z','2021-12-27T18:47:05.458Z'),

	(588,'tv',82591,'/x8ZQyxAFjz9jtCGivbOMYUC4Tp3.jpg','Goblin Slayer',2018,'goblin-slayer',true,10,'Best goblin is dead goblin','The first thought after finishing it was - it is just exactly, how I would imagine JUDGE DREDD in the medieval fantasy world of adventurers (and it''s not Isekai 😁). It has brutal and gruesome fighting scenes, death, rape and even a girl pissing herself from fear of facing a deathly situation. It is just not what you see in anime every day. Also worth mentioning that the main protagonist has the same traits as JUDGE DREDD (you don''t even see his face through the whole series 😆 and he sounds badass),','2022-01-03T19:39:35.176Z','2022-01-04T13:41:54.515Z','2022-01-03T19:39:35.176Z'),

	(589,'movie',631132,'/oyDaF4za9C9GxfYSyZUmj2aZGJT.jpg','Goblin Slayer: Goblin''s Crown',2020,'goblin-slayer-goblins-crown',false,9,'Still the best goblin is dead goblin','Good continuation of series.
Only the first 20min is unnecessary to see if you have seen a series recently while it''s a recap of the story so far. Afterward is pure joy.','2022-01-03T21:27:42.231Z','2022-03-07T08:29:41.329Z','2022-01-03T21:27:42.231Z'),

	(590,'tv',121017,'/a5SstgQQ9XmIRrYR0HL95sPpGAQ.jpg','Irina: The Vampire Cosmonaut',2021,'irina-the-vampire-cosmonaut',true,4,'🧛🦇','Disappointing ending','2022-01-04T20:21:13.845Z','2022-01-05T07:35:26.246Z','2022-01-04T20:21:13.845Z'),

	(591,'movie',425909,'/fQZxAA6PPWa2Lk9NgcO3m6QDlXQ.jpg','Ghostbusters: Afterlife',2021,'ghostbusters-afterlife',false,9,'👻','It faithful sequel to the first Ghostbusters movies together with Stanger Things. If you liked the first movie from long ago, you will definitely enjoy this.','2022-01-06T18:23:24.174Z','2022-03-07T08:29:01.991Z','2022-01-06T18:23:24.174Z'),

	(592,'tv',118821,'/gcUSD2DFIuzyzG5vMaPWlM2AiBN.jpg','The World''s Finest Assassin Gets Reincarnated in Another World as an Aristocrat',2021,'the-worlds-finest-assassin-gets-reincarnated-in-another-world-as-an-aristocrat',true,8,'I liked it','','2022-01-06T20:43:06.066Z','2022-03-07T08:26:24.548Z','2022-01-06T20:43:06.066Z'),

	(593,'movie',581726,'/niw2AKHz6XmwiRMLWaoyAOAti0G.jpg','Infinite',2021,'infinite',false,4,'30min good and then comes the bullshit','','2022-01-22T19:09:15.348Z','2022-01-31T07:25:32.629Z','2022-01-22T19:09:15.348Z'),

	(594,'tv',112624,'/xqeUproSIu5XDBrEocm9TE76Kdb.jpg','The Vampire Dies in No Time',2021,'the-vampire-dies-in-no-time',true,7,'It has few "ROFL" moments','','2022-02-03T21:16:56.515Z','2022-02-09T13:08:20.221Z','2022-02-03T21:16:56.515Z'),

	(595,'movie',663870,'/sshNnwmQLk720iBQ0dZg3GVGKfK.jpg','Riders of Justice',2020,'riders-of-justice',false,9,'Great contrast of tragedy and comedy','','2022-02-05T16:43:04.982Z','2022-02-05T16:43:43.631Z','2022-02-05T16:43:04.982Z'),

	(596,'movie',665251,'/vlIYzx7cc4Wvaoh7ShjF2HZG45.jpg','Altered Carbon: Resleeved',2020,'altered-carbon-resleeved',true,4,'3d graphics sucks, story is descent.','','2022-02-05T18:51:40.931Z','2022-03-07T08:25:18.619Z','2022-02-05T18:51:40.931Z'),

	(597,'tv',123525,'/AlUFBZNKSHM0tw9MZMF9A3BIPeK.jpg','The Faraway Paladin',2021,'the-faraway-paladin',true,7,'Just fine','','2022-02-05T21:03:45.716Z','2022-02-09T13:06:36.613Z','2022-02-05T21:03:45.716Z'),

	(598,'movie',451048,'/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg','Jungle Cruise',2021,'jungle-cruise',false,8,'Dumb fun','','2022-02-06T19:03:37.871Z','2022-02-09T13:06:18.250Z','2022-02-06T19:03:37.871Z'),

	(599,'tv',60834,'/4UOpAafs6PCsZ8AwlCjGVIVn2ET.jpg','Black Bullet',2014,'black-bullet',true,9,'Really enjoyed','','2022-02-07T07:37:01.503Z','2022-02-07T07:37:54.617Z','2022-02-07T07:37:01.503Z'),

	(600,'movie',308504,'/uGqlk7Hu8FRLVDcFZ16NxTy09ZE.jpg','Last Knights',2015,'last-knights',false,2,'Damm, I almost fell a sleep ','','2022-02-12T14:54:51.649Z','2022-02-12T17:54:07.138Z','2022-02-12T14:54:51.649Z'),

	(601,'tv',86836,'/1yss3gl6mMNT9Txvdtvnu2KTWt9.jpg','Why the Hell are You Here, Teacher!?',2019,'why-the-hell-are-you-here-teacher',true,7,'A lot of Boobies','This Anime is on the borderline to crossing into Hentai and the strongest point is unexpected events in the story. I was shockingly surprised by what the director come up with. Don''t remember laughing so much in a long time.','2022-02-13T13:00:12.019Z','2022-03-07T08:11:24.602Z','2022-02-13T13:00:12.019Z'),

	(602,'tv',72509,'/h0CFXdzAJ7uQhUDtjhe7TyHLHRt.jpg','Tsuredure Children',2017,'tsuredure-children',true,8,'Short entertaining love stories','','2022-02-15T19:36:25.439Z','2022-03-07T08:24:17.803Z','2022-02-15T19:36:25.439Z'),

	(603,'tv',116135,'/izIMqapegdEZj0YVDyFATPR8adh.jpg','Vikings: Valhalla',2022,'vikings-valhalla',false,6,'Pretty weird unasked sequel','It''s an unexpected sequel to the original series, which had already ended, but milking money from a dead cow is common practice to studios, so this one exists. But it falls a bit flat, while production is all over the place, it had some good moments, but there are more negative flaws. It has one very bizarre choice, while at some points feels like it was filmed by two different studios who do not decide on what video frame rate to use to film, so they did with what they like, and afterwards, someone just stitched those two together. ','2022-03-01T18:46:24.430Z','2022-04-04T10:53:25.230Z','2022-03-01T18:46:24.430Z'),

	(604,'tv',62565,'/vDTSx6BuelrdAO1CjVGs9MuUnMP.jpg','My Love Story!!',2015,'my-love-story',true,9,'True love 💖','','2022-03-02T20:44:12.983Z','2022-04-05T12:00:27.721Z','2022-03-02T20:44:12.983Z'),

	(605,'movie',414906,'/74xTEgt7R36Fpooo50r9T25onhq.jpg','The Batman',2022,'the-batman',false,9,'🦇','Dark literary and storywise. It''s on a level with Dark Knight.','2022-03-06T18:32:57.196Z','2022-03-07T08:14:37.560Z','2022-03-06T18:32:57.196Z'),

	(606,'tv',90999,'/hY9YBN3arW6yWA01IhzVZvJfMbJ.jpg','Science Fell in Love, So I Tried to Prove It',2020,'science-fell-in-love-so-i-tried-to-prove-it',true,9,'Can love be proven scientifically?','An insane story about scientists and try to find proof of love scientifically. Very funny.','2022-03-06T19:21:41.910Z','2022-03-07T08:13:33.531Z','2022-03-06T19:21:41.910Z'),

	(607,'tv',63323,'/bRq7nVf7fkWA5XrvlEME6D3otth.jpg','SHIMONETA: A Boring World Where the Concept of Dirty Jokes Doesn''t Exist',2015,'shimoneta-a-boring-world-where-the-concept-of-dirty-jokes-doesnt-exist',true,9,'Cock and balls!','','2022-03-07T18:27:05.486Z','2022-03-08T10:33:33.857Z','2022-03-07T18:27:05.486Z'),

	(608,'tv',62450,'/omOgvHRgfdWku75Gd8YSk2n0pX1.jpg','Plastic Memories',2015,'plastic-memories',true,10,'The feels 😭','Such a beautiful love story, but you need to bring tissues, while ending is definitely going to make you cry.','2022-03-10T18:16:11.225Z','2022-04-25T12:54:58.471Z','2022-03-09T23:00:00.000Z'),

	(609,'tv',72517,'/8BtSk9DGIlS24otIB3qCagVCI6W.jpg','Classroom of the Elite',2017,'classroom-of-the-elite',true,9,'','','2022-03-10T18:26:07.122Z','2022-03-10T18:28:06.138Z','2022-03-08T23:00:00.000Z'),

	(610,'movie',136400,'/ptURGAFktibhk7DEAbMazlmNqWa.jpg','2 Guns',2013,'2-guns',false,7,'Mindless fun action','','2022-03-12T15:55:09.188Z','2022-03-15T09:59:38.011Z','2022-03-12T15:55:09.188Z'),

	(611,'tv',67154,'/g2DoS2AwOtaRlJStUNlcTsm3pmS.jpg','Chivalry of a Failed Knight',2015,'chivalry-of-a-failed-knight',true,8,'From Zero to Hero','','2022-03-12T19:35:12.328Z','2022-03-15T10:02:36.359Z','2022-03-12T19:35:12.328Z'),

	(612,'tv',53347,'/ozAJMoB2ISUdfd7JLRKO12yxFNh.jpg','The "Hentai" Prince and the Stony Cat',2013,'the-hentai-prince-and-the-stony-cat',true,8,'','','2022-03-13T10:42:10.900Z','2022-03-13T10:42:15.758Z','2022-03-13T10:42:10.900Z'),

	(613,'tv',70296,'/8xbHgFPwQiWyf9mSj3cx9UD5xot.jpg','Anti-Magic Academy: The 35th Test Platoon',2015,'anti-magic-academy-the-35th-test-platoon',true,8,'Witches and Inquisitors ','','2022-03-13T16:03:14.466Z','2022-03-15T10:01:07.415Z','2022-03-13T16:03:14.466Z'),

	(614,'tv',66077,'/q3TdnhtfXh6yfrHuZO0hEmkjjnr.jpg','Tanaka-kun Is Always Listless',2016,'tanaka-kun-is-always-listless',true,7,'Feel tired after watching 😆 because nothing happens','','2022-03-15T08:44:51.068Z','2022-03-24T07:07:34.453Z','2022-03-15T08:44:51.068Z'),

	(615,'tv',70878,'/vR6rPnVyWUSU7im2QcKXwSjjCXM.jpg','Eromanga Sensei',2017,'eromanga-sensei',true,9,'Funny, but, boy, it''s on the edge of acceptable morals','The animation style is just top-notch, but one phrase - "sibling romantic comedy" -says it all about the story, and, oh boy, it''s perverted, but at least it''s only playing around with that and does not cross the line of no return (at least now). I just hope it won''t have the same fate as OREIMO.','2022-03-16T22:43:09.497Z','2022-03-24T07:08:53.683Z','2022-03-19T23:00:00.000Z'),

	(616,'tv',56353,'/efZcn6XAMhz4n5vHVKRPVvvBfJ2.jpg','Oreimo',2010,'oreimo',true,6,'Could have been good, but it has the worst ending in ages','','2022-03-18T18:18:14.999Z','2022-03-23T22:18:39.615Z','2022-03-18T18:18:14.999Z'),

	(617,'tv',70882,'/6UoTzmBwC73sbVKjIwb0Q0kJl2E.jpg','Armed Girl''s Machiavellism',2017,'armed-girls-machiavellism',true,9,'Girls with swords ⚔','','2022-03-20T17:21:09.299Z','2022-04-04T10:52:53.271Z','2022-03-20T17:21:09.299Z'),

	(618,'tv',60808,'/5rWXV217xIxUjIWPrzl1bbY1VNJ.jpg','No Game No Life',2014,'no-game-no-life',true,9,'Let''s play a game!','Great and very entertaining story, about a world where games are an essential part of life, even with a lot of flaws I''m dying to see more of this.','2022-03-23T19:05:34.906Z','2022-03-23T22:16:10.736Z','2022-03-23T19:05:34.906Z'),

	(619,'tv',74092,'/6uIif8VdVsmgAGovlqlUTIgmODm.jpg','A Sister''s All You Need',2017,'a-sisters-all-you-need',true,8,'','','2022-03-24T19:05:04.982Z','2022-03-24T19:05:35.269Z','2022-03-24T19:05:04.982Z'),

	(620,'movie',378018,'/c0WLRyT0AmUi41nVXBnqmJshIBn.jpg','The Void',2016,'the-void',false,7,'','','2022-03-26T17:53:03.517Z','2022-03-28T13:15:55.182Z','2022-03-26T17:53:03.517Z'),

	(621,'tv',123249,'/A6mxBwvvv63JXZm3xXKv4SugE0L.jpg','My Dress-Up Darling',2022,'my-dress-up-darling',true,10,'As wonderful as source material','','2022-03-26T18:17:13.831Z','2022-03-28T13:16:33.893Z','2022-03-26T18:17:13.831Z'),

	(622,'tv',46004,'/qi98miuMe1oB5WWo2lonuKFTq4P.jpg','Date a Live',2013,'date-a-live',true,7,'Story concept is bananas crazy','','2022-03-29T19:29:29.822Z','2022-04-04T10:50:13.737Z','2022-03-29T19:29:29.822Z'),

	(623,'tv',125712,'/p7HJFmg3AuzbzVQcoDroloLD9xW.jpg','Life With an Ordinary Guy Who Reincarnated Into a Total Fantasy Knockout',2022,'life-with-an-ordinary-guy-who-reincarnated-into-a-total-fantasy-knockout',true,6,'Dude is falling in love with girl which used to be a dude 😄','','2022-03-29T20:14:23.338Z','2022-04-04T10:57:36.792Z','2022-03-29T20:14:23.338Z'),

	(624,'tv',70875,'/hqjNMqv0Pj4idFHsr5wUQRyJ8rV.jpg','Grimoire of Zero',2017,'grimoire-of-zero',true,9,'Beauty witch and the beast adventurers','','2022-04-01T00:55:48.808Z','2022-04-04T10:54:10.190Z','2022-04-01T00:55:48.808Z'),

	(625,'tv',93653,'/sqQUbshLEsJoA9QKVUbUGNRtnvX.jpg','In/Spectre',2020,'inspectre',true,7,'Spirits, ghost and other supernatural','','2022-04-03T21:03:07.605Z','2022-04-04T10:55:44.532Z','2022-04-03T21:03:07.605Z'),

	(626,'tv',45950,'/5a9vaaLDAZTYjgfWIw7ZYhL1m1A.jpg','High School DxD',2012,'high-school-dxd',true,7,'Demons, dragons and a lot of boobs','','2022-04-03T21:04:17.931Z','2022-04-05T10:35:28.020Z','2022-04-03T21:04:17.931Z'),

	(627,'movie',406759,'/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg','Moonfall',2022,'moonfall',false,2,'Ridiculous ','','2022-04-05T07:34:49.052Z','2022-04-19T06:35:44.691Z','2022-04-01T22:00:00.000Z'),

	(628,'tv',95396,'/lFf6LLrQjYldcZItzOkGmMMigP7.jpg','Severance',2022,'severance',false,10,'Masterful storytelling ','','2022-04-08T15:58:53.601Z','2022-04-08T15:59:25.635Z','2022-04-08T15:58:53.601Z'),

	(629,'movie',340442,'/lR5ilnIzIonItxL5mQPAPzXpwPJ.jpg','Pilgrimage',2017,'pilgrimage',false,4,'Boring and too much religion','','2022-04-09T14:13:27.296Z','2022-04-09T14:14:14.752Z','2022-04-09T14:13:27.296Z'),

	(630,'tv',63663,'/bCuJkIUg1n9etSYrrQKlQuSrigE.jpg','Gate',2015,'gate',true,10,'Modern military fighting in Isekai world','It''s hilarious to watch how modern Japan''s military forces fight in the medieval fantasy-based world. One word to describe the story - hilarious.','2022-04-11T21:39:02.996Z','2022-07-12T13:59:10.927Z','2022-04-11T21:39:02.996Z'),

	(631,'movie',364111,'/7bJHM6t6j3YLjDNTwe4hyghKqSr.jpg','The Anthem of the Heart',2015,'the-anthem-of-the-heart',true,9,'😭','It''s not stereotypical anime highschool love story, it is way much deeper than that.','2022-04-16T15:01:05.148Z','2022-07-12T14:00:12.727Z','2022-04-16T15:01:05.148Z'),

	(632,'movie',652837,'/z1D8xi9x4uEhyFruo7uEHXUMD4K.jpg','Josee, the Tiger and the Fish',2020,'josee-the-tiger-and-the-fish',true,8,'Beautiful, but story is seen before','','2022-04-16T16:57:53.793Z','2022-04-19T06:34:34.006Z','2022-04-16T16:57:53.793Z'),

	(633,'tv',72426,'/2VjS9XA68JUPBUFsX9NTuXBqR9e.jpg','GAMERS!',2017,'gamers',true,9,'Such a funny convoluted school drama','','2022-04-18T09:25:26.979Z','2022-04-19T06:33:17.442Z','2022-04-18T09:25:26.979Z'),

	(634,'tv',62745,'/hR4zYTRJZiSYooocDRPW7P3PCTF.jpg','Is It Wrong to Try to Pick Up Girls in a Dungeon?',2015,'is-it-wrong-to-try-to-pick-up-girls-in-a-dungeon',true,9,'Wonderful adventure','','2022-04-21T21:24:10.067Z','2022-04-29T10:19:57.735Z','2022-04-26T22:00:00.000Z'),

	(635,'movie',763285,'/kuxjMVuc3VTD7p42TZpJNsSrM1V.jpg','Ambulance',2022,'ambulance',false,4,'Fucking Michael Bay movie','The whole movie is just a glorified action-packed chase scene of bank robbers without any point, in the end, 😆 because it does have any story, to begin with.
I almost puked 🤮 from all the shaky cameras they use 😅 even in static scenes. But it''s not the only worst part. Wtf is with lens flares 💥. I haven''t seen in my life as many sun flares used in a movie as this movie does. It''s like every 20 seconds you are blinded by some lens flare and the camera move makes you sick.','2022-04-24T19:53:53.802Z','2022-04-25T13:04:19.504Z','2022-04-24T19:53:53.802Z'),

	(636,'movie',946327,'/2ZzllPVrYmBn28Kc7PZaQ0PrQat.jpg','Trust No One: The Hunt for the Crypto King',2022,'trust-no-one-the-hunt-for-the-crypto-king',false,6,'','','2022-04-29T10:19:12.232Z','2022-04-29T10:19:42.153Z','2022-04-26T22:00:00.000Z'),

	(637,'movie',675353,'/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg','Sonic the Hedgehog 2',2022,'sonic-the-hedgehog-2',false,6,'Children movie ','','2022-05-07T16:52:40.917Z','2022-05-07T16:52:58.905Z','2022-05-07T16:52:40.917Z'),

	(638,'movie',912598,'/kk28Lk8oQBGjoHRGUCN2vxKb4O2.jpg','Bubble',2022,'bubble',true,9,'Little bubble mermaid','','2022-05-08T16:26:22.474Z','2022-05-09T08:07:19.268Z','2022-05-08T16:26:22.474Z'),

	(639,'tv',31718,'/iyxodUUXaeLk0N0siDWHA7rbURk.jpg','Darker than Black',2007,'darker-than-black',true,9,'Very cool','','2022-05-11T10:54:06.919Z','2022-08-06T11:31:17.457Z','2022-05-11T10:54:06.919Z'),

	(640,'movie',639933,'/zhLKlUaF1SEpO58ppHIAyENkwgw.jpg','The Northman',2022,'the-northman',false,10,'No bullshit Vikings story','','2022-05-13T20:33:57.628Z','2022-05-14T09:28:44.815Z','2022-04-24T22:00:00.000Z'),

	(641,'movie',685274,'/6gw8onh4FKsruBA7Oouv01EFxzn.jpg','Mobile Suit Gundam Hathaway',2021,'mobile-suit-gundam-hathaway',true,7,'Surprisingly not shit','','2022-05-14T16:21:19.115Z','2022-05-18T13:48:51.780Z','2022-05-14T16:21:19.115Z'),

	(642,'movie',503919,'/4SC4cyzHWWzDEdszdxHYPWd32YH.jpg','The Lighthouse',2019,'the-lighthouse',false,8,'Dark and gritty','','2022-05-14T16:22:46.767Z','2022-08-06T11:31:03.701Z','2022-05-14T16:22:46.767Z'),

	(643,'tv',61755,'/ykhZOdUjdpFuQZqnN4QVWlTjX6o.jpg','WATAMOTE',2013,'watamote',true,8,'','','2022-05-15T18:41:33.003Z','2022-05-15T18:46:19.701Z','2022-05-15T18:41:33.003Z'),

	(644,'tv',62568,'/duNjXCTArkT7dbHDNR5dD8ElLHI.jpg','Yamada-kun and the Seven Witches',2015,'yamada-kun-and-the-seven-witches',true,7,'Just fine','','2022-05-17T19:49:55.312Z','2022-05-18T13:48:32.665Z','2022-05-17T19:49:55.312Z'),

	(645,'movie',545611,'/w3LxiVYdWWRvEVdn5RYq6jIqkb1.jpg','Everything Everywhere All at Once',2022,'everything-everywhere-all-at-once',false,9,'🍩','','2022-05-22T18:23:14.566Z','2022-05-23T18:18:08.437Z','2022-05-22T18:23:14.566Z'),

	(646,'tv',138441,'/3WHz6tzLfoaJFoApAOHt2q9qR1m.jpg','Paripi Koumei',2022,'paripi-koumei',true,9,'Unexpected surprise','','2022-06-16T20:02:00.642Z','2022-06-18T22:03:18.161Z','2022-06-16T20:02:00.642Z'),

	(647,'tv',77721,'/3UmNynM1YXkYylyontGXPHncjOC.jpg','Real Girl',2018,'real-girl',true,7,'School drama','','2022-06-17T17:29:41.268Z','2022-06-18T22:03:53.673Z','2022-06-17T17:29:41.268Z'),

	(648,'tv',130237,'/aVbzWCkIxIcKmHK4f9aWJueBHNk.jpg','Aharen-san wa Hakarenai',2022,'aharen-san-wa-hakarenai',true,8,'Cute','','2022-06-17T18:49:29.128Z','2022-08-06T10:59:01.717Z','2022-06-17T18:49:29.128Z'),

	(649,'movie',615469,'/s5h2bC7nPGp0mQDYAv3j8HEKL09.jpg','Spiderhead',2022,'spiderhead',false,7,'Disappointing ending','','2022-06-17T22:07:16.876Z','2022-06-18T22:04:19.798Z','2022-06-17T22:07:16.876Z'),

	(650,'tv',67075,'/5Wf9Y6gucbu1LMe1FyqD8TQjaNM.jpg','Mob Psycho 100',2016,'mob-psycho-100',true,9,'Crazy good','','2022-06-18T20:32:57.770Z','2022-08-06T18:03:40.997Z','2022-08-05T22:00:00.000Z'),

	(651,'tv',139512,'/zQInUzmgvT4MgysqSiW95YBkz1w.jpg','Trapped in a Dating Sim: The World of Otome Games Is Tough for Mobs',2022,'trapped-in-a-dating-sim-the-world-of-otome-games-is-tough-for-mobs',true,6,'Trash, but watchable','','2022-06-19T14:29:54.585Z','2022-06-19T19:05:36.331Z','2022-06-19T14:29:54.585Z'),

	(652,'tv',136763,'/oflTB7Ddzw2lCBEADGQCkjp17OW.jpg','I''m Quitting Heroing',2022,'im-quitting-heroing',true,7,'Hero joins enemy''s camp','','2022-06-21T16:44:10.294Z','2022-06-23T11:54:17.426Z','2022-06-21T16:44:10.294Z'),

	(653,'tv',123528,'/gWGEsC2sFdVco597ED4p7q6Zo4q.jpg','Skeleton Knight in Another World',2022,'skeleton-knight-in-another-world',true,8,'Typical modern Isekai','','2022-06-23T20:38:25.334Z','2022-06-23T20:38:57.605Z','2022-06-23T20:38:25.334Z'),

	(654,'tv',120089,'/3r4LYFuXrg3G8fepysr4xSLWnQL.jpg','SPY x FAMILY',2022,'spy-x-family',true,10,'No comments needed, simply masterpiece','','2022-06-25T17:22:02.357Z','2022-07-12T13:51:16.802Z','2022-06-25T17:22:02.357Z'),

	(655,'movie',453395,'/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg','Doctor Strange in the Multiverse of Madness',2022,'doctor-strange-in-the-multiverse-of-madness',false,5,'Each time dumber and dumber','','2022-06-25T17:42:27.867Z','2022-06-27T14:09:24.176Z','2022-06-25T17:42:27.867Z'),

	(656,'tv',123250,'/nbYpgBR7nWpnxHkMWppg8oSaTHV.jpg','Don''t Hurt Me, My Healer!',2022,'dont-hurt-me-my-healer',true,8,'Interesting humor','','2022-07-04T21:41:02.349Z','2022-07-12T13:49:54.799Z','2022-07-04T21:41:02.349Z'),

	(657,'movie',761898,'/yD9RhgIVydQNBK7OLEbCWYcWMUd.jpg','Sword Art Online the Movie -Progressive- Aria of a Starless Night',2021,'sword-art-online-the-movie-progressive-aria-of-a-starless-night',true,9,'What a great improvement','','2022-07-08T16:58:31.577Z','2022-07-08T16:59:03.107Z','2022-07-08T16:58:31.577Z'),

	(658,'tv',80504,'/fuZemw0UoF8aMD77FSmDom3VvW1.jpg','Yuuna and the Haunted Hot Springs',2018,'yuuna-and-the-haunted-hot-springs',true,8,'Fine','','2022-07-09T18:16:30.972Z','2022-07-12T13:49:20.263Z','2022-07-09T18:16:30.972Z'),

	(659,'tv',71194,'/aXWmkDgM3Aq2SFCc2qNJlEZQSo2.jpg','The King''s Avatar',2017,'the-kings-avatar',true,7,'eSports anime?','','2022-07-11T21:58:18.155Z','2022-07-12T13:49:08.550Z','2022-07-11T21:58:18.155Z'),

	(660,'movie',725201,'/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg','The Gray Man',2022,'the-gray-man',false,9,'Greta action movie','','2022-08-02T21:54:05.697Z','2022-08-02T21:54:27.644Z','2022-08-02T21:54:05.697Z'),

	(661,'tv',87917,'/bfxwMdQyJc0CL24m5VjtWAN30mt.jpg','For All Mankind',2019,'for-all-mankind',false,3,'Space soup opera','The first season was impressive.
The second season had too much unnecessary drama.
The third one crashed and burned, while it feels like writers forgot how to write the story they started.','2022-08-11T06:00:57.164Z','2022-08-19T07:39:41.602Z','2022-08-11T06:00:57.164Z'),

	(662,'tv',137718,'/l9wfsCpH5Zot8PSskCShqiQc9I4.jpg','Tomodachi Game',2022,'tomodachi-game',true,6,'Great, but in the end goes off the rails a bit','','2022-08-16T07:47:23.325Z','2022-08-16T07:57:55.976Z','2022-08-16T07:47:23.325Z'),

	(663,'tv',53594,'/k7zmxKj1l5N6XF4laoH490z1LgP.jpg','The Troubled Life of Miss Kotoura',2013,'the-troubled-life-of-miss-kotoura',true,9,'Lighthearted and dark at the same time','','2022-08-22T19:29:47.322Z','2022-08-24T12:02:35.130Z','2022-08-22T19:29:47.322Z'),

	(664,'movie',13980,'/lMsUYZq5ITW3rAqF3tB7v74KEnH.jpg','Sword of the Stranger',2007,'sword-of-the-stranger',true,9,'Wonderful fighting and simple story','','2022-08-23T20:34:08.470Z','2022-08-24T12:02:55.289Z','2022-08-23T20:34:08.470Z'),

	(665,'tv',72636,'/n30CBH4BoN5Z34tCpOWIPGJYOaS.jpg','Made In Abyss',2017,'made-in-abyss',true,10,'Disturbing and beautiful fantasy fairy tail','','2022-08-26T16:40:41.279Z','2022-08-29T09:56:14.386Z','2022-08-26T16:40:41.279Z'),

	(666,'movie',573730,'/fsPZdpocYYbvDS2YEE1Xohqo1ni.jpg','Made in Abyss: Dawn of the Deep Soul',2020,'made-in-abyss-dawn-of-the-deep-soul',false,10,'Crazy masterpiece','This movie completely solidifies what MADE IN ABYSS is about.','2022-08-26T20:20:21.291Z','2022-08-29T12:45:17.740Z','2022-08-26T20:20:21.291Z'),

	(667,'tv',98986,'/mnQkaU3K1ITREihPOdYyTCGUNJg.jpg','Uzaki-chan Wants to Hang Out!',2020,'uzaki-chan-wants-to-hang-out',true,8,'Annoying but fun','','2022-09-11T18:22:23.130Z','2022-09-11T22:04:33.880Z','2022-09-11T18:22:23.130Z'),

	(668,'tv',117889,'/2frM5EXhvwPLnD0eY7RaGCktPTv.jpg','My Isekai Life: I Gained a Second Character Class and Became the Strongest Sage in the World!',2022,'my-isekai-life-i-gained-a-second-character-class-and-became-the-strongest-sage-in-the-world',true,4,'','','2022-09-12T16:50:46.693Z','2022-09-12T16:50:56.983Z','2022-09-12T16:50:46.693Z'),

	(669,'tv',105248,'/7jSWOc6jWSw5hZ78HB8Hw3pJxuk.jpg','Cyberpunk: Edgerunners',2022,'cyberpunk-edgerunners',true,10,'God damm insanely good','','2022-09-14T18:20:51.607Z','2022-11-01T22:35:16.895Z','2022-09-14T18:20:51.607Z'),

	(670,'tv',129516,'/54foNXgeXgOsLnWbPJuF42eWBSH.jpg','My Stepmom''s Daughter Is My Ex',2022,'my-stepmoms-daughter-is-my-ex',true,7,'I expected more','','2022-09-21T18:56:55.100Z','2022-09-21T18:57:30.469Z','2022-09-21T18:56:55.100Z'),

	(671,'tv',126437,'/etMqelj6xjhOl84gkiQq8S1mDXJ.jpg','Aoashi',2022,'aoashi',true,10,'Best sports anime','','2022-09-24T17:25:21.255Z','2022-09-26T14:05:15.340Z','2022-09-24T17:25:21.255Z'),

	(672,'movie',361743,'/62HCnUTziyWcpDaBO2i1DX17ljH.jpg','Top Gun: Maverick',2022,'top-gun-maverick',false,8,'Raw action movie!','','2022-09-24T19:02:51.969Z','2022-09-26T14:05:28.135Z','2022-09-24T19:02:51.969Z'),

	(673,'tv',154494,'/dfGf0Ti3BEKpBpVCVtEXKTjQjNR.jpg','Lycoris Recoil',2022,'lycoris-recoil',true,8,'John Wick as a school girl','','2022-09-24T20:29:09.906Z','2022-09-26T14:06:25.121Z','2022-09-24T20:29:09.906Z'),

	(674,'tv',205783,'/gqn9QudYySxvzyMJ4HNwx5qLbli.jpg','Bee and PuppyCat: Lazy in Space',2022,'bee-and-puppycat-lazy-in-space',false,9,'🐱','','2022-09-26T20:35:55.955Z','2022-09-27T15:45:03.096Z','2022-09-26T20:35:55.955Z'),

	(675,'tv',138357,'/rDhwDG2ii8c3nCcfUNp6mogGQ93.jpg','Call of the Night',2022,'call-of-the-night',true,9,'🧛‍♀️','','2022-10-01T14:08:59.669Z','2022-10-01T14:10:06.547Z','2022-10-01T14:08:59.669Z'),

	(676,'movie',629176,'/vwq5iboxYoaSpOmEQrhq9tHicq7.jpg','Samaritan',2022,'samaritan',false,6,'Mediocre ','','2022-10-08T14:59:33.504Z','2022-10-11T13:53:07.407Z','2022-10-08T14:59:33.504Z'),

	(677,'tv',67676,'/tpym31HVeQgenaubvCxkMF3kFHy.jpg','The Disastrous Life of Saiki K.',2016,'the-disastrous-life-of-saiki-k',true,7,'Funny','','2022-10-10T17:16:41.341Z','2022-10-13T19:38:51.375Z','2022-10-10T17:16:41.341Z'),

	(678,'tv',84773,'/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg','The Lord of the Rings: The Rings of Power',2022,'the-lord-of-the-rings-the-rings-of-power',false,1,'Colossal turd 💩 Biggest insult to Tolkien''s work','I wasn''t impressed at all. The series somewhat shines in visuals, it looks decent. While visually pleasing to watch, other parts lack so much that you keep wondering what they did with all that money they invested. The most atrocious thing is dialogue - it''s like written by teenagers without any world experience (or knowledge of Tolkien''s books), while it''s way too ridiculous to hear obvious things said out loud, sometimes even twice. Story development is so slow that you can easily fall asleep. After finishing the series, I still don''t care about any of the main characters. They can live or die and I wouldn''t give a fuck, because they are so badly established in what they are and are so unlikeable in personalities that you can''t relate with any of them. There are too many coincidences in the story and I thought it was a joke in some scenes, while what happens can''t be taken seriously.
In short, Rings of Power is simply a very bad fan fiction story, and it is the most expensive flop in the history of the series I couldn''t recommend watching it even for my enemies, as it would be too cruel.','2022-10-14T11:43:42.088Z','2022-11-23T22:53:18.564Z','2022-10-14T11:43:42.088Z'),

	(679,'tv',72502,'/nPw1wUdTZ507lFHBy0s9Vmz9LhY.jpg','AHO-GIRL',2017,'aho-girl',true,9,'Funny','','2022-10-16T16:36:23.817Z','2022-10-17T08:10:57.645Z','2022-10-16T16:36:23.817Z'),

	(680,'movie',471014,'/yeHRsKOlNDsbEIALS1ve6S42Nl6.jpg','Wheelman',2017,'wheelman',false,8,'Good action movie','','2022-10-30T11:46:49.710Z','2022-11-17T07:30:01.214Z','2022-10-30T11:46:49.710Z'),

	(681,'movie',718930,'/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg','Bullet Train',2022,'bullet-train',false,9,'🚅','','2022-11-20T11:02:14.377Z','2022-11-20T11:02:14.377Z','2022-11-20T11:02:14.377Z'),

	(682,'tv',119051,'/jeGtaMwGxPmQN5xM4ClnwPQcNQz.jpg','Wednesday',2022,'wednesday',false,8,'way better than expected ','','2022-11-26T16:58:38.509Z','2022-11-29T07:38:34.572Z','2022-11-26T16:58:38.509Z'),

	(683,'movie',429415,'/qjnNdjrZIdi7d316SjjkgEjJRSg.jpg','Extinction',2018,'extinction',false,2,'Garbage','I ask myself why I watched till the end.... 🙄','2022-12-03T22:22:09.881Z','2022-12-04T17:08:05.505Z','2022-12-03T22:22:09.881Z'),

	(684,'tv',90669,'/8KGvYHQNOamON6ufQGjyhkiVn1V.jpg','1899',2022,'1899',false,10,'The masterpece as previous creators work','Creators from TV series "Dark" brings another masterpiece series to watch. Undoubtedly clever story with many twists and unexpected turn of events, keeps you in the dark of full picture of the story and even end of first season brings more questions than answers, but knowing the previous work of "Dark" you know that it''s in safe hands and everything will most likely come into one big satisfying conclusion in later seasons of the show.','2022-12-04T14:00:52.779Z','2022-12-04T17:06:59.191Z','2022-12-04T14:00:52.779Z'),

	(685,'movie',1049702,'/gZleGu1MQVBArH2dlpZ9CGi0hhy.jpg','Making 1899',2022,'making-1899',false,9,'Great inside of creation of vonderfull tv series','','2022-12-04T14:00:59.755Z','2022-12-04T22:48:34.809Z','2022-12-04T14:00:59.755Z'),

	(686,'tv',212818,'/obal3CZD2sqFF79fFGce3wZFp46.jpg','Hot Skull',2022,'hot-skull',false,8,'','','2022-12-10T16:53:45.552Z','2022-12-10T16:53:53.212Z','2022-12-10T16:53:45.552Z'),

	(687,'tv',95403,'/ccBe5BVeibdBEQU7l6P6BubajWV.jpg','The Peripheral',2022,'the-peripheral',false,7,'','','2022-12-18T20:20:24.799Z','2022-12-18T20:20:45.658Z','2022-12-18T20:20:24.799Z'),

	(688,'movie',323661,'/4vzqow7mVUahqA4hHoe2UpQOxy.jpg','Mune: Guardian of the Moon',2015,'mune-guardian-of-the-moon',false,7,'','','2022-12-25T16:20:29.711Z','2022-12-25T16:20:42.704Z','2022-12-25T16:20:29.711Z'),

	(689,'tv',139287,'/tEdCclmak7CHR5OzbusD94zdhUW.jpg','More Than a Married Couple, But Not Lovers',2022,'more-than-a-married-couple-but-not-lovers',true,9,'Wonderful adaptation and improvement','','2022-12-25T19:54:36.960Z','2022-12-25T19:56:00.330Z','2022-12-25T19:54:36.960Z'),

	(690,'tv',134667,'/yZ3VZVc7iyF7KtIjERBGEedVXqA.jpg','Reincarnated as a Sword',2022,'reincarnated-as-a-sword',true,9,'And I thought Isekai couldn''t get weirder','','2022-12-25T22:24:06.081Z','2022-12-25T22:25:45.581Z','2022-12-25T22:24:06.081Z');


ALTER SEQUENCE posts_id_seq RESTART 691;

INSERT INTO posts_ganres (post_id, ganre_id)
VALUES
	(1,878),
	(1,53),
	(1,27),
	(2,28),
	(3,18),
	(3,53),
	(3,80),
	(4,16),
	(4,35),
	(5,28),
	(5,12),
	(5,35),
	(5,878),
	(6,28),
	(6,12),
	(6,18),
	(6,10749),
	(7,35),
	(7,16),
	(8,16),
	(8,18),
	(9,28),
	(9,53),
	(9,878),
	(10,16),
	(10,35),
	(10,10765),
	(11,10749),
	(11,35),
	(12,16),
	(12,35),
	(12,18),
	(13,16),
	(13,10765),
	(14,16),
	(14,35),
	(15,28),
	(15,12),
	(15,16),
	(15,35),
	(15,14),
	(15,878),
	(15,1),
	(16,28),
	(16,12),
	(16,14),
	(16,878),
	(17,16),
	(17,35),
	(17,18),
	(17,1),
	(18,28),
	(18,12),
	(18,16),
	(18,35),
	(18,14),
	(18,878),
	(18,1),
	(19,28),
	(19,12),
	(19,16),
	(19,14),
	(19,878),
	(19,1),
	(20,16),
	(20,35),
	(20,1),
	(21,28),
	(21,18),
	(21,14),
	(21,27),
	(21,10752),
	(22,18),
	(22,9648),
	(22,10765),
	(23,18),
	(23,14),
	(23,878),
	(24,28),
	(24,12),
	(24,16),
	(24,35),
	(24,14),
	(24,878),
	(24,1),
	(25,80),
	(25,18),
	(25,9648),
	(25,1),
	(26,16),
	(26,18),
	(26,14),
	(26,878),
	(27,28),
	(27,12),
	(27,14),
	(28,16),
	(28,18),
	(28,14),
	(28,10749),
	(29,16),
	(29,35),
	(29,18),
	(29,1),
	(30,18),
	(30,36),
	(31,16),
	(31,35),
	(31,18),
	(31,1),
	(32,16),
	(32,35),
	(32,18),
	(32,1),
	(33,16),
	(33,18),
	(33,9648),
	(33,1),
	(34,28),
	(34,12),
	(34,14),
	(35,80),
	(35,18),
	(35,9648),
	(35,1),
	(36,35),
	(36,1),
	(37,28),
	(37,12),
	(37,14),
	(37,878),
	(37,1),
	(38,14),
	(38,878),
	(38,1),
	(39,35),
	(39,1),
	(40,35),
	(40,1),
	(41,27),
	(41,878),
	(41,53),
	(42,28),
	(42,12),
	(42,16),
	(42,35),
	(43,28),
	(43,12),
	(43,35),
	(43,14),
	(44,35),
	(44,14),
	(44,878),
	(44,1),
	(45,18),
	(45,10751),
	(45,27),
	(45,1),
	(46,28),
	(46,12),
	(46,1),
	(47,80),
	(47,18),
	(47,1),
	(48,18),
	(48,14),
	(48,878),
	(48,1),
	(49,28),
	(49,12),
	(49,14),
	(49,878),
	(49,1),
	(50,28),
	(51,35),
	(52,12),
	(52,16),
	(52,35),
	(52,1),
	(53,28),
	(53,12),
	(53,35),
	(53,878),
	(54,28),
	(54,12),
	(54,18),
	(54,1),
	(55,28),
	(55,12),
	(55,14),
	(55,878),
	(55,1),
	(56,80),
	(56,18),
	(56,36),
	(56,53),
	(57,28),
	(57,12),
	(57,18),
	(57,1),
	(58,28),
	(58,35),
	(58,14),
	(59,10765),
	(59,18),
	(59,9648),
	(60,80),
	(60,18),
	(60,1),
	(61,28),
	(61,12),
	(61,16),
	(61,35),
	(61,10751),
	(61,14),
	(61,878),
	(62,28),
	(62,12),
	(62,878),
	(63,28),
	(63,12),
	(63,14),
	(64,28),
	(64,12),
	(64,878),
	(65,18),
	(65,27),
	(65,9648),
	(66,10765),
	(66,16),
	(66,35),
	(67,16),
	(67,35),
	(68,878),
	(68,28),
	(68,18),
	(69,16),
	(69,10765),
	(69,10759),
	(70,10749),
	(70,878),
	(70,53),
	(71,16),
	(71,35),
	(72,16),
	(72,35),
	(72,18),
	(73,16),
	(73,35),
	(74,35),
	(74,80),
	(74,18),
	(75,16),
	(75,35),
	(75,18),
	(76,18),
	(76,878),
	(76,16),
	(76,28),
	(77,10765),
	(77,16),
	(77,18),
	(78,16),
	(78,10759),
	(78,10765),
	(78,18),
	(79,16),
	(79,35),
	(79,1),
	(80,28),
	(80,12),
	(80,16),
	(80,35),
	(80,14),
	(80,878),
	(80,1),
	(81,28),
	(81,12),
	(81,16),
	(81,35),
	(81,14),
	(81,878),
	(81,1),
	(82,16),
	(82,18),
	(82,10749),
	(83,28),
	(83,878),
	(83,53),
	(84,16),
	(84,35),
	(84,18),
	(84,14),
	(84,10749),
	(85,16),
	(85,35),
	(85,1),
	(86,16),
	(86,18),
	(86,10749),
	(87,16),
	(87,14),
	(87,878),
	(87,1),
	(88,16),
	(88,18),
	(88,878),
	(89,16),
	(89,14),
	(89,878),
	(89,1),
	(90,27),
	(90,53),
	(91,16),
	(91,18),
	(91,1),
	(92,16),
	(92,18),
	(92,1),
	(93,16),
	(93,18),
	(93,1),
	(94,16),
	(94,18),
	(94,9648),
	(94,1),
	(95,16),
	(95,35),
	(95,18),
	(95,1),
	(96,80),
	(96,18),
	(96,53),
	(97,99),
	(97,18),
	(98,18),
	(98,14),
	(98,878),
	(98,1),
	(99,18),
	(99,14),
	(99,878),
	(99,1),
	(100,18),
	(100,14),
	(100,878),
	(100,1),
	(101,28),
	(101,18),
	(102,99),
	(103,28),
	(103,12),
	(103,18),
	(103,1),
	(104,35),
	(104,18),
	(104,53),
	(105,28),
	(105,12),
	(105,14),
	(105,878),
	(105,1),
	(106,28),
	(106,878),
	(106,53),
	(107,28),
	(107,12),
	(107,16),
	(107,35),
	(107,18),
	(107,1),
	(108,16),
	(108,35),
	(108,14),
	(108,878),
	(108,1),
	(109,28),
	(109,18),
	(109,36),
	(110,35),
	(110,1),
	(111,878),
	(111,53),
	(112,28),
	(112,35),
	(112,10751),
	(112,878),
	(113,80),
	(113,18),
	(113,1),
	(114,35),
	(114,10749),
	(115,18),
	(115,9648),
	(115,878),
	(115,1),
	(116,28),
	(116,35),
	(116,80),
	(117,12),
	(117,16),
	(117,35),
	(117,10751),
	(117,14),
	(118,28),
	(118,12),
	(118,878),
	(119,28),
	(119,35),
	(119,53),
	(120,18),
	(120,1),
	(121,28),
	(121,35),
	(121,53),
	(122,878),
	(123,18),
	(123,27),
	(124,35),
	(124,18),
	(124,1),
	(125,18),
	(125,878),
	(125,1),
	(125,53),
	(126,80),
	(126,9648),
	(126,18),
	(127,18),
	(127,9648),
	(127,878),
	(127,53),
	(128,35),
	(128,18),
	(128,1),
	(129,28),
	(129,12),
	(129,80),
	(129,18),
	(129,14),
	(129,878),
	(129,1),
	(130,28),
	(130,12),
	(130,14),
	(130,878),
	(130,1),
	(131,80),
	(131,18),
	(131,53),
	(132,12),
	(132,16),
	(132,35),
	(132,10751),
	(133,28),
	(133,53),
	(134,35),
	(134,18),
	(134,14),
	(134,878),
	(134,1),
	(135,18),
	(135,10402),
	(136,28),
	(136,12),
	(136,878),
	(136,53),
	(137,28),
	(137,12),
	(137,878),
	(138,28),
	(138,35),
	(138,80),
	(138,18),
	(138,53),
	(139,35),
	(139,18),
	(139,36),
	(140,878),
	(140,53),
	(141,28),
	(141,80),
	(141,53),
	(142,18),
	(142,36),
	(143,28),
	(143,12),
	(143,878),
	(144,18),
	(144,9648),
	(144,878),
	(144,53),
	(145,28),
	(145,12),
	(145,16),
	(146,28),
	(146,12),
	(147,80),
	(147,18),
	(147,9648),
	(148,28),
	(148,80),
	(149,35),
	(149,80),
	(149,18),
	(150,12),
	(150,18),
	(150,10751),
	(151,28),
	(151,12),
	(151,80),
	(152,35),
	(152,18),
	(153,80),
	(153,14),
	(153,878),
	(154,12),
	(154,18),
	(154,9648),
	(155,28),
	(155,53),
	(156,28),
	(156,12),
	(156,14),
	(157,80),
	(157,18),
	(158,28),
	(158,27),
	(158,878),
	(159,12),
	(159,18),
	(159,27),
	(160,28),
	(160,12),
	(160,878),
	(161,28),
	(161,35),
	(161,80),
	(162,12),
	(162,10751),
	(162,14),
	(163,28),
	(163,12),
	(163,878),
	(164,28),
	(164,18),
	(164,36),
	(165,28),
	(165,80),
	(165,18),
	(166,28),
	(166,12),
	(166,9648),
	(167,28),
	(167,12),
	(167,878),
	(168,80),
	(168,18),
	(168,9648),
	(169,28),
	(169,12),
	(169,35),
	(170,28),
	(170,80),
	(170,18),
	(170,1),
	(171,28),
	(171,12),
	(171,14),
	(172,28),
	(172,12),
	(172,18),
	(173,27),
	(173,53),
	(174,28),
	(174,9648),
	(174,53),
	(175,10749),
	(175,878),
	(176,28),
	(176,12),
	(176,80),
	(176,1),
	(177,80),
	(177,18),
	(178,80),
	(178,18),
	(178,9648),
	(179,12),
	(179,16),
	(179,35),
	(180,28),
	(180,12),
	(180,14),
	(181,80),
	(181,18),
	(181,1),
	(181,53),
	(182,28),
	(182,18),
	(182,36),
	(183,28),
	(183,12),
	(183,14),
	(184,28),
	(184,12),
	(184,80),
	(184,1),
	(185,35),
	(185,18),
	(185,10749),
	(185,10402),
	(186,35),
	(186,80),
	(187,28),
	(187,12),
	(187,878),
	(188,28),
	(188,35),
	(188,80),
	(189,878),
	(189,28),
	(190,18),
	(190,878),
	(191,28),
	(191,80),
	(191,53),
	(192,878),
	(192,18),
	(193,28),
	(193,53),
	(193,80),
	(194,28),
	(194,878),
	(195,28),
	(195,18),
	(195,36),
	(195,1),
	(196,80),
	(196,18),
	(196,1),
	(197,35),
	(197,18),
	(197,878),
	(198,28),
	(198,80),
	(198,18),
	(199,10759),
	(199,18),
	(199,10765),
	(200,18),
	(200,27),
	(200,878),
	(201,10759),
	(201,18),
	(202,28),
	(202,12),
	(202,14),
	(203,28),
	(203,12),
	(203,878),
	(204,878),
	(204,53),
	(205,27),
	(205,9648),
	(205,878),
	(206,35),
	(206,80),
	(206,18),
	(207,35),
	(208,80),
	(208,18),
	(208,53),
	(209,18),
	(209,27),
	(209,878),
	(210,12),
	(210,16),
	(210,35),
	(211,28),
	(211,12),
	(212,28),
	(212,12),
	(212,14),
	(213,28),
	(213,18),
	(214,12),
	(214,18),
	(214,878),
	(214,1),
	(215,35),
	(215,80),
	(215,9648),
	(216,18),
	(216,10402),
	(217,28),
	(217,12),
	(217,18),
	(217,14),
	(218,878),
	(219,28),
	(219,35),
	(220,18),
	(221,878),
	(221,9648),
	(221,12),
	(222,28),
	(222,12),
	(222,80),
	(223,12),
	(223,35),
	(224,18),
	(224,28),
	(224,12),
	(224,14),
	(225,28),
	(225,27),
	(226,28),
	(226,12),
	(226,18),
	(226,878),
	(227,28),
	(227,80),
	(228,35),
	(228,80),
	(229,878),
	(229,53),
	(230,28),
	(230,80),
	(230,10402),
	(231,28),
	(231,12),
	(231,14),
	(232,28),
	(232,12),
	(232,878),
	(233,28),
	(233,12),
	(233,14),
	(233,27),
	(233,53),
	(234,18),
	(234,14),
	(234,27),
	(235,10752),
	(235,28),
	(235,16),
	(235,35),
	(235,14),
	(236,53),
	(236,28),
	(236,80),
	(237,18),
	(237,14),
	(237,9648),
	(237,1),
	(238,878),
	(238,12),
	(238,9648),
	(239,28),
	(239,12),
	(239,16),
	(240,28),
	(240,12),
	(240,80),
	(240,14),
	(240,878),
	(241,28),
	(241,12),
	(241,878),
	(242,12),
	(242,878),
	(242,37),
	(243,80),
	(243,18),
	(243,9648),
	(244,28),
	(244,27),
	(244,878),
	(245,28),
	(245,12),
	(245,878),
	(246,80),
	(246,18),
	(246,53),
	(246,28),
	(247,28),
	(247,878),
	(248,18),
	(248,53),
	(248,28),
	(248,12),
	(249,28),
	(249,12),
	(249,878),
	(250,12),
	(250,28),
	(250,878),
	(251,28),
	(251,12),
	(251,878),
	(252,12),
	(252,28),
	(252,878),
	(253,878),
	(253,28),
	(253,12),
	(254,28),
	(254,878),
	(254,12),
	(254,9648),
	(255,80),
	(255,28),
	(255,878),
	(256,28),
	(256,16),
	(256,80),
	(257,18),
	(257,36),
	(258,28),
	(258,12),
	(258,878),
	(259,80),
	(259,28),
	(259,53),
	(260,35),
	(260,28),
	(261,28),
	(261,53),
	(262,35),
	(262,28),
	(262,12),
	(263,80),
	(263,35),
	(263,28),
	(263,12),
	(264,28),
	(264,35),
	(264,878),
	(265,28),
	(265,12),
	(265,878),
	(266,28),
	(266,12),
	(266,14),
	(267,28),
	(267,53),
	(268,28),
	(268,12),
	(268,878),
	(269,28),
	(269,12),
	(269,878),
	(270,16),
	(270,35),
	(271,16),
	(271,28),
	(271,14),
	(272,16),
	(272,10759),
	(272,10765),
	(273,16),
	(273,35),
	(273,10759),
	(273,10765),
	(274,16),
	(274,10765),
	(274,10759),
	(274,35),
	(275,28),
	(275,80),
	(275,53),
	(275,18),
	(276,16),
	(276,35),
	(276,18),
	(276,10765),
	(277,16),
	(277,12),
	(277,35),
	(277,10752),
	(277,878),
	(277,28),
	(278,16),
	(278,35),
	(278,18),
	(279,16),
	(279,18),
	(279,10765),
	(280,28),
	(280,12),
	(280,18),
	(280,878),
	(281,16),
	(281,10759),
	(281,18),
	(282,10765),
	(282,10759),
	(282,18),
	(283,18),
	(283,10765),
	(283,10759),
	(284,16),
	(284,18),
	(284,10749),
	(284,35),
	(285,16),
	(285,28),
	(285,14),
	(286,12),
	(286,18),
	(286,14),
	(287,36),
	(287,18),
	(288,28),
	(288,12),
	(288,16),
	(288,18),
	(288,1),
	(289,28),
	(289,12),
	(289,16),
	(289,14),
	(289,878),
	(289,1),
	(290,28),
	(290,12),
	(290,27),
	(290,9648),
	(290,53),
	(291,28),
	(291,12),
	(291,16),
	(291,80),
	(291,18),
	(291,1),
	(292,28),
	(292,12),
	(292,16),
	(292,35),
	(292,1),
	(293,80),
	(293,18),
	(293,9648),
	(293,1),
	(294,28),
	(294,12),
	(294,18),
	(294,14),
	(294,9648),
	(294,878),
	(294,1),
	(295,16),
	(295,35),
	(295,9648),
	(295,1),
	(296,16),
	(296,35),
	(296,1),
	(297,16),
	(297,35),
	(297,18),
	(297,1),
	(298,28),
	(298,12),
	(298,16),
	(298,35),
	(298,18),
	(298,14),
	(298,878),
	(298,1),
	(299,28),
	(299,12),
	(299,14),
	(300,28),
	(300,18),
	(300,14),
	(301,18),
	(301,14),
	(301,9648),
	(301,878),
	(301,1),
	(302,28),
	(302,12),
	(302,18),
	(302,36),
	(303,28),
	(303,12),
	(303,18),
	(303,14),
	(303,878),
	(303,1),
	(304,28),
	(304,878),
	(305,18),
	(305,14),
	(305,878),
	(305,1),
	(306,12),
	(306,14),
	(306,878),
	(307,35),
	(307,1),
	(308,18),
	(308,9648),
	(308,1),
	(309,35),
	(309,1),
	(310,18),
	(310,14),
	(310,878),
	(310,1),
	(311,28),
	(311,12),
	(311,18),
	(312,35),
	(312,1),
	(313,18),
	(313,1),
	(314,28),
	(314,35),
	(315,18),
	(315,878),
	(315,1),
	(315,53),
	(316,80),
	(316,18),
	(316,1),
	(317,80),
	(317,18),
	(317,9648),
	(317,1),
	(318,18),
	(318,36),
	(319,35),
	(319,18),
	(319,1),
	(320,28),
	(320,18),
	(320,14),
	(320,878),
	(320,53),
	(321,28),
	(322,35),
	(322,18),
	(322,53),
	(323,14),
	(323,28),
	(323,27),
	(324,18),
	(324,1),
	(325,12),
	(325,16),
	(325,35),
	(325,10751),
	(326,80),
	(326,18),
	(326,53),
	(327,12),
	(327,16),
	(327,18),
	(327,10751),
	(328,18),
	(328,27),
	(329,18),
	(330,12),
	(330,35),
	(330,10751),
	(330,14),
	(330,10749),
	(331,18),
	(331,14),
	(331,9648),
	(331,878),
	(331,1),
	(332,9648),
	(332,878),
	(332,53),
	(333,28),
	(333,12),
	(333,14),
	(333,878),
	(333,53),
	(334,28),
	(334,12),
	(334,35),
	(334,1),
	(335,28),
	(335,12),
	(335,27),
	(336,10759),
	(336,9648),
	(336,18),
	(337,16),
	(337,18),
	(337,10749),
	(337,10752),
	(338,16),
	(338,35),
	(339,16),
	(339,35),
	(339,10752),
	(339,14),
	(340,16),
	(340,10765),
	(341,16),
	(341,878),
	(341,28),
	(342,18),
	(342,80),
	(342,9648),
	(343,18),
	(343,878),
	(343,53),
	(344,16),
	(344,10759),
	(344,10765),
	(344,35),
	(345,28),
	(345,18),
	(346,16),
	(346,18),
	(346,10759),
	(346,10765),
	(347,16),
	(347,10759),
	(347,35),
	(347,10765),
	(348,16),
	(348,35),
	(349,28),
	(349,80),
	(350,28),
	(350,18),
	(350,35),
	(350,14),
	(350,878),
	(350,16),
	(351,28),
	(351,27),
	(351,53),
	(352,28),
	(352,12),
	(352,16),
	(352,35),
	(352,18),
	(352,14),
	(352,878),
	(352,1),
	(353,28),
	(353,12),
	(353,16),
	(353,35),
	(353,18),
	(353,14),
	(353,9648),
	(353,878),
	(353,1),
	(354,28),
	(354,12),
	(354,18),
	(355,16),
	(355,35),
	(355,10759),
	(355,10765),
	(356,28),
	(356,12),
	(356,16),
	(356,18),
	(356,14),
	(356,878),
	(356,1),
	(357,35),
	(357,18),
	(357,14),
	(357,9648),
	(357,878),
	(357,1),
	(358,35),
	(358,18),
	(358,1),
	(359,80),
	(359,18),
	(359,9648),
	(359,1),
	(360,80),
	(360,18),
	(360,1),
	(361,16),
	(361,18),
	(361,9648),
	(361,1),
	(362,16),
	(362,18),
	(362,14),
	(362,10749),
	(363,28),
	(363,878),
	(363,53),
	(364,28),
	(364,12),
	(364,35),
	(364,878),
	(365,18),
	(365,1),
	(366,16),
	(366,35),
	(366,1),
	(367,28),
	(367,12),
	(367,14),
	(368,28),
	(368,35),
	(368,878),
	(369,28),
	(369,27),
	(369,53),
	(370,28),
	(370,27),
	(370,53),
	(371,18),
	(371,14),
	(371,878),
	(371,1),
	(372,18),
	(372,27),
	(372,878),
	(372,53),
	(373,878),
	(374,28),
	(374,14),
	(374,878),
	(375,53),
	(376,10765),
	(377,80),
	(377,18),
	(377,9648),
	(377,878),
	(377,1),
	(378,9648),
	(378,878),
	(378,53),
	(379,28),
	(380,18),
	(380,1),
	(381,27),
	(381,878),
	(381,53),
	(382,28),
	(382,18),
	(382,53),
	(383,80),
	(383,99),
	(383,1),
	(384,80),
	(384,18),
	(384,1),
	(385,18),
	(385,878),
	(385,53),
	(386,35),
	(386,18),
	(387,80),
	(387,18),
	(387,1),
	(388,18),
	(388,14),
	(388,878),
	(388,1),
	(389,28),
	(389,18),
	(389,36),
	(390,35),
	(390,80),
	(390,18),
	(390,9648),
	(390,53),
	(391,35),
	(391,27),
	(391,9648),
	(391,53),
	(392,18),
	(392,36),
	(393,28),
	(393,35),
	(393,80),
	(393,53),
	(394,35),
	(394,36),
	(395,18),
	(395,14),
	(395,9648),
	(395,878),
	(395,1),
	(396,18),
	(396,53),
	(397,878),
	(397,53),
	(398,18),
	(398,27),
	(398,53),
	(399,35),
	(399,1),
	(400,18),
	(400,1),
	(401,28),
	(401,16),
	(401,35),
	(401,1),
	(402,28),
	(402,14),
	(402,27),
	(402,9648),
	(402,53),
	(403,35),
	(403,18),
	(403,37),
	(404,28),
	(404,18),
	(405,28),
	(405,27),
	(405,878),
	(406,35),
	(406,80),
	(406,1),
	(407,28),
	(407,80),
	(408,18),
	(408,14),
	(408,27),
	(408,1),
	(409,28),
	(409,12),
	(409,878),
	(410,28),
	(410,12),
	(410,53),
	(411,28),
	(411,80),
	(411,18),
	(412,35),
	(413,878),
	(413,53),
	(414,28),
	(414,12),
	(414,878),
	(415,80),
	(415,27),
	(415,53),
	(416,28),
	(416,12),
	(416,878),
	(417,28),
	(417,12),
	(417,878),
	(418,18),
	(418,878),
	(419,18),
	(420,18),
	(420,9648),
	(420,1),
	(421,18),
	(421,9648),
	(421,53),
	(422,80),
	(422,18),
	(423,28),
	(423,80),
	(423,18),
	(424,35),
	(424,18),
	(424,10749),
	(425,18),
	(425,878),
	(425,53),
	(426,28),
	(426,12),
	(426,14),
	(427,28),
	(427,12),
	(427,14),
	(428,12),
	(428,18),
	(428,14),
	(429,35),
	(429,27),
	(430,28),
	(430,80),
	(430,18),
	(431,28),
	(431,80),
	(431,18),
	(432,28),
	(432,12),
	(432,35),
	(433,28),
	(433,18),
	(434,16),
	(434,18),
	(434,14),
	(435,878),
	(435,53),
	(436,28),
	(436,12),
	(436,14),
	(436,878),
	(437,18),
	(437,9648),
	(437,878),
	(438,27),
	(438,28),
	(438,53),
	(439,28),
	(439,12),
	(439,878),
	(440,18),
	(440,36),
	(441,80),
	(441,18),
	(441,1),
	(442,28),
	(442,35),
	(442,18),
	(443,878),
	(443,27),
	(443,28),
	(444,9648),
	(444,53),
	(444,27),
	(445,27),
	(445,878),
	(445,53),
	(446,28),
	(446,12),
	(446,18),
	(447,28),
	(447,18),
	(447,878),
	(448,12),
	(448,16),
	(448,35),
	(448,10752),
	(448,14),
	(449,12),
	(449,18),
	(449,878),
	(450,28),
	(450,80),
	(450,53),
	(451,18),
	(451,878),
	(451,9648),
	(452,878),
	(452,27),
	(452,53),
	(453,18),
	(453,27),
	(453,53),
	(453,878),
	(454,28),
	(454,18),
	(454,878),
	(455,878),
	(455,53),
	(456,28),
	(456,12),
	(456,878),
	(457,18),
	(457,28),
	(457,80),
	(458,18),
	(458,10765),
	(459,878),
	(459,53),
	(460,53),
	(460,27),
	(461,28),
	(461,18),
	(461,878),
	(462,878),
	(462,28),
	(462,12),
	(463,878),
	(463,28),
	(463,12),
	(464,80),
	(464,18),
	(464,9648),
	(464,37),
	(465,16),
	(465,14),
	(465,878),
	(465,1),
	(466,35),
	(466,18),
	(467,12),
	(467,16),
	(467,35),
	(468,28),
	(468,12),
	(468,53),
	(469,18),
	(469,36),
	(470,28),
	(470,18),
	(471,28),
	(471,12),
	(471,16),
	(472,35),
	(472,80),
	(472,18),
	(473,28),
	(473,12),
	(473,16),
	(474,14),
	(474,27),
	(474,9648),
	(475,35),
	(475,18),
	(476,35),
	(476,80),
	(476,18),
	(476,1),
	(477,28),
	(477,12),
	(477,35),
	(478,35),
	(479,18),
	(479,9648),
	(479,878),
	(480,18),
	(481,12),
	(481,16),
	(481,35),
	(482,12),
	(482,16),
	(482,35),
	(483,35),
	(483,18),
	(484,27),
	(485,18),
	(485,9648),
	(485,53),
	(486,28),
	(486,12),
	(486,878),
	(487,28),
	(487,878),
	(487,53),
	(488,28),
	(488,35),
	(488,80),
	(489,53),
	(490,28),
	(490,12),
	(490,14),
	(491,12),
	(491,14),
	(492,18),
	(492,27),
	(493,80),
	(493,18),
	(493,53),
	(494,12),
	(494,18),
	(494,14),
	(495,80),
	(495,18),
	(495,9648),
	(496,28),
	(496,18),
	(496,14),
	(497,12),
	(497,16),
	(497,35),
	(498,28),
	(498,12),
	(498,35),
	(499,28),
	(499,80),
	(499,53),
	(500,18),
	(500,878),
	(500,1),
	(500,53),
	(501,35),
	(501,80),
	(501,878),
	(502,12),
	(502,35),
	(502,80),
	(502,878),
	(503,28),
	(503,80),
	(503,14),
	(504,28),
	(504,12),
	(504,16),
	(505,28),
	(505,35),
	(506,35),
	(506,80),
	(506,18),
	(507,28),
	(507,35),
	(508,18),
	(508,53),
	(509,28),
	(509,12),
	(510,27),
	(510,878),
	(510,53),
	(511,28),
	(511,80),
	(511,18),
	(512,878),
	(512,28),
	(512,12),
	(512,53),
	(513,12),
	(513,80),
	(513,18),
	(514,80),
	(514,18),
	(514,1),
	(514,53),
	(515,28),
	(515,18),
	(515,878),
	(515,1),
	(516,28),
	(516,878),
	(517,28),
	(517,12),
	(517,14),
	(517,878),
	(518,18),
	(518,9648),
	(518,878),
	(519,878),
	(519,53),
	(520,27),
	(521,28),
	(521,53),
	(521,878),
	(521,9648),
	(522,28),
	(522,12),
	(522,878),
	(523,12),
	(523,14),
	(523,28),
	(524,28),
	(524,12),
	(524,878),
	(524,14),
	(525,12),
	(525,28),
	(525,878),
	(526,28),
	(526,12),
	(526,878),
	(527,28),
	(527,878),
	(527,12),
	(528,28),
	(528,53),
	(529,18),
	(529,12),
	(529,878),
	(530,18),
	(530,27),
	(530,9648),
	(531,28),
	(531,12),
	(531,35),
	(532,878),
	(532,28),
	(532,27),
	(533,28),
	(533,53),
	(533,878),
	(534,27),
	(534,878),
	(535,12),
	(535,28),
	(535,878),
	(536,35),
	(536,10759),
	(537,28),
	(537,53),
	(538,35),
	(539,16),
	(539,35),
	(539,18),
	(540,16),
	(540,9648),
	(540,18),
	(541,16),
	(541,18),
	(541,10749),
	(542,18),
	(542,16),
	(542,10765),
	(542,10759),
	(542,35),
	(543,16),
	(543,9648),
	(544,10759),
	(544,16),
	(544,10765),
	(545,10759),
	(545,16),
	(545,10765),
	(546,16),
	(546,35),
	(547,16),
	(547,10759),
	(547,10765),
	(548,16),
	(548,35),
	(548,10759),
	(548,10765),
	(549,10759),
	(549,16),
	(549,9648),
	(550,16),
	(550,18),
	(551,16),
	(551,18),
	(551,35),
	(552,16),
	(552,35),
	(552,10759),
	(552,10765),
	(553,16),
	(553,35),
	(553,10759),
	(553,10765),
	(554,16),
	(554,35),
	(554,10759),
	(554,10765),
	(555,16),
	(555,35),
	(555,18),
	(556,16),
	(556,35),
	(556,18),
	(557,16),
	(557,35),
	(557,10765),
	(558,16),
	(558,35),
	(558,18),
	(559,16),
	(559,10759),
	(559,10765),
	(560,16),
	(560,10759),
	(560,10765),
	(560,35),
	(561,10759),
	(561,16),
	(561,35),
	(561,18),
	(562,16),
	(562,18),
	(562,10759),
	(562,10765),
	(563,16),
	(563,35),
	(563,10759),
	(563,10765),
	(564,16),
	(564,18),
	(564,10765),
	(564,9648),
	(565,16),
	(565,9648),
	(565,10765),
	(565,10759),
	(565,18),
	(566,16),
	(566,35),
	(567,99),
	(567,12),
	(568,18),
	(568,16),
	(568,10759),
	(569,16),
	(569,35),
	(569,10759),
	(569,10765),
	(570,28),
	(570,12),
	(570,14),
	(571,16),
	(571,10765),
	(571,10759),
	(572,878),
	(572,28),
	(572,12),
	(573,35),
	(573,28),
	(573,12),
	(573,878),
	(574,18),
	(574,28),
	(575,28),
	(575,35),
	(575,80),
	(575,53),
	(576,16),
	(576,10759),
	(576,10765),
	(577,28),
	(577,18),
	(577,36),
	(578,99),
	(579,16),
	(579,10765),
	(579,35),
	(579,18),
	(580,28),
	(580,878),
	(580,10749),
	(581,99),
	(582,16),
	(582,35),
	(582,18),
	(583,16),
	(583,35),
	(583,10759),
	(583,10765),
	(584,16),
	(584,35),
	(584,18),
	(585,35),
	(585,18),
	(585,878),
	(586,16),
	(586,10759),
	(586,10765),
	(587,10765),
	(587,18),
	(588,16),
	(588,10759),
	(588,10765),
	(589,16),
	(589,12),
	(589,28),
	(589,14),
	(590,16),
	(590,18),
	(590,10765),
	(591,35),
	(591,14),
	(591,28),
	(591,12),
	(591,878),
	(592,16),
	(592,10759),
	(592,10765),
	(593,878),
	(593,28),
	(593,53),
	(594,16),
	(594,35),
	(594,10765),
	(595,28),
	(595,35),
	(595,18),
	(596,16),
	(596,878),
	(597,16),
	(597,10759),
	(597,10765),
	(598,28),
	(598,12),
	(598,35),
	(598,14),
	(599,10759),
	(599,16),
	(599,9648),
	(599,10765),
	(600,28),
	(600,12),
	(601,35),
	(601,16),
	(602,16),
	(602,35),
	(603,10759),
	(603,18),
	(604,16),
	(604,35),
	(605,28),
	(605,80),
	(605,18),
	(606,16),
	(606,35),
	(607,16),
	(607,35),
	(608,16),
	(608,18),
	(608,10765),
	(609,16),
	(609,35),
	(609,18),
	(610,28),
	(610,35),
	(610,80),
	(611,16),
	(611,10765),
	(611,10759),
	(612,16),
	(612,35),
	(613,10759),
	(613,16),
	(614,16),
	(614,35),
	(615,16),
	(615,35),
	(615,18),
	(616,16),
	(616,35),
	(617,16),
	(617,35),
	(617,10759),
	(618,16),
	(618,10765),
	(618,10759),
	(618,35),
	(619,35),
	(619,16),
	(620,9648),
	(620,27),
	(620,878),
	(621,16),
	(621,35),
	(621,18),
	(622,16),
	(622,10765),
	(622,35),
	(622,10759),
	(623,16),
	(623,35),
	(623,10765),
	(624,16),
	(624,10765),
	(624,10759),
	(624,18),
	(624,35),
	(625,16),
	(625,9648),
	(625,35),
	(625,10759),
	(625,10765),
	(626,16),
	(626,10759),
	(626,35),
	(626,10765),
	(627,28),
	(627,12),
	(627,878),
	(628,9648),
	(628,10765),
	(629,28),
	(629,12),
	(629,18),
	(630,10759),
	(630,16),
	(630,35),
	(630,18),
	(631,16),
	(631,18),
	(631,10402),
	(631,10749),
	(632,16),
	(632,18),
	(632,10749),
	(633,16),
	(633,35),
	(634,16),
	(634,35),
	(634,10765),
	(634,10759),
	(635,28),
	(635,80),
	(635,53),
	(636,99),
	(636,80),
	(637,28),
	(637,878),
	(637,35),
	(637,10752),
	(637,12),
	(638,16),
	(638,12),
	(638,878),
	(639,10759),
	(639,16),
	(639,9648),
	(639,10765),
	(640,28),
	(640,12),
	(640,14),
	(640,18),
	(640,36),
	(641,16),
	(641,28),
	(641,18),
	(641,878),
	(642,18),
	(642,14),
	(642,53),
	(642,27),
	(643,16),
	(643,35),
	(643,18),
	(644,18),
	(644,16),
	(644,35),
	(645,28),
	(645,12),
	(645,878),
	(645,35),
	(646,16),
	(646,35),
	(647,16),
	(647,35),
	(647,18),
	(648,16),
	(648,35),
	(649,878),
	(649,53),
	(650,16),
	(650,10759),
	(650,35),
	(651,16),
	(651,35),
	(652,16),
	(652,10765),
	(653,16),
	(653,10759),
	(653,10765),
	(654,16),
	(654,35),
	(654,10759),
	(654,80),
	(655,14),
	(655,28),
	(655,12),
	(656,16),
	(656,35),
	(656,10759),
	(656,10765),
	(657,16),
	(657,28),
	(657,14),
	(657,878),
	(658,10759),
	(658,10765),
	(658,16),
	(658,35),
	(659,16),
	(659,10759),
	(659,35),
	(660,28),
	(660,53),
	(661,18),
	(661,10765),
	(662,16),
	(662,18),
	(662,9648),
	(663,35),
	(663,18),
	(663,16),
	(664,28),
	(664,16),
	(664,36),
	(665,16),
	(665,18),
	(665,10759),
	(665,10765),
	(666,16),
	(666,12),
	(666,14),
	(666,9648),
	(667,16),
	(667,35),
	(668,16),
	(668,35),
	(668,10759),
	(668,10765),
	(669,16),
	(669,10759),
	(669,10765),
	(670,16),
	(670,35),
	(671,16),
	(671,18),
	(671,35),
	(672,28),
	(672,18),
	(673,16),
	(673,10759),
	(673,35),
	(674,16),
	(675,16),
	(675,35),
	(675,10765),
	(676,28),
	(676,18),
	(676,878),
	(677,16),
	(677,35),
	(677,10765),
	(678,10765),
	(678,10759),
	(678,18),
	(679,35),
	(679,16),
	(680,28),
	(680,80),
	(680,53),
	(681,28),
	(681,35),
	(681,53),
	(682,10765),
	(682,9648),
	(682,35),
	(683,28),
	(683,18),
	(683,878),
	(683,53),
	(684,9648),
	(684,18),
	(685,99),
	(686,18),
	(686,9648),
	(686,10765),
	(687,10765),
	(687,18),
	(688,16),
	(688,10752),
	(688,12),
	(688,14),
	(689,16),
	(689,35),
	(689,18),
	(690,16),
	(690,35),
	(690,10765);

INSERT INTO list_anime_top (list)
VALUES
	(ARRAY[355,298,80,272,17,281,78,665,95,608,630,654,621,588,671,69,279,634,609,346,669,689,624,599,617,352,86,664,631,347,690,67,638,584,615,650,618,657,338,75,337,633,12,32,639,675,673,356,278,582,26,296,539,89,87,543,643,82,632,77,91,619,93,663,607,33,568,295,604,545,94,613,667,553,541,76,616,606,348,84,611,341,679,592,558,276,8,646,284,670,344,14,24,612,28,546,648,625,297,653,677,540,602,659,544,569,366,71,549,362,658,594,552,647,92,81,72,626,644,652,641,656,10,340,622,563,623,579,597,561,565,614,13,353,289,79,18,19,274,662,20,4,601,66,292,361,7,85,564,29,31,542,547,548,651,550,551,291,596,15,555,556,557,668,273,559,560,562,538,586,566,576,73,583,590,554]);

INSERT INTO list_movies_top (list)
VALUES
	(ARRAY[681, 672,645]);

INSERT INTO list_series_top (list)
VALUES
	(ARRAY[628,684,465]);