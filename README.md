# Assignment-3
---

### **DESCRIPTION**
This project exposes a sentiment analysis model trained on IMDB movie reviews as a RESTful API using FastAPI. The model predicts whether a given review is positive or negative and can also return a confidence score. The API is containerized with Docker and ready for deployment. It serves four endpoints:

    • health check
    • prediction
    • prediction with probability
    • sample review from dataset


##### STRUCTURE

| File Name       | Purpose                                  |
|----------------|-------------------------------------------|
| `.gitignore`    | Ensures that certain files and folders are ignored by Git. |
| `main.py`     | FastAPI application with all endpoint definitions.     |
| `Dockerfile`     | Defines instructions to build a Docker image.     |
| `Makefile`     | Automates tasks using `make` (build, run, clean, help).     |
| `requirements.txt`     | Lists Python dependencies.     |
| `sentiment_model.pkl`     | Trained sentiment analysis model.     |

---
### **API ENDPOINTS**
| Method | Endpoint         | Description                                           |
|--------|------------------|-------------------------------------------------------|
| GET    | `/health`        | Health check to verify API is running                |
| POST   | `/predict`       | Takes input text and returns sentiment prediction     |
| POST   | `/predict_proba` | Same as `/predict` but includes probability/confidence score |
| GET    | `/example`       | Returns a random review from the IMDB dataset        |

#### GET /health
Purpose: Confirms that the server is up
Response:

    ```bash
    {
        "status": "ok"
    }
    ```


#### POST /predict
Request:

    ```bash
    {
        "text": "This movie makes me smile every time I watch it."
    }
    ```
Response:

    ```bash
    {
        "sentiment": "positive"
    }
    ```


#### POST /predict_proba
Request:

    ```bash
    {
        "text": "This movie was super lame."
    }
    ```
Response:

    ```bash
    {
        "sentiment": "negative",
        "probability": 0.87
    }
    ```

#### GET /example
Purpose: Returns a random view of the dataset
Response:

    ```bash
    {
        "review": "This is a very long movie, but well worth it."
    }
    ```



---
### **HOW TO RUN LOCALLY**
