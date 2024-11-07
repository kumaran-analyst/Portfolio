<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Analyst Portfolio</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #35424a;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }
        h1 {
            margin: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        .section {
            padding: 20px 0;
        }
        .section h2 {
            color: #35424a;
        }
        .skills, .projects {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .skill, .project {
            background-color: #ffffff;
            border: 1px solid #ddd;
            padding: 20px;
            width: calc(33.333% - 20px);
            box-sizing: border-box;
            border-radius: 5px;
        }
        .contact-form {
            display: flex;
            flex-direction: column;
        }
        .contact-form input, .contact-form textarea {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .contact-form button {
            background-color: #35424a;
            color: #ffffff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Data Analyst Portfolio</h1>
        <p>Welcome to my professional portfolio showcasing my data analysis projects and skills.</p>
    </header>

    <div class="container">
        <!-- About Me Section -->
        <section class="section" id="about">
            <h2>About Me</h2>
            <p>Hello! I'm a data analyst with a passion for extracting insights from data to drive decision-making. I have experience with data visualization, statistical analysis, and machine learning.</p>
        </section>

        <!-- Skills Section -->
        <section class="section" id="skills">
            <h2>Skills</h2>
            <div class="skills">
                <div class="skill">
                    <h3>Excel</h3>
                    <p>Advanced skills in Excel for data cleaning, analysis, and visualization.</p>
                </div>
                <div class="skill">
                    <h3>SQL</h3>
                    <p>Proficient in MySQL for data manipulation and query optimization.</p>
                </div>
                <div class="skill">
                    <h3>Python</h3>
                    <p>Experienced in data analysis libraries like Pandas, NumPy, and Matplotlib.</p>
                </div>
                <div class="skill">
                    <h3>Tableau & Power BI</h3>
                    <p>Skilled in creating dashboards and visual reports to communicate insights.</p>
                </div>
            </div>
        </section>

        <!-- Projects Section -->
        <section class="section" id="projects">
            <h2>Projects</h2>
            <div class="projects">
                <div class="project">
                    <h3>Sales Data Analysis</h3>
                    <p>Analyzed sales data for insights on seasonality and trends. Visualized findings using Tableau.</p>
                </div>
                <div class="project">
                    <h3>Customer Segmentation</h3>
                    <p>Used clustering algorithms in Python to segment customers based on purchasing behavior.</p>
                </div>
                <div class="project">
                    <h3>Financial Forecasting</h3>
                    <p>Developed a model to forecast quarterly revenue using historical data in Excel.</p>
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section class="section" id="contact">
            <h2>Contact Me</h2>
            <form class="contact-form">
                <input type="text" placeholder="Your Name" required>
                <input type="email" placeholder="Your Email" required>
                <textarea rows="5" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </section>
    </div>
</body>
</html>
