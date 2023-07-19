---
title: Build with Theta | API Reference - Developer's Guide
---

# Developer's Guide - Build with Theta A| Reference API

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

- **200**: The request was successful.
- **400**: Invalid parameters. Please ensure that the provided parameters are correct.
- **401**: Anon Key missing. Please include the Anon Key in the Authorization header.
- **403**: Invalid Anon Key. Make sure the provided Anon Key is valid.
- **404**: The requested resource was not found.
- **5xx**: Indicates a server error within the Theta API.

Refer to the API documentation for detailed information about request parameters and response payloads.

If you have any questions or require further assistance, please don't hesitate to reach out to our support team.
