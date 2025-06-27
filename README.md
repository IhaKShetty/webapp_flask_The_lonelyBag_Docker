# Step 1: Setup and GitHub Repository

🔗 Repository Link
[GitHub Repo](https://github.com/IhaKShetty/webapp_flask_The_lonelyBag_Docker)

.
├── Dockerfile
├── app/                  # Your web application code
│   ├── app.py            # Example: Flask app
│   ├── requirements.txt  # Python dependencies
├── deploy.sh             # (Bonus) Shell script to automate setup
└── README.md


#  Step 2: Dockerize the Application
### Here is the Dockerfile used to containerize the application:

`FROM python:3.10-slim

WORKDIR /opt/

COPY . .


RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000


CMD ["python", "app.py"]`

### Build the Docker image:
`docker build -t flask-ec2-app .
`

### Run the new Docker container created:
`docker run -d -p 5000:5000 flask-ec2-app
`

Visit the app in your browser at:
![Alt Text](C:\Users\kesha\Pictures\Screenshots\LocalHost_screenshot.png)
http://localhost:5000
