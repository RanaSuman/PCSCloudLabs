/**
 * 
 */


const courses = {
	all: [
		{
			name: "Java Full Stack - Beginner",
			Desp: "Java Basics, OOP Concepts, Front-end, Back-end and more.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "course-dis.jsp"
		},
		{
			name: "Core Java",
			Desp: "Java Fundamentals, OOP, Exception Handling, and more.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "course-dis.jsp"
		},
		{
			name: "Spring Framework",
			Desp: "Spring Boot, Spring MVC, REST APIs, and Microservices.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Hibernate",
			Desp: "ORM, JPA, Database Connectivity, Query Optimization.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Microservices",
			Desp: "Spring Cloud, API Gateway, Service Discovery, Docker.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "MongoDB",
			Desp: "Introduction to NoSQL databases, CRUD operations, indexing, and aggregation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Express.js",
			Desp: "Building server-side applications, middleware, routing, and API development.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "DevOps Fundamentals",
			Desp: "Introduction to DevOps, Linux, Shell Scripting, and CI/CD.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "CI/CD",
			Desp: "Continuous Integration and Deployment, Jenkins, GitHub Actions, and automation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "DevOps with Kubernetes",
			Desp: "Containerization, Docker, Kubernetes, Helm, and Monitoring.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "AWS",
			Desp: "Cloud computing fundamentals, EC2, S3, Lambda, and infrastructure automation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Angular/React",
			Desp: "Component-based UI development, state management, hooks, and routing.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Node.js",
			Desp: "Asynchronous JavaScript, event-driven programming, and building REST APIs.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Data Science - Beginner",
			Desp: "Python, Data Analysis, NumPy, Pandas, Visualization.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "AI/ML with Python",
			Desp: "Supervised & Unsupervised Learning, TensorFlow, Scikit-learn.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Deep Learning with TensorFlow",
			Desp: "Neural Networks, CNNs, RNNs, Model Training & Tuning.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Machine Learning",
			Desp: "Supervised and unsupervised learning, feature engineering, and model evaluation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Big Data Analytics",
			Desp: "Handling large datasets, Hadoop, Spark, and distributed computing.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Python Basics",
			Desp: "Python syntax, loops, functions, and basic programming.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Python for Data Science",
			Desp: "NumPy, Pandas, Matplotlib, Data Visualization, Analysis.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Advanced Python Programming",
			Desp: "OOP, File Handling, REST APIs, Django/Flask.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Oracle SQL & PL/SQL",
			Desp: "SQL Queries, Procedures, Functions, Triggers, and PL/SQL.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Oracle Database Administration",
			Desp: "DBMS concepts, Performance Tuning, Backup & Recovery.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Oracle Cloud Infrastructure",
			Desp: "Cloud concepts, Networking, Compute, Storage, Security.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Data Guard",
			Desp: "Disaster recovery, high availability, and database replication strategies.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Admin",
			Desp: "Salesforce Basics, CRM concepts, User Management, Reports.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Developer",
			Desp: "Apex Programming, Triggers, LWC, API Integration.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Architect",
			Desp: "Advanced Salesforce Development, Multi-cloud Strategies.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Master Training",
			Desp: "Comprehensive Salesforce training covering admin, development, and integration.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Marketing Cloud",
			Desp: "Marketing automation, journey builder, email studio, and campaign management.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Interaction Studio",
			Desp: "Real-time personalization, AI-driven insights, and customer engagement strategies.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Field Service",
			Desp: "Mobile workforce optimization, service scheduling, and real-time tracking.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Business Analyst",
			Desp: "Requirement gathering, process modeling, and stakeholder communication in Salesforce.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}


	],

	java: [
		{
			name: "Java Full Stack - Beginner",
			Desp: "Java Basics, OOP Concepts, Front-end, Back-end and more.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Core Java",
			Desp: "Java Fundamentals, OOP, Exception Handling, and more.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "course-detail.jsp"
		},
		{
			name: "Spring Framework",
			Desp: "Spring Boot, Spring MVC, REST APIs, and Microservices.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Hibernate",
			Desp: "ORM, JPA, Database Connectivity, Query Optimization.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Microservices",
			Desp: "Spring Cloud, API Gateway, Service Discovery, Docker.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}
	],

	mern: [
		{
			name: "MongoDB",
			Desp: "Introduction to NoSQL databases, CRUD operations, indexing, and aggregation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Express.js",
			Desp: "Building server-side applications, middleware, routing, and API development.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Angular/React",
			Desp: "Component-based UI development, state management, hooks, and routing.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Node.js",
			Desp: "Asynchronous JavaScript, event-driven programming, and building REST APIs.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}
	],

	devops: [
		{
			name: "DevOps Fundamentals",
			Desp: "Introduction to DevOps, Linux, Shell Scripting, and CI/CD.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "CI/CD",
			Desp: "Continuous Integration and Deployment, Jenkins, GitHub Actions, and automation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "DevOps with Kubernetes",
			Desp: "Containerization, Docker, Kubernetes, Helm, and Monitoring.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "AWS",
			Desp: "Cloud computing fundamentals, EC2, S3, Lambda, and infrastructure automation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}
	],

	datascience: [
		{
			name: "Data Science - Beginner",
			Desp: "Python, Data Analysis, NumPy, Pandas, Visualization.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "AI/ML with Python",
			Desp: "Supervised & Unsupervised Learning, TensorFlow, Scikit-learn.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Deep Learning with TensorFlow",
			Desp: "Neural Networks, CNNs, RNNs, Model Training & Tuning.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Machine Learning",
			Desp: "Supervised and unsupervised learning, feature engineering, and model evaluation.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Big Data Analytics",
			Desp: "Handling large datasets, Hadoop, Spark, and distributed computing.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}
	],

	python: [
		{
			name: "Python Basics",
			Desp: "Python syntax, loops, functions, and basic programming.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Python for Data Science",
			Desp: "NumPy, Pandas, Matplotlib, Data Visualization, Analysis.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Advanced Python Programming",
			Desp: "OOP, File Handling, REST APIs, Django/Flask.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}
	],

	oracle: [
		{
			name: "Oracle SQL & PL/SQL",
			Desp: "SQL Queries, Procedures, Functions, Triggers, and PL/SQL.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Oracle Database Administration",
			Desp: "DBMS concepts, Performance Tuning, Backup & Recovery.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Oracle Cloud Infrastructure",
			Desp: "Cloud concepts, Networking, Compute, Storage, Security.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Data Guard",
			Desp: "Disaster recovery, high availability, and database replication strategies.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}
	],

	salesforce: [
		{
			name: "Salesforce Admin",
			Desp: "Salesforce Basics, CRM concepts, User Management, Reports.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Developer",
			Desp: "Apex Programming, Triggers, LWC, API Integration.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Architect",
			Desp: "Advanced Salesforce Development, Multi-cloud Strategies.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Master Training",
			Desp: "Comprehensive Salesforce training covering admin, development, and integration.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Marketing Cloud",
			Desp: "Marketing automation, journey builder, email studio, and campaign management.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Interaction Studio",
			Desp: "Real-time personalization, AI-driven insights, and customer engagement strategies.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Field Service",
			Desp: "Mobile workforce optimization, service scheduling, and real-time tracking.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		},
		{
			name: "Salesforce Business Analyst",
			Desp: "Requirement gathering, process modeling, and stakeholder communication in Salesforce.",
			cer: "PCS Global Certificate",
			hrs: "40 Hrs Live Classes",
			cal: "Mon - Fri Class",
			link: "../course-dis.jsp"
		}
	]
};


// Export the object for use in other scripts
window.courses = courses;

function redirectToCourseDetails(course) {
    const queryString = `?name=${encodeURIComponent(course.name)}&Desp=${encodeURIComponent(course.Desp)}&cer=${encodeURIComponent(course.cer)}&hrs=${encodeURIComponent(course.hrs)}&cal=${encodeURIComponent(course.cal)}`;
    window.location.href = `course-dis.jsp${queryString}`;
}
