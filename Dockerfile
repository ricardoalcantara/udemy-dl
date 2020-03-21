FROM python:3

RUN pip install --upgrade pip

WORKDIR /udemy-dl

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# docker build -t udemy-dl:latest . 
# mkdir downloads
# docker run -it --rm -v $(pwd)/downloads:/udemy-dl/downloads udemy-dl python udemy-dl.py COURSE_URL -q 720 -o /udemy-dl/downloads