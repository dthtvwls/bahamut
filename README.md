[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

IAM Policy:

    {
        "Version": "2012-10-17",
        "Statement": {
            "Effect": "Allow",
            "Action": [,
                "s3:GetObject",
                "s3:PutObject",
                "s3:DeleteObject"
            ],
            "Resource": "arn:aws:s3:::hypr-catalog/*"
        }
    }

CORS Config:

    <CORSConfiguration>
        <CORSRule>
            <AllowedOrigin>*</AllowedOrigin>
            <AllowedHeader>*</AllowedHeader>
            <AllowedMethod>PUT</AllowedMethod>
            <AllowedMethod>POST</AllowedMethod>
            <ExposeHeader>ETag</ExposeHeader>
        </CORSRule>
    </CORSConfiguration>
