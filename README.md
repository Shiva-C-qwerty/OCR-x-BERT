# OCR Text Summarization and Q&A Web Application
This is a web application that extracts text from images using Tesseract OCR and applies summarization and question-answering (Q&A) using BERT. The application is deployed using Streamlit and can be accessed through any web browser.

## Installation
To install the required dependencies, please use the following command:

``` pip install -r requirements.txt ```

## Usage
To run the application, please use the following command:

```streamlit run app.py```

This will launch the application in your web browser, where you can upload an image and extract text from it using Tesseract OCR. The extracted text is then summarized and can be queried using the Q&A model based on BERT.

## Models
The application uses pre-trained models for OCR, summarization, and Q&A. Specifically, Tesseract is used for OCR, while the summarization and Q&A models are based on BERT, a popular deep learning model for natural language processing.

## Acknowledgements
This project was inspired by the work of many researchers and developers in the fields of OCR, summarization, and Q&A. We would like to thank them for their contributions to the field, which made this project possible.
