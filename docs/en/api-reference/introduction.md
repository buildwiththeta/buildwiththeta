---
title: Build with Theta | API Reference - Developer's Guide
---

# Developer's Guide - Build with Theta API

## Introduction

### Base URL

The Build with Theta API follows the principles of **REST** architecture. To ensure the security, integrity, and privacy of data, all API requests must be made using **HTTPS**. Please note that the Build with Theta API does not support **HTTP**.

The base URL for all requests is:

`https://api.buildwiththeta.com`

### Authentication

To authenticate your requests, you need to include an Authorization header. The header value should be in the format "Bearer Your_Anon_Key". Here's an example:

`Authorization: Bearer Your_Anon_Key`

### Response Codes

The Build with Theta API uses standard HTTP response codes to indicate the status of your requests.

- **`200`**: The request was successful.
- **`400`**: Invalid parameters. Please ensure that the provided parameters are correct.
- **`401`**: Anon Key missing. Please include the Anon Key in the Authorization header.
- **`403`**: Invalid Anon Key. Make sure the provided Anon Key is valid.
- **`404`**: The requested resource was not found.
- **`429`**: Rate limit exceeded.
- **`5xx`**: Indicates a server error within the Build with Theta API.

### Rate Limit

There is a rate limit of **10 calls per second on all APIs**. If this limit is exceeded, a `429` response error code will be received. 

To avoid this, it is advisable to decrease the request rate by implementing a queue mechanism or reducing the number of concurrent requests per second. In case you have specific needs, you can contact [support@buildwiththeta.com](support@buildwiththeta.com) to request an increase in the rate limit.
