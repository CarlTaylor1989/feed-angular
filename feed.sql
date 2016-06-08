-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 15, 2015 at 02:54 PM
-- Server version: 5.6.23
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ogilvyon_feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(225) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(1000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `author_firstname` varchar(255) NOT NULL,
  `author_lastname` varchar(255) NOT NULL,
  `author_avatar` varchar(255) NOT NULL,
  `submitted_firstname` varchar(255) NOT NULL,
  `submitted_lastname` varchar(255) NOT NULL,
  `submitted_email` varchar(255) NOT NULL,
  `submitted_avatar` varchar(255) NOT NULL,
  `content_url` varchar(255) NOT NULL,
  `content_what` varchar(5000) NOT NULL,
  `content_potential` varchar(5000) NOT NULL,
  `html` varchar(50000) NOT NULL,
  `style` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `uid`, `category`, `title`, `subtitle`, `image`, `author_firstname`, `author_lastname`, `author_avatar`, `submitted_firstname`, `submitted_lastname`, `submitted_email`, `submitted_avatar`, `content_url`, `content_what`, `content_potential`, `html`, `style`, `class`, `status`) VALUES
(17, '5', 'labs', 'Origami dancing paper', 'Origami busts a move.', 'img/lab/lab_origami_birds.jpg', 'Oliver', 'Borders', '', 'Oliver', 'Borders', 'oliver.borders@ogilvy.com', '', 'http://hackaday.com/2015/03/03/origami-busts-a-move-with-dancing-paper/', 'In Dancing Paper, paper cranes seem to dance all on their own – even performing some crazy spinning moves. Of course, the “magic” is due to some carefully written code. And magnets. Lots of magnets.', 'Using code to control the movement of real world objects isn’t a new concept, it’s the format of these objects and the concept that counts, so there are all sorts of possibilities here... location tracking, data mapping - tracking changes and movements.', '', 'featured', 'category', 'Active'),
(18, '5', 'stories', 'Do Not Track', 'A personalised documentary series about web privacy.', 'img/stories/story_do_not_track.jpg', 'Peter', 'Jenkins', '', 'Benjamin', 'Franck', 'ben.franck@ogilvy.com', '', 'https://donottrack-doc.com/en/', 'Do Not Track is the product of a group of international creatives and technologists, investigating and sharing their findings to help you understand the exchange of value when you volunteer information online. The website explores the data we share across our online social and commerce channels, with each episode taking a look at different aspects. The site invites you share your information and show you what the web knows about you.', 'This site is a creative mix of video, graphics and data. The site is a highly interactive and educational digital experience, we could intertwine interactive video and data capture to personalise a buying process or create a web application that simulates a configurator.', '', 'regular', 'category', 'Active'),
(19, '5', 'tools', 'Phaser Framework', 'Open source Canvas & WebGL game framework', 'img/tools/tools_phaser.jpg', 'Miguel', 'Duarte', '', 'Miguel', 'Duarte', 'miguel.duarte@ogilvy.com', '', 'http://phaser.io/', 'Phaser is a open source game framework for Canvas and WebGL. It can use Javascript or TypeScript as programming languages and comes with a built-in physics engine, particles engine, cameras, sprites, animation presets, and all you need to develop amazing games. Because the output is just HTML and scripts, your games can be converted into iOS and Android apps via third party tools like PhoneGap.', 'Desktop and Mobile HTML5 games', '', 'regular', 'category', 'Active'),
(20, '5', 'experiences', 'Time-Lapse Rocket Ride to Trade Center’s Top', 'Watch the evolution of Manhattan’s iconic skyline.', 'img/experiences/experiences_wtcelevator.jpg', 'Benjamin', 'Franck', '', 'Benjamin', 'Franck', 'ben.franck@ogilvy.com', '', 'http://www.nytimes.com/2015/04/20/nyregion/on-time-lapse-rocket-ride-to-trade-centers-top-ghostly-glimpse-of-doomed-tower.html?_r=0', 'The elevators in 1 Word Trade Center have been fitted with screens. A trip to the top of the tower showcases the evolution of Manhattan''s skyline through history, as if you were looking out of a window, and travelling through time.', 'This is some kind of video mapping, the difference is that it is mapped to the movement of the elevator rather than onto a building. Tyng real life movement to the display of a virtual experience. This could be part of the experience in a big roadshow, or at a company''s headquarters.', '', 'regular', 'category', 'Active'),
(21, '5', 'labs', 'Hacking our Ping Pong table', 'Concentrate on your game, not keeping score.', 'img/lab/lab_sid_pingpong.jpg', 'Oliver', 'Borders', '', 'Oliver', 'Borders', 'oliver.borders@ogilvy.com', '', 'http://sidigital.co/blog/lab-notes-hacking-our-ping-pong-table', 'Using RFID tags drilled into their bats and Arduino, the system allows players to simply walk up to the table and immediately access all of their previous scores and game data. The system also automatically updates the stats with new games and scores.', 'We’re currently looking into doing something similar for our highly competitive table football in Shere - watch this space! Could lead to some really cool stuff for events.', '', 'regular', 'category', 'Active'),
(22, '5', 'stories', 'Species in Pieces', 'A delightful and charming way to highlight a serious issue', 'img/stories/story_in_pieces.jpg', 'Peter', 'Jenkins', '', 'Helen', 'McCarthy', 'helen.mccarthy@ogilvy.com', '', '', 'In Pieces is an interactive website that exhibits 30 of the world''s most interesting yet endangered species. Built entirely in front end code - HTML, CSS & JS, In Pieces demonstrates the use of creative vector styled illustration and animation to provide an interactive exhibition.', 'This is an advanced use of CSS and has the potential to be used across any web project, however it is limited to modern browsers. Could be used for interactive web apps, online infographics.', '', 'featured', 'category', 'Active'),
(23, '5', 'tools', 'Greensock GSAP', 'Fast, robust, compatible animation tool for web.', 'img/tools/tools_greensock.jpg', 'Miguel', 'Duarte', '', 'Miguel', 'Duarte', 'miguel.duarte@ogilvy.com', '', 'https://greensock.com/gsap', 'Initially a Flash animation plugin, Greensock evolved to Javascript animation to create GSAP, and turned into one of the most powerful animation tools available for web. Twenty times faster than jQuery and much easier and more powerful than CSS3 transitions and animations. Compatible with new and old browsers (including IE6), HTML5, Canvas, jQuery, RequireJS, EaseJS, mobile and more... It provides several animation plugins for bezier curves, SVG, kinetics, text, and lots more. It''s also the powe', 'Animation, Storytelling, Scrolling animation, Flash Banners, HTML5 Banners', '', 'regular', 'category', 'Active'),
(24, '5', 'experiences', 'River Island Fashion Film', 'Google Cardboard 3D VR app.', 'img/experiences/experiences_riverisland.jpg', 'Benjamin', 'Franck', '', 'Benjamin', 'Franck', 'ben.franck@ogilvy.com', '', 'http://www.riverisland.com/styleinsider/blog/2015/02/jean-pierre-braganza-x-design-forum-google-cardboard', 'During London Fashion Week 2015, River Island wanted to celebrate the launch of their design collection with something new. They chose to create a Virtual Reality experience using Google Cardboard. \n\nCustomers who bought something from the collection instore or online were given a free Google Cardboard unit so they could download the app and experience a 3D VR world.', 'Giveaway on a roadshow, targeted DM, Webinars', '', 'regular', 'category', 'Active'),
(25, '5', 'labs', 'SID the robot', 'Remotely controlled via the internet, see how many points you can score in 45 seconds.', 'img/lab/lab_sid_robot_arm.jpg', 'Oliver', 'Borders', '', 'Oliver', 'Borders', 'oliver.borders@ogilvy.com', '', 'http://sidigital.co/sid', 'SID is a robotic arm that sits in the SI office and is controlled via the internet by players from around the globe using a twitter handle, all in real-time. Really clever use of Raspberry Pi and other technologies to make a unique and fun game.', 'This is a great example of how projects that connect the physical and digital worlds don’t have to be limited to events attended in person. The competition element could make for a great online game with a twist.', '', 'regular', 'category', 'Active'),
(26, '5', 'stories', 'Philips Storytelling with Exposure', 'The Dutch technology company utilise the storytelling platform Exposure to showcase innovation.', 'img/stories/story_philips.jpg', 'Peter', 'Jenkins', '', 'Benjamin', 'Franck', 'ben.franck@ogilvy.com', '', 'https://philips.exposure.co/', 'Exposure is an excellent platform for showing photography as part of a story, user journey or case study. Primarily used by photographers to engage users with their photography, Philips are using it express their innovation and showcase digital experiences.', 'Exposure could be used by any number of our clients to show case studies. AXIS especially spring to mind as a comparable company in the technology sector.', '', 'regular', 'category', 'Active'),
(27, '5', 'tools', 'LittleBits', 'The easiest way to learn and invent with electronics.', 'img/tools/tools_littlebits.jpg', 'Miguel', 'Duarte', '', 'Miguel', 'Duarte', 'miguel.duarte@ogilvy.com', '', 'http://littlebits.cc/', 'LittleBits offers an easy introduction to the Internet of Things and home automation. Controlling the lights from your couch, feeding your pets when you’re away from home, building your own security system or watering your plants when they are thirsty. The possibilities are endless, and LittleBits provides over sixty modules (sensors) to choose from. Just snap them together, connect to the Internet using LittleBits Dashboard, IFTTT or the API for custom integration and you''re ready to go.', 'IoT, Home Automation', '', 'featured', 'category', 'Active'),
(28, '5', 'braindump', 'NEWS', 'Issue 1 - May 2015', '', 'Jonathan', 'Richards', '', 'test', 'test', '', '', '', '', '', '<h3>Apple’s push into into search?</h3>\n<p>&ldquo;Applebot&rdquo; similar to how Google crawls the web, has been launched to support Siri and Spotlight search. But is this just the beginning of a foray into search? <a href="http://thenextweb.com/apple/2015/05/06/apple-details-its-web-crawler-possibly-indicating-a-future-push-into-search/" target="_blank">Find out more</a>.</p>\n\n<h3>Microsoft’s HoloLens update</h3>\n<p>Not only does the Microsoft HoloLens look cooler than Oculus Rift - the Virtual Reality headset - but it’s also going to support Windows 10 applications. <a href="http://thenextweb.com/microsoft/2015/01/22/head-microsofts-super-fun-hololens/" target="_blank">Find out more</a>.</p>\n\n<h3>Facebook to host external site content </h3>\n<p>&ldquo;Instant Articles&rdquo; from publishers such as Buzzfeed or the NYT will start to speed up articles appearing in the news feed as Facebook starts to host content. With all revenue going back to the publishers, it’s an interesting model. And allowing users more control over their stream will have an impact on content consumption that’s worth keeping an eye on for reaching B2B. As interest groups, even C-Suiters use Facebook as a regular family, friends, interests and business news update. <a href="http://thenextweb.com/facebook/2015/05/04/report-facebook-to-start-hosting-other-sites-content-this-month/" target="_blank">Find out more</a>.</p>\n\n<h3>Why does B2B find social so hard?</h3>\n<p><a href="https://econsultancy.com/blog/66372-social-roi-how-to-measure-the-value-of-social-media/" target="_blank">This article</a> on how to create and measure value in Social ROI from eConsultancy  lays out a good methodology for thinking about how social can create tangible returns. But clients do find that hard to contend with. Some feel it creates too much risk, would mean too much resource or is simply a dead-end that has yielded little result in the past, so why try again? It would be good to hear your thoughts on where you think the resistance or barriers to clients buying social media services from us are. </p>\n<p>Millennial behaviour is about trust. From a recent McKinsey report on buying behaviours in B2B, as well as recent Ogilvy research and thought leadership, it’s clear social has a huge role in building social proof, even in larger purchasing decisions. And perhaps the ‘Millennial’ behaviour isn’t just ‘Millennial’. Word of Mouth has always been the most important source of referral since I can remember - but now it’s more instant and accessible than ever. Ratings, comments and crowd-sourced opinions are having an effect on brand and supplier decisions.</p>\n<p>We thought it might be time to create an all-in-one (LinkedIn, Twitter, Facebook and general social) Playbook for B2B. We could release them in stages - so a general guide, a playbook for LinkedIn, Twitter, etc.</p>\n<p>In the meantime eConsultancy has neatly summarised a <a href="https://econsultancy.com/blog/66392-14-most-fascinating-digital-marketing-stats-from-this-week/" target="_blank">Brandwatch Report</a> on the top 200 B2B brands in social.</p>\n<p>The most important stat from this - although strangely left to the last point - is that the leading 200 B2B brands receive 76,756 intent to purchase mentions a year.</p>\n<p>Do you think that’s a good idea? Would you like to be involved in creating them? Is there something else you can think of or are asked by clients about social that we could include? Email me at <a href="mailto:jonathan.richards@ogilvy.com">jonathan.richards@ogilvy.com</a></p>\n\n<h3>The Mobile Friendly algorithm from Google and B2B Buying habits</h3>\n<p>This month the Mobile Friendly algorithm kicked in for Google. It’s been an advantage awarded to sites for quite a while but as of now it has a major impact on the quality score of a website’s search page ranking. You can check out any website <a href="https://www.google.com/webmasters/tools/mobile-friendly/" target="_blank">here</a>.</p>\n<p> You might be tempted to test ogilvyonednx.com - let me save you the bother: we are awesome. So is ogilvy.com and ogilvyone.com for that matter.</p>\n<p>If you want to see how some big brands measure up on the mobile-friendly algorithm, <a href="https://econsultancy.com/blog/66387-google-s-mobile-friendly-algorithm-four-early-test-results/" target="_blank">eConsultancy have run some tests</a>.</p>\n\n<h3>What does this mean for you and your clients?</h3>\n<p>A couple of things. Firstly, if we’re building any aspect of a campaign - whether a website, email or digital advert - we should be thinking mobile first - well actually - CONTENT FIRST - regardless of the algorithm - it’s just good practice: What content has priority on what device for what mindset at the time of consumption? But mostly, if you’re involved in a website build project, make sure that responsive design has been incorporated for mobile first. Top-line tips:</p>\n<ul>\n<li>Prioritise content for a mobile screen - what’s the most important information and the most critical calls to action or functions?</li>\n<li>Make sure that you digital team is considering the CSS (style) for mobile and that it’s tested for multiple screens.</li>\n</ul>\n<p>Secondly, there’s no doubt that B2B Buyers over index on mobile internet access. The Global Business elite considerably ahead, spending 1.5 hours longer than the average person*. No surprises perhaps if C-suiters are constantly on the move.</p>\n<p>That’s strongly supported by a study by Millward Brown Digital and Google. They have analysed the growing influence of Millenials on business-to-business buying decisions. The report found that 46% of potential buyers researching B2B products are Millennials, up from 27% in 2012, making them the largest generational group carrying out this work. The study also found that there was a large increase in mobile use in this process: 42% of those surveyed used a mobile device during the course of researching and purchasing, which represents an increase of 91% over the past two years.</p>\n<p>* SOURCE: Global Web Index Q1 2015</p>', 'braindump', 'category', 'Active'),
(29, '5', 'labs', 'Nissan Duke wingsuit experience', 'A wingsuit flight simulator with some unique controls.', 'img/lab/lab_duke_wingsuit.jpg', 'Oliver', 'Borders', '', 'Oliver', 'Borders', 'oliver.borders@ogilvy.com', '', 'http://www.inition.co.uk/case_study/nissan-built-thrill-wingsuit-experience/', 'Nissan wanted to leverage their current ‘Built for Thrill’ campaign and TV commercial for the Nissan Juke, which features sky-divers assembling the car whilst free-falling through the air. To do this they created a fully immersive wingsuit experience for Goodwood Festival of Speed.', 'High-end immersive experiences for events or roadshows that really make an impact.', '', 'regular', 'category', 'Active'),
(30, '5', 'stories', 'Okean Elzy''s 20 year discography', 'An interactive site combining 3D, video, web sockets, mobile, parallax and more.', 'img/stories/story_okean_elzy.jpg', 'Peter', 'Jenkins', '', 'Peter', 'Jenkins', 'peter.jenkins@ogilvy.com', '', 'http://20.okeanelzy.com/en/', '20.okenelzy.com is a website that tells the story behind the Ukrainian band''s discography. From initial launch in browser you can connect your smartphone and use it to navigate around a museum, each of the eight rooms represents an album and offers a history behind each album. The transitions between each room are a seamless visual experience.', 'Websockets are a creatively technical way of making the user interact with the website in a different way. This method is a great opportunity to perhaps intertwine the use of video, digital design and development to create immersive story telling experiences for clients.', '', 'regular', 'category', 'Active'),
(31, '5', 'tools', 'Infoactive', 'Turn complex data into interactive infographics and reports. Drill down, filter, and explore.', 'img/tools/tools_infographic.jpg', 'Miguel', 'Duarte', '', 'Miguel', 'Duarte', 'miguel.duarte@ogilvy.com', '', 'https://infoactive.co/', 'Turn complex data into interactive infographics and data visualisations. This drag and drop wizard also allows the use of Google spreadsheets or CSV to feed real-life data into the infographic. Simple, powerful and flexible, Infoactive comes with design and animation presets, or you can create your own for more flexibility.', 'Infographics, Interactive Infographics, Data Visualisation', '', 'regular', 'category', 'Active'),
(32, '5', 'experiences', 'Heineken Experience - A Bottle With A Mission', 'A wealth of tech squeezed into one very smart little bottle.', 'img/experiences/experiences_heineken.jpg', 'Benjamin', 'Franck', '', 'Benjamin', 'Franck', 'ben.franck@ogilvy.com', '', 'https://www.youtube.com/watch?v=nuOY2UEl-oY', 'JWT Amsterdam recently came up with a unique and clever campaign to entice people to visit the Heineken Experience at the Museum in the Brewery in Amsterdam.\nThey created a ‘smart bottle’, containing an accelerometer to detect movement ( eg. a bottle being picked up), a GPS unit, a small motor to provide vibration feedback and notify of direction changes, and a rotating bottle cap to point the way. \n\nAnyone lucky enough to pick up one of these special bottles was guided on foot by the bottle itself through Amsterdam until arriving at the Heineken Museum, where they were greeted by the Heineken Experience Staff and rewarded with a freshly opened beer!', 'Product launches, events, guerilla marketing.', '', 'featured', 'category', 'Active'),
(33, '5', 'labs', 'Living with lag', 'Everyday activities become impossible in this fun Oculus Rift experiment.', 'img/lab/lab_living_with_lag.jpg', 'Oliver', 'Borders', '', 'Oliver', 'Borders', 'oliver.borders@ogilvy.com', '', 'http://livingwithlag.com/', 'Slow internet is hugely frustrating, but what would happen if you experienced similar lag in real life? Broadband provider UME.net decided to find out... Over two days, researchers watched what happened when four volunteers lived with real life lag. Clever use of Oculus Rift, Raspberry Pi and a camera with induced lag. An interesting exploration of perception change.', 'A clever take on an everyday problem that resulted in some great content - funny and just begging to be shared.', '', 'regular', 'category', 'Active'),
(34, '5', 'tools', 'Mapbox', 'Highly customisable, super-slick map platform.', 'img/tools/tools_mapbox.jpg', 'Miguel', 'Duarte', '', 'Miguel', 'Duarte', 'miguel.duarte@ogilvy.com', '', 'https://www.mapbox.com/', 'Much more than just another mapping platform, Mapbox is the most flexible and powerful provider in the market. Incredibly well designed, it is certainly the most customisable, allowing the use of custom fonts, custom textures and illustrations, branding, markers, etc. From a development perspective, it allows the use of custom data using the Mapbox API and mobile integration. Used by Foursquare, Pinterest and Evernote, so nuff said!', 'Website maps, Mobile Apps, Data Visualisation', '', 'regular', 'category', 'Active'),
(35, '5', 'braindump', 'Big Idea', 'Issue 1 - May 2015', '', 'Jonathan', 'Richards', '', 'Jonathan', 'Richards', 'jonathan.richards@ogilvy.com', '', '', '', '', '<h3>The Big Idea – Four personas you can steal to be more digital</h3>\n<p> I thought we’d start the Feed’s Big Idea, controversially, without so much digital itself and more about how to think about digital. So where’s all the code, the social media revelation, and the stats that prove B2B decision makers do such and such? Well, hold on, in later issues perhaps. First let’s start with four personas and ways of thinking that you can steal for your own that will help you approach everything digital. In forthcoming issues I’ll be looking at these ways of thinking, focusing on just one per issue: </p>\n<ul>\n<li>Be a scientist</li>\n<li>Be a statistician</li>\n<li>Be a psychologist</li>\n<li>Be a journalist</li>\n</ul>\n<h3>This week – Be a scientist:</h3>\n<p>There are two ways of thinking that Scientists employ that can form the basis of sound digital thinking: one is &lsquo;adjacent possible&rsquo; and the other is:&lsquo;asking the right question&rsquo;.</p>\n<p>The &lsquo;adjacent possible&rsquo; is where science combines more than one discipline or school of thought to come up with something new.</p>\n<p>Guttenburg (not Steve of Police Academy fame, the other one) didn’t create the printing press out of thin air. He grew up with silversmiths who crafted typography and moveable blocks of type in the Rhine, surrounded by the latest wine press &lsquo;technology&rsquo; of that wine-making region. All credit to him for putting two ideas together, but it wasn’t a vision handed from the gods. And he certainly hadn’t invented ink or paper.</p>\n<p>Digital should be about combining many different disciplines, craft and ways of thinking. Social skills with neuroscience, materials engineering with electronics and so on.</p>\n<p>&lsquo;Asking the right question&rsquo; is trickier to master. Einstein said that given an hour to provide a solution he’d spend 55 minutes thinking about the problem and just 5 minutes on the solution. But you’re on the right lines if you question every digital brief with &ldquo;What is the core KPI to achieve?&rdquo; , &ldquo;Why should people care about this campaign/product/service/content/website?&rdquo;, &ldquo;What alternatives, no matter how expensive or difficult, would be better?&rdquo;, &ldquo;If this service/product didn’t exist what would happen?&rdquo; and most importantly,&ldquo;Where’s the nearest pub?&rdquo;.</p>\n<p>Critical thinking techniques, like the ones <a href="https://www.criticalthinking.org/pages/the-critical-mind-is-a-questioning-mind/481" target="_blank">here</a>, can also help create the right questions:</p>\n<ul>\n<li>Define the problem: it is the right issue to solve in the first place?</li>\n<li>Is there truth in our assumptions? </li>\n<li>Are there alternatives to our viewpoint or solution? </li>\n<li>What adjacent thinking or discipline is most complementary to the goal? </li>\n</ul>', 'braindump', 'category', 'Active'),
(36, '5', 'labs', 'Controlling someone else''s arm with your brain', 'Backyard Brains inexpensive DIY Neuroscience kit can do some scary things.', 'img/lab/lab_ted_brain_control.jpg', 'Oliver', 'Borders', '', 'Oliver', 'Borders', 'oliver.borders@ogilvy.com', '', 'http://www.ted.com/talks/greg_gage_how_to_control_someone_else_s_arm_with_your_brain', 'Greg Gage is on a mission to make brain science accessible to all. In this fun, yet slightly creepy demo, the neuroscientist and TED Senior Fellow uses a simple, inexpensive DIY kit to take away the free will of an audience member. No parlour tricks!', 'What if we put the internet in control, rather than a single person? What if you could control all limbs rather than just one arm?', '', 'regular', 'category', 'Active'),
(37, '5', 'braindump', 'Welcome', 'Issue 1 - May 2015', '', 'Jonathan', 'Richards', '', '', '', '', '', '', '', '', '<h3>Hello everyone at OgilvyOne dnx</h3>\n<p>Welcome to Feed, our monthly digest for everything digital. We’ll highlight key trends and things to watch out for as well as building a growing library of examples and ideas. Sometimes directly about digital in B2B, we’ll try wherever we can to get you a B2B perspective and a practical application of technology and social media opportunities.</p>\n\n<h3>Why are we doing this?</h3>\n<p>Knowing your SnapChat from your WeChat or understanding the latest algorithm from Google is all well and good. And there are plenty of sites out there that can give you that.  We didn’t want to cram your email inbox with just another one of those.  We’ll look at trends but we’ll also look at interesting examples of how digital is applied with the editorial guide that (nearly) everything we present to you can be applied to B2B.</p>\n<p>We’re regularly asked to give examples of great integrated digital campaigns, or good use of digital at events or Out Of Home. So by compiling our thoughts, we’re also creating a library of great examples in digital, organised into simple sections.</p>\n<p>It’s also a chance for us, or for you, to experiment – with code, with user experience and get feedback from an audience of over 100 people (a good sample size)!</p>\n<p>We wanted to get an MVP (Minimum Viable Product) out of the door, so we’ll be adding more features and functionality as we go. Do let us know what you think: <a href="mailto:feed@ogilvyonednx.com">feed@ogilvyonednx.com</a></p>\n\n<h3>What’s the content?</h3>\n<p>Here’s a summary of what each section offers:</p>\n\n<h5>Experiences</h5>\n<p>Any digital involved with exhibitions, integration with print or Out of Home campaigns.</p>\n\n<h5>Stories</h5>\n<p>Clever and interesting use of digital to tell a story, largely online through any device. Such as digital journalism, data visualization, great content or social campaigns.</p>\n\n<h5>Tools</h5>\n<p>Any digital tools or platforms that would add value to our clients or as ‘work/life hacks’ that make life easier.</p>\n\n<h5>Lab</h5>\n<p>Experiments with code, electronics or social, including some that we''re conducting in Shere.</p>\n\n<h5>Brain Dump</h5>\n<p>A round up of trends, watch-outs and thinking in digital, usually with Jonathan Richards, our Digital Director, but also guest bloggers.</p>\n\n<h3>Your editors and creators</h3>\n<p>A big shout out for the team who’ve worked, mostly in their own time – including weekends - to launch Feed:</p>\n<ul>\n<li><strong>Helen McCarthy</strong> – Editor in Chief</li>\n<li><strong>Peter Jenkins</strong> – Designer, Front End Code, and Stories Editor </li>\n<li><strong>Steve Nash</strong> – Lead Developer </li>\n<li><strong>Ben Franck</strong> – UX and Experiences Editor </li>\n<li><strong>Oliver Borders</strong> – Lab Editor </li>\n<li><strong>Miguel Duarte</strong> – Tools Editor </li>\n</ul>\n\n<h3>How you can contribute</h3>\n<p>If you see a great example of digital work, viral social media campaign or an interesting technology gizmo, we’d love to hear about it! Just click the red ''+'' button in the footer to open up the submission form. </p>\n\n<h3>Thank you for all your support </h3>\n<p>Let us know what you think at <a href="mailto:feed@ogilvyonednx.com">feed@ogilvyonednx.com</a></p>\n<p>Editors’ opinions are their own. Contributions and submissions are selected by our Editors and are included at the Section Editor’s discretion depending on relevance, resource time and volume of content on the site. If your article isn’t included, please don’t be offended, we’ll do our best to include everyone but it may not always be possible!</p>', 'featured-braindump', 'category', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users_auth`
--

DROP TABLE IF EXISTS `users_auth`;
CREATE TABLE IF NOT EXISTS `users_auth` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users_auth`
--

INSERT INTO `users_auth` (`uid`, `name`, `email`, `password`, `created`) VALUES
(1, 'Steve Nash', 'steve.nash@ogilvy.com', '$2a$10$5bc913f6c699f741c76bfOxRYlS5nlYSVtTG6BbhMT85A6THbGi1O', '2015-05-11 14:24:49'),
(2, 'Peter Jenkins', 'peter.jenkins@ogilvy.com', '$2a$10$d06cda37213d723057438uQbxNy2BpTqTcx1z.VVRGs6RDatZZt.6', '2015-05-14 08:02:25'),
(3, 'Oliver Borders', 'oliver.borders@ogilvy.com', '$2a$10$b94e2ca5941b85ff14a24uRulK/yM8F3I0jnSyaFHl.QCThcNIqZS', '2015-05-14 08:06:51'),
(4, 'Miguel Duarte', 'miguel.duarte@ogilvy.com', '$2a$10$2b474ba55c4351fded7a3eR/fus8awN8Lum8uHvDmf1eAGz1E7rVK', '2015-05-14 09:44:15'),
(5, 'Helen', 'helen.mccarthy@ogilvy.com', '$2a$10$6ab8a2d44664840d09d12uJAUyH5wxjM3fICzaDv2naMsGuCWYhJ.', '2015-05-14 14:01:57');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
